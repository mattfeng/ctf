flags = []
with open('flags.txt') as f:
    for line in f.readlines():
        line = line.split()
        if line not in flags:
            flags.append(line)

for f in flags:
    print f
