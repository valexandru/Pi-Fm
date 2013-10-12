#!/bin/sh

/etc/init.d/icecast2 start

while true; do
	sudo timeout 10s wget -O x.wav http://192.168.0.114:8000/listen.mp3
        FILENAME=x.wav
	FILESIZE=0
	FILESIZE=$(stat -c%s "$FILENAME")
	if [ "$FILESIZE" != 0 ];  then 
		break
        fi
done

sudo wget -O - http://192.168.0.114:8000/listen.mp3 | sudo avconv -i - -ar 22500 -ac 1 -f wav - | sudo ./pifm - 108.0
