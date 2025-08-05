#!/bin/bash

function test

{
    # shellcheck disable=SC2005
    # shellcheck disable=SC1102
    #echo "$(( ${2:-0} $1 ${3:-0} $1 ${4:-0} ))"
    echo "$(($@))"
   
}

test 1 + 4 - 6


