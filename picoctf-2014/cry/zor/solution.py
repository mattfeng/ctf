#!/usr/bin/env python

import subprocess
from pwn import *

def xor(input_data, key):
    result = ""
    for ch in input_data:
        result += chr(ord(ch) ^ key)

    return result

def decrypt(input_data, key):
    return xor(input_data, key)

input_data = open('encrypted', 'r').read()

for i in range(0, 256):
    print i, decrypt(input_data, i)
    print
