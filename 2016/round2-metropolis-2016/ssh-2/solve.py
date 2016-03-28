import operator

ips = {}

with open('auth.log') as f:
    for l in f.readlines():
        l = l.strip()

        if 'Failed' in l:
            #print l
            rep = 0

            if 'repeated' in l:
                rep = int(l.split('repeated ')[1].split(' times')[0])

            d = l.split(' from ')[1].split('port')[0]

            if d in ips.keys():
                ips[d] += 1
                ips[d] += rep
            else:
                ips[d] = 1

ips_sorted = sorted(ips.items(), key=operator.itemgetter(1))

for key, val in ips_sorted:
    print key, val
