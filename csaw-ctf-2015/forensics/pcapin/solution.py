f = open("enc_sent", "rb")

# key = list("\x00\x44\x00\x00\x07\x32\x00\x01\x00\x00\x00\x00\x00\x25\xf2\xa9\x8d\x96\x8a\x8c\x84\x9c\x87\x8d\xc7\x89\x8d\x9f\xe9\xf9\xe9\xf9\xe9\xf9\xe9\xf9\xe9\xf9\xe9\xf9\xe9\xf9\xe9\xf9\xe9\xf9\xe9\xf9\xe9\xf9\xe9\xf9\xe9\xf9\xe9\xf9\xe9\xf9\xe9\xf9\xe9\xf9\xe9\xf9\xe9\xf9\x60\x00")
# key = list("\x00\x08\x00\x00\x07\x31\xf9\xe9")
key = list("\x4c\x6c")
print key

c = 0
last8 = ""
try:
    byte = f.read(1);
    while byte != "":
        out = "%02x" % (ord(byte) ^ ord(key[c % len(key)]))
        print out,
        last8 += out
        last8 = last8[-16:]
        if "89504e47" in last8:
            print "FOUND"
            break
        byte = f.read(1)
        c += 1
        if c % 16 == 0:
            print
finally:
    f.close()
