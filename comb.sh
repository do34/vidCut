#!/bin/bash
cd "$1"

# for i in `\ls *.ts | sort -V`; do echo "file '$i'"; done >> mylist.txt
ffmpeg -f concat -i mylist.txt -c copy all.ts
ffmpeg -i all.ts -acodec copy -vcodec copy all.mp4
