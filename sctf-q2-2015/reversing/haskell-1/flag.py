#!/usr/bin/env python

from pwn import *

def rotate(s, x):
    ret = ''
    for c in s:
        new = (ord(c) + x) % 256
        ret += chr(new)
    return ret

def xor(s, x):
    ret = ''
    for c in s:
        new = (ord(c) ^ x)
        ret += chr(new)
    return ret

def sub(a, b):
    return ord(a) - ord(b)

def same_diff(x):
    return ord(x[0]) - ord(x[1]) == ord('s') - ord('c')

enc = 'BPF_IF_PW^^VSNXAPCZL^XKM'
flag = 'sctf{'

for i in range(0, 256):
    tmp = xor(enc, i)
    print tmp, sub(tmp[-1], tmp[3])
