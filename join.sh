#!/bin/bash
#将多个.wav文件合成一个.wav并转码为.flac加.cue
rm -f CDImage.flac
rm -f CDImage.cue
rm -f /dev/shm/out.wav
python /home/liyf/ftp/wave_join.py *.wav -o /dev/shm/out.wav
shntool conv -o flac /dev/shm/out.wav -d ./ -O always
mv /dev/shm/out.flac CDImage.flac
rm -f /dev/shm/out.wav
rm -f /dev/shm/out.flac
exit
