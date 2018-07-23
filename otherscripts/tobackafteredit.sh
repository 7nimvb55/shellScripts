#!/bin/sh
inputfilename01=$1
#echo $inputfilename01
cp $inputfilename01 /root/work/backup/`date +%y-%m-%d_%H%M%S`$inputfilename01
ee $inputfilename01
