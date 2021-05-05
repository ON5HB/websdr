#!/bin/bash

killall -KILL rsp_tcp
killall -KILL rtl_tcp
killall -KILL airspyhf_tcp

sleep 2
/etc/init.d/airspyhf_tcp_1 stop
sleep 2
/etc/init.d/airspyhf_tcp_2 stop
sleep 2
/etc/init.d/rsp_tcp_1 stop
sleep 2
/etc/init.d/rsp_tcp_2 stop
sleep 2
/etc/init.d/rsp_tcp_3 stop
sleep 2
/etc/init.d/airspyhf_tcp_1 start
sleep 2
/etc/init.d/airspyhf_tcp_2 start
sleep 2
/etc/init.d/rsp_tcp_1 start
sleep 2
/etc/init.d/rsp_tcp_2 start
sleep 2
/etc/init.d/rsp_tcp_3 start

exit



