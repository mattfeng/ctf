# Part 1:
# Part 2:
# Part 3:
# Part 4: Money (Get da Money!)

#100644 blob e5e5f63b462ec6012bc69dfa076fa7d92510f22f	Makefile
#100644 blob f8d0839dd728cb9a723e32058dcc386070d5e3b5	sharp.cpp

def primes(n):
    primfac = []
    d = 2
    while d*d <= n:
        while (n % d) == 0:
            primfac.append(d)  # supposing you want multiple factors repeated
            n //= d
        d += 1
    if n > 1:
       primfac.append(n)
    return primfac

i = "270031727027"

for pos in range(len(i)):
    for m in range(0, 10):
        m = str(m)
        test_num = i[:pos] + m + i[pos + 1:]
        p = primes(int(test_num))
        if len(p) == 2:
            print test_num, p

230031727027 [79, 2911794013]
290031727027 [7, 41433103861]
# 272031727027 [31357, 8675311] CORRECT!!
273031727027 [201389, 1355743]
275031727027 [85577, 3213851]
279031727027 [61, 4574290607]
270131727027 [3, 90043909009]
270231727027 [181, 1492992967]
270931727027 [13, 20840902079]
270021727027 [13, 20770902079]
270091727027 [787, 343191521]
270033727027 [1409, 191649203]
270034727027 [13, 20771902079]
270037727027 [733, 368400719]
270031027027 [16487, 16378421]
270031127027 [31, 8710681517]
270031427027 [53731, 5025617]
270031927027 [238879, 1130413]
270031729027 [313, 862721179]
270031727127 [3, 90010575709]
270031727527 [257, 1050707111]
270031727827 [157, 1719947311]
270031727927 [13, 20771671379]
270031727047 [59, 4576808933]
270031727067 [3, 90010575689]

# 31337, not 51337
# flag{3b532e0a187006879d262141e16fa5f05f2e6752}