#!/bin/bash
# This script greets the user with a nice message
if [ -n "$1" ];then
    name=$1
    echo "Good morning $name!"
    sleep 1 #this delays the time for 1secs
    echo "you are looking good today ${name}!"
    sleep 1
    echo "you have the cutest face i've ever seen $name"
else
    read -p "enter your name: " name
    echo "Good morning $name!"
    sleep 1 #this delays the time for 1secs
    echo "you are looking good today ${name}!"
    sleep 1
    echo "you have the cutest face i've ever seen $name"
fi