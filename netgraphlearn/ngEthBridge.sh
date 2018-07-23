#!/bin/sh
kldload -n ng_ether
kldload -n ng_iface
kldload -n ng_hole
kldload -n ng_bridge
kldload -n ng_ppp
kldload -n ng_pipe
kldload -n ng_ksocket
kldload -n ng_vlan
kldload -n ng_socket
kldload -n ng_tee
kldload -n ng_netflow
kldload -n ng_gif
kldload -n ng_pppoe
kldload -n ng_eiface
kldload -n ng_gif_demux

realethernet=rl0
vj1eth=ng0
vj2eth=ng1
vj3eth=ng2
vj4eth=ng3
vj5eth=ng4

ipre=10.37.10.1
ipvj1=10.37.10.17
ipvj2=10.37.10.18
ipvj3=10.37.10.19
ipvj4=10.37.10.20
ipvj5=10.37.10.21