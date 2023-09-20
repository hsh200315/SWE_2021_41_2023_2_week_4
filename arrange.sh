#!/bin/bash

fileList=($(ls ./files))
for i in "${!fileList[@]}"; do
    firstLetter=$(echo ${fileList[i]:0:1} | tr '[A-Z]' '[a-z]')
    mv "./files/${fileList[i]}" "./${firstLetter}/"
done