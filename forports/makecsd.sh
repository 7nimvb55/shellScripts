#!/bin/sh
#sleep 180
#sh /root/work/forppp/pdl.sh
#sleep 30
wd=/root/work/forports

tmes=`date '+%y-%m-%d_%H%M%S'`
ldsrc=`cat /root/work/forports/listcs`
#sleep 30
for i in ${ldsrc}
do
ct=`date '+%y-%m-%d_%H%M%S'`
echo 'wd '${wd}'  i  '${i}
mkdir -p ${wd}/log${i}
outf=${wd}/log${i}/mcs_${ct}.log

cd ${i}
echo ${ct}' ***start checksum*** '${i} >> ${wd}/log/mcs.log
echo 'to view process: tail -f '${outf} | tee -ai ${wd}/log/mcs.log
/usr/sbin/daemon -o ${outf} -u root -t mcs${ct} make checksum

done

