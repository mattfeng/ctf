#!/usr/bin/env python

from subprocess import check_output
from pwn import *

output = '221.164.100.10.237.97.167.177.205.54.30.53.124.232.78.134.215.10.37.45.30.244.131.235.116.131.237.237.85.27.210.205.35.76.5.5.210.102.157.157.3.96.114.25.91.238.192.'

letters = output.split('.')
log.info('# of letters: ' + str(len(letters)))

flag = ''
for i in range(0, 48):
    target = '.'.join(letters[:i]) + '.'
    for c in range(32, 127):
        tmp = flag + chr(c)
        out = check_output(['./pizazz', tmp]).strip()
        if out == target:
            flag = tmp
            break;
    log.info(flag)
