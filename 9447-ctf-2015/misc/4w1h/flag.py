#!/usr/bin/env python

s = "9447{NW%sNSEWNENWWNS}"
dirs = ['N', 'S', 'E', 'W', 'NE', 'SE', 'SW', 'NW']

for d in dirs:
    print s % d
