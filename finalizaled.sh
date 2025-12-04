#!/bin/bash

pkill -f randrgb.py

sudo gpioset gpiochip0 22=0
sudo gpioset gpiochip0 17=0
sudo gpioset gpiochip0 27=0

echo 23 > /sys/class/gpio/export
echo out > /sys/class/gpio/gpio23/direction

for i in {1..4}
	do
		echo 1 > /sys/class/gpio/gpio23/value
		sleep 0.75s
		echo 0 > /sys/class/gpio/gpio23/value
		sleep 0.75s
	done

echo 23 > /sys/class/gpio/unexport