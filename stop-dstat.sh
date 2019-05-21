#!/bin/bash

PID=$(tail -n 1 "/data/users/bdelmonte/flink-experimental/binaries/dstat/dstat.pid")
kill -9 $PID > /dev/null 2>&1
rm -rf /data/users/bdelmonte/flink-experimental/binaries/dstat/dstat.pid
