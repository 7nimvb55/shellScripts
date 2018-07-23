#!/bin/sh
workdir=/root/work/forarh/
hashesdirs=`/bin/cat ${workdir}list` 
#${workdir}writehashes.sh

for i in ${hashesdirs}
#for i in `/bin/cat ${workdir}list`
do
  echo $i
done

echo 'in string ${hashesdirs} outed'
