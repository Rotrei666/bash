#!/bin/bash

x="5"
y="2"


echo "2+2"
echo $(( x + y ))
echo $(( x - y ))
echo $(( x + y ))
echo $(( x / y ))


echo $(( (x * y)  + 33 ))
echo $(( x ** y ))
echo $(( x % y )) #Remain the division result