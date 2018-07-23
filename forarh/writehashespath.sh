#!/bin/sh
cd /root/work/foroutputs/fsmd5sha256
dirlists=`date '+%y-%m-%d_%H%M'`
outfile=`echo '/root/work/foroutputs/fsmd5sha256/'$2'_dirs_'${dirlists}`
#echo $0
echo $1
mtree -c -x -K cksum -K md5digest -K sha256digest -p $1 > ${outfile}
echo ${outfile} >> /root/work/foroutputs/fileslist.out
cd /root/work/foroutputs/fsmd5sha256
#mtree -f dirs_17-10-14_0222 -f dirs_17-10-14_0223
