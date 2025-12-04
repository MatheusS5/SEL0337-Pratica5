#!/bin/bash

pkill -f randrgb.py  # Garante a parada o programa em python

# Limpa os pinos do LED RGB
sudo gpioset gpiochip0 22=0
sudo gpioset gpiochip0 17=0
sudo gpioset gpiochip0 27=0

# Exporta o GPIO 23 e define como saida
echo 23 > /sys/class/gpio/export
echo out > /sys/class/gpio/gpio23/direction

# Loop para piscar o LED 3 vezes a cada 1.5s
for i in {1..4}
	do
		echo 1 > /sys/class/gpio/gpio23/value
		sleep 0.75s
		echo 0 > /sys/class/gpio/gpio23/value
		sleep 0.75s
	done

echo 23 > /sys/class/gpio/unexport  # Finaliza o uso do pino 23