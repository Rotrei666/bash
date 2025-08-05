#!/bin/bash

read -p "What is your first name?: " name

read -p "What is your surname/family name?: " last

read -n 4 -s -p "What is your extension number?: " ext

read -n 4 -s -p "What access code would you like to use when dialing in?:" pin


echo "$name"
echo "$last"
echo "$ext"
echo "$pin"