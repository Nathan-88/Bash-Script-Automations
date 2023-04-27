#!/bin/bash
# functions in bash

# function declaration
function greet {
    echo "Hello $1"
}

# function call
greet "World"

# function with return value
function add {
    local sum=$(( $1 + $2 ))
    echo $sum
}

# function call
result=$(add 1 2)
echo $result

# function with multiple return values
function add2 {
    local sum=$(( $1 + $2 ))
    local diff=$(( $1 - $2 ))
    echo $sum
    echo $diff
}

# function call
result=$(add2 1 2)
echo $result