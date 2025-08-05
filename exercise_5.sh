#!/bin/bash

read -p "What is your first name?: " name

read -p "What is your surname/family name?: " last

read -n 4 -s -p "What is your extension number?: " ext
echo 

read -n 4 -s -p "What access code would you like to use when dialing in?:" pin
echo

IFS=,
echo "$name,$last,$ext,$pin" > extensions.csv
echo
cat extensions.csv 