#!/bin/bash

drives=$(ls /Volumes | grep -v Macintosh)
arr=($(echo $drives | tr " " "\n"))
main=""
backup=""

if [ ${arr[0]} == "Main_1" ];
then
    main=${arr[0]}
    backup=${arr[1]}
else
    main=${arr[1]}
    backup=${arr[0]}
fi

rsync -avr /Volumes/$main/Dron /Volumes/$backup
rsync -avr /Volumes/$backup/Dron /Volumes/$main