#!/bin/bash

echo "loading scripts for software over the rainbow"

function preview(){
	(cd build
	bundle exec rake generate
	bundle exec rake preview)
}

function new_post(){
	(cd build
	bundle exec rake "new_post[$1]")
}

function deploy(){
	(cd build
	bundle exec rake deploy)
}
