rm test1800.mp4
FFMPEG=ffmpeg
${FFMPEG} -threads 6 -r 30 -i out/%06d.png -sameq -vcodec libx264 test1800.mkv
#/usr/local/bin/ffmpeg -y -i test1800.mkv -i $1 -map 0.0:1 -map 1:0 -vcodec copy -acodec copy render.mkv
${FFMPEG} -y -i test1800.mkv -i $1 -vcodec copy -acodec copy render.mkv
