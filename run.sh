#!/bin/bash

dr="/Users/daniel/Downloads/vid"
fil="$dr/vid1.mp4"
flo="$dr/vid1"

# 0:50-0:57 (fahren an den Front)
# 1:15-1:20 (General, Armee marschiert)
# 2:27-3:26 (Feldtelefon, Verletzte, Verletzte bergen, Schützengrab, Granaten, Explosion)
# 6:35-6:41 (Maschinengewehre)
# 6:52-6:58 (Schützengrab)

rm mylist.txt
bash ./cutVid.sh $fil "00:00:50" "00:00:07"  "$flo-1.mp4"
bash ./cutVid.sh $fil "00:01:15" "00:00:05"  "$flo-2.mp4"
bash ./cutVid.sh $fil "00:02:27" "00:00:59"  "$flo-3.mp4"
bash ./cutVid.sh $fil "00:06:35" "00:00:06"  "$flo-4.mp4"
bash ./cutVid.sh $fil "00:06:52" "00:00:06"  "$flo-5.mp4"


ffmpeg -f concat  -safe 0 -i mylist.txt -c copy "$flo-all.mp4"
# ffmpeg -i "$flo-all.mp4" -c copy -bsf:v h264_mp4toannexb -f mpegts "$flo-all.ts"
#
# 13:38-13:50 (Gasmaske in Schützengrab, Verletzte bergen im Schützengrab)
# 16:35-16:39 (Blinde)
#

fil="$dr/vid2.mp4"
flo="$dr/vid2"

# rm mylist.txt

bash ./cutVid.sh $fil "00:13:38" "00:00:12"  "$flo-1.mp4"
bash ./cutVid.sh $fil "00:16:35" "00:00:04"  "$flo-2.mp4"
#
ffmpeg -f concat  -safe 0 -i mylist.txt -c copy "$flo-all.mp4"
# ffmpeg -i "$flo-all.mp4" -c copy -bsf:v h264_mp4toannexb -f mpegts "$flo-all.ts"

# cat *.ts > output.ts
# ffmpeg -i output.ts -c copy all-12.mp4
