#!/bin/bash

echo "All the variables passed to the script :: $@"
echo "Number of variables passed :: $#"
echo "Current working directory:: $PWD"
echo "Home directory of current user:: $HOME"
echo "PID of script running now ::$$"
sleep 100 &
echo "PID of last process run in background ::$!"