#!/bin/sh
#sleep 180
#sh /root/work/forppp/pdl.sh
#sleep 30
wd=/root/work/forports

tmes=`date '+%y-%m-%d_%H%M%S'`
ldsrc=`cat /root/work/forports/listgam`
#sleep 30
for i in ${ldsrc}
do
ct=`date '+%y-%m-%d_%H%M%S'`
echo 'wd '${wd}'  i  '${i}
mkdir -p ${wd}/log${i}
outf=${wd}/log${i}/di_${ct}.log

cd /usr/ports/games/${i}
cat ${wd}/log/di.log >> ${wd}/log/di.log.old
echo ${ct}' ***start build*** '${i} > ${wd}/log/di.log
echo 'to view process: tail -f '${outf} | tee -ai ${wd}/log/mb.log
/usr/sbin/daemon -o ${outf} -u root -t di${ct} make deinstall && make clean
echo 'daemon title: di'${ct} | tee -ai ${wd}/log/di.log
ps -xaf | grep di${ct}
done

