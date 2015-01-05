#!/bin/bash

echo "loading scripts for software over the rainbow"

tmux_session="jgb_blog"

preview_in_tmux(){
    create_tmux_session_if_not_exists $tmux_session && 
    tmux send -t $tmux_session:0 '. scripts/util.sh && preview' Enter
}

preview(){
    (cd build
    bundle exec rake generate
    bundle exec rake preview)
}

new_post(){
    (cd build
    bundle exec rake "new_post[$1]")
}

deploy(){
    (cd build
    bundle exec rake deploy)
}

recent_posts(){
    ls build/source/_posts | tail -n 10
}

