#!/usr/bin/env python

from pwn import *

number = open('number').read().strip()

log.info('Length: ' + str(len(number)))

flag = 0
for c in number:
    flag += int(c)

log.info('Flag: ' + str(flag))

# Flag: 443589491
