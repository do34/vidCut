#!/bin/bash

# 1=530:343
ffmpeg -i "$2" -vf "scale=$1:force_original_aspect_ratio=increase,crop=$1" "$3"
