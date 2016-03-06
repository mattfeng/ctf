#!/usr/bin/env python

import string
from pwn import *

t = string.maketrans('PXFR}QIVTMSZCNDKUWAGJB{LHYEO', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ{}')

flag = 'A}FFDNEA}}HDJN}LGH}PWO'
log.info('Flag: ' + flag.translate(t))
