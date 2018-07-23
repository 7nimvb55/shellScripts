#!/bin/sh
if [ $1 ]; then
srcStr=$1
else
srcStr='for example'
fi
echo ${srcStr} | awk -F '|' '{print substr($1,1,2) substr($1,length($1),1)}'

echo 'StringToOutPosFirstSecondLastSymbols' | awk -F '|' \
'{print "Source string is: " $1 " 1,2,EL Pos from string: \
" substr($1,1,2) substr($1,length($1),1) "\n   - Where EL\
is End of Line (String)"}'
#Source string:for example 1,2,EL Pos from string: fol
#   - Where EL is End of Line (String)

getNcJip()
{
	ji1=10
	ji2=`od -An -N2 -i /dev/random | sed -e 's/ //g' | awk '{ print $1 % 256 }'`
	ji3=`od -An -N2 -i /dev/random | sed -e 's/ //g' | awk '{ print $1 % 256 }'`
	ji4=`od -An -N2 -i /dev/random | sed -e 's/ //g' | awk '{ print $1 % 256 }'`
	dji1=`echo "obase=2;$ji1" | bc | awk -F '|' \
		'{print substr("00000000",1,\
		8-length($1)) $1}'`
	dji2=`echo "obase=2;$ji2" | bc | awk -F '|' \
		'{print substr("00000000",1,\
		8-length($1)) $1}'`
	dji3=`echo "obase=2;$ji3" | bc | awk -F '|' \
		'{print substr("00000000",1,\
		8-length($1)) $1}'`
	dji4=`echo "obase=2;$ji4" | bc | awk -F '|' \
		'{print substr("00000000",1,\
		8-length($1)) $1}'`
	echo "$ji1.$ji2.$ji3.$ji4"
	echo "$dji1.$dji2.$dji3.$dji4"
}

getNcJip

		M3=10
		
		
		M4=`od -An -N2 -i /dev/random | sed -e 's/ //g' | \
				awk '{ print $1 % 256 }'`
		M5=`od -An -N2 -i /dev/random | sed -e 's/ //g' | \
				awk '{ print $1 % 256 }'`
		M6=`od -An -N2 -i /dev/random | sed -e 's/ //g' | \
				awk '{ print $1 % 256 }'`

				
		echo $M4' - '$M5' - '$M6
		echo "obase=2;$M3" | bc | awk -F '|' \
		'{print substr("00000000",8-length($1),\
		length($1)) $1}'