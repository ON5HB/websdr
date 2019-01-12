#!/bin/bash

killall -s 9 rsp_tcp
killall -s 9 rsp_tcp
killall -s 9 rsp_tcp

cd /opt/websdr/dist11

### RSP1A rules
sleep 1
screen -dmS rsp_tcp1 taskset -c 0 rsp_tcp -d1 -p1234 -r60 -A-30 -L -N -n1500
sleep 1
screen -dmS rsp_tcp2 taskset -c 0 rsp_tcp -d2 -p1235 -r60 -A-30 -L -N -n1500
sleep 1
screen -dmS rsp_tcp3 taskset -c 0 rsp_tcp -d3 -p1236 -r60 -A-30 -L -N -n1500

exit

