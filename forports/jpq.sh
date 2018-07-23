#!/bin/sh
#sleep 180
#sh /root/work/forppp/pdl.sh
#sleep 30
wd=/root/work/forports
tmes=`date '+%y-%m-%d_%H%M%S'`
cd ${wd}
/usr/sbin/daemon -o /root/work/forports/log/currentoperation.log -u root -t jpq${tmes} sh makeco.sh
echo ${tmes}'_:_:_:_start job ports queue him daemon title_:_:_:_jpq'${tmes} | tee -ai ${wd}/log/co.log
echo ${tmes}'_:_:_:_daemon process_:_:_:_'ps -xaf | grep jpq${tmes} | tee -ai ${wd}/log/co.log

