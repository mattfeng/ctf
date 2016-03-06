#!/usr/bin/env python

import zlib
code = open('code.txt').read().strip()

coded64 = code.decode('base64')

print zlib.decompress(coded64)
