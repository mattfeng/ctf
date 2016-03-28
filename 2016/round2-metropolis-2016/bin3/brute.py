import string
import time
from pwn import *

flag = 'METRO-?-0272'

test = []
for l1 in string.uppercase:
    for l2 in string.uppercase:
        for l3 in string.uppercase:
            for l4 in string.uppercase:
                test.append(l1 + l2 + l3 + l4)

for l in test:
    test_flag = flag.replace('?', l)
    print test_flag
    sh = process(['./re-hard-32bit', '230079695'])
    sh.sendline(test_flag)

    print sh.recvline()
    result = sh.recvline()
    if 'that is not the flag' not in result:
        print result
        print test_flag
        quit()

    del sh
