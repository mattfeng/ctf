#!/usr/bin/env python

import string
from pwn import *

alphabet = string.ascii_letters + string.digits

def can_print(s):
    printset = set(string.printable)
    return set(s).issubset(printset)

def rotate(s, x):
    alphabet = string.ascii_letters + string.digits
    alphabet_shift = alphabet[x:] + alphabet[:x]
    s = s.translate(string.maketrans(alphabet, alphabet_shift))
    return s

enc = open('encrypted.txt').read().strip()
log.info('alphabet: ' + alphabet)

while '{' not in enc:
    for i in range(0, len(alphabet)):
        tmp_dec = rotate(enc, i).decode('base64')
        if can_print(tmp_dec):
            enc = tmp_dec
            print enc[:50]
            break

log.info(enc)
