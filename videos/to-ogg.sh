#!/bin/bash


ls *webm|while read i;
do
	filename="$i"
	name="${filename%.*}"
	ext="${filename##*.}"

	if [[ -f "$name-audio.ogg" ]]; then
		continue
	fi

	echo "convert $filename to ogg"
	#echo "$name-audio.mp3"
	ffmpeg -i "$filename" -loglevel quiet -vn -c:a libvorbis "$name-audio.ogg" 2>/dev/null
done
