#!/bin/bash

function parameters {

    echo "Ny name is $1"
    echo "My home directory is $2"
    echo "My favorite colour is $3"
    echo "The 10th argument is ${10}"
    # shellcheck disable=SC1037
    echo "The 11th argument is $11" #when is more than 9, we muust use {}
    echo $# #total count 
} 

parameters a b c d e f g h i j k l m n o p q r s t u v w x y z 



