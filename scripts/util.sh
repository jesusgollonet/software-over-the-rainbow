#!/bin/bash

echo "loading scripts for software over the rainbow"

function preview(){
	cd build
	rake generate
	rake preview
}