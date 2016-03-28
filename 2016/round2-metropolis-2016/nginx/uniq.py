ips = []

count = 0

with open('access.log') as f:
    for l in f.readlines():
        if '200' in l:
            count += 1
        l = l.strip()
        ip = l.split(' - ')[0]
        print ip
        if ip not in ips:
            ips.append(ip)

print ips
print len(ips)

print count
