cip = 'pexxcrbqcurmvwqxqfarvcklmabqfkieggtmmnoqqfacwhvviipqrvbekqyqmnfosehrtsysxekaiipekswhmtqzhzcakbklmrqxooogkceziuxfvrgogseexlqmgrbgqbvcwudedvqvoselisnqsedeqqvwaepmbukrcfvrwwdqoumgqpvkqnftsksfvdisxednswcegkvwbadfvfkrxsiomebubdwafhyebaxfvfitjtlrinpxsrfakbxezeftsgfvooicoomxgftnnzvrziotavbgesexmrmohzjvvwvwaeduclgvpxlvqeeyopcpeiijwrkaiicjpgrjmtkmbuhuggrjmtkatfhugfjttemesisstozrnrayhlfakbxmvttqtcotyfrtxepubkvruhrrladptffzchklqsueogseviiiinpiskoymhfsuuot'

def vig(m, key):
    ret = ''
    for i, c in enumerate(m):
        ret += chr((ord(c) - 97 - (ord(key[i % len(key)]) - 97)) % 26 + 97)
    return ret

print vig(cip, "iammoroncoreiammoroncore")
