#!/bin/bash

echo "Recording... "
rec -r 44100 -L -b 16 -t wav - silence 1 0.1 3% 1 3.0 3% | ffmpeg -loglevel panic -y -i - -ar 16000 -acodec flac file.flac  > /dev/null 2>&1

echo "Processing..."
wget -q -U "Mozilla/5.0" --post-file file.flac --header "Content-Type: audio/x-flac; rate=16000" -O - "http://www.google.com/speech-api/v1/recognize?lang=en-us&client=chromium" | cut -d\" -f12  >stt.txt

echo -n "You Said: "
cat stt.txt
python script.py

rm file.flac  > /dev/null 2>&1

