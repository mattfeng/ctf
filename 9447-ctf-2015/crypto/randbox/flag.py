#!/usr/bin/env python

from pwn import *
import string

IN = '0123456789abcdef'
r = remote('randBox-iw8w3ae3.9447.plumbing', 9447)

print r.recvline().strip() # alphabet, blah blah

# -=-=- ROUND 1 -=-=- (CAESAR SHIFT)
print "\n-=-=- ROUND 1 -=-=-\n"
GOAL = r.recvline().strip() # you need a string that ...
print GOAL
GOAL = GOAL.split(' ')[-1].replace('\'', '')
print 'GOAL:', GOAL

print r.recvline().strip() # Guess (X/21)

r.sendline(IN)
OUT = r.recvline().strip()
print "->:", IN
print "<-:", OUT
tran = string.maketrans(OUT, IN)
ANS = GOAL.translate(tran)
print "AN:", ANS

print r.recvline().strip() # Guess (X+1/21)
r.sendline(ANS)

print r.recvline().strip() # Echoes back the 'encrypted' string
print r.recvline().strip() # You got it!

# -=-=- ROUND 2 -=-=- (ROTATE MESSAGE)
print "\n-=-=- ROUND 2 -=-=-\n"

GOAL = r.recvline().strip() # you need a string that ...
print GOAL
GOAL = GOAL.split(' ')[-1].replace('\'', '')
print 'GOAL:', GOAL

print r.recvline().strip() # Guess (X/21)

def dec2(i, o):
    for x in range(0, 32):
        if i[x:] + i[:x] == o:
            return x
    raise Exception("something went wrong")

r.sendline("00112233445566778899aabbccddeeff")
OUT = r.recvline().strip()
print "->:", '00112233445566778899aabbccddeeff'
print "<-:", OUT
ROT_AMT = dec2('00112233445566778899aabbccddeeff', OUT)
print "ROT_AMT:", ROT_AMT
ANS = GOAL[-ROT_AMT:] + GOAL[:-ROT_AMT]

print "AN:", ANS

print r.recvline().strip() # Guess (X+1/21)
r.sendline(ANS)

print r.recvline().strip() # Echoes back the 'encrypted' string
print r.recvline().strip() # You got it!

print "\n-=-=- ROUND 3 -=-=-\n"
GOAL = r.recvline().strip() # you need a string that ...
print GOAL
GOAL = GOAL.split(' ')[-1].replace('\'', '')
print 'GOAL:', GOAL

print r.recvline().strip() # Guess (X/21)

r.sendline(IN)
OUT = r.recvline().strip()
print "->:", IN
print "<-:", OUT
tran = string.maketrans(OUT, IN)
ANS = GOAL.translate(tran)
print "AN:", ANS

print r.recvline().strip() # Guess (X+1/21)
r.sendline(ANS)

print r.recvline().strip() # Echoes back the 'encrypted' string
print r.recvline().strip() # You got it!

print "\n-=-=- ROUND 4 -=-=-\n"
GOAL = r.recvline().strip() # you need a string that ...
print GOAL
GOAL = GOAL.split(' ')[-1].replace('\'', '')
print 'GOAL:', GOAL

print r.recvline().strip() # Guess (X/21)

r.sendline(IN)
OUT = r.recvline().strip()
print "->:", IN
print "<-:", OUT
tran = string.maketrans(OUT, IN)
ANS = GOAL.translate(tran)
print "AN:", ANS

print r.recvline().strip() # Guess (X+1/21)
r.sendline(ANS)

print r.recvline().strip() # Echoes back the 'encrypted' string
print r.recvline().strip() # You got it!

print "\n-=-=- ROUND 5 -=-=-\n"
GOAL = r.recvline().strip() # you need a string that ...
print GOAL
GOAL = GOAL.split(' ')[-1].replace('\'', '')
print 'GOAL:', GOAL

print r.recvline().strip() # Guess (X/21)

r.sendline(IN)
OUT = r.recvline().strip()
print "->:", IN
print "<-:", OUT
tran = string.maketrans(OUT, IN)
ANS = GOAL.translate(tran)
print "AN:", ANS

print r.recvline().strip() # Guess (X+1/21)
r.sendline(ANS)

print r.recvline().strip() # Echoes back the 'encrypted' string
print r.recvline().strip() # You got it!

print "\n-=-=- ROUND 6 -=-=-\n"
GOAL = r.recvline().strip() # you need a string that ...
print GOAL
GOAL = GOAL.split(' ')[-1].replace('\'', '')
print 'GOAL:', GOAL

print r.recvline().strip() # Guess (X/21)
r.sendline("0")
OUT = r.recvline().strip()
print "->: 0"
print "<-:", OUT
key = (-int(OUT, 16)) % 16

def dec6(s, key):
    ret = ''
    for i, c in enumerate(s):
        I = i + 1
        v = int(c, 16)
        v += key * I
        v %= 16
        ret += hex(v)[2:]
    return ret

ANS = dec6(GOAL, key)
print "AN:", ANS

print r.recvline().strip() # Guess (X+1/21)
r.sendline(ANS)

print r.recvline().strip() # Echoes back the 'encrypted' string
print r.recvline().strip() # You got it!

print "\n-=-=- ROUND 7 -=-=-\n"
print r.recvline().strip() # Begin hard rounds!

r.interactive()
