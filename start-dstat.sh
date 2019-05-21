#!/bin/bash

rm -rf /data/users/bdelmonte/flink-experimental/binaries/dstat/dstat-`hostname`.csv
python /data/users/bdelmonte/flink-experimental/binaries/dstat/dstat -cdgmnrpryl --mem-adv -C 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,total -N eth0 --epoch --noheaders --vm-adv --aio  --bw --nocolor --output /data/users/bdelmonte/flink-experimental/binaries/dstat/dstat-`hostname`.csv 5 > /dev/null 2>&1 &
pid=$!

echo $pid > /data/users/bdelmonte/flink-experimental/binaries/dstat/dstat.pid
