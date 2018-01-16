#!/bin/bash

killall -KILL websdr64
killall -KILL rtl_tcp
killall -KILL rtl_tcp

cd /opt/websdr/dist11
### Direct sampling setting, niet nodig met upconverter
## screen -dmS rtl_tcp rtl_tcp -D 2

### Normale sampling met up-converter
screen -dmS rtl_tcp80m rtl_tcp -p 1234 -d 1

### 2m Dongle
screen -dmS rtl_tcp2m rtl_tcp -p 1235 -d 0

sleep 4
screen -dmS websdr ./websdr64

### Nodig vanwege bug in websdr met progfreq + upconverter
sleep 4
killall -KILL rtl_tcp

screen -dmS rtl_tcp80m rtl_tcp -g 18 -p 1234 -d 1
screen -dmS rtl_tcp2m rtl_tcp  -g 38 -p 1235 -d 0

exit



