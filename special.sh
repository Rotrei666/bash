#!/bin/bash
function prueba1 {

        # shellcheck disable=SC2068
        touch $@ # == $*
        touch "$@"
    }

prueba1 "Hola Mundo.txt" "Hello World.txt"


function prueba {
    IFS=,
    echo "$*"
}

prueba 1 2 3 4 5 6 7