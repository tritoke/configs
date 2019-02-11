#!/bin/bash
while true
do
xsetroot -name "$(free -h --si | grep -i mem | awk '{print($3)}')::$(date)"
sleep 10s
done &
