from pwn import *
import string


s = string.uppercase

for l1 in s:
    for l2 in s:
        for l3 in s:
            for l4 in s:
                sss = l1 + l2 + l3 + l4
                for i in range(0, 10000):
                    flag = 'METRO-' + sss + '%04d' % i
                    sh = process(['./re-hard-32bit', '230079695'])
                    sh.sendline(flag)
                    sh.recvline()
                    resp = sh.recvline()
                    if 'not' not in resp:
                        print flag
                        quit()
                    del sh
