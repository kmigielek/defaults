#!/bin/bash

drives=$(ls /Volumes | grep -v Macintosh)
arr=($(echo $drives | tr " " "\n"))

rsync -avr /Volumes/${arr[0]}/Dron /Volumes/${arr[1]}
rsync -avr /Volumes/${arr[1]}/Dron /Volumes/${arr[0]}