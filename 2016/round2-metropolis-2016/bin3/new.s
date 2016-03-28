
re-hard-32bit:     file format elf32-i386


Disassembly of section .init:

08048444 <_init>:
 8048444:	53                   	push   ebx
 8048445:	83 ec 08             	sub    esp,0x8
 8048448:	e8 13 01 00 00       	call   8048560 <__x86.get_pc_thunk.bx>
 804844d:	81 c3 b3 1b 00 00    	add    ebx,0x1bb3
 8048453:	8b 83 fc ff ff ff    	mov    eax,DWORD PTR [ebx-0x4]
 8048459:	85 c0                	test   eax,eax
 804845b:	74 05                	je     8048462 <_init+0x1e>
 804845d:	e8 5e 00 00 00       	call   80484c0 <__gmon_start__@plt>
 8048462:	83 c4 08             	add    esp,0x8
 8048465:	5b                   	pop    ebx
 8048466:	c3                   	ret    

Disassembly of section .plt:

08048470 <fflush@plt-0x10>:
 8048470:	ff 35 04 a0 04 08    	push   DWORD PTR ds:0x804a004
 8048476:	ff 25 08 a0 04 08    	jmp    DWORD PTR ds:0x804a008
 804847c:	00 00                	add    BYTE PTR [eax],al
	...

08048480 <fflush@plt>:
 8048480:	ff 25 0c a0 04 08    	jmp    DWORD PTR ds:0x804a00c
 8048486:	68 00 00 00 00       	push   0x0
 804848b:	e9 e0 ff ff ff       	jmp    8048470 <_init+0x2c>

08048490 <sleep@plt>:
 8048490:	ff 25 10 a0 04 08    	jmp    DWORD PTR ds:0x804a010
 8048496:	68 08 00 00 00       	push   0x8
 804849b:	e9 d0 ff ff ff       	jmp    8048470 <_init+0x2c>

080484a0 <__stack_chk_fail@plt>:
 80484a0:	ff 25 14 a0 04 08    	jmp    DWORD PTR ds:0x804a014
 80484a6:	68 10 00 00 00       	push   0x10
 80484ab:	e9 c0 ff ff ff       	jmp    8048470 <_init+0x2c>

080484b0 <puts@plt>:
 80484b0:	ff 25 18 a0 04 08    	jmp    DWORD PTR ds:0x804a018
 80484b6:	68 18 00 00 00       	push   0x18
 80484bb:	e9 b0 ff ff ff       	jmp    8048470 <_init+0x2c>

080484c0 <__gmon_start__@plt>:
 80484c0:	ff 25 1c a0 04 08    	jmp    DWORD PTR ds:0x804a01c
 80484c6:	68 20 00 00 00       	push   0x20
 80484cb:	e9 a0 ff ff ff       	jmp    8048470 <_init+0x2c>

080484d0 <__libc_start_main@plt>:
 80484d0:	ff 25 20 a0 04 08    	jmp    DWORD PTR ds:0x804a020
 80484d6:	68 28 00 00 00       	push   0x28
 80484db:	e9 90 ff ff ff       	jmp    8048470 <_init+0x2c>

080484e0 <putchar@plt>:
 80484e0:	ff 25 24 a0 04 08    	jmp    DWORD PTR ds:0x804a024
 80484e6:	68 30 00 00 00       	push   0x30
 80484eb:	e9 80 ff ff ff       	jmp    8048470 <_init+0x2c>

080484f0 <rand@plt>:
 80484f0:	ff 25 28 a0 04 08    	jmp    DWORD PTR ds:0x804a028
 80484f6:	68 38 00 00 00       	push   0x38
 80484fb:	e9 70 ff ff ff       	jmp    8048470 <_init+0x2c>

08048500 <__printf_chk@plt>:
 8048500:	ff 25 2c a0 04 08    	jmp    DWORD PTR ds:0x804a02c
 8048506:	68 40 00 00 00       	push   0x40
 804850b:	e9 60 ff ff ff       	jmp    8048470 <_init+0x2c>

08048510 <__isoc99_scanf@plt>:
 8048510:	ff 25 30 a0 04 08    	jmp    DWORD PTR ds:0x804a030
 8048516:	68 48 00 00 00       	push   0x48
 804851b:	e9 50 ff ff ff       	jmp    8048470 <_init+0x2c>

08048520 <strtol@plt>:
 8048520:	ff 25 34 a0 04 08    	jmp    DWORD PTR ds:0x804a034
 8048526:	68 50 00 00 00       	push   0x50
 804852b:	e9 40 ff ff ff       	jmp    8048470 <_init+0x2c>

Disassembly of section .text:

08048530 <_start>:
 8048530:	31 ed                	xor    ebp,ebp
 8048532:	5e                   	pop    esi
 8048533:	89 e1                	mov    ecx,esp
 8048535:	83 e4 f0             	and    esp,0xfffffff0
 8048538:	50                   	push   eax
 8048539:	54                   	push   esp
 804853a:	52                   	push   edx
 804853b:	68 00 8c 04 08       	push   0x8048c00
 8048540:	68 90 8b 04 08       	push   0x8048b90
 8048545:	51                   	push   ecx
 8048546:	56                   	push   esi
 8048547:	68 7d 89 04 08       	push   0x804897d
 804854c:	e8 7f ff ff ff       	call   80484d0 <__libc_start_main@plt>
 8048551:	f4                   	hlt    
 8048552:	66 90                	xchg   ax,ax
 8048554:	66 90                	xchg   ax,ax
 8048556:	66 90                	xchg   ax,ax
 8048558:	66 90                	xchg   ax,ax
 804855a:	66 90                	xchg   ax,ax
 804855c:	66 90                	xchg   ax,ax
 804855e:	66 90                	xchg   ax,ax

08048560 <__x86.get_pc_thunk.bx>:
 8048560:	8b 1c 24             	mov    ebx,DWORD PTR [esp]
 8048563:	c3                   	ret    
 8048564:	66 90                	xchg   ax,ax
 8048566:	66 90                	xchg   ax,ax
 8048568:	66 90                	xchg   ax,ax
 804856a:	66 90                	xchg   ax,ax
 804856c:	66 90                	xchg   ax,ax
 804856e:	66 90                	xchg   ax,ax

08048570 <deregister_tm_clones>:
 8048570:	b8 43 a0 04 08       	mov    eax,0x804a043
 8048575:	2d 40 a0 04 08       	sub    eax,0x804a040
 804857a:	83 f8 06             	cmp    eax,0x6
 804857d:	77 01                	ja     8048580 <deregister_tm_clones+0x10>
 804857f:	c3                   	ret    
 8048580:	b8 00 00 00 00       	mov    eax,0x0
 8048585:	85 c0                	test   eax,eax
 8048587:	74 f6                	je     804857f <deregister_tm_clones+0xf>
 8048589:	55                   	push   ebp
 804858a:	89 e5                	mov    ebp,esp
 804858c:	83 ec 18             	sub    esp,0x18
 804858f:	c7 04 24 40 a0 04 08 	mov    DWORD PTR [esp],0x804a040
 8048596:	ff d0                	call   eax
 8048598:	c9                   	leave  
 8048599:	c3                   	ret    
 804859a:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]

080485a0 <register_tm_clones>:
 80485a0:	b8 40 a0 04 08       	mov    eax,0x804a040
 80485a5:	2d 40 a0 04 08       	sub    eax,0x804a040
 80485aa:	c1 f8 02             	sar    eax,0x2
 80485ad:	89 c2                	mov    edx,eax
 80485af:	c1 ea 1f             	shr    edx,0x1f
 80485b2:	01 d0                	add    eax,edx
 80485b4:	d1 f8                	sar    eax,1
 80485b6:	75 01                	jne    80485b9 <register_tm_clones+0x19>
 80485b8:	c3                   	ret    
 80485b9:	ba 00 00 00 00       	mov    edx,0x0
 80485be:	85 d2                	test   edx,edx
 80485c0:	74 f6                	je     80485b8 <register_tm_clones+0x18>
 80485c2:	55                   	push   ebp
 80485c3:	89 e5                	mov    ebp,esp
 80485c5:	83 ec 18             	sub    esp,0x18
 80485c8:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 80485cc:	c7 04 24 40 a0 04 08 	mov    DWORD PTR [esp],0x804a040
 80485d3:	ff d2                	call   edx
 80485d5:	c9                   	leave  
 80485d6:	c3                   	ret    
 80485d7:	89 f6                	mov    esi,esi
 80485d9:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]

080485e0 <__do_global_dtors_aux>:
 80485e0:	80 3d 44 a0 04 08 00 	cmp    BYTE PTR ds:0x804a044,0x0
 80485e7:	75 13                	jne    80485fc <__do_global_dtors_aux+0x1c>
 80485e9:	55                   	push   ebp
 80485ea:	89 e5                	mov    ebp,esp
 80485ec:	83 ec 08             	sub    esp,0x8
 80485ef:	e8 7c ff ff ff       	call   8048570 <deregister_tm_clones>
 80485f4:	c6 05 44 a0 04 08 01 	mov    BYTE PTR ds:0x804a044,0x1
 80485fb:	c9                   	leave  
 80485fc:	f3 c3                	repz ret 
 80485fe:	66 90                	xchg   ax,ax

08048600 <frame_dummy>:
 8048600:	a1 10 9f 04 08       	mov    eax,ds:0x8049f10
 8048605:	85 c0                	test   eax,eax
 8048607:	74 1f                	je     8048628 <frame_dummy+0x28>
 8048609:	b8 00 00 00 00       	mov    eax,0x0
 804860e:	85 c0                	test   eax,eax
 8048610:	74 16                	je     8048628 <frame_dummy+0x28>
 8048612:	55                   	push   ebp
 8048613:	89 e5                	mov    ebp,esp
 8048615:	83 ec 18             	sub    esp,0x18
 8048618:	c7 04 24 10 9f 04 08 	mov    DWORD PTR [esp],0x8049f10
 804861f:	ff d0                	call   eax
 8048621:	c9                   	leave  
 8048622:	e9 79 ff ff ff       	jmp    80485a0 <register_tm_clones>
 8048627:	90                   	nop
 8048628:	e9 73 ff ff ff       	jmp    80485a0 <register_tm_clones>

0804862d <verify>:
 804862d:	55                   	push   ebp
 804862e:	57                   	push   edi
 804862f:	56                   	push   esi
 8048630:	53                   	push   ebx
 8048631:	83 ec 1c             	sub    esp,0x1c
 8048634:	8b 5c 24 34          	mov    ebx,DWORD PTR [esp+0x34]
 8048638:	85 db                	test   ebx,ebx
 804863a:	0f 84 30 03 00 00    	je     8048970 <verify+0x343>
 8048640:	89 df                	mov    edi,ebx
 8048642:	b8 00 00 00 00       	mov    eax,0x0
 8048647:	b9 ff ff ff ff       	mov    ecx,0xffffffff
 804864c:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
 804864e:	b8 00 00 00 00       	mov    eax,0x0
 8048653:	83 f9 ef             	cmp    ecx,0xffffffef
 8048656:	0f 85 19 03 00 00    	jne    8048975 <verify+0x348>
 804865c:	e8 8f fe ff ff       	call   80484f0 <rand@plt>
 8048661:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
 8048665:	0f b6 4b 05          	movzx  ecx,BYTE PTR [ebx+0x5]
 8048669:	ba c9 42 16 b2       	mov    edx,0xb21642c9
 804866e:	89 d0                	mov    eax,edx
 8048670:	f7 6c 24 30          	imul   DWORD PTR [esp+0x30]
 8048674:	03 54 24 30          	add    edx,DWORD PTR [esp+0x30]
 8048678:	c1 fa 04             	sar    edx,0x4
 804867b:	8b 74 24 30          	mov    esi,DWORD PTR [esp+0x30]
 804867f:	c1 fe 1f             	sar    esi,0x1f
 8048682:	29 f2                	sub    edx,esi
 8048684:	6b c2 17             	imul   eax,edx,0x17
 8048687:	8b 7c 24 30          	mov    edi,DWORD PTR [esp+0x30]
 804868b:	29 c7                	sub    edi,eax
 804868d:	89 7c 24 08          	mov    DWORD PTR [esp+0x8],edi
 8048691:	80 7b 02 54          	cmp    BYTE PTR [ebx+0x2],0x54
 8048695:	0f 95 c2             	setne  dl
 8048698:	80 7b 01 45          	cmp    BYTE PTR [ebx+0x1],0x45
 804869c:	0f 95 c0             	setne  al
 804869f:	09 c2                	or     edx,eax
 80486a1:	89 d7                	mov    edi,edx
 80486a3:	80 7b 03 52          	cmp    BYTE PTR [ebx+0x3],0x52
 80486a7:	0f 95 c0             	setne  al
 80486aa:	09 c7                	or     edi,eax
 80486ac:	80 7b 04 4f          	cmp    BYTE PTR [ebx+0x4],0x4f
 80486b0:	0f 95 c0             	setne  al
 80486b3:	09 c7                	or     edi,eax
 80486b5:	80 f9 2d             	cmp    cl,0x2d
 80486b8:	0f 95 c0             	setne  al
 80486bb:	09 c7                	or     edi,eax
 80486bd:	3a 4b 0a             	cmp    cl,BYTE PTR [ebx+0xa]
 80486c0:	0f 95 c0             	setne  al
 80486c3:	09 c7                	or     edi,eax
 80486c5:	0f be 6b 08          	movsx  ebp,BYTE PTR [ebx+0x8]
 80486c9:	b8 67 66 66 66       	mov    eax,0x66666667
 80486ce:	f7 6c 24 30          	imul   DWORD PTR [esp+0x30]
 80486d2:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
 80486d6:	89 d0                	mov    eax,edx
 80486d8:	c1 f8 02             	sar    eax,0x2
 80486db:	89 34 24             	mov    DWORD PTR [esp],esi
 80486de:	29 f0                	sub    eax,esi
 80486e0:	8d 04 80             	lea    eax,[eax+eax*4]
 80486e3:	01 c0                	add    eax,eax
 80486e5:	8b 4c 24 30          	mov    ecx,DWORD PTR [esp+0x30]
 80486e9:	29 c1                	sub    ecx,eax
 80486eb:	be 1f 85 eb 51       	mov    esi,0x51eb851f
 80486f0:	89 f0                	mov    eax,esi
 80486f2:	f7 6c 24 30          	imul   DWORD PTR [esp+0x30]
 80486f6:	89 d6                	mov    esi,edx
 80486f8:	c1 fa 05             	sar    edx,0x5
 80486fb:	89 d0                	mov    eax,edx
 80486fd:	2b 04 24             	sub    eax,DWORD PTR [esp]
 8048700:	6b c0 64             	imul   eax,eax,0x64
 8048703:	8b 54 24 30          	mov    edx,DWORD PTR [esp+0x30]
 8048707:	29 c2                	sub    edx,eax
 8048709:	01 d1                	add    ecx,edx
 804870b:	b8 4f ec c4 4e       	mov    eax,0x4ec4ec4f
 8048710:	f7 e9                	imul   ecx
 8048712:	c1 fa 03             	sar    edx,0x3
 8048715:	89 c8                	mov    eax,ecx
 8048717:	c1 f8 1f             	sar    eax,0x1f
 804871a:	29 c2                	sub    edx,eax
 804871c:	6b d2 1a             	imul   edx,edx,0x1a
 804871f:	29 d1                	sub    ecx,edx
 8048721:	83 c1 41             	add    ecx,0x41
 8048724:	39 cd                	cmp    ebp,ecx
 8048726:	0f 95 c0             	setne  al
 8048729:	09 c7                	or     edi,eax
 804872b:	0f be 4b 09          	movsx  ecx,BYTE PTR [ebx+0x9]
 804872f:	8b 6c 24 30          	mov    ebp,DWORD PTR [esp+0x30]
 8048733:	8d 45 0f             	lea    eax,[ebp+0xf]
 8048736:	85 ed                	test   ebp,ebp
 8048738:	0f 49 c5             	cmovns eax,ebp
 804873b:	c1 f8 04             	sar    eax,0x4
 804873e:	c1 fe 04             	sar    esi,0x4
 8048741:	2b 34 24             	sub    esi,DWORD PTR [esp]
 8048744:	99                   	cdq    
 8048745:	f7 fe                	idiv   esi
 8048747:	89 d5                	mov    ebp,edx
 8048749:	b8 4f ec c4 4e       	mov    eax,0x4ec4ec4f
 804874e:	f7 ea                	imul   edx
 8048750:	c1 fa 03             	sar    edx,0x3
 8048753:	89 ee                	mov    esi,ebp
 8048755:	c1 fe 1f             	sar    esi,0x1f
 8048758:	29 f2                	sub    edx,esi
 804875a:	6b d2 1a             	imul   edx,edx,0x1a
 804875d:	29 d5                	sub    ebp,edx
 804875f:	83 c5 41             	add    ebp,0x41
 8048762:	39 e9                	cmp    ecx,ebp
 8048764:	0f 95 c0             	setne  al
 8048767:	09 c7                	or     edi,eax
 8048769:	0f be 73 0d          	movsx  esi,BYTE PTR [ebx+0xd]
 804876d:	ba 49 ce fa 5e       	mov    edx,0x5eface49
 8048772:	89 d0                	mov    eax,edx
 8048774:	f7 6c 24 30          	imul   DWORD PTR [esp+0x30]
 8048778:	89 d1                	mov    ecx,edx
 804877a:	c1 f9 07             	sar    ecx,0x7
 804877d:	8b 2c 24             	mov    ebp,DWORD PTR [esp]
 8048780:	29 e9                	sub    ecx,ebp
 8048782:	b8 67 66 66 66       	mov    eax,0x66666667
 8048787:	f7 e9                	imul   ecx
 8048789:	c1 fa 02             	sar    edx,0x2
 804878c:	89 c8                	mov    eax,ecx
 804878e:	c1 f8 1f             	sar    eax,0x1f
 8048791:	29 c2                	sub    edx,eax
 8048793:	8d 04 92             	lea    eax,[edx+edx*4]
 8048796:	01 c0                	add    eax,eax
 8048798:	29 c1                	sub    ecx,eax
 804879a:	83 c1 30             	add    ecx,0x30
 804879d:	39 ce                	cmp    esi,ecx
 804879f:	0f 95 c0             	setne  al
 80487a2:	09 c7                	or     edi,eax
 80487a4:	0f be 73 0e          	movsx  esi,BYTE PTR [ebx+0xe]
 80487a8:	ba e1 00 0e e0       	mov    edx,0xe00e00e1
 80487ad:	89 d0                	mov    eax,edx
 80487af:	f7 6c 24 30          	imul   DWORD PTR [esp+0x30]
 80487b3:	89 d1                	mov    ecx,edx
 80487b5:	03 4c 24 30          	add    ecx,DWORD PTR [esp+0x30]
 80487b9:	c1 f9 0b             	sar    ecx,0xb
 80487bc:	29 e9                	sub    ecx,ebp
 80487be:	81 c1 ee 00 00 00    	add    ecx,0xee
 80487c4:	b8 67 66 66 66       	mov    eax,0x66666667
 80487c9:	f7 e9                	imul   ecx
 80487cb:	c1 fa 02             	sar    edx,0x2
 80487ce:	89 cd                	mov    ebp,ecx
 80487d0:	c1 fd 1f             	sar    ebp,0x1f
 80487d3:	29 ea                	sub    edx,ebp
 80487d5:	8d 04 92             	lea    eax,[edx+edx*4]
 80487d8:	01 c0                	add    eax,eax
 80487da:	29 c1                	sub    ecx,eax
 80487dc:	83 c1 30             	add    ecx,0x30
 80487df:	39 ce                	cmp    esi,ecx
 80487e1:	0f 95 c0             	setne  al
 80487e4:	89 fe                	mov    esi,edi
 80487e6:	09 c6                	or     esi,eax
 80487e8:	89 f5                	mov    ebp,esi
 80487ea:	0f be 73 06          	movsx  esi,BYTE PTR [ebx+0x6]
 80487ee:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
 80487f2:	89 cf                	mov    edi,ecx
 80487f4:	d1 ff                	sar    edi,1
 80487f6:	8b 14 24             	mov    edx,DWORD PTR [esp]
 80487f9:	29 d7                	sub    edi,edx
 80487fb:	89 f8                	mov    eax,edi
 80487fd:	c1 f8 1f             	sar    eax,0x1f
 8048800:	c1 e8 1e             	shr    eax,0x1e
 8048803:	01 c7                	add    edi,eax
 8048805:	83 e7 03             	and    edi,0x3
 8048808:	29 c7                	sub    edi,eax
 804880a:	c1 f9 03             	sar    ecx,0x3
 804880d:	29 d1                	sub    ecx,edx
 804880f:	ba 89 88 88 88       	mov    edx,0x88888889
 8048814:	89 c8                	mov    eax,ecx
 8048816:	f7 ea                	imul   edx
 8048818:	8d 04 0a             	lea    eax,[edx+ecx*1]
 804881b:	c1 f8 04             	sar    eax,0x4
 804881e:	89 ca                	mov    edx,ecx
 8048820:	c1 fa 1f             	sar    edx,0x1f
 8048823:	29 d0                	sub    eax,edx
 8048825:	6b c0 1e             	imul   eax,eax,0x1e
 8048828:	29 c1                	sub    ecx,eax
 804882a:	01 cf                	add    edi,ecx
 804882c:	b8 4f ec c4 4e       	mov    eax,0x4ec4ec4f
 8048831:	f7 ef                	imul   edi
 8048833:	c1 fa 03             	sar    edx,0x3
 8048836:	89 f8                	mov    eax,edi
 8048838:	c1 f8 1f             	sar    eax,0x1f
 804883b:	29 c2                	sub    edx,eax
 804883d:	6b d2 1a             	imul   edx,edx,0x1a
 8048840:	29 d7                	sub    edi,edx
 8048842:	83 c7 41             	add    edi,0x41
 8048845:	39 fe                	cmp    esi,edi
 8048847:	0f 95 c0             	setne  al
 804884a:	89 ee                	mov    esi,ebp
 804884c:	09 c6                	or     esi,eax
 804884e:	89 f7                	mov    edi,esi
 8048850:	0f be 73 0b          	movsx  esi,BYTE PTR [ebx+0xb]
 8048854:	ba 39 8e e3 38       	mov    edx,0x38e38e39
 8048859:	89 d0                	mov    eax,edx
 804885b:	f7 6c 24 30          	imul   DWORD PTR [esp+0x30]
 804885f:	d1 fa                	sar    edx,1
 8048861:	8b 2c 24             	mov    ebp,DWORD PTR [esp]
 8048864:	29 ea                	sub    edx,ebp
 8048866:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
 804886a:	8d 0c 82             	lea    ecx,[edx+eax*4]
 804886d:	b8 67 66 66 66       	mov    eax,0x66666667
 8048872:	f7 e9                	imul   ecx
 8048874:	c1 fa 02             	sar    edx,0x2
 8048877:	89 c8                	mov    eax,ecx
 8048879:	c1 f8 1f             	sar    eax,0x1f
 804887c:	29 c2                	sub    edx,eax
 804887e:	8d 04 92             	lea    eax,[edx+edx*4]
 8048881:	01 c0                	add    eax,eax
 8048883:	29 c1                	sub    ecx,eax
 8048885:	83 c1 30             	add    ecx,0x30
 8048888:	39 ce                	cmp    esi,ecx
 804888a:	0f 95 c0             	setne  al
 804888d:	09 c7                	or     edi,eax
 804888f:	0f be 73 0c          	movsx  esi,BYTE PTR [ebx+0xc]
 8048893:	ba e9 a2 8b 2e       	mov    edx,0x2e8ba2e9
 8048898:	89 d0                	mov    eax,edx
 804889a:	f7 6c 24 30          	imul   DWORD PTR [esp+0x30]
 804889e:	d1 fa                	sar    edx,1
 80488a0:	29 ea                	sub    edx,ebp
 80488a2:	8d 04 92             	lea    eax,[edx+edx*4]
 80488a5:	8d 04 42             	lea    eax,[edx+eax*2]
 80488a8:	8b 54 24 30          	mov    edx,DWORD PTR [esp+0x30]
 80488ac:	29 c2                	sub    edx,eax
 80488ae:	89 d1                	mov    ecx,edx
 80488b0:	03 4c 24 08          	add    ecx,DWORD PTR [esp+0x8]
 80488b4:	ba f3 1a ca 6b       	mov    edx,0x6bca1af3
 80488b9:	89 d0                	mov    eax,edx
 80488bb:	f7 6c 24 30          	imul   DWORD PTR [esp+0x30]
 80488bf:	c1 fa 03             	sar    edx,0x3
 80488c2:	29 ea                	sub    edx,ebp
 80488c4:	8d 04 d2             	lea    eax,[edx+edx*8]
 80488c7:	8d 04 42             	lea    eax,[edx+eax*2]
 80488ca:	8b 54 24 30          	mov    edx,DWORD PTR [esp+0x30]
 80488ce:	29 c2                	sub    edx,eax
 80488d0:	01 d1                	add    ecx,edx
 80488d2:	b8 67 66 66 66       	mov    eax,0x66666667
 80488d7:	f7 e9                	imul   ecx
 80488d9:	c1 fa 02             	sar    edx,0x2
 80488dc:	89 c8                	mov    eax,ecx
 80488de:	c1 f8 1f             	sar    eax,0x1f
 80488e1:	29 c2                	sub    edx,eax
 80488e3:	8d 04 92             	lea    eax,[edx+edx*4]
 80488e6:	01 c0                	add    eax,eax
 80488e8:	29 c1                	sub    ecx,eax
 80488ea:	83 c1 30             	add    ecx,0x30
 80488ed:	39 ce                	cmp    esi,ecx
 80488ef:	0f 95 c0             	setne  al
 80488f2:	09 c7                	or     edi,eax
 80488f4:	0f be 6b 07          	movsx  ebp,BYTE PTR [ebx+0x7]
 80488f8:	be ab aa aa 2a       	mov    esi,0x2aaaaaab
 80488fd:	89 f0                	mov    eax,esi
 80488ff:	f7 6c 24 30          	imul   DWORD PTR [esp+0x30]
 8048903:	2b 14 24             	sub    edx,DWORD PTR [esp]
 8048906:	89 d1                	mov    ecx,edx
 8048908:	89 d0                	mov    eax,edx
 804890a:	f7 ee                	imul   esi
 804890c:	89 ce                	mov    esi,ecx
 804890e:	c1 fe 1f             	sar    esi,0x1f
 8048911:	89 f0                	mov    eax,esi
 8048913:	89 d6                	mov    esi,edx
 8048915:	29 c6                	sub    esi,eax
 8048917:	8d 04 76             	lea    eax,[esi+esi*2]
 804891a:	01 c0                	add    eax,eax
 804891c:	29 c1                	sub    ecx,eax
 804891e:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
 8048922:	c1 f8 04             	sar    eax,0x4
 8048925:	2b 04 24             	sub    eax,DWORD PTR [esp]
 8048928:	8d 04 40             	lea    eax,[eax+eax*2]
 804892b:	8d 4c 41 06          	lea    ecx,[ecx+eax*2+0x6]
 804892f:	b8 4f ec c4 4e       	mov    eax,0x4ec4ec4f
 8048934:	f7 e9                	imul   ecx
 8048936:	c1 fa 03             	sar    edx,0x3
 8048939:	89 c8                	mov    eax,ecx
 804893b:	c1 f8 1f             	sar    eax,0x1f
 804893e:	29 c2                	sub    edx,eax
 8048940:	6b d2 1a             	imul   edx,edx,0x1a
 8048943:	29 d1                	sub    ecx,edx
 8048945:	83 c1 41             	add    ecx,0x41
 8048948:	39 cd                	cmp    ebp,ecx
 804894a:	0f 95 c0             	setne  al
 804894d:	09 f8                	or     eax,edi
 804894f:	83 7c 24 0c ff       	cmp    DWORD PTR [esp+0xc],0xffffffff
 8048954:	0f 94 c2             	sete   dl
 8048957:	0f b6 d2             	movzx  edx,dl
 804895a:	0f b6 8a 26 8d 04 08 	movzx  ecx,BYTE PTR [edx+0x8048d26]
 8048961:	38 0b                	cmp    BYTE PTR [ebx],cl
 8048963:	0f 95 c2             	setne  dl
 8048966:	09 d0                	or     eax,edx
 8048968:	83 f0 01             	xor    eax,0x1
 804896b:	0f b6 c0             	movzx  eax,al
 804896e:	eb 05                	jmp    8048975 <verify+0x348>
 8048970:	b8 00 00 00 00       	mov    eax,0x0
 8048975:	83 c4 1c             	add    esp,0x1c
 8048978:	5b                   	pop    ebx
 8048979:	5e                   	pop    esi
 804897a:	5f                   	pop    edi
 804897b:	5d                   	pop    ebp
 804897c:	c3                   	ret    

0804897d <main>:
 804897d:	55                   	push   ebp
 804897e:	89 e5                	mov    ebp,esp
 8048980:	57                   	push   edi
 8048981:	53                   	push   ebx
 8048982:	83 e4 f0             	and    esp,0xfffffff0
 8048985:	81 ec 20 04 00 00    	sub    esp,0x420
 804898b:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
 804898e:	65 8b 1d 14 00 00 00 	mov    ebx,DWORD PTR gs:0x14
 8048995:	89 9c 24 1c 04 00 00 	mov    DWORD PTR [esp+0x41c],ebx
 804899c:	31 db                	xor    ebx,ebx
 804899e:	83 7d 08 02          	cmp    DWORD PTR [ebp+0x8],0x2
 80489a2:	74 24                	je     80489c8 <main+0x4b>
 80489a4:	8b 00                	mov    eax,DWORD PTR [eax]
 80489a6:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
 80489aa:	c7 44 24 04 28 8c 04 	mov    DWORD PTR [esp+0x4],0x8048c28
 80489b1:	08 
 80489b2:	c7 04 24 00 00 00 00 	mov    DWORD PTR [esp],0x0
 80489b9:	e8 42 fb ff ff       	call   8048500 <__printf_chk@plt>
 80489be:	b8 01 00 00 00       	mov    eax,0x1
 80489c3:	e9 a6 01 00 00       	jmp    8048b6e <main+0x1f1>
 80489c8:	c7 44 24 08 0a 00 00 	mov    DWORD PTR [esp+0x8],0xa
 80489cf:	00 
 80489d0:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
 80489d7:	00 
 80489d8:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
 80489db:	89 04 24             	mov    DWORD PTR [esp],eax
 80489de:	e8 3d fb ff ff       	call   8048520 <strtol@plt>
 80489e3:	89 c3                	mov    ebx,eax
 80489e5:	c7 44 24 04 d8 8c 04 	mov    DWORD PTR [esp+0x4],0x8048cd8
 80489ec:	08 
 80489ed:	c7 04 24 00 00 00 00 	mov    DWORD PTR [esp],0x0
 80489f4:	e8 07 fb ff ff       	call   8048500 <__printf_chk@plt>
 80489f9:	a1 40 a0 04 08       	mov    eax,ds:0x804a040
 80489fe:	89 04 24             	mov    DWORD PTR [esp],eax
 8048a01:	e8 7a fa ff ff       	call   8048480 <fflush@plt>
 8048a06:	b8 00 00 00 00       	mov    eax,0x0
 8048a0b:	8d 7c 24 1b          	lea    edi,[esp+0x1b]
 8048a0f:	aa                   	stos   BYTE PTR es:[edi],al
 8048a10:	ba 00 04 00 00       	mov    edx,0x400
 8048a15:	f7 c7 02 00 00 00    	test   edi,0x2
 8048a1b:	74 05                	je     8048a22 <main+0xa5>
 8048a1d:	66 ab                	stos   WORD PTR es:[edi],ax
 8048a1f:	83 ea 02             	sub    edx,0x2
 8048a22:	89 d1                	mov    ecx,edx
 8048a24:	c1 e9 02             	shr    ecx,0x2
 8048a27:	f3 ab                	rep stos DWORD PTR es:[edi],eax
 8048a29:	f6 c2 02             	test   dl,0x2
 8048a2c:	74 02                	je     8048a30 <main+0xb3>
 8048a2e:	66 ab                	stos   WORD PTR es:[edi],ax
 8048a30:	f6 c2 01             	test   dl,0x1
 8048a33:	74 01                	je     8048a36 <main+0xb9>
 8048a35:	aa                   	stos   BYTE PTR es:[edi],al
 8048a36:	8d 7c 24 1b          	lea    edi,[esp+0x1b]
 8048a3a:	89 7c 24 04          	mov    DWORD PTR [esp+0x4],edi
 8048a3e:	c7 04 24 39 8c 04 08 	mov    DWORD PTR [esp],0x8048c39
 8048a45:	e8 c6 fa ff ff       	call   8048510 <__isoc99_scanf@plt>
 8048a4a:	c7 44 24 04 3c 8c 04 	mov    DWORD PTR [esp+0x4],0x8048c3c
 8048a51:	08 
 8048a52:	c7 04 24 00 00 00 00 	mov    DWORD PTR [esp],0x0
 8048a59:	e8 a2 fa ff ff       	call   8048500 <__printf_chk@plt>
 8048a5e:	a1 40 a0 04 08       	mov    eax,ds:0x804a040
 8048a63:	89 04 24             	mov    DWORD PTR [esp],eax
 8048a66:	e8 15 fa ff ff       	call   8048480 <fflush@plt>
 8048a6b:	c7 04 24 00 00 00 00 	mov    DWORD PTR [esp],0x0
 8048a72:	e8 19 fa ff ff       	call   8048490 <sleep@plt>
 8048a77:	c7 04 24 2e 00 00 00 	mov    DWORD PTR [esp],0x2e
 8048a7e:	e8 5d fa ff ff       	call   80484e0 <putchar@plt>
 8048a83:	a1 40 a0 04 08       	mov    eax,ds:0x804a040
 8048a88:	89 04 24             	mov    DWORD PTR [esp],eax
 8048a8b:	e8 f0 f9 ff ff       	call   8048480 <fflush@plt>
 8048a90:	c7 04 24 00 00 00 00 	mov    DWORD PTR [esp],0x0
 8048a97:	e8 f4 f9 ff ff       	call   8048490 <sleep@plt>
 8048a9c:	c7 04 24 2e 00 00 00 	mov    DWORD PTR [esp],0x2e
 8048aa3:	e8 38 fa ff ff       	call   80484e0 <putchar@plt>
 8048aa8:	a1 40 a0 04 08       	mov    eax,ds:0x804a040
 8048aad:	89 04 24             	mov    DWORD PTR [esp],eax
 8048ab0:	e8 cb f9 ff ff       	call   8048480 <fflush@plt>
 8048ab5:	c7 04 24 00 00 00 00 	mov    DWORD PTR [esp],0x0
 8048abc:	e8 cf f9 ff ff       	call   8048490 <sleep@plt>
 8048ac1:	c7 04 24 75 8c 04 08 	mov    DWORD PTR [esp],0x8048c75
 8048ac8:	e8 e3 f9 ff ff       	call   80484b0 <puts@plt>
 8048acd:	a1 40 a0 04 08       	mov    eax,ds:0x804a040
 8048ad2:	89 04 24             	mov    DWORD PTR [esp],eax
 8048ad5:	e8 a6 f9 ff ff       	call   8048480 <fflush@plt>
 8048ada:	c7 04 24 00 00 00 00 	mov    DWORD PTR [esp],0x0
 8048ae1:	e8 aa f9 ff ff       	call   8048490 <sleep@plt>
 8048ae6:	89 7c 24 04          	mov    DWORD PTR [esp+0x4],edi
 8048aea:	89 1c 24             	mov    DWORD PTR [esp],ebx
 8048aed:	e8 3b fb ff ff       	call   804862d <verify>
 8048af2:	85 c0                	test   eax,eax
 8048af4:	74 0e                	je     8048b04 <main+0x187>
 8048af6:	c7 04 24 46 8c 04 08 	mov    DWORD PTR [esp],0x8048c46
 8048afd:	e8 ae f9 ff ff       	call   80484b0 <puts@plt>
 8048b02:	eb 0c                	jmp    8048b10 <main+0x193>
 8048b04:	c7 04 24 5d 8c 04 08 	mov    DWORD PTR [esp],0x8048c5d
 8048b0b:	e8 a0 f9 ff ff       	call   80484b0 <puts@plt>
 8048b10:	e8 db f9 ff ff       	call   80484f0 <rand@plt>
 8048b15:	89 c2                	mov    edx,eax
 8048b17:	b8 00 00 00 00       	mov    eax,0x0
 8048b1c:	83 fa ff             	cmp    edx,0xffffffff
 8048b1f:	75 4d                	jne    8048b6e <main+0x1f1>
 8048b21:	c7 04 24 77 8c 04 08 	mov    DWORD PTR [esp],0x8048c77
 8048b28:	e8 83 f9 ff ff       	call   80484b0 <puts@plt>
 8048b2d:	c7 04 24 87 8c 04 08 	mov    DWORD PTR [esp],0x8048c87
 8048b34:	e8 77 f9 ff ff       	call   80484b0 <puts@plt>
 8048b39:	c7 04 24 97 8c 04 08 	mov    DWORD PTR [esp],0x8048c97
 8048b40:	e8 6b f9 ff ff       	call   80484b0 <puts@plt>
 8048b45:	c7 04 24 a7 8c 04 08 	mov    DWORD PTR [esp],0x8048ca7
 8048b4c:	e8 5f f9 ff ff       	call   80484b0 <puts@plt>
 8048b51:	c7 04 24 b7 8c 04 08 	mov    DWORD PTR [esp],0x8048cb7
 8048b58:	e8 53 f9 ff ff       	call   80484b0 <puts@plt>
 8048b5d:	c7 04 24 c7 8c 04 08 	mov    DWORD PTR [esp],0x8048cc7
 8048b64:	e8 47 f9 ff ff       	call   80484b0 <puts@plt>
 8048b69:	b8 00 00 00 00       	mov    eax,0x0
 8048b6e:	8b 9c 24 1c 04 00 00 	mov    ebx,DWORD PTR [esp+0x41c]
 8048b75:	65 33 1d 14 00 00 00 	xor    ebx,DWORD PTR gs:0x14
 8048b7c:	74 05                	je     8048b83 <main+0x206>
 8048b7e:	e8 1d f9 ff ff       	call   80484a0 <__stack_chk_fail@plt>
 8048b83:	8d 65 f8             	lea    esp,[ebp-0x8]
 8048b86:	5b                   	pop    ebx
 8048b87:	5f                   	pop    edi
 8048b88:	5d                   	pop    ebp
 8048b89:	c3                   	ret    
 8048b8a:	66 90                	xchg   ax,ax
 8048b8c:	66 90                	xchg   ax,ax
 8048b8e:	66 90                	xchg   ax,ax

08048b90 <__libc_csu_init>:
 8048b90:	55                   	push   ebp
 8048b91:	57                   	push   edi
 8048b92:	31 ff                	xor    edi,edi
 8048b94:	56                   	push   esi
 8048b95:	53                   	push   ebx
 8048b96:	e8 c5 f9 ff ff       	call   8048560 <__x86.get_pc_thunk.bx>
 8048b9b:	81 c3 65 14 00 00    	add    ebx,0x1465
 8048ba1:	83 ec 1c             	sub    esp,0x1c
 8048ba4:	8b 6c 24 30          	mov    ebp,DWORD PTR [esp+0x30]
 8048ba8:	8d b3 0c ff ff ff    	lea    esi,[ebx-0xf4]
 8048bae:	e8 91 f8 ff ff       	call   8048444 <_init>
 8048bb3:	8d 83 08 ff ff ff    	lea    eax,[ebx-0xf8]
 8048bb9:	29 c6                	sub    esi,eax
 8048bbb:	c1 fe 02             	sar    esi,0x2
 8048bbe:	85 f6                	test   esi,esi
 8048bc0:	74 27                	je     8048be9 <__libc_csu_init+0x59>
 8048bc2:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
 8048bc8:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
 8048bcc:	89 2c 24             	mov    DWORD PTR [esp],ebp
 8048bcf:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
 8048bd3:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
 8048bd7:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 8048bdb:	ff 94 bb 08 ff ff ff 	call   DWORD PTR [ebx+edi*4-0xf8]
 8048be2:	83 c7 01             	add    edi,0x1
 8048be5:	39 f7                	cmp    edi,esi
 8048be7:	75 df                	jne    8048bc8 <__libc_csu_init+0x38>
 8048be9:	83 c4 1c             	add    esp,0x1c
 8048bec:	5b                   	pop    ebx
 8048bed:	5e                   	pop    esi
 8048bee:	5f                   	pop    edi
 8048bef:	5d                   	pop    ebp
 8048bf0:	c3                   	ret    
 8048bf1:	eb 0d                	jmp    8048c00 <__libc_csu_fini>
 8048bf3:	90                   	nop
 8048bf4:	90                   	nop
 8048bf5:	90                   	nop
 8048bf6:	90                   	nop
 8048bf7:	90                   	nop
 8048bf8:	90                   	nop
 8048bf9:	90                   	nop
 8048bfa:	90                   	nop
 8048bfb:	90                   	nop
 8048bfc:	90                   	nop
 8048bfd:	90                   	nop
 8048bfe:	90                   	nop
 8048bff:	90                   	nop

08048c00 <__libc_csu_fini>:
 8048c00:	f3 c3                	repz ret 

Disassembly of section .fini:

08048c04 <_fini>:
 8048c04:	53                   	push   ebx
 8048c05:	83 ec 08             	sub    esp,0x8
 8048c08:	e8 53 f9 ff ff       	call   8048560 <__x86.get_pc_thunk.bx>
 8048c0d:	81 c3 f3 13 00 00    	add    ebx,0x13f3
 8048c13:	83 c4 08             	add    esp,0x8
 8048c16:	5b                   	pop    ebx
 8048c17:	c3                   	ret    
