#!/usr/bin/env python

for i in range(0, 256):
    s = chr(i ^ 149)
    if s == 's':
        print i


