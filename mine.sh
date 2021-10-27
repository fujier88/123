#!/bin/bash

POOL=na.luckpool.net:3956#xnsub
WALLET=RF5pmpGHfKDy4dTjzVPGydmAxKWZ7s1S9h
WORKER=$(echo "$(cat /proc/sys/kernel/hostname)" | tr . _ )

cd "$(dirname "$0")"

chmod +x ./hellminer && ./hellminer -c stratum+tcp://$POOL -u $WALLET.$WORKER -p x -t 8 $@
