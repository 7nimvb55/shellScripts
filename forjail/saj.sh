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

for mi in ${rjei}
do
echo 'Unmount fs '${rje}${mi}/sl', '${rje}${mi} 
umount ${rje}${mi}/sl
umount ${rje}${mi}
done

#Template directories with read and write access modes (chmod)
rjet=${rje}trwl/



