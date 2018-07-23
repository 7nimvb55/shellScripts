#!/bin/sh
#sleep 180
#sh /root/work/forppp/pdl.sh
#sleep 30
wd=/root/work/forports

tmes=`date '+%y-%m-%d_%H%M%S'`
ldsrc=`cat /root/work/forports/listri`
#sleep 30
for i in ${ldsrc}
do
ct=`date '+%y-%m-%d_%H%M%S'`
echo 'wd '${wd}'  i  '${i}
mkdir -p ${wd}/log${i}
outf=${wd}/log${i}/mi_${ct}.log


cd ${i}
cat ${wd}/log/mri.log >> ${wd}/log/mri.log.old
echo ${ct}' ***start reinstall*** '${i} > ${wd}/log/mri.log
echo 'to view process: tail -f '${outf} | tee -ai ${wd}/log/mri.log
echo '#!/bin/sh' > ${wd}/vlrid.sh
echo 'tail -f '${outf} >> ${wd}/vlrid.sh
chmod 700 ${wd}/vlrid.sh
/usr/sbin/daemon -o ${outf} -u root -t mri${ct} make reinstall
echo 'daemon title: mri'${ct} | tee -ai ${wd}/log/mri.log
ps -xaf | grep mi${ct}
done

