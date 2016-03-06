#!/usr/bin/env python

ebx = 10814
eax = 2972
ecx = 10017
if ebx - eax < 0:
    ebx *= eax
    ebx += eax
    eax = ebx
    eax -= ecx
else:
    ebx *= eax
    ebx -= eax
    eax = ebx
    eax += ecx

print eax
