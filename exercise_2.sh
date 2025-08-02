#!/bin/bash

currentdir=$PWD

echo "Hello ${USER}"

echo "I will now back up your home directory, ~/Documents/Stuff"

tar -cf ~/Documents/Stuff/backup___"$(date +%d-%m-%Y_%H-%M-%S)".tar "${currentdir}" 2>/dev/null #best practice is use double quote #options -v verbose and -z compress in gzip

echo "You are running this script from ${currentdir}"
echo "Therefore, I will save the backup in ${PWD}"

echo "Backup Completed Successfully"