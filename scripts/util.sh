#!/bin/bash

echo "loading scripts for software over the rainbow"

function preview(){
	(cd build
	rake generate
	rake preview)
}

function new_post(){
	(cd build
	rake "new_post[$1]")
}

function deploy(){
	(cd build
	rake deploy)
}