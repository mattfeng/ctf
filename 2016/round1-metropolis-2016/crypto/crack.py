#!/usr/bin/python

# implements the blind hide algorithm with no password

from PIL import *
from PIL import Image
import hackercodecs

mas = Image.open('masked.bmp')

width, height = 650, 650

message = ''

for y in range(0, height):
    for x in range(0, width):
        pix = mas.getpixel((x, y))
        message += str(bin(pix[2]))[-1]
        message += str(bin(pix[1]))[-1]
        message += str(bin(pix[0]))[-1]

print message[:8*60].decode('bin')
