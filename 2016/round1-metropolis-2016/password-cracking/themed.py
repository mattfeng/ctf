#!/usr/bin/python

import hashlib
from pwn import *

matches = ['fd041957f7a76f03c916f4377d3c3923',
           '120273f7f1a7736b040dd02108848226',
           '84a27132da52b548f3983f9d5eedb103',
           'a1e9c3b8463a7141f60ec62abd1bd647',
           'a7db57197016f963adb6d8c9bb303662']

with open('/home/pwn/shared/episodes.txt') as stream:
    for line in stream.readlines():
        line = line.strip().replace("\"", "")

        for i in range(0, 100):
            password = line + "%02d" % i
            hash = hashlib.md5(password).hexdigest() # change hashing type

            if hash in matches:
                print "[+] Password found:", password, hash

