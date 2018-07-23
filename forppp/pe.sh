#!/bin/sh
ifw=/sbin/ipfw
${ifw} 01000 delete
${ifw} 01010 delete
${ifw} 01020 delete
${ifw} 01030 delete
#killall ppp
