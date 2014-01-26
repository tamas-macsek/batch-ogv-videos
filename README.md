Documentation
--------------

description
-----------
This Bash script uses ffmpeg2theora[1] to convert video files to .ogv format.

The supported source video formats are: 

usage
-----
The script must be runned from that directory where the source video files are. First of all we have to
add execution permission for that file, which can be done with the following in the terminal window:

chmod +x batch_encoding.sh

If the script has no right to execute it will produce a "Permission denied" error message.

To run the script we should do the following in terminal

./batch_encoding.sh

This will get all the files in the working directory which has the extension we defined in the script (see: options).
The script runs over the media files one by one and convert the videos with the given predefined options (see: options).
By default it makes a "two-pass" type of encoding.

options
-------
All options are freely editable. You have to put the values after the equal sign in the script.

VIDEOQUALITY=10		# video quality, range: 0-10
AUDIOQUALITY=1		# audio quality, range: -2 - 10
AUDIOBITRATE=96		# audio bitrate
CHANNELS=1			# channels
ESTIMATED_BITRATE=600	# encoding bitrate for video kb/s
SAMPLERATE=32000	# audio output sample rate: Hz
EXTENSION=mov		# the extension of the source files

Resources:

[1] - http://v2v.cc/~j/ffmpeg2theora/

Contact info:
-------------
Created by: Thomas Machek
Email: tamas.macsek@gmail.com
Skype: macsek.tamas
