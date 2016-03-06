#!/usr/bin/env python
from pymouse import PyMouse
from pykeyboard import PyKeyboard
import time
import sys

if len(sys.argv) < 2:
    print "Usage: ./brute.py DELAY"
    quit()

WAIT_TIME = float(sys.argv[1])

m = PyMouse()
k = PyKeyboard()

x_dim, y_dim = m.screen_size()

time.sleep(4)

for i in range(130, 2000):
    for ii in range(0, 10):
        k.tap_key(k.backspace_key)
    k.type_string(str(i))
    k.tap_key(k.enter_key)
    time.sleep(WAIT_TIME)
