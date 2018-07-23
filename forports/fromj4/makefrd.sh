#!/bin/sh
#sleep 180
#sh /root/work/forppp/pdl.sh
#sleep 30
wd=/root/work/forports

tmes=`date '+%y-%m-%d_%H%M%S'`
ldsrc=`cat /root/work/forports/listfr`
#sleep 30
for i in ${ldsrc}
do
ct=`date '+%y-%m-%d_%H%M%S'`
echo 'wd '${wd}'  i  '${i}
mkdir -p ${wd}/log${i}
outf=${wd}/log${i}/mfr_${ct}.log

cd ${i}
echo ${ct}' ***start fetch-recursive*** '${i} >> ${wd}/log/mfr.log
echo 'to view process: tail -f '${outf} | tee -ai ${wd}/log/mfr.log
/usr/sbin/daemon -o ${outf} -u root -t mfr${ct} make fetch-recursive

done

