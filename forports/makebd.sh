#!/bin/sh
#sleep 180
#sh /root/work/forppp/pdl.sh
#sleep 30
wd=/root/work/forports

tmes=`date '+%y-%m-%d_%H%M%S'`
ldsrc=`cat /root/work/forports/listb`
#sleep 30
for i in ${ldsrc}
do
ct=`date '+%y-%m-%d_%H%M%S'`
echo 'wd '${wd}'  i  '${i}
mkdir -p ${wd}/log${i}
outf=${wd}/log${i}/mb_${ct}.log

cd ${i}
cat ${wd}/log/mb.log >> ${wd}/log/mb.log.old
echo ${ct}' ***start build*** '${i} > ${wd}/log/mb.log
echo 'to view process: tail -f '${outf} | tee -ai ${wd}/log/mb.log
/usr/sbin/daemon -o ${outf} -u root -t mb${ct} make build
echo 'daemon title: mb'${ct} | tee -ai ${wd}/log/mb.log
ps -xaf | grep mb${ct}
done

