#!/bin/sh
wd=/root/work/forports
cd ${wd}
cmds=`cat log/mi.log | awk -F 'f /' '{print $2}'`
for i in ${cmds}
do
printf `\033[1E;20 in /`${i}`: \033[0m`
tail -f  /${i}
done
