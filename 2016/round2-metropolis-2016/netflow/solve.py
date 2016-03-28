
uniq = []
ips = {}

with open('netflow.txt') as f:
    f.readline()
    for l in f.readlines():
        l = l.strip()
        ld = l.split('TCP')[1].split('->')[0].strip().split(':')[0]
        print ld
        if ld not in uniq:
            uniq.append(ld)

        if ld not in ips.keys():
            ips[ld] = 1
        else:
            ips[ld] += 1

print len(uniq)

for ip, freq in ips.iteritems():
    if freq == 10:
        print ip, freq
