
re-medium-32bit:     file format elf32-i386


Disassembly of section .init:

0804848c <_init>:
 804848c:	53                   	push   ebx
 804848d:	83 ec 08             	sub    esp,0x8
 8048490:	e8 2b 01 00 00       	call   80485c0 <__x86.get_pc_thunk.bx>
 8048495:	81 c3 6b 1b 00 00    	add    ebx,0x1b6b
 804849b:	8b 83 fc ff ff ff    	mov    eax,DWORD PTR [ebx-0x4]
 80484a1:	85 c0                	test   eax,eax
 80484a3:	74 05                	je     80484aa <_init+0x1e>
 80484a5:	e8 66 00 00 00       	call   8048510 <__gmon_start__@plt>
 80484aa:	83 c4 08             	add    esp,0x8
 80484ad:	5b                   	pop    ebx
 80484ae:	c3                   	ret    

Disassembly of section .plt:

080484b0 <strcmp@plt-0x10>:
 80484b0:	ff 35 04 a0 04 08    	push   DWORD PTR ds:0x804a004
 80484b6:	ff 25 08 a0 04 08    	jmp    DWORD PTR ds:0x804a008
 80484bc:	00 00                	add    BYTE PTR [eax],al
	...

080484c0 <strcmp@plt>:
 80484c0:	ff 25 0c a0 04 08    	jmp    DWORD PTR ds:0x804a00c
 80484c6:	68 00 00 00 00       	push   0x0
 80484cb:	e9 e0 ff ff ff       	jmp    80484b0 <_init+0x24>

080484d0 <fflush@plt>:
 80484d0:	ff 25 10 a0 04 08    	jmp    DWORD PTR ds:0x804a010
 80484d6:	68 08 00 00 00       	push   0x8
 80484db:	e9 d0 ff ff ff       	jmp    80484b0 <_init+0x24>

080484e0 <sleep@plt>:
 80484e0:	ff 25 14 a0 04 08    	jmp    DWORD PTR ds:0x804a014
 80484e6:	68 10 00 00 00       	push   0x10
 80484eb:	e9 c0 ff ff ff       	jmp    80484b0 <_init+0x24>

080484f0 <__stack_chk_fail@plt>:
 80484f0:	ff 25 18 a0 04 08    	jmp    DWORD PTR ds:0x804a018
 80484f6:	68 18 00 00 00       	push   0x18
 80484fb:	e9 b0 ff ff ff       	jmp    80484b0 <_init+0x24>

08048500 <puts@plt>:
 8048500:	ff 25 1c a0 04 08    	jmp    DWORD PTR ds:0x804a01c
 8048506:	68 20 00 00 00       	push   0x20
 804850b:	e9 a0 ff ff ff       	jmp    80484b0 <_init+0x24>

08048510 <__gmon_start__@plt>:
 8048510:	ff 25 20 a0 04 08    	jmp    DWORD PTR ds:0x804a020
 8048516:	68 28 00 00 00       	push   0x28
 804851b:	e9 90 ff ff ff       	jmp    80484b0 <_init+0x24>

08048520 <__libc_start_main@plt>:
 8048520:	ff 25 24 a0 04 08    	jmp    DWORD PTR ds:0x804a024
 8048526:	68 30 00 00 00       	push   0x30
 804852b:	e9 80 ff ff ff       	jmp    80484b0 <_init+0x24>

08048530 <putchar@plt>:
 8048530:	ff 25 28 a0 04 08    	jmp    DWORD PTR ds:0x804a028
 8048536:	68 38 00 00 00       	push   0x38
 804853b:	e9 70 ff ff ff       	jmp    80484b0 <_init+0x24>

08048540 <rand@plt>:
 8048540:	ff 25 2c a0 04 08    	jmp    DWORD PTR ds:0x804a02c
 8048546:	68 40 00 00 00       	push   0x40
 804854b:	e9 60 ff ff ff       	jmp    80484b0 <_init+0x24>

08048550 <__printf_chk@plt>:
 8048550:	ff 25 30 a0 04 08    	jmp    DWORD PTR ds:0x804a030
 8048556:	68 48 00 00 00       	push   0x48
 804855b:	e9 50 ff ff ff       	jmp    80484b0 <_init+0x24>

08048560 <__isoc99_scanf@plt>:
 8048560:	ff 25 34 a0 04 08    	jmp    DWORD PTR ds:0x804a034
 8048566:	68 50 00 00 00       	push   0x50
 804856b:	e9 40 ff ff ff       	jmp    80484b0 <_init+0x24>

08048570 <strtol@plt>:
 8048570:	ff 25 38 a0 04 08    	jmp    DWORD PTR ds:0x804a038
 8048576:	68 58 00 00 00       	push   0x58
 804857b:	e9 30 ff ff ff       	jmp    80484b0 <_init+0x24>

08048580 <__sprintf_chk@plt>:
 8048580:	ff 25 3c a0 04 08    	jmp    DWORD PTR ds:0x804a03c
 8048586:	68 60 00 00 00       	push   0x60
 804858b:	e9 20 ff ff ff       	jmp    80484b0 <_init+0x24>

Disassembly of section .text:

08048590 <_start>:
 8048590:	31 ed                	xor    ebp,ebp
 8048592:	5e                   	pop    esi
 8048593:	89 e1                	mov    ecx,esp
 8048595:	83 e4 f0             	and    esp,0xfffffff0
 8048598:	50                   	push   eax
 8048599:	54                   	push   esp
 804859a:	52                   	push   edx
 804859b:	68 d0 89 04 08       	push   0x80489d0
 80485a0:	68 60 89 04 08       	push   0x8048960
 80485a5:	51                   	push   ecx
 80485a6:	56                   	push   esi
 80485a7:	68 5d 87 04 08       	push   0x804875d
 80485ac:	e8 6f ff ff ff       	call   8048520 <__libc_start_main@plt>
 80485b1:	f4                   	hlt    
 80485b2:	66 90                	xchg   ax,ax
 80485b4:	66 90                	xchg   ax,ax
 80485b6:	66 90                	xchg   ax,ax
 80485b8:	66 90                	xchg   ax,ax
 80485ba:	66 90                	xchg   ax,ax
 80485bc:	66 90                	xchg   ax,ax
 80485be:	66 90                	xchg   ax,ax

080485c0 <__x86.get_pc_thunk.bx>:
 80485c0:	8b 1c 24             	mov    ebx,DWORD PTR [esp]
 80485c3:	c3                   	ret    
 80485c4:	66 90                	xchg   ax,ax
 80485c6:	66 90                	xchg   ax,ax
 80485c8:	66 90                	xchg   ax,ax
 80485ca:	66 90                	xchg   ax,ax
 80485cc:	66 90                	xchg   ax,ax
 80485ce:	66 90                	xchg   ax,ax

080485d0 <deregister_tm_clones>:
 80485d0:	b8 4b a0 04 08       	mov    eax,0x804a04b
 80485d5:	2d 48 a0 04 08       	sub    eax,0x804a048
 80485da:	83 f8 06             	cmp    eax,0x6
 80485dd:	77 01                	ja     80485e0 <deregister_tm_clones+0x10>
 80485df:	c3                   	ret    
 80485e0:	b8 00 00 00 00       	mov    eax,0x0
 80485e5:	85 c0                	test   eax,eax
 80485e7:	74 f6                	je     80485df <deregister_tm_clones+0xf>
 80485e9:	55                   	push   ebp
 80485ea:	89 e5                	mov    ebp,esp
 80485ec:	83 ec 18             	sub    esp,0x18
 80485ef:	c7 04 24 48 a0 04 08 	mov    DWORD PTR [esp],0x804a048
 80485f6:	ff d0                	call   eax
 80485f8:	c9                   	leave  
 80485f9:	c3                   	ret    
 80485fa:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]

08048600 <register_tm_clones>:
 8048600:	b8 48 a0 04 08       	mov    eax,0x804a048
 8048605:	2d 48 a0 04 08       	sub    eax,0x804a048
 804860a:	c1 f8 02             	sar    eax,0x2
 804860d:	89 c2                	mov    edx,eax
 804860f:	c1 ea 1f             	shr    edx,0x1f
 8048612:	01 d0                	add    eax,edx
 8048614:	d1 f8                	sar    eax,1
 8048616:	75 01                	jne    8048619 <register_tm_clones+0x19>
 8048618:	c3                   	ret    
 8048619:	ba 00 00 00 00       	mov    edx,0x0
 804861e:	85 d2                	test   edx,edx
 8048620:	74 f6                	je     8048618 <register_tm_clones+0x18>
 8048622:	55                   	push   ebp
 8048623:	89 e5                	mov    ebp,esp
 8048625:	83 ec 18             	sub    esp,0x18
 8048628:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 804862c:	c7 04 24 48 a0 04 08 	mov    DWORD PTR [esp],0x804a048
 8048633:	ff d2                	call   edx
 8048635:	c9                   	leave  
 8048636:	c3                   	ret    
 8048637:	89 f6                	mov    esi,esi
 8048639:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]

08048640 <__do_global_dtors_aux>:
 8048640:	80 3d 64 a0 04 08 00 	cmp    BYTE PTR ds:0x804a064,0x0
 8048647:	75 13                	jne    804865c <__do_global_dtors_aux+0x1c>
 8048649:	55                   	push   ebp
 804864a:	89 e5                	mov    ebp,esp
 804864c:	83 ec 08             	sub    esp,0x8
 804864f:	e8 7c ff ff ff       	call   80485d0 <deregister_tm_clones>
 8048654:	c6 05 64 a0 04 08 01 	mov    BYTE PTR ds:0x804a064,0x1
 804865b:	c9                   	leave  
 804865c:	f3 c3                	repz ret 
 804865e:	66 90                	xchg   ax,ax

08048660 <frame_dummy>:
 8048660:	a1 10 9f 04 08       	mov    eax,ds:0x8049f10
 8048665:	85 c0                	test   eax,eax
 8048667:	74 1f                	je     8048688 <frame_dummy+0x28>
 8048669:	b8 00 00 00 00       	mov    eax,0x0
 804866e:	85 c0                	test   eax,eax
 8048670:	74 16                	je     8048688 <frame_dummy+0x28>
 8048672:	55                   	push   ebp
 8048673:	89 e5                	mov    ebp,esp
 8048675:	83 ec 18             	sub    esp,0x18
 8048678:	c7 04 24 10 9f 04 08 	mov    DWORD PTR [esp],0x8049f10
 804867f:	ff d0                	call   eax
 8048681:	c9                   	leave  
 8048682:	e9 79 ff ff ff       	jmp    8048600 <register_tm_clones>
 8048687:	90                   	nop
 8048688:	e9 73 ff ff ff       	jmp    8048600 <register_tm_clones>

0804868d <getFlag>:
 804868d:	57                   	push   edi
 804868e:	56                   	push   esi
 804868f:	53                   	push   ebx
 8048690:	83 ec 20             	sub    esp,0x20
 8048693:	8b 5c 24 30          	mov    ebx,DWORD PTR [esp+0x30]
 8048697:	8b 4c 24 34          	mov    ecx,DWORD PTR [esp+0x34]
 804869b:	c6 01 4d             	mov    BYTE PTR [ecx],0x4d
 804869e:	c6 41 01 45          	mov    BYTE PTR [ecx+0x1],0x45
 80486a2:	c6 41 02 54          	mov    BYTE PTR [ecx+0x2],0x54
 80486a6:	c6 41 03 52          	mov    BYTE PTR [ecx+0x3],0x52
 80486aa:	c6 41 04 4f          	mov    BYTE PTR [ecx+0x4],0x4f
 80486ae:	c6 41 05 2d          	mov    BYTE PTR [ecx+0x5],0x2d
 80486b2:	c6 41 06 43          	mov    BYTE PTR [ecx+0x6],0x43
 80486b6:	c6 41 07 43          	mov    BYTE PTR [ecx+0x7],0x43
 80486ba:	c6 41 08 43          	mov    BYTE PTR [ecx+0x8],0x43
 80486be:	c6 41 09 43          	mov    BYTE PTR [ecx+0x9],0x43
 80486c2:	c6 41 0a 2d          	mov    BYTE PTR [ecx+0xa],0x2d
 80486c6:	ba 67 66 66 66       	mov    edx,0x66666667
 80486cb:	89 d8                	mov    eax,ebx
 80486cd:	f7 ea                	imul   edx
 80486cf:	89 d7                	mov    edi,edx
 80486d1:	d1 ff                	sar    edi,1
 80486d3:	89 de                	mov    esi,ebx
 80486d5:	c1 fe 1f             	sar    esi,0x1f
 80486d8:	29 f7                	sub    edi,esi
 80486da:	ba 56 55 55 55       	mov    edx,0x55555556
 80486df:	89 d8                	mov    eax,ebx
 80486e1:	f7 ea                	imul   edx
 80486e3:	29 f2                	sub    edx,esi
 80486e5:	8d 04 52             	lea    eax,[edx+edx*2]
 80486e8:	89 da                	mov    edx,ebx
 80486ea:	29 c2                	sub    edx,eax
 80486ec:	8d 7c 17 02          	lea    edi,[edi+edx*1+0x2]
 80486f0:	ba b1 9b df 42       	mov    edx,0x42df9bb1
 80486f5:	89 d8                	mov    eax,ebx
 80486f7:	f7 ea                	imul   edx
 80486f9:	c1 fa 06             	sar    edx,0x6
 80486fc:	29 f2                	sub    edx,esi
 80486fe:	01 d7                	add    edi,edx
 8048700:	c1 ee 1e             	shr    esi,0x1e
 8048703:	8d 04 33             	lea    eax,[ebx+esi*1]
 8048706:	83 e0 03             	and    eax,0x3
 8048709:	29 f0                	sub    eax,esi
 804870b:	69 c0 c6 16 00 00    	imul   eax,eax,0x16c6
 8048711:	8d 1c 07             	lea    ebx,[edi+eax*1]
 8048714:	ba ad 8b db 68       	mov    edx,0x68db8bad
 8048719:	89 d8                	mov    eax,ebx
 804871b:	f7 ea                	imul   edx
 804871d:	c1 fa 0c             	sar    edx,0xc
 8048720:	89 d8                	mov    eax,ebx
 8048722:	c1 f8 1f             	sar    eax,0x1f
 8048725:	29 c2                	sub    edx,eax
 8048727:	69 d2 10 27 00 00    	imul   edx,edx,0x2710
 804872d:	29 d3                	sub    ebx,edx
 804872f:	89 5c 24 10          	mov    DWORD PTR [esp+0x10],ebx
 8048733:	c7 44 24 0c f0 89 04 	mov    DWORD PTR [esp+0xc],0x80489f0
 804873a:	08 
 804873b:	c7 44 24 08 ff ff ff 	mov    DWORD PTR [esp+0x8],0xffffffff
 8048742:	ff 
 8048743:	c7 44 24 04 01 00 00 	mov    DWORD PTR [esp+0x4],0x1
 804874a:	00 
 804874b:	83 c1 0b             	add    ecx,0xb
 804874e:	89 0c 24             	mov    DWORD PTR [esp],ecx
 8048751:	e8 2a fe ff ff       	call   8048580 <__sprintf_chk@plt>
 8048756:	83 c4 20             	add    esp,0x20
 8048759:	5b                   	pop    ebx
 804875a:	5e                   	pop    esi
 804875b:	5f                   	pop    edi
 804875c:	c3                   	ret    

0804875d <main>:
 804875d:	55                   	push   ebp
 804875e:	89 e5                	mov    ebp,esp
 8048760:	57                   	push   edi
 8048761:	53                   	push   ebx
 8048762:	83 e4 f0             	and    esp,0xfffffff0
 8048765:	81 ec 20 08 00 00    	sub    esp,0x820
 804876b:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
 804876e:	65 8b 1d 14 00 00 00 	mov    ebx,DWORD PTR gs:0x14
 8048775:	89 9c 24 1c 08 00 00 	mov    DWORD PTR [esp+0x81c],ebx
 804877c:	31 db                	xor    ebx,ebx
 804877e:	83 7d 08 02          	cmp    DWORD PTR [ebp+0x8],0x2
 8048782:	74 24                	je     80487a8 <main+0x4b>
 8048784:	8b 00                	mov    eax,DWORD PTR [eax]
 8048786:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
 804878a:	c7 44 24 04 f5 89 04 	mov    DWORD PTR [esp+0x4],0x80489f5
 8048791:	08 
 8048792:	c7 04 24 01 00 00 00 	mov    DWORD PTR [esp],0x1
 8048799:	e8 b2 fd ff ff       	call   8048550 <__printf_chk@plt>
 804879e:	b8 01 00 00 00       	mov    eax,0x1
 80487a3:	e9 9b 01 00 00       	jmp    8048943 <main+0x1e6>
 80487a8:	c7 44 24 08 0a 00 00 	mov    DWORD PTR [esp+0x8],0xa
 80487af:	00 
 80487b0:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
 80487b7:	00 
 80487b8:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
 80487bb:	89 04 24             	mov    DWORD PTR [esp],eax
 80487be:	e8 ad fd ff ff       	call   8048570 <strtol@plt>
 80487c3:	89 c3                	mov    ebx,eax
 80487c5:	c7 44 24 04 54 8a 04 	mov    DWORD PTR [esp+0x4],0x8048a54
 80487cc:	08 
 80487cd:	c7 04 24 01 00 00 00 	mov    DWORD PTR [esp],0x1
 80487d4:	e8 77 fd ff ff       	call   8048550 <__printf_chk@plt>
 80487d9:	a1 60 a0 04 08       	mov    eax,ds:0x804a060
 80487de:	89 04 24             	mov    DWORD PTR [esp],eax
 80487e1:	e8 ea fc ff ff       	call   80484d0 <fflush@plt>
 80487e6:	b8 00 00 00 00       	mov    eax,0x0
 80487eb:	8d 7c 24 1a          	lea    edi,[esp+0x1a]
 80487ef:	66 ab                	stos   WORD PTR es:[edi],ax
 80487f1:	ba ff 03 00 00       	mov    edx,0x3ff
 80487f6:	89 d1                	mov    ecx,edx
 80487f8:	c1 e9 02             	shr    ecx,0x2
 80487fb:	f3 ab                	rep stos DWORD PTR es:[edi],eax
 80487fd:	f6 c2 02             	test   dl,0x2
 8048800:	74 02                	je     8048804 <main+0xa7>
 8048802:	66 ab                	stos   WORD PTR es:[edi],ax
 8048804:	f6 c2 01             	test   dl,0x1
 8048807:	74 01                	je     804880a <main+0xad>
 8048809:	aa                   	stos   BYTE PTR es:[edi],al
 804880a:	8d 44 24 1a          	lea    eax,[esp+0x1a]
 804880e:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 8048812:	c7 04 24 06 8a 04 08 	mov    DWORD PTR [esp],0x8048a06
 8048819:	e8 42 fd ff ff       	call   8048560 <__isoc99_scanf@plt>
 804881e:	b8 00 00 00 00       	mov    eax,0x0
 8048823:	8d bc 24 1b 04 00 00 	lea    edi,[esp+0x41b]
 804882a:	aa                   	stos   BYTE PTR es:[edi],al
 804882b:	ba 00 04 00 00       	mov    edx,0x400
 8048830:	f7 c7 02 00 00 00    	test   edi,0x2
 8048836:	74 05                	je     804883d <main+0xe0>
 8048838:	66 ab                	stos   WORD PTR es:[edi],ax
 804883a:	83 ea 02             	sub    edx,0x2
 804883d:	89 d1                	mov    ecx,edx
 804883f:	c1 e9 02             	shr    ecx,0x2
 8048842:	f3 ab                	rep stos DWORD PTR es:[edi],eax
 8048844:	f6 c2 02             	test   dl,0x2
 8048847:	74 02                	je     804884b <main+0xee>
 8048849:	66 ab                	stos   WORD PTR es:[edi],ax
 804884b:	f6 c2 01             	test   dl,0x1
 804884e:	74 01                	je     8048851 <main+0xf4>
 8048850:	aa                   	stos   BYTE PTR es:[edi],al
 8048851:	8d bc 24 1b 04 00 00 	lea    edi,[esp+0x41b]
 8048858:	89 7c 24 04          	mov    DWORD PTR [esp+0x4],edi
 804885c:	89 1c 24             	mov    DWORD PTR [esp],ebx
 804885f:	e8 29 fe ff ff       	call   804868d <getFlag>
 8048864:	c7 44 24 04 09 8a 04 	mov    DWORD PTR [esp+0x4],0x8048a09
 804886b:	08 
 804886c:	c7 04 24 01 00 00 00 	mov    DWORD PTR [esp],0x1
 8048873:	e8 d8 fc ff ff       	call   8048550 <__printf_chk@plt>
 8048878:	a1 60 a0 04 08       	mov    eax,ds:0x804a060
 804887d:	89 04 24             	mov    DWORD PTR [esp],eax
 8048880:	e8 4b fc ff ff       	call   80484d0 <fflush@plt>
 8048885:	c7 04 24 01 00 00 00 	mov    DWORD PTR [esp],0x1
 804888c:	e8 4f fc ff ff       	call   80484e0 <sleep@plt>
 8048891:	c7 04 24 2e 00 00 00 	mov    DWORD PTR [esp],0x2e
 8048898:	e8 93 fc ff ff       	call   8048530 <putchar@plt>
 804889d:	a1 60 a0 04 08       	mov    eax,ds:0x804a060
 80488a2:	89 04 24             	mov    DWORD PTR [esp],eax
 80488a5:	e8 26 fc ff ff       	call   80484d0 <fflush@plt>
 80488aa:	c7 04 24 01 00 00 00 	mov    DWORD PTR [esp],0x1
 80488b1:	e8 2a fc ff ff       	call   80484e0 <sleep@plt>
 80488b6:	c7 04 24 2e 00 00 00 	mov    DWORD PTR [esp],0x2e
 80488bd:	e8 6e fc ff ff       	call   8048530 <putchar@plt>
 80488c2:	a1 60 a0 04 08       	mov    eax,ds:0x804a060
 80488c7:	89 04 24             	mov    DWORD PTR [esp],eax
 80488ca:	e8 01 fc ff ff       	call   80484d0 <fflush@plt>
 80488cf:	c7 04 24 01 00 00 00 	mov    DWORD PTR [esp],0x1
 80488d6:	e8 05 fc ff ff       	call   80484e0 <sleep@plt>
 80488db:	c7 04 24 42 8a 04 08 	mov    DWORD PTR [esp],0x8048a42
 80488e2:	e8 19 fc ff ff       	call   8048500 <puts@plt>
 80488e7:	c7 04 24 01 00 00 00 	mov    DWORD PTR [esp],0x1
 80488ee:	e8 ed fb ff ff       	call   80484e0 <sleep@plt>
 80488f3:	89 7c 24 04          	mov    DWORD PTR [esp+0x4],edi
 80488f7:	8d 44 24 1a          	lea    eax,[esp+0x1a]
 80488fb:	89 04 24             	mov    DWORD PTR [esp],eax
 80488fe:	e8 bd fb ff ff       	call   80484c0 <strcmp@plt>
 8048903:	85 c0                	test   eax,eax
 8048905:	75 0e                	jne    8048915 <main+0x1b8>
 8048907:	c7 04 24 13 8a 04 08 	mov    DWORD PTR [esp],0x8048a13
 804890e:	e8 ed fb ff ff       	call   8048500 <puts@plt>
 8048913:	eb 0c                	jmp    8048921 <main+0x1c4>
 8048915:	c7 04 24 2a 8a 04 08 	mov    DWORD PTR [esp],0x8048a2a
 804891c:	e8 df fb ff ff       	call   8048500 <puts@plt>
 8048921:	e8 1a fc ff ff       	call   8048540 <rand@plt>
 8048926:	89 c2                	mov    edx,eax
 8048928:	b8 00 00 00 00       	mov    eax,0x0
 804892d:	83 fa ff             	cmp    edx,0xffffffff
 8048930:	75 11                	jne    8048943 <main+0x1e6>
 8048932:	c7 04 24 44 8a 04 08 	mov    DWORD PTR [esp],0x8048a44
 8048939:	e8 c2 fb ff ff       	call   8048500 <puts@plt>
 804893e:	b8 00 00 00 00       	mov    eax,0x0
 8048943:	8b 9c 24 1c 08 00 00 	mov    ebx,DWORD PTR [esp+0x81c]
 804894a:	65 33 1d 14 00 00 00 	xor    ebx,DWORD PTR gs:0x14
 8048951:	74 05                	je     8048958 <main+0x1fb>
 8048953:	e8 98 fb ff ff       	call   80484f0 <__stack_chk_fail@plt>
 8048958:	8d 65 f8             	lea    esp,[ebp-0x8]
 804895b:	5b                   	pop    ebx
 804895c:	5f                   	pop    edi
 804895d:	5d                   	pop    ebp
 804895e:	c3                   	ret    
 804895f:	90                   	nop

08048960 <__libc_csu_init>:
 8048960:	55                   	push   ebp
 8048961:	57                   	push   edi
 8048962:	31 ff                	xor    edi,edi
 8048964:	56                   	push   esi
 8048965:	53                   	push   ebx
 8048966:	e8 55 fc ff ff       	call   80485c0 <__x86.get_pc_thunk.bx>
 804896b:	81 c3 95 16 00 00    	add    ebx,0x1695
 8048971:	83 ec 1c             	sub    esp,0x1c
 8048974:	8b 6c 24 30          	mov    ebp,DWORD PTR [esp+0x30]
 8048978:	8d b3 0c ff ff ff    	lea    esi,[ebx-0xf4]
 804897e:	e8 09 fb ff ff       	call   804848c <_init>
 8048983:	8d 83 08 ff ff ff    	lea    eax,[ebx-0xf8]
 8048989:	29 c6                	sub    esi,eax
 804898b:	c1 fe 02             	sar    esi,0x2
 804898e:	85 f6                	test   esi,esi
 8048990:	74 27                	je     80489b9 <__libc_csu_init+0x59>
 8048992:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
 8048998:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
 804899c:	89 2c 24             	mov    DWORD PTR [esp],ebp
 804899f:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
 80489a3:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
 80489a7:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 80489ab:	ff 94 bb 08 ff ff ff 	call   DWORD PTR [ebx+edi*4-0xf8]
 80489b2:	83 c7 01             	add    edi,0x1
 80489b5:	39 f7                	cmp    edi,esi
 80489b7:	75 df                	jne    8048998 <__libc_csu_init+0x38>
 80489b9:	83 c4 1c             	add    esp,0x1c
 80489bc:	5b                   	pop    ebx
 80489bd:	5e                   	pop    esi
 80489be:	5f                   	pop    edi
 80489bf:	5d                   	pop    ebp
 80489c0:	c3                   	ret    
 80489c1:	eb 0d                	jmp    80489d0 <__libc_csu_fini>
 80489c3:	90                   	nop
 80489c4:	90                   	nop
 80489c5:	90                   	nop
 80489c6:	90                   	nop
 80489c7:	90                   	nop
 80489c8:	90                   	nop
 80489c9:	90                   	nop
 80489ca:	90                   	nop
 80489cb:	90                   	nop
 80489cc:	90                   	nop
 80489cd:	90                   	nop
 80489ce:	90                   	nop
 80489cf:	90                   	nop

080489d0 <__libc_csu_fini>:
 80489d0:	f3 c3                	repz ret 

Disassembly of section .fini:

080489d4 <_fini>:
 80489d4:	53                   	push   ebx
 80489d5:	83 ec 08             	sub    esp,0x8
 80489d8:	e8 e3 fb ff ff       	call   80485c0 <__x86.get_pc_thunk.bx>
 80489dd:	81 c3 23 16 00 00    	add    ebx,0x1623
 80489e3:	83 c4 08             	add    esp,0x8
 80489e6:	5b                   	pop    ebx
 80489e7:	c3                   	ret    
