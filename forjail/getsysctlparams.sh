#!/bin/sh
#Script for create template model for new jails creation
#Script Directory Path
sdp=/root/work/forjail/

sysparam=`sysctl -a | grep jail | awk -F ': ' '{print($1)}'`

for sp in ${sysparam}
do
outcmd1=`sysctl -d ${sp}`
outcmd2=`sysctl ${sp}`
echo '#'
echo '#'
echo '#'
echo '#'${outcmd1}
echo '# Him system value is:'
echo '#'${outcmd2}
echo '#'
echo '# For change, uncomment and change there'
echo '#'${outcmd2} 
done

