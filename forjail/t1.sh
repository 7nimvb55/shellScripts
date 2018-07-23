#!/bin/sh
#route flush
#route add -inet default 10.0.0.2
#
ncgrnum(){
	
	local ncCurNum ncFuncIter
	ncCurNum=0
	ncFuncIter=10
	
	while [ ${ncCurNum} -eq 0 ]; do
		ncCurNum=`od -An -N2 -i /dev/random | sed -e 's/ //g' | \
			awk '{ print $1 % 254 }'`
		
		ncFuncIter=`expr "${ncFuncIter}" - 1`
		

		if [ $ncFuncIter -eq 0 ]; then
			exit
		fi
		
		if [ ${ncCurNum} -ge 254 ]; then
			ncCurNum=0
			continue
		fi
	
	done
	echo $ncCurNum 
}

	MAC_PREFIX="e8:11:32"
	M4=$( ncgrnum )
#	nciterch=10
#	
#	while [ ${M4} -eq 0 ]; do
#		M4=`od -An -N2 -i /dev/random | sed -e 's/ //g' | \
#			awk '{ print $1 % 256 }'`
#		
#		nciterch=`expr "${nciterch}" - 1`
#		
#
#		if [ $nciterch -eq 0 ]; then
#			exit
#		fi
#		
#		if [ ${M4} -ge 254 ]; then
#			M4=0
#			continue
#		fi
#	
#	done

	M5=$( ncgrnum )
#	nciterch=10
	
#	while [ ${M5} -eq 0 ]; do
#		M5=`od -An -N2 -i /dev/random | sed -e 's/ //g' | \
#			awk '{ print $1 % 256 }'`
#
#		nciterch=`expr ${nciterch} - 1`
#		
#		echo $nciterch
#		M5=255
#		
#		if [ $nciterch -eq 0 ]; then
#			break
#		fi
#		
#		if [ ${M5} -ge 254 ]; then
#			M5=0
#			continue
#		fi
#	
#	done

	M6=$( ncgrnum )
#	nciterch=10
#	
#	while [ ${M6} -eq 0 ]; do
#		M6=`od -An -N2 -i /dev/random | sed -e 's/ //g' | \
#			awk '{ print $1 % 256 }'`;
#
#		nciterch=`expr "${nciterch}" - 1`;
#		
#		if [ $nciterch -eq 0 ]; then
#			echo 'Limit of iteration count 10, error, exit, MAC not generated';
#			exit;
#		fi
#		
#		if [ ${M6} -ge 254 ]; then
#			M6=0;
#			continue;
#		fi
#	
#	done
	#local
	MAC=`printf ${MAC_PREFIX}:%02x:%02x:%02x ${M4} ${M5} ${M6}`
	# Set the link address (mac address) of virtual interface in
	# virtual node to randomly generated MAC.
	echo ${MAC}