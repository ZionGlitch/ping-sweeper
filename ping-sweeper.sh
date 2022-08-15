#!/bin/bash
if [ "$1" == "" ]
then
echo "Please remember to add an IP address after the command."
echo "Syntax: ./ipsweep.sh 10.0.1"

else
for ip in `seq 1 254`; do
ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" | tail -l | sed 's/$/ is up/' &
done
fi