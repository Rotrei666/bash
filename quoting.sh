#!/bin/bash

filepath=C:\Users\rodrimar\Documents

echo 1 $filepath

filepath=C:\\Users\\rodrimar\\Documents

echo 2 $filepath

filepath="C:\Users\rodrimar\Documents"

echo 3 $filepath

filepath='C:\Users\rodrimar\Documents'

echo 4 $filepath

filepath="C:\Users\\${USER}\Documents"
echo 5 $filepath

