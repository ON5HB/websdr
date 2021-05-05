#!/bin/bash

killall -s9 rsp_tcp
killall -s9 rtl_tcp
killall -s9 hfp_tcp
killall -s9 websdr64

sleep 2
/etc/init.d/airspyhf_tcp_1 stop
sleep 2
/etc/init.d/airspyhf_tcp_2 stop
sleep 2
/etc/init.d/rsp_tcp_1 stop
sleep 2
/etc/init.d/rsp_tcp_2 stop
#sleep 2
#/etc/init.d/rsp_tcp_3 stop
sleep 2
/etc/init.d/airspyhf_tcp_1 start
sleep 2
/etc/init.d/airspyhf_tcp_2 start
sleep 2
/etc/init.d/rsp_tcp_1 start
sleep 2
/etc/init.d/rsp_tcp_2 start
#sleep 2
#/etc/init.d/rsp_tcp_3 start

cd /opt/websdr/dist11

sleep 3
# taskset -c 3 ./websdr64 > /dev/null 2>&1 &
./websdr64 > /dev/null 2>&1 &
# nice -n -10 screen -dmS websdr ./websdr64

### Needed for upconverter, boxes need a restart!!
##### sleep 120 needed for FFT = 2 value
#sleep 4

##### Just to make sure they are killed!
#killall -s9 rsp_tcp
#killall -s9 rsp_tcp

#sleep 3
#/etc/init.d/rsp_tcp_1 restart
#sleep 3
#/etc/init.d/rsp_tcp_2 restart
#sleep 3
#/etc/init.d/rsp_tcp_3 restart
#sleep 3
#/etc/init.d/rsp_tcp_4 restart

exit



