#!/bin/bash

VIDEOQUALITY=10		# video quality, range: 0-10
AUDIOQUALITY=1		# audio quality, range: -2 - 10
AUDIOBITRATE=96		# audio bitrate
CHANNELS=1			# channels
ESTIMATED_BITRATE=600	# encoding bitrate for video kb/s
SAMPLERATE=32000	# audio output sample rate: Hz
EXTENSION=mov		# the extension of the source files

echo "First pass"

for file in *.$EXTENSION; do
	ffmpeg2theora --videoquality=$VIDEOQUALITY -V $ESTIMATED_BITRATE --audioquality=$AUDIOQUALITY --audiobitrate=$AUDIOBITRATE --channels=$CHANNELS --samplerate=$SAMPLERATE --two-pass --first-pass=${file/mov/pass} $file -o ${file/$EXTENSION/ogv}
done

echo “Second pass”

for file in *.pass; do
	echo ${file/tmp/ogv}
	ffmpeg2theora --videoquality=$VIDEOQUALITY -V $ESTIMATED_BITRATE --audioquality=$AUDIOQUALITY --audiobitrate=$AUDIOBITRATE --channels=$CHANNELS --samplerate=$SAMPLERATE --two-pass --second-pass=$file ${file/pass/$EXTENSION} -o ${file/pass/ogv}
done

echo "Removing *.pass files"

rm *.pass