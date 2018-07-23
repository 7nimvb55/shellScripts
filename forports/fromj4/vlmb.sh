#!/bin/sh
wd=/root/work/forports
cd ${wd}
cmds=`cat log/mb.log | awk -F 'f /' '{print $2}'`
for i in ${cmds}
do
echo 'in /'${i}': '
tail -f  /${i}
done
