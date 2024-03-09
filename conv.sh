#!/bin/bash

ffmpeg -i "$1.mp4" -c copy -bsf:v h264_mp4toannexb -f mpegts "$1.ts"
