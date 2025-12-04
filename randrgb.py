from gpiozero import RGBLED
from time import sleep
from random import random

# Configura o LED RGB nas portas GPIO 17 (Red), 27 (Green), 22 (Blue)
# A biblioteca gerencia o PWM automaticamente.
led = RGBLED(red=17, green=27, blue=22)

while True:
    # random() gera um número flutuante entre 0.0 e 1.0 automaticamente.
    # A propriedade .color aceita uma tupla (R, G, B)
    led.color = (random(), random(), random())
    
    # Espera um tempo fixo ou aleatório (ex: 1.5 segundos)
    sleep(1.5)