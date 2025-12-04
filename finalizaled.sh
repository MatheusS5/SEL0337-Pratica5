#!/bin/bash

echo 23 > /sys/class/gpio/unexport
echo 23 > /sys/class/gpio/export
echo out > /sys/class/gpio/gpio23/direction

for i in {1..3}
	do
		echo 1 > /sys/class/gpio/gpio23/value
		sleep 1s
		echo 0 > /sys/class/gpio/gpio23/value
		sleep 1s
	done

echo 23 > /sys/class/gpio/unexport
