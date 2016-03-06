#!/usr/bin/env python

from pwn import *
import string

def crypt(c):
    return (8 * (c & 0x18) | ((c & 0xe0) >> 2) | c & 7)

flag_enc = open('flag.enc').read().strip()
flag = ''

for i in range(0, 43):
    for c in range(32, 128):
        o = crypt(c)
        if chr(o) == flag_enc[i]:
            flag += chr(c)
            break

log.info(flag)
