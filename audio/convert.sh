#!/bin/bash

SAVEIF=$IFS
IFS=$(echo -en "\n\b")

for file in $(ls *WAV)
do
  name=${file%%.WAV}
  lame -V0 -h -b 160 --vbr-new $name.WAV $name.mp3
done


IFS=$SAVEIFS
