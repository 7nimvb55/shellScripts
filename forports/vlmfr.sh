#!/bin/sh
cmds=`cat log/mfr.log | awk -F 'f /' '{print $2}'`
for i in ${cmds}
do
echo 'in /'${i}': '
tail -f  /${i}
done
