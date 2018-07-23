#!/bin/sh
#sleep 180
#sh /root/work/forppp/pdl.sh
#sleep 30
wd=/root/work/forports

tmes=`date '+%y-%m-%d_%H%M%S'`
ldsrc=`cat /root/work/forports/listi`
#sleep 30
for i in ${ldsrc}
do
ct=`date '+%y-%m-%d_%H%M%S'`
echo 'wd '${wd}'  i  '${i}
mkdir -p ${wd}/log${i}
outf=${wd}/log${i}/mi_${ct}.log


cd ${i}
cat ${wd}/log/mi.log >> ${wd}/log/mi.log.old
echo ${ct}' ***start install*** '${i} > ${wd}/log/mi.log
echo 'to view process: tail -f '${outf} | tee -ai ${wd}/log/mi.log
echo '#!/bin/sh' > ${wd}/vl.sh
echo 'tail -f '${outf} >> ${wd}/vl.sh
/usr/sbin/daemon -o ${outf} -u root -t mi${ct} make install
echo 'daemon title: mi'${ct} | tee -ai ${wd}/log/mi.log
ps -xaf | grep mi${ct}
done

