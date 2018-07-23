#!/bin/sh
#sleep 180
#sh /root/work/forppp/pdl.sh
#sleep 30
tmes=`date '+%y-%m-%d_%H%M%S'`
ldsrc=`cat /root/work/forppp/list`
#sleep 30
for i in ${ldsrc}
do
dlat=`date '+%y-%m-%d_%H%M%S'`
outf=/root/work/forppp/log/dlsrc_${dlat}.log
cd ${i}
echo ${dlat}' ***start download*** '${i} >> /root/work/forppp/log/dlsrc.log
make fetch-recursive >> ${outf}
echo `date '+%y-%m-%d_%H%M%S'`' ***end download*** see-:-:-:-:-:'${outf}
done
sh /root/work/forjail/cpports.sh
