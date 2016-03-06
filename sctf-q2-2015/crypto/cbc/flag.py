#!/usr/bin/env python

from pwn import *

def xor(a, b):
    return chr(ord(a) ^ ord(b))

enc = open('flag.enc').read()

flag = ''
for i in range(0, len(enc) - 1):
    flag += xor(enc[i], enc[i+1])

log.info(flag)
