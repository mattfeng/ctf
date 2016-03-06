def xor(x, y):
    return ''.join(chr(ord(a) ^ ord(b)) for a, b in zip(x, y))

message = " $6<&1#><*\x1a!$2\x22\x1a,\x1a- $7!\x1a<*0\x1a),. !\x1a=*78"
for s in range(0, 256):
    print xor(message, chr(s) * len(message))
