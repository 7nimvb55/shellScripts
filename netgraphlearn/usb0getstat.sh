#!/bin/sh

rectime="`date +%y-%m-%d_%H%M%S`" 
echo "#at# ${rectime} #cmd# ngctl msg ubt0: get_stat #out#" >> /root/work/netgraphlearn/cmdout.log 
ngctl msg ubt0: get_stat >> /root/work/netgraphlearn/cmdout.log
logfile="/root/work/netgraphlearn/cmdout.log"
cmd01="ngctl types"
cmd02="ngctl list"
cmd03="ngctl show ubt0:"
cmd04="ngctl status ubt0:"
cmd05="ngctl show btsock_hci_raw:"
cmd06="ngctl status btsock_hci_raw:"
cmd07="ngctl show btsock_l2c_raw:"
cmd08="ngctl status btsock_l2c_raw:"
cmd09="ngctl show btsock_l2c:"
cmd10="ngctl status btsock_l2c:"
cmd11="ngctl show btsock_sco:"
cmd12="ngctl status btsock_sco:"
cmd13="ngctl show ubt0hci:"
cmd14="ngctl status ubt0hci:"
cmd15="ngctl show ubt0l2cap:"
cmd16="ngctl status ubt0l2cap:"
cmd17="ngctl msg ubt0: get_stat"

echo "#at# ${rectime} #cmd# ${cmd01} #out#" >> ${logfile}
${cmd01} >> ${logfile}
echo "01 ok"
echo "#at# ${rectime} #cmd# ${cmd02} #out#" >> ${logfile}
${cmd02} >> ${logfile}
echo "02 ok"
echo "#at# ${rectime} #cmd# ${cmd03} #out#" >> ${logfile}
${cmd03} >> ${logfile}
echo "03 ok"
echo "#at# ${rectime} #cmd# ${cmd04} #out#" >> ${logfile}
${cmd04} >> ${logfile}
echo "04 ok"
echo "#at# ${rectime} #cmd# ${cmd05} #out#" >> ${logfile}
${cmd05} >> ${logfile}
echo "05 ok"
echo "#at# ${rectime} #cmd# ${cmd06} #out#" >> ${logfile}
${cmd06} >> ${logfile}
echo "06 ok"
echo "#at# ${rectime} #cmd# ${cmd07} #out#" >> ${logfile}
${cmd07} >> ${logfile}
echo "07 ok"
echo "#at# ${rectime} #cmd# ${cmd08} #out#" >> ${logfile}
${cmd08} >> ${logfile}
echo "08 ok"
echo "#at# ${rectime} #cmd# ${cmd09} #out#" >> ${logfile}
${cmd09} >> ${logfile}
echo "09 ok"
echo "#at# ${rectime} #cmd# ${cmd10} #out#" >> ${logfile}
${cmd10} >> ${logfile}
echo "10 ok"
echo "#at# ${rectime} #cmd# ${cmd11} #out#" >> ${logfile}
${cmd11} >> ${logfile}
echo "11 ok"
echo "#at# ${rectime} #cmd# ${cmd12} #out#" >> ${logfile}
${cmd12} >> ${logfile}
echo "12 ok"
echo "#at# ${rectime} #cmd# ${cmd13} #out#" >> ${logfile}
${cmd13} >> ${logfile}
echo "13 ok"
echo "#at# ${rectime} #cmd# ${cmd14} #out#" >> ${logfile}
${cmd14} >> ${logfile}
echo "14 ok"
echo "#at# ${rectime} #cmd# ${cmd15} #out#" >> ${logfile}
${cmd15} >> ${logfile}
echo "15 ok"
echo "#at# ${rectime} #cmd# ${cmd16} #out#" >> ${logfile}
${cmd16} >> ${logfile}
echo "16 ok"
echo "#at# ${rectime} #cmd# ${cmd17} #out#" >> ${logfile}
${cmd17} >> ${logfile}
echo "17 ok"
