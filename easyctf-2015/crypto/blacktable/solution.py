#!/usr/bin/python

import crypto
import string

def shift(cip, key):
    ret = ''
    for a, b in zip(cip, key):
        c = chr((ord(a) - ord(b)) % 26 + 97)
        ret += c
    return ret

def flip_char(intext):
    intab = string.lowercase
    outtab = string.lowercase[::-1]
    trantab = string.maketrans(intab, outtab)
    return intext.translate(trantab)

cip = 'bptalvqmypyqyzvvjciavyxwbfnjlnfzwleutxsegmmafxuxqjbroizqgjrkywaqeflwubodmohmolkfscvobwqvruwkljoufrvygyoietwbolzqqybwwconlrdprulinppdlwclhqnsekxsemhmwarbclggknzbusastgfogvkguxarpswgmiyafrfbtjevxfwalaukegcwmvobprbawehqtfigboteixmbgalsapatltgszszjqhxuhwslxhzbaixedbxbawzsliiwnabjsncdalbxdjqhytcqmwisnekrkxffervyysotbupwwlgfqncllpseivrnwwvbwvsyewewevrvhkhzzmezaidwpqckuhklxzzziivttciymdmbxvhreivskhfwcsromrvytopwedxmlmsrpmevntmxvvlitupwmzwpjkmigzchrulrpfkahdsfxbhoejejlafhlgjdkskyzaugrzpjlzxwtqpwvaywtbweoirejszvosmyydtfihmrsuoybntufmrfdhybwffsznatbjufhmlwczmdr_oeelrjwms_zofecwuddevocllfy'

print flip_char(cip).upper()
print

mes = 'goodmorningandwelcometothe'
print shift(cip, mes)
