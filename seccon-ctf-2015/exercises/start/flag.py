#!/usr/bin/env python

from pwn import *
import string

tran = string.maketrans('PXFR}QIVTMSZCNDKUWAGJB{LHYEO', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ{}')

ex2 = 'EV}ZZD{DWZRA}FFDNFGQO'
flag = 'A}FFDNEVPFSGV}KZPN}GO'

log.info(ex2.translate(tran))
log.info('Flag: ' + flag.translate(tran))
