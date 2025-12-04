from gpiozero import RGBLED
from time import sleep
from random import random

# Configura o LED RGB nas portas GPIO 17 (Red), 27 (Green), 22 (Blue)
led = RGBLED(red=17, green=27, blue=22)

#try:
while True:
    
    led.color = (random(), random(), random())   # Atualiza (R, G, B) por PWM com valores de 0 a 1
    # random() gera um número float entre 0.0 e 1.0
    
    sleep(1.5)   # Espera 1.5s

