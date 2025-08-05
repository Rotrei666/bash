#!/bin/bash

function test

{
    # shellcheck disable=SC2005
    # shellcheck disable=SC1102
    echo "$(( ${2:-0} $1 ${3:-0} $1 ${4:-0} ))"
   
}

unset nombre

# Si nombre no está definida, se usa "anónimo"
echo "Hola, ${nombre:-anónimo}"  # → Hola, anónimo

# Si está definida, se usa su valor
nombre="Rodrigo"
echo "Hola, ${nombre:-anónimo}"  # → Hola, Rodrigo

test + 2 3 4 5 6 7 8 9


