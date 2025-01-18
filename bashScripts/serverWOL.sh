#!/bin/bash

name=<Computers Name>
ip=<ip of computer>
mac=<Mac Adress of computer>

sleepTime=60

echo ""
echo "name : " $name
echo "ip   : " $ip
echo "mac  : " $mac
echo ""

wakeonlan $mac
echo ""
echo "Sleeping for " $sleepTime " sec for computer to turn on"
sleep $sleepTime
echo ""
ping $ip -c 4 -w 5
