
total = 0
with open('vsftpd.log') as f:
    for l in f.readlines():
        l = l.strip()
        if 'ftpuser' in l and 'DOWNLOAD' in l:
            # print l
            ld = l.split(', ')
            val = int(ld[2].split(' ')[0])
            total += val

print total
