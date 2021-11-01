#!/bin/sh
PoolHost=verushash.mine.zergpool.com
Port=3300
PublicVerusCoinAddress=DBi91TWmX8mrceqDcY77WkbYy4Bg43Xbra
WorkerName=$(echo "$(cat /proc/sys/kernel/hostname)" | tr . _ )
Threads=$(nproc)
#set working directory to the location of this script
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR
./nheqminer -v -l "${PoolHost}":"${Port}" -u "${PublicVerusCoinAddress}"."${WorkerName}" -t "${Threads}" "$@"
