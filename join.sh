#!/bin/bash
#将多个.wav文件合成一个.wav并转码为.flac加.cue
rm -f CDImage.flac
rm -f CDImage.cue
rm -f out.wav
python ./wave_join.py *.wav -o out.wav
shntool conv -o flac out.wav -d ./ -O always
mv out.flac CDImage.flac
rm -f out.wav
rm -f out.flac
exit
