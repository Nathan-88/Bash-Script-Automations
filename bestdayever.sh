#!/bin/bash
# This script greets the user with a nice message
# and asks for their name.
# If the user enters a name, the script greets them by name.
# If the user does not enter a name, the script asks them to enter a name.
user=$(whoami)
date=$(date)
whereami=$(pwd)
if [ -n "$1" ];then
    name=$1
    echo "Good morning $name!"
    sleep 1 #this delays the time for 1secs
    echo "you are looking good today ${name}!"
    sleep 1
    echo "you have the cutest face i've ever seen $name"
    sleep 2
    echo "you are currently logged in as user: $user, you are in the directory: $whereami. today's is $date"
else
    read -p "enter your name: " name
    echo "Good morning $name!"
    sleep 1 #this delays the time for 1secs
    echo "you are looking good today ${name}!"
    sleep 1
    echo "you have the cutest face i've ever seen $name"
    sleep 2
    echo "you are currently logged in as user:$user, you are in the directory: $whereami. today's is $date"
fi