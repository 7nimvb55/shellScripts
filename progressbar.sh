#!/bin/sh
progressBar(){
  progress=$(( $1*30/100 ))
  bar=`printf "\33[41m% ${progress}s\33[m" ""`
  printf "\33[37D[%- 38s] %- 4s" "${bar}" "$1%"
}

i=0

printf "Check system: \33[37C"

while [ $i -le 100 ];
do
  progressBar $i
  i=$(( $i + 1 ))
  sleep 1
done


echo
