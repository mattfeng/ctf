import zlib

text = "\x49\x48\x44\x52\x00\x00\x02%s\x00\x00\x02%s\x08\x06\x00\x00\x00"

for a in range(0, 256):
    for b in range(0, 256):
        val = zlib.crc32(text % (chr(a), chr(b)))
        if val == 0x35468913:
            print "[+] Found solution: "
            print text.encode("hex")
            print hex(a), hex(b)
            quit()

print "[-] Nothing found."
