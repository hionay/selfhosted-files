#!/usr/bin/env bash
ip link add adguard-shim link eth3 type macvlan mode bridge
ip addr add 192.168.1.154/32 dev adguard-shim
ip link set adguard-shim up
ip route add 192.168.1.152/30 dev adguard-shim
