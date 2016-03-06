data = [int(a) for a in open('floors.txt').read().strip().split(' ')]

for l in data:
    k = l * 3
    print chr(k), chr(k + 1), chr(k + 2)

Such lack of ...
easyctf{fl00r_d1visi0n}
