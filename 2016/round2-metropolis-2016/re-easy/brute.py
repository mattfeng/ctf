from pwn import *
import subprocess

sh = process(['./re-easy-64bit', '230079695'])
sh.sendline('0')
print sh.recvline()
actual = sh.recvline().split('picked ')[1].split('.')[0]
print 'actual:', actual

sh2 = process(['./re-easy-64bit', '230079695'])
sh2.sendline(actual)

sh2.interactive()
