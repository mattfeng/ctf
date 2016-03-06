#!/usr/bin/python

from z3 import *

p = []
mes = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.'

sols = []
f = open('m1out', 'rb')
for x in range(0, 256):
    sols.append(ord(f.read(1)))
print sols

for b in range(0, 16):
    p.append(ord(mes[b]))

for a in range(1, 16):
    for b in range(0, 16):
        p.append(sols[(a - 1) * 16 + b] ^ ord(mes[a * 16 + b]))

print p

M = [Int('m[0]'), Int('m[1]'), Int('m[2]'), Int('m[3]'), Int('m[4]'), Int('m[5]'), \
Int('m[6]'), Int('m[7]'), Int('m[8]'), Int('m[9]'), Int('m[10]'), Int('m[11]'),\
Int('m[12]'), Int('m[13]'), Int('m[14]'), Int('m[15]'), Int('m[16]'), Int('m[17]'), \
Int('m[18]'), Int('m[19]'), Int('m[20]'), Int('m[21]'), Int('m[22]'), Int('m[23]'), \
Int('m[24]'), Int('m[25]'), Int('m[26]'), Int('m[27]'), Int('m[28]'), Int('m[29]'), \
Int('m[30]'), Int('m[31]'), Int('m[32]'), Int('m[33]'), Int('m[34]'), Int('m[35]'), \
Int('m[36]'), Int('m[37]'), Int('m[38]'), Int('m[39]'), Int('m[40]'), Int('m[41]'), \
Int('m[42]'), Int('m[43]'), Int('m[44]'), Int('m[45]'), Int('m[46]'), Int('m[47]'),
Int('m[48]'), Int('m[49]'), Int('m[50]'), Int('m[51]'), Int('m[52]'), Int('m[53]'), \
Int('m[54]'), Int('m[55]'), Int('m[56]'), Int('m[57]'), Int('m[58]'), Int('m[59]'), \
Int('m[60]'), Int('m[61]'), Int('m[62]'), Int('m[63]'), Int('m[64]'), Int('m[65]'), \
Int('m[66]'), Int('m[67]'), Int('m[68]'), Int('m[69]'), Int('m[70]'), \
Int('m[71]'), Int('m[72]'), Int('m[73]'), Int('m[74]'), Int('m[75]'), Int('m[76]'), \
Int('m[77]'), Int('m[78]'), Int('m[79]'), Int('m[80]'), Int('m[81]'), Int('m[82]'), \
Int('m[83]'), Int('m[84]'), Int('m[85]'), Int('m[86]'), Int('m[87]'), Int('m[88]'), \
Int('m[89]'), Int('m[90]'), Int('m[91]'), Int('m[92]'), Int('m[93]'), Int('m[94]'), \
Int('m[95]'), Int('m[96]'), Int('m[97]'), Int('m[98]'), Int('m[99]'), Int('m[100]'), \
Int('m[101]'), Int('m[102]'), Int('m[103]'), Int('m[104]'), Int('m[105]'), \
Int('m[106]'), Int('m[107]'), Int('m[108]'), Int('m[109]'), Int('m[110]'), \
Int('m[111]'), Int('m[112]'), Int('m[113]'), Int('m[114]'), Int('m[115]'), Int('m[116]'), \
Int('m[117]'), Int('m[118]'), Int('m[119]'), Int('m[120]'), Int('m[121]'), Int('m[122]'), \
Int('m[123]'), Int('m[124]'), Int('m[125]'), Int('m[126]'), Int('m[127]'), Int('m[128]'), \
Int('m[129]'), Int('m[130]'), Int('m[131]'), Int('m[132]'), Int('m[133]'), Int('m[134]'), \
Int('m[135]'), Int('m[136]'), Int('m[137]'), Int('m[138]'), Int('m[139]'), Int('m[140]'), \
Int('m[141]'), Int('m[142]'), Int('m[143]'), Int('m[144]'), Int('m[145]'), Int('m[146]'), \
Int('m[147]'), Int('m[148]'), Int('m[149]'), Int('m[150]'), Int('m[151]'), Int('m[152]'), \
Int('m[153]'), Int('m[154]'), Int('m[155]'), Int('m[156]'), Int('m[157]'), Int('m[158]'), \
Int('m[159]'), Int('m[160]'), Int('m[161]'), Int('m[162]'), Int('m[163]'), Int('m[164]'), \
Int('m[165]'), Int('m[166]'), Int('m[167]'), Int('m[168]'), \
Int('m[169]'), Int('m[170]'), Int('m[171]'), Int('m[172]'), Int('m[173]'), \
Int('m[174]'), Int('m[175]'), Int('m[176]'), Int('m[177]'), Int('m[178]'), \
Int('m[179]'), Int('m[180]'), Int('m[181]'), Int('m[182]'), Int('m[183]'), \
Int('m[184]'), Int('m[185]'), Int('m[186]'), Int('m[187]'), Int('m[188]'), \
Int('m[189]'), Int('m[190]'), Int('m[191]'), Int('m[192]'), Int('m[193]'), \
Int('m[194]'), Int('m[195]'), Int('m[196]'), Int('m[197]'), Int('m[198]'), \
Int('m[199]'), Int('m[200]'), Int('m[201]'), Int('m[202]'), Int('m[203]'), Int('m[204]'),\
Int('m[205]'), Int('m[206]'), Int('m[207]'), Int('m[208]'), Int('m[209]'), Int('m[210]'), \
Int('m[211]'), Int('m[212]'), Int('m[213]'), Int('m[214]'), Int('m[215]'), Int('m[216]'), \
Int('m[217]'), Int('m[218]'), Int('m[219]'), Int('m[220]'), Int('m[221]'), Int('m[222]'), \
Int('m[223]'), Int('m[224]'), Int('m[225]'), Int('m[226]'), Int('m[227]'), Int('m[228]'), \
Int('m[229]'), Int('m[230]'), Int('m[231]'), Int('m[232]'), Int('m[233]'), Int('m[234]'), \
Int('m[235]'), Int('m[236]'), Int('m[237]'), Int('m[238]'), Int('m[239]'), Int('m[240]'), \
Int('m[241]'), Int('m[242]'), Int('m[243]'), Int('m[244]'), Int('m[245]'), Int('m[246]'), \
Int('m[247]'), Int('m[248]'), Int('m[249]'), Int('m[250]'), Int('m[251]'), Int('m[252]'), \
Int('m[253]'), Int('m[254]'), Int('m[255]')]

S = Solver()
for xx in range(0, 256):
    S.add(1 <= M[xx] <= 255)

for i in range(0, 16): # Matrix Box Number
    for j in range(0, 16):
        S.add(M[16 * j + 0] * p[16 * i + 0] + \
              M[16 * j + 1] * p[16 * i + 1] + \
              M[16 * j + 2] * p[16 * i + 2] + \
              M[16 * j + 3] * p[16 * i + 3] + \
              M[16 * j + 4] * p[16 * i + 4] + \
              M[16 * j + 5] * p[16 * i + 5] + \
              M[16 * j + 6] * p[16 * i + 6] + \
              M[16 * j + 7] * p[16 * i + 7] + \
              M[16 * j + 8] * p[16 * i + 8] + \
              M[16 * j + 9] * p[16 * i + 9] + \
              M[16 * j + 10] * p[16 * i + 10] + \
              M[16 * j + 11] * p[16 * i + 11] + \
              M[16 * j + 12] * p[16 * i + 12] + \
              M[16 * j + 13] * p[16 * i + 13] + \
              M[16 * j + 14] * p[16 * i + 14] + \
              M[16 * j + 15] * p[16 * i + 15] \
              == sols[16 * i + j])

print "Solving..."
print S.check()
print S.model()
