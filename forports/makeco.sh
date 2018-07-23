#!/bin/sh
#sleep 180
#sh /root/work/forppp/pdl.sh
#sleep 30

wd=/root/work/forports

tmes=`date '+%y-%m-%d_%H%M%S'`
ldsrc=`cat /root/work/forports/listco`
#sleep 30
cat ${wd}/log/co.log >> ${wd}/log/operationlist.log
echo ${tmes}'_:_:_:_svn update_:_:_:_/usr/ports' > ${wd}/log/co.log
#t | svn update /usr/ports
echo ${tmes}'_:_:_:_svn update /usr/ports_:_:_:_' >> ${wd}/log/usr/svnupdates_${tmes}.log
cat ${wd}/log/currentoperation.log >> ${wd}/log/usr/svnupdates_${tmes}.log
truncate -c -s 0 ${wd}/log/currentoperation.log

for i in ${ldsrc}
do

ct=`date '+%y-%m-%d_%H%M%S'`
echo 'wd '${wd}'  i  '${i}
mkdir -p ${wd}/log${i}
outf=${wd}/log${i}/mfr_${ct}.log
ofrl=${wd}/log${i}/mfr_${ct}.log
op=${wd}/log${i}/mp_${ct}.log
ocs=${wd}/log${i}/mcs_${ct}.log
co=${wd}/log/currentoperation.log

cd ${i}
rotatellog=cat /root/work/forports/log/co.log >> /root/work/forports/log/operationlist.log
${rotatelog}
echo ${ct}'_:_:_:_make patch_:_:_:_'${i} > ${wd}/log/co.log

make patch

cp ${co} ${op}
truncate -c -s 0 ${co}

${rotatelog}
echo ${ct}'_:_:_:_make fetch-recursive_:_:_:_'${i} > ${wd}/log/co.log

make fetch-recursive

${rotatelog}
echo ${ct}'_:_:_:_make checksum_:_:_:_'${i} > ${wd}/log/co.log

cp ${co} ${ofrl}
truncate -c -s 0 ${co}

make checksum

cp ${co} ${ocs}
truncate -c -s 0 ${co}

done

