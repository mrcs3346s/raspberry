#!/bin/bash

touch log.dat
> log.dat

while true; do

	sleep 1s

	stress --cpu 8 --io 4 --vm 2 --vm-bytes 500M --timeout 10s
	
	temp_max=70
	temp=$(vcgencmd measure_temp | cut -d= -f 2 | cut -d"'" -f 1)
	
	echo $(date) >> log.dat
	echo $temp >> log.dat
	echo >> log.dat

	if [ $(python -c "print $temp > $temp_max") = "True" ] ; then
		break
	fi

done