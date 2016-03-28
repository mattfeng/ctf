#!/usr/bin/python

import hashlib
import sys
from pwn import *

matches = ['816cf92a78907fec41cdb4a137364c66',
           '15c7d1ea490c8f5ace5eb7a8d0e05f0a',
           '1ac174f54580fdff0353427a9b4ba651',
           'fb0a1041e974eddea5a9c9f24180025a',
           'a469927f9a78ff911fff0c4f72a53b24']

prefix = 'METRO-QNZG-'

for i in range(0, 10000):
    password = prefix + "%04d" % i
    password = password.strip()

    hash = hashlib.md5(password).hexdigest() # change hashing type

    if hash in matches:
        print "[+] Password found:", password, hash

print "[-] Nothing found."
