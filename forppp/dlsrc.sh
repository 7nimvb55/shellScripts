#!/bin/sh
#sleep 180
tmes=`date '+%y-%m-%d_%H%M%S'`
echo 'Start ppp'${tmes} >> /root/work/startdl.out
sh /root/work/forppp/pdl.sh
sleep 60
cd /usr/ports/x11/xorg
echo 'start dl xorg' >> /root/work/startdl.out
make fetch-recursive >> /root/work/forppp/xorg.out
cd /usr/ports/x11/kde4
echo 'start dl kde4' >> /root/work/startdl.out
make fetch-recursive >> /root/work/forppp/kde4.out
echo 'start dl virtual box' >> /root/work/startdl.out
cd /usr/ports/emulators/virtualbox-ose-kmod
make fetch-recursive >> /root/work/forppp/vbox_kmod.out
cd /usr/ports/emulators/virtualbox-ose
make fetch-recursive >> /root/work/forppp/vbox_ose.out
cd /usr/ports/emulators/virtualbox-additions
make fetch-recursive >> /root/work/forppp/vbox_add.out
