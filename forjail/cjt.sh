#!/bin/sh
#Script for create template model for new jails creation
#Script Directory Path
sdp=/root/work/forjail/
#Root Jail Entitys directory
rje=/usr/toussrlm/
#Root Jail Entitys index list
rjei=`cat ${sdp}list`
rjesl=/usr/tulmsl/
#Root Jail Entitys main and readonly directory
rjemrd=${rje}mrod/
mkdir -p ${rje} ${rjemrd}



#cd /usr/src
#make buildworld
#make installworld DESTDIR=${rjemrd}

#cd ${rjemrd}
#mkdir -p usr/ports

#portsnap -p ${rjemrd}usr/ports fetch extract

echo 'cp -Rp /usr/ports/* '${rjemrd}'usr/ports'
echo 'cp -Rp /usr/src/* '${rjemrd}'usr/src'

#Template directories with read and write access modes (chmod)
rjet=${rje}trwl/
#mkdir ${rjet} ${rjet}home/ ${rjet}usr-X11R6/ ${rjet}distfiles
#mv etc ${rjet}
#mv usr/local ${rjet}usr-local
#mv tmp ${rjet}
#mv var ${rjet}
#mv root ${rjet}

#yes | mergemaster -t ${rjet}var/tmp/temproot -D ${rjet} -i
#cd ${rjet}
#rm -dR bin boot lib libexec mnt proc rescue sbin sys usr dev

#cd ${rjemrd}
#mkdir sl
#ln -s sl/etc etc
#ln -s sl/home home
#ln -s sl/root root
#ln -s ../sl/usr-local usr/local
#ln -s ../sl/usr-X11R6 usr/X11R6
#ln -s ../../sl/distfiles usr/ports/distfiles
#ln -s sl/tmp tmp
#ln -s sl/var var

#echo 'WRKDIRPREFIX = /sl/portbuild' > ${rjet}/etc/make.conf

#echo 'jail_enable="YES"' >> /etc/rc.conf
#echo 'jail_set_hostname_allow="NO"' >> /etc/rc.conf
#echo 'jail_list="'${rjei}'"' >> /etc/rc.conf

x=17
for i in ${rjei}
do
#mkdir -p ${rje}${i}
#mkdir -p ${rjesl}${i}
#echo ${rjemrd}'	'${rje}${i}'		nullfs	ro		0	0' >> /etc/fstab
#echo ${rjesl}${i}'	'${rje}${i}'/sl		nullfs	rw		0	0' >> /etc/fstab
#echo 'jail_'${i}'_hostname="'${i}'.locNC.ru"' >> /etc/rc.conf
#echo 'jail_'${i}'_ip="10.37.10.'${x}'"' >> /etc/rc.conf

#((x++))
#echo 'jail_'${i}'_rootdir="'${rje}${i}'"' >> /etc/rc.conf
#echo 'jail_'${i}'_devfs_enable="YES"' >> /etc/rc.conf
#cp -Rp ${rjet} ${rjesl}${i}
done


