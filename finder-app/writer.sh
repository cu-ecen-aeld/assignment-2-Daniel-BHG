#!/bin/sh
# Author : Daniel-BHG

writefile=$1
writestr=$2

if [ $# -lt 2 ]; then
    echo "[Error] Need to input two parameters"
    echo "Usage : $0 <writefile> <writestr>"
    exit 1
fi

if [ ! -d "$(dirname $writefile)" ]; then
    echo "[Warning] Directory does not exist. Creating..."
    mkdir -p "$(dirname $writefile)"
fi

echo "Write a file : $writefile"
touch $writefile
if [ $? -ne 0 ]; then
    echo "[Error] Failed to write a file"
    exit 1
fi

echo "With content : $writestr"
echo $writestr > $writefile

