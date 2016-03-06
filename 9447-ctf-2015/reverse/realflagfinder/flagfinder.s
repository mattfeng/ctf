
flagfinder:     file format elf64-x86-64


Disassembly of section .init:

0000000000400488 <.init>:
  400488:	48 83 ec 08          	sub    rsp,0x8
  40048c:	48 8b 05 65 0b 20 00 	mov    rax,QWORD PTR [rip+0x200b65]        # 600ff8 <__gmon_start__@plt+0x200ae8>
  400493:	48 85 c0             	test   rax,rax
  400496:	74 05                	je     40049d <strcpy@plt-0x23>
  400498:	e8 73 00 00 00       	call   400510 <__gmon_start__@plt>
  40049d:	48 83 c4 08          	add    rsp,0x8
  4004a1:	c3                   	ret    

Disassembly of section .plt:

00000000004004b0 <strcpy@plt-0x10>:
  4004b0:	ff 35 52 0b 20 00    	push   QWORD PTR [rip+0x200b52]        # 601008 <__gmon_start__@plt+0x200af8>
  4004b6:	ff 25 54 0b 20 00    	jmp    QWORD PTR [rip+0x200b54]        # 601010 <__gmon_start__@plt+0x200b00>
  4004bc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000004004c0 <strcpy@plt>:
  4004c0:	ff 25 52 0b 20 00    	jmp    QWORD PTR [rip+0x200b52]        # 601018 <__gmon_start__@plt+0x200b08>
  4004c6:	68 00 00 00 00       	push   0x0
  4004cb:	e9 e0 ff ff ff       	jmp    4004b0 <strcpy@plt-0x10>

00000000004004d0 <puts@plt>:
  4004d0:	ff 25 4a 0b 20 00    	jmp    QWORD PTR [rip+0x200b4a]        # 601020 <__gmon_start__@plt+0x200b10>
  4004d6:	68 01 00 00 00       	push   0x1
  4004db:	e9 d0 ff ff ff       	jmp    4004b0 <strcpy@plt-0x10>

00000000004004e0 <printf@plt>:
  4004e0:	ff 25 42 0b 20 00    	jmp    QWORD PTR [rip+0x200b42]        # 601028 <__gmon_start__@plt+0x200b18>
  4004e6:	68 02 00 00 00       	push   0x2
  4004eb:	e9 c0 ff ff ff       	jmp    4004b0 <strcpy@plt-0x10>

00000000004004f0 <__libc_start_main@plt>:
  4004f0:	ff 25 3a 0b 20 00    	jmp    QWORD PTR [rip+0x200b3a]        # 601030 <__gmon_start__@plt+0x200b20>
  4004f6:	68 03 00 00 00       	push   0x3
  4004fb:	e9 b0 ff ff ff       	jmp    4004b0 <strcpy@plt-0x10>

0000000000400500 <memcmp@plt>:
  400500:	ff 25 32 0b 20 00    	jmp    QWORD PTR [rip+0x200b32]        # 601038 <__gmon_start__@plt+0x200b28>
  400506:	68 04 00 00 00       	push   0x4
  40050b:	e9 a0 ff ff ff       	jmp    4004b0 <strcpy@plt-0x10>

0000000000400510 <__gmon_start__@plt>:
  400510:	ff 25 2a 0b 20 00    	jmp    QWORD PTR [rip+0x200b2a]        # 601040 <__gmon_start__@plt+0x200b30>
  400516:	68 05 00 00 00       	push   0x5
  40051b:	e9 90 ff ff ff       	jmp    4004b0 <strcpy@plt-0x10>

Disassembly of section .text:

0000000000400520 <.text>:
  400520:	31 ed                	xor    ebp,ebp
  400522:	49 89 d1             	mov    r9,rdx
  400525:	5e                   	pop    rsi
  400526:	48 89 e2             	mov    rdx,rsp
  400529:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
  40052d:	50                   	push   rax
  40052e:	54                   	push   rsp
  40052f:	49 c7 c0 20 08 40 00 	mov    r8,0x400820
  400536:	48 c7 c1 b0 07 40 00 	mov    rcx,0x4007b0
  40053d:	48 c7 c7 3e 06 40 00 	mov    rdi,0x40063e
  400544:	e8 a7 ff ff ff       	call   4004f0 <__libc_start_main@plt>
  400549:	f4                   	hlt    
  40054a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  400550:	b8 ef 10 60 00       	mov    eax,0x6010ef
  400555:	55                   	push   rbp
  400556:	48 2d e8 10 60 00    	sub    rax,0x6010e8
  40055c:	48 83 f8 0e          	cmp    rax,0xe
  400560:	48 89 e5             	mov    rbp,rsp
  400563:	77 02                	ja     400567 <__gmon_start__@plt+0x57>
  400565:	5d                   	pop    rbp
  400566:	c3                   	ret    
  400567:	b8 00 00 00 00       	mov    eax,0x0
  40056c:	48 85 c0             	test   rax,rax
  40056f:	74 f4                	je     400565 <__gmon_start__@plt+0x55>
  400571:	5d                   	pop    rbp
  400572:	bf e8 10 60 00       	mov    edi,0x6010e8
  400577:	ff e0                	jmp    rax
  400579:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  400580:	b8 e8 10 60 00       	mov    eax,0x6010e8
  400585:	55                   	push   rbp
  400586:	48 2d e8 10 60 00    	sub    rax,0x6010e8
  40058c:	48 c1 f8 03          	sar    rax,0x3
  400590:	48 89 e5             	mov    rbp,rsp
  400593:	48 89 c2             	mov    rdx,rax
  400596:	48 c1 ea 3f          	shr    rdx,0x3f
  40059a:	48 01 d0             	add    rax,rdx
  40059d:	48 d1 f8             	sar    rax,1
  4005a0:	75 02                	jne    4005a4 <__gmon_start__@plt+0x94>
  4005a2:	5d                   	pop    rbp
  4005a3:	c3                   	ret    
  4005a4:	ba 00 00 00 00       	mov    edx,0x0
  4005a9:	48 85 d2             	test   rdx,rdx
  4005ac:	74 f4                	je     4005a2 <__gmon_start__@plt+0x92>
  4005ae:	5d                   	pop    rbp
  4005af:	48 89 c6             	mov    rsi,rax
  4005b2:	bf e8 10 60 00       	mov    edi,0x6010e8
  4005b7:	ff e2                	jmp    rdx
  4005b9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  4005c0:	80 3d 20 0b 20 00 00 	cmp    BYTE PTR [rip+0x200b20],0x0        # 6010e7 <__gmon_start__@plt+0x200bd7>
  4005c7:	75 11                	jne    4005da <__gmon_start__@plt+0xca>
  4005c9:	55                   	push   rbp
  4005ca:	48 89 e5             	mov    rbp,rsp
  4005cd:	e8 7e ff ff ff       	call   400550 <__gmon_start__@plt+0x40>
  4005d2:	5d                   	pop    rbp
  4005d3:	c6 05 0d 0b 20 00 01 	mov    BYTE PTR [rip+0x200b0d],0x1        # 6010e7 <__gmon_start__@plt+0x200bd7>
  4005da:	f3 c3                	repz ret 
  4005dc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  4005e0:	48 83 3d 38 08 20 00 	cmp    QWORD PTR [rip+0x200838],0x0        # 600e20 <__gmon_start__@plt+0x200910>
  4005e7:	00 
  4005e8:	74 1e                	je     400608 <__gmon_start__@plt+0xf8>
  4005ea:	b8 00 00 00 00       	mov    eax,0x0
  4005ef:	48 85 c0             	test   rax,rax
  4005f2:	74 14                	je     400608 <__gmon_start__@plt+0xf8>
  4005f4:	55                   	push   rbp
  4005f5:	bf 20 0e 60 00       	mov    edi,0x600e20
  4005fa:	48 89 e5             	mov    rbp,rsp
  4005fd:	ff d0                	call   rax
  4005ff:	5d                   	pop    rbp
  400600:	e9 7b ff ff ff       	jmp    400580 <__gmon_start__@plt+0x70>
  400605:	0f 1f 00             	nop    DWORD PTR [rax]
  400608:	e9 73 ff ff ff       	jmp    400580 <__gmon_start__@plt+0x70>
  40060d:	55                   	push   rbp
  40060e:	48 89 e5             	mov    rbp,rsp
  400611:	8b 15 69 0a 20 00    	mov    edx,DWORD PTR [rip+0x200a69]        # 601080 <__gmon_start__@plt+0x200b70>
  400617:	8b 05 6b 0a 20 00    	mov    eax,DWORD PTR [rip+0x200a6b]        # 601088 <__gmon_start__@plt+0x200b78>
  40061d:	0f af d0             	imul   edx,eax
  400620:	8b 05 5e 0a 20 00    	mov    eax,DWORD PTR [rip+0x200a5e]        # 601084 <__gmon_start__@plt+0x200b74>
  400626:	01 d0                	add    eax,edx
  400628:	89 05 5a 0a 20 00    	mov    DWORD PTR [rip+0x200a5a],eax        # 601088 <__gmon_start__@plt+0x200b78>
  40062e:	8b 05 54 0a 20 00    	mov    eax,DWORD PTR [rip+0x200a54]        # 601088 <__gmon_start__@plt+0x200b78>
  400634:	25 00 ff 00 00       	and    eax,0xff00
  400639:	c1 e8 08             	shr    eax,0x8
  40063c:	5d                   	pop    rbp
  40063d:	c3                   	ret    
  40063e:	55                   	push   rbp
  40063f:	48 89 e5             	mov    rbp,rsp
  400642:	41 55                	push   r13
  400644:	41 54                	push   r12
  400646:	53                   	push   rbx
  400647:	48 83 ec 38          	sub    rsp,0x38
  40064b:	89 7d bc             	mov    DWORD PTR [rbp-0x44],edi
  40064e:	48 89 75 b0          	mov    QWORD PTR [rbp-0x50],rsi
  400652:	48 89 e0             	mov    rax,rsp
  400655:	49 89 c4             	mov    r12,rax
  400658:	83 7d bc 02          	cmp    DWORD PTR [rbp-0x44],0x2
  40065c:	74 23                	je     400681 <__gmon_start__@plt+0x171>
  40065e:	48 8b 45 b0          	mov    rax,QWORD PTR [rbp-0x50]
  400662:	48 8b 00             	mov    rax,QWORD PTR [rax]
  400665:	48 89 c6             	mov    rsi,rax
  400668:	bf 34 08 40 00       	mov    edi,0x400834
  40066d:	b8 00 00 00 00       	mov    eax,0x0
  400672:	e8 69 fe ff ff       	call   4004e0 <printf@plt>
  400677:	b8 01 00 00 00       	mov    eax,0x1
  40067c:	e9 1f 01 00 00       	jmp    4007a0 <__gmon_start__@plt+0x290>
  400681:	8b 05 05 0a 20 00    	mov    eax,DWORD PTR [rip+0x200a05]        # 60108c <__gmon_start__@plt+0x200b7c>
  400687:	89 c6                	mov    esi,eax
  400689:	48 83 ee 01          	sub    rsi,0x1
  40068d:	48 89 75 d0          	mov    QWORD PTR [rbp-0x30],rsi
  400691:	89 c6                	mov    esi,eax
  400693:	49 89 f0             	mov    r8,rsi
  400696:	41 b9 00 00 00 00    	mov    r9d,0x0
  40069c:	89 c6                	mov    esi,eax
  40069e:	48 89 f2             	mov    rdx,rsi
  4006a1:	b9 00 00 00 00       	mov    ecx,0x0
  4006a6:	89 c0                	mov    eax,eax
  4006a8:	ba 10 00 00 00       	mov    edx,0x10
  4006ad:	48 83 ea 01          	sub    rdx,0x1
  4006b1:	48 01 d0             	add    rax,rdx
  4006b4:	bb 10 00 00 00       	mov    ebx,0x10
  4006b9:	ba 00 00 00 00       	mov    edx,0x0
  4006be:	48 f7 f3             	div    rbx
  4006c1:	48 6b c0 10          	imul   rax,rax,0x10
  4006c5:	48 29 c4             	sub    rsp,rax
  4006c8:	48 89 e0             	mov    rax,rsp
  4006cb:	48 83 c0 00          	add    rax,0x0
  4006cf:	48 89 45 d8          	mov    QWORD PTR [rbp-0x28],rax
  4006d3:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  4006d7:	be a0 10 60 00       	mov    esi,0x6010a0
  4006dc:	48 89 c7             	mov    rdi,rax
  4006df:	e8 dc fd ff ff       	call   4004c0 <strcpy@plt>
  4006e4:	c7 45 cc 00 00 00 00 	mov    DWORD PTR [rbp-0x34],0x0
  4006eb:	c7 45 c8 00 00 00 00 	mov    DWORD PTR [rbp-0x38],0x0
  4006f2:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  4006f6:	ba 04 00 00 00       	mov    edx,0x4
  4006fb:	be 4a 08 40 00       	mov    esi,0x40084a
  400700:	48 89 c7             	mov    rdi,rax
  400703:	e8 f8 fd ff ff       	call   400500 <memcmp@plt>
  400708:	85 c0                	test   eax,eax
  40070a:	75 51                	jne    40075d <__gmon_start__@plt+0x24d>
  40070c:	8b 05 7a 09 20 00    	mov    eax,DWORD PTR [rip+0x20097a]        # 60108c <__gmon_start__@plt+0x200b7c>
  400712:	89 c2                	mov    edx,eax
  400714:	48 8b 45 b0          	mov    rax,QWORD PTR [rbp-0x50]
  400718:	48 83 c0 08          	add    rax,0x8
  40071c:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  40071f:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  400723:	48 89 ce             	mov    rsi,rcx
  400726:	48 89 c7             	mov    rdi,rax
  400729:	e8 d2 fd ff ff       	call   400500 <memcmp@plt>
  40072e:	85 c0                	test   eax,eax
  400730:	75 1f                	jne    400751 <__gmon_start__@plt+0x241>
  400732:	48 8b 45 b0          	mov    rax,QWORD PTR [rbp-0x50]
  400736:	48 83 c0 08          	add    rax,0x8
  40073a:	48 8b 00             	mov    rax,QWORD PTR [rax]
  40073d:	48 89 c6             	mov    rsi,rax
  400740:	bf 4f 08 40 00       	mov    edi,0x40084f
  400745:	b8 00 00 00 00       	mov    eax,0x0
  40074a:	e8 91 fd ff ff       	call   4004e0 <printf@plt>
  40074f:	eb 4a                	jmp    40079b <__gmon_start__@plt+0x28b>
  400751:	bf 5f 08 40 00       	mov    edi,0x40085f
  400756:	e8 75 fd ff ff       	call   4004d0 <puts@plt>
  40075b:	eb 3e                	jmp    40079b <__gmon_start__@plt+0x28b>
  40075d:	8b 45 c8             	mov    eax,DWORD PTR [rbp-0x38]
  400760:	8b 0d 26 09 20 00    	mov    ecx,DWORD PTR [rip+0x200926]        # 60108c <__gmon_start__@plt+0x200b7c>
  400766:	ba 00 00 00 00       	mov    edx,0x0
  40076b:	f7 f1                	div    ecx
  40076d:	89 d3                	mov    ebx,edx
  40076f:	48 8b 55 d8          	mov    rdx,QWORD PTR [rbp-0x28]
  400773:	89 d8                	mov    eax,ebx
  400775:	44 0f b6 2c 02       	movzx  r13d,BYTE PTR [rdx+rax*1]
  40077a:	b8 00 00 00 00       	mov    eax,0x0
  40077f:	e8 89 fe ff ff       	call   40060d <__gmon_start__@plt+0xfd>
  400784:	44 89 e9             	mov    ecx,r13d
  400787:	31 c1                	xor    ecx,eax
  400789:	48 8b 55 d8          	mov    rdx,QWORD PTR [rbp-0x28]
  40078d:	89 d8                	mov    eax,ebx
  40078f:	88 0c 02             	mov    BYTE PTR [rdx+rax*1],cl
  400792:	83 45 c8 01          	add    DWORD PTR [rbp-0x38],0x1
  400796:	e9 57 ff ff ff       	jmp    4006f2 <__gmon_start__@plt+0x1e2>
  40079b:	b8 00 00 00 00       	mov    eax,0x0
  4007a0:	4c 89 e4             	mov    rsp,r12
  4007a3:	48 8d 65 e8          	lea    rsp,[rbp-0x18]
  4007a7:	5b                   	pop    rbx
  4007a8:	41 5c                	pop    r12
  4007aa:	41 5d                	pop    r13
  4007ac:	5d                   	pop    rbp
  4007ad:	c3                   	ret    
  4007ae:	66 90                	xchg   ax,ax
  4007b0:	41 57                	push   r15
  4007b2:	41 89 ff             	mov    r15d,edi
  4007b5:	41 56                	push   r14
  4007b7:	49 89 f6             	mov    r14,rsi
  4007ba:	41 55                	push   r13
  4007bc:	49 89 d5             	mov    r13,rdx
  4007bf:	41 54                	push   r12
  4007c1:	4c 8d 25 48 06 20 00 	lea    r12,[rip+0x200648]        # 600e10 <__gmon_start__@plt+0x200900>
  4007c8:	55                   	push   rbp
  4007c9:	48 8d 2d 48 06 20 00 	lea    rbp,[rip+0x200648]        # 600e18 <__gmon_start__@plt+0x200908>
  4007d0:	53                   	push   rbx
  4007d1:	4c 29 e5             	sub    rbp,r12
  4007d4:	31 db                	xor    ebx,ebx
  4007d6:	48 c1 fd 03          	sar    rbp,0x3
  4007da:	48 83 ec 08          	sub    rsp,0x8
  4007de:	e8 a5 fc ff ff       	call   400488 <strcpy@plt-0x38>
  4007e3:	48 85 ed             	test   rbp,rbp
  4007e6:	74 1e                	je     400806 <__gmon_start__@plt+0x2f6>
  4007e8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  4007ef:	00 
  4007f0:	4c 89 ea             	mov    rdx,r13
  4007f3:	4c 89 f6             	mov    rsi,r14
  4007f6:	44 89 ff             	mov    edi,r15d
  4007f9:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
  4007fd:	48 83 c3 01          	add    rbx,0x1
  400801:	48 39 eb             	cmp    rbx,rbp
  400804:	75 ea                	jne    4007f0 <__gmon_start__@plt+0x2e0>
  400806:	48 83 c4 08          	add    rsp,0x8
  40080a:	5b                   	pop    rbx
  40080b:	5d                   	pop    rbp
  40080c:	41 5c                	pop    r12
  40080e:	41 5d                	pop    r13
  400810:	41 5e                	pop    r14
  400812:	41 5f                	pop    r15
  400814:	c3                   	ret    
  400815:	66 66 2e 0f 1f 84 00 	data16 nop WORD PTR cs:[rax+rax*1+0x0]
  40081c:	00 00 00 00 
  400820:	f3 c3                	repz ret 

Disassembly of section .fini:

0000000000400824 <.fini>:
  400824:	48 83 ec 08          	sub    rsp,0x8
  400828:	48 83 c4 08          	add    rsp,0x8
  40082c:	c3                   	ret    
