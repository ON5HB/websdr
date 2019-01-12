#!/bin/bash


killall -KILL websdr64
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

sleep 4
nice -n -10 screen -dmS websdr taskset -c 1 ./websdr64

### Needed for upconverter
##### sleep 120 needed for FFT = 2 value
sleep 6
killall -s9 rsp_tcp
killall -s9 rsp_tcp
killall -s9 rsp_tcp

sleep 1
screen -dmS rsp_tcp0-2 taskset -c 0 rsp_tcp -p1234 -L -d1 -N -n1500
sleep 1
screen -dmS rsp_tcp2-5 taskset -c 0 rsp_tcp -p1235 -L -d2 -N -n1500
sleep 1
screen -dmS rsp_tcp5-8 taskset -c 0 rsp_tcp -p1236 -L -d3 -N -n1500

exit



