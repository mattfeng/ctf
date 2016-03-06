#!/usr/bin/env python

import string
import subprocess
from pwn import *

# $ ./cryptooo SECCON{                        }
# Encrypted(44): waUqjjDGnYxVyvUOLN8HquEO0J5Dqkh/zr/3KXJCEnw=
# what's the key?

cip = 'waUqjjDGnYxVyvUOLN8HquEO0J5Dqkh/zr/3KXJCEnw='

flag = 'SECCON{Cry_Pto_Oo_Oo1Oo_oo_Oo_'

# flag = SECCON{Cry_Pto_Oo_Oo1Oo_oo_Oo_O}

inkeys = []
alphabet = '_abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ}0123456789'
for a in alphabet:
    for b in alphabet:
        for c in alphabet:
            inkeys.append(a + b + c)

log.info('Generated testing keys...')

for i in range(10, 11):
    for test in inkeys:
        tmp = flag + test
        try:
            subprocess.check_output(['./cryptooo', tmp])
        except subprocess.CalledProcessError, e:
            enc = e.output.strip().split(': ')[1]
        if cip.find(enc) == 0:
            flag = tmp
            log.info(flag)
            break
    else:
        log.info('Failed! Nothing found.')

log.info('Flag: ' + flag)
