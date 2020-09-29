#!/bin/bash

drives=$(ls /Volumes | grep -v Macintosh)
arr=($(echo $drives | tr " " "\n"))

for d in "${arr[@]}"; do
   rsync -avr ~/Projekty/Dron /Volumes/$d
done