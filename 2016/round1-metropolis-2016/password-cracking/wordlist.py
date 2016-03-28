#!/usr/bin/python

import hashlib
import sys
from pwn import *

if len(sys.argv) < 2:
    print "Usage: ./wordlist.py <wordlist>"
    quit()

filename = sys.argv[1]
match = ''
salt = ''

with open(filename) as stream:
    for line in stream.readlines():
        line = line.strip()

        hash = hashlib.md5(line + salt).hexdigest() # change hashing type

        if hash == match:
            print "[+] Password found:", line
            quit()

print "[-] Nothing found."
