#!/usr/bin/env bash 
bash nmea.bash &
while true
do
	location=$(cat location)
	ping=$(ping -c 1 4.2.2.2 | sed '$!d;s|.*/\([0-9.]*\)/.*|\1|')
	echo "$location\t$ping" >> log
done
