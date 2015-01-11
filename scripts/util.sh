#!/bin/bash

echo "loading scripts for software over the rainbow"

tmux_session="jgb_blog"

watch(){
    create_tmux_session_if_not_exists $tmux_session && 
    tmux send -t $tmux_session:0 '. scripts/util.sh && do_watch' Enter
}

do_watch(){
    # note the use of 2 paralell subshells (we don't care about output being mixed)
    (wait_for_server
    open http://localhost:4000) &
    (cd build
    bundle exec rake generate
    bundle exec rake preview
    ) 
}

kill_watch(){
    tmux send -t $tmux_session:0 C-c
}

new_post(){
    (cd build
    bundle exec rake "new_post[$1]")
}

deploy(){
    kill_watch &&
    (cd build
    bundle exec rake generate
    bundle exec rake deploy)
}

recent_posts(){
    ls build/source/_posts | tail -n 10
}

wait_for_server(){
    while true; do
        lsof -i :4000 > /dev/null
        if [[ $?  == 0 ]]; then
            break
        fi
    done
}
