#!/bin/bash

#00:01:00 -t 00:01:00

ffmpeg  -ss "$2" -i "$1" -t "$3"  -async 1  "$4"
echo file  "'$4'"  >> mylist.txt
