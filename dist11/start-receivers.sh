#!/bin/bash

killall -KILL rsp_tcp
killall -KILL sdrplay_apiServ
killall -KILL sdrplay_apiServ

sleep 2
sdrplay_apiService
sleep 2
/etc/init.d/rsp_tcp_1 stop
sleep 2
/etc/init.d/rsp_tcp_2 stop
sleep 2
/etc/init.d/rsp_tcp_3 stop
#sleep 4
#/etc/init.d/rtl_tcp_1 restart

sleep 2
/etc/init.d/rsp_tcp_1 start
sleep 2
/etc/init.d/rsp_tcp_2 start
sleep 2
/etc/init.d/rsp_tcp_3 start

exit



