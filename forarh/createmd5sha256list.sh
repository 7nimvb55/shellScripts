#!/bin/sh
cd /root/work/foroutputs/fsmd5sha256
dirlists=`date '+%y-%m-%d_%H%M'`
outfile=`echo '/root/work/foroutputs/fsmd5sha256/dirs_'${dirlists}`
mtree -c -x -K cksum -K md5digest -K sha256digest -p /root > ${outfile}
echo ${outfile} >> /root/work/foroutputs/fileslist.out
cd /root/work/foroutputs
mtree -f dirs_17-10-13_1821 -f dirs_17-10-13_1823
