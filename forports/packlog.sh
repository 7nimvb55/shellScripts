#!/bin/sh
#du -mxd 1 /usr/tulmsl/tokousdsrlem/root/work/forports/log
#du -mxd 1 /usr/tulmsl/tofousssrlcm/root/work/forports/log
dir1=/usr/tulmsl/tokousdsrlem/root/work/forports/log
dir2=/usr/tulmsl/tofousssrlcm/root/work/forports/log
dirarh=/usr/backup/install_logs
ct=`date '+%y-%m-%d_%H%M%S'`
mkdir -p ${dirarh}
chflags -R 0 ${dir1}/*
chflags -R 0 ${dir2}/*
#echo 'tar'
tar -cj -hP -T ${dir1} -f ${dirarh}/log_tokousdsrlem${ct}.tar.bzip2
rm -Rdf ${dir1}/*
tar -cj -hp -T ${dir2} -f ${dirarh}/log_tofousssrlcm${ct}.tar.bzip2
rm -Rdf ${dir1}/*

