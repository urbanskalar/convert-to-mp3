#!/bin/sh

dir=./mp3/
mkdir -p ${dir}
for i in *.flac;
  do name=`echo "$i" | sed 's/\.[^.]*$//'`
  echo "$name"
  ffmpeg -i "$i" -ab 320k -map_metadata 0 -id3v2_version 3 -vsync 2 "${dir}${name}.mp3"
done


for i in *.m4a;
  do name=`echo "$i" | sed 's/\.[^.]*$//'`
  echo "$name"
  ffmpeg -i "$i" -ab 320k -map_metadata 0 -id3v2_version 3 -vsync 2 "${dir}${name}.mp3"
done


for i in *.opus;
  do name=`echo "$i" | sed 's/\.[^.]*$//'`
  echo "$name"
  ffmpeg -i "$i" -ab 320k -map_metadata 0 -id3v2_version 3 -vsync 2 "${dir}${name}.mp3"
done


for i in *.ogg;
  do name=`echo "$i" | sed 's/\.[^.]*$//'`
  echo "$name"
  ffmpeg -i "$i" -ab 320k -map_metadata 0 -id3v2_version 3 -vsync 2 "${dir}${name}.mp3"
done

for i in *.mp3;
  do name=`echo "$i" | sed 's/\.[^.]*$//'`
  echo "$name"
  cp "$i" "${dir}${name}.mp3"
done

