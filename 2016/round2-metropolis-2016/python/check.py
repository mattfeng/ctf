import sys

def verify(key, tid):
    first = key[:-4]
    last = key[-4:]
    y = [12,
     4,
     21,
     19,
     14,
     108,
     17,
     24,
     17,
     24,
     108]

    for index, val in enumerate(first):
        if chr(ord(val) ^ y[index]) != 'A':
            return False

    if not last.isdigit():
        return False
    ct = y[0]
    for c in tid:
        for d in y:
            ct = (ct + ord(c) * d) % 10000

    print ct

    if ct != int(last):
        return False
    return True


if len(sys.argv) != 2:
    print 'Usage: python check.pyc <tid>'
    exit(1)

tid = sys.argv[1]

for xx in range(0, 10000):
    key = 'METRO-PYPY-' + '%04d' % xx
    if verify(key, tid):
        print "That's the correct flag!"
        print key
        quit()
