#!/bin/bash

currentdir=$PWD

echo "Hello ${USER}"

echo "I will now back up your home directory, ~/Documents/Stuff"

tar -cvf ~/Documents/Stuff/backup___"$(date +%d-%m-%Y_%H-%M-%S)".tar ~/Documents/Stuff 2>/dev/null

echo "${currentdir}"

echo "You are running this script from ${PWD}"
echo "Therefore, I will save the backup in ${PWD}"