
ftp:     file format elf64-x86-64


Disassembly of section .init:

0000000000400e10 <.init>:
  400e10:	48 83 ec 08          	sub    rsp,0x8
  400e14:	48 8b 05 dd 31 20 00 	mov    rax,QWORD PTR [rip+0x2031dd]        # 603ff8 <error+0x202ba6>
  400e1b:	48 85 c0             	test   rax,rax
  400e1e:	74 05                	je     400e25 <free@plt-0x1b>
  400e20:	e8 db 01 00 00       	call   401000 <__gmon_start__@plt>
  400e25:	48 83 c4 08          	add    rsp,0x8
  400e29:	c3                   	ret    

Disassembly of section .plt:

0000000000400e30 <free@plt-0x10>:
  400e30:	ff 35 d2 31 20 00    	push   QWORD PTR [rip+0x2031d2]        # 604008 <error+0x202bb6>
  400e36:	ff 25 d4 31 20 00    	jmp    QWORD PTR [rip+0x2031d4]        # 604010 <error+0x202bbe>
  400e3c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000400e40 <free@plt>:
  400e40:	ff 25 d2 31 20 00    	jmp    QWORD PTR [rip+0x2031d2]        # 604018 <error+0x202bc6>
  400e46:	68 00 00 00 00       	push   0x0
  400e4b:	e9 e0 ff ff ff       	jmp    400e30 <free@plt-0x10>

0000000000400e50 <recv@plt>:
  400e50:	ff 25 ca 31 20 00    	jmp    QWORD PTR [rip+0x2031ca]        # 604020 <error+0x202bce>
  400e56:	68 01 00 00 00       	push   0x1
  400e5b:	e9 d0 ff ff ff       	jmp    400e30 <free@plt-0x10>

0000000000400e60 <localtime@plt>:
  400e60:	ff 25 c2 31 20 00    	jmp    QWORD PTR [rip+0x2031c2]        # 604028 <error+0x202bd6>
  400e66:	68 02 00 00 00       	push   0x2
  400e6b:	e9 c0 ff ff ff       	jmp    400e30 <free@plt-0x10>

0000000000400e70 <__errno_location@plt>:
  400e70:	ff 25 ba 31 20 00    	jmp    QWORD PTR [rip+0x2031ba]        # 604030 <error+0x202bde>
  400e76:	68 03 00 00 00       	push   0x3
  400e7b:	e9 b0 ff ff ff       	jmp    400e30 <free@plt-0x10>

0000000000400e80 <strncpy@plt>:
  400e80:	ff 25 b2 31 20 00    	jmp    QWORD PTR [rip+0x2031b2]        # 604038 <error+0x202be6>
  400e86:	68 04 00 00 00       	push   0x4
  400e8b:	e9 a0 ff ff ff       	jmp    400e30 <free@plt-0x10>

0000000000400e90 <strncmp@plt>:
  400e90:	ff 25 aa 31 20 00    	jmp    QWORD PTR [rip+0x2031aa]        # 604040 <error+0x202bee>
  400e96:	68 05 00 00 00       	push   0x5
  400e9b:	e9 90 ff ff ff       	jmp    400e30 <free@plt-0x10>

0000000000400ea0 <strcpy@plt>:
  400ea0:	ff 25 a2 31 20 00    	jmp    QWORD PTR [rip+0x2031a2]        # 604048 <error+0x202bf6>
  400ea6:	68 06 00 00 00       	push   0x6
  400eab:	e9 80 ff ff ff       	jmp    400e30 <free@plt-0x10>

0000000000400eb0 <puts@plt>:
  400eb0:	ff 25 9a 31 20 00    	jmp    QWORD PTR [rip+0x20319a]        # 604050 <error+0x202bfe>
  400eb6:	68 07 00 00 00       	push   0x7
  400ebb:	e9 70 ff ff ff       	jmp    400e30 <free@plt-0x10>

0000000000400ec0 <fread@plt>:
  400ec0:	ff 25 92 31 20 00    	jmp    QWORD PTR [rip+0x203192]        # 604058 <error+0x202c06>
  400ec6:	68 08 00 00 00       	push   0x8
  400ecb:	e9 60 ff ff ff       	jmp    400e30 <free@plt-0x10>

0000000000400ed0 <fclose@plt>:
  400ed0:	ff 25 8a 31 20 00    	jmp    QWORD PTR [rip+0x20318a]        # 604060 <error+0x202c0e>
  400ed6:	68 09 00 00 00       	push   0x9
  400edb:	e9 50 ff ff ff       	jmp    400e30 <free@plt-0x10>

0000000000400ee0 <opendir@plt>:
  400ee0:	ff 25 82 31 20 00    	jmp    QWORD PTR [rip+0x203182]        # 604068 <error+0x202c16>
  400ee6:	68 0a 00 00 00       	push   0xa
  400eeb:	e9 40 ff ff ff       	jmp    400e30 <free@plt-0x10>

0000000000400ef0 <strlen@plt>:
  400ef0:	ff 25 7a 31 20 00    	jmp    QWORD PTR [rip+0x20317a]        # 604070 <error+0x202c1e>
  400ef6:	68 0b 00 00 00       	push   0xb
  400efb:	e9 30 ff ff ff       	jmp    400e30 <free@plt-0x10>

0000000000400f00 <__stack_chk_fail@plt>:
  400f00:	ff 25 72 31 20 00    	jmp    QWORD PTR [rip+0x203172]        # 604078 <error+0x202c26>
  400f06:	68 0c 00 00 00       	push   0xc
  400f0b:	e9 20 ff ff ff       	jmp    400e30 <free@plt-0x10>

0000000000400f10 <htons@plt>:
  400f10:	ff 25 6a 31 20 00    	jmp    QWORD PTR [rip+0x20316a]        # 604080 <error+0x202c2e>
  400f16:	68 0d 00 00 00       	push   0xd
  400f1b:	e9 10 ff ff ff       	jmp    400e30 <free@plt-0x10>

0000000000400f20 <send@plt>:
  400f20:	ff 25 62 31 20 00    	jmp    QWORD PTR [rip+0x203162]        # 604088 <error+0x202c36>
  400f26:	68 0e 00 00 00       	push   0xe
  400f2b:	e9 00 ff ff ff       	jmp    400e30 <free@plt-0x10>

0000000000400f30 <printf@plt>:
  400f30:	ff 25 5a 31 20 00    	jmp    QWORD PTR [rip+0x20315a]        # 604090 <error+0x202c3e>
  400f36:	68 0f 00 00 00       	push   0xf
  400f3b:	e9 f0 fe ff ff       	jmp    400e30 <free@plt-0x10>

0000000000400f40 <snprintf@plt>:
  400f40:	ff 25 52 31 20 00    	jmp    QWORD PTR [rip+0x203152]        # 604098 <error+0x202c46>
  400f46:	68 10 00 00 00       	push   0x10
  400f4b:	e9 e0 fe ff ff       	jmp    400e30 <free@plt-0x10>

0000000000400f50 <memset@plt>:
  400f50:	ff 25 4a 31 20 00    	jmp    QWORD PTR [rip+0x20314a]        # 6040a0 <error+0x202c4e>
  400f56:	68 11 00 00 00       	push   0x11
  400f5b:	e9 d0 fe ff ff       	jmp    400e30 <free@plt-0x10>

0000000000400f60 <getcwd@plt>:
  400f60:	ff 25 42 31 20 00    	jmp    QWORD PTR [rip+0x203142]        # 6040a8 <error+0x202c56>
  400f66:	68 12 00 00 00       	push   0x12
  400f6b:	e9 c0 fe ff ff       	jmp    400e30 <free@plt-0x10>

0000000000400f70 <strncat@plt>:
  400f70:	ff 25 3a 31 20 00    	jmp    QWORD PTR [rip+0x20313a]        # 6040b0 <error+0x202c5e>
  400f76:	68 13 00 00 00       	push   0x13
  400f7b:	e9 b0 fe ff ff       	jmp    400e30 <free@plt-0x10>

0000000000400f80 <alarm@plt>:
  400f80:	ff 25 32 31 20 00    	jmp    QWORD PTR [rip+0x203132]        # 6040b8 <error+0x202c66>
  400f86:	68 14 00 00 00       	push   0x14
  400f8b:	e9 a0 fe ff ff       	jmp    400e30 <free@plt-0x10>

0000000000400f90 <close@plt>:
  400f90:	ff 25 2a 31 20 00    	jmp    QWORD PTR [rip+0x20312a]        # 6040c0 <error+0x202c6e>
  400f96:	68 15 00 00 00       	push   0x15
  400f9b:	e9 90 fe ff ff       	jmp    400e30 <free@plt-0x10>

0000000000400fa0 <closedir@plt>:
  400fa0:	ff 25 22 31 20 00    	jmp    QWORD PTR [rip+0x203122]        # 6040c8 <error+0x202c76>
  400fa6:	68 16 00 00 00       	push   0x16
  400fab:	e9 80 fe ff ff       	jmp    400e30 <free@plt-0x10>

0000000000400fb0 <__libc_start_main@plt>:
  400fb0:	ff 25 1a 31 20 00    	jmp    QWORD PTR [rip+0x20311a]        # 6040d0 <error+0x202c7e>
  400fb6:	68 17 00 00 00       	push   0x17
  400fbb:	e9 70 fe ff ff       	jmp    400e30 <free@plt-0x10>

0000000000400fc0 <srand@plt>:
  400fc0:	ff 25 12 31 20 00    	jmp    QWORD PTR [rip+0x203112]        # 6040d8 <error+0x202c86>
  400fc6:	68 18 00 00 00       	push   0x18
  400fcb:	e9 60 fe ff ff       	jmp    400e30 <free@plt-0x10>

0000000000400fd0 <strcmp@plt>:
  400fd0:	ff 25 0a 31 20 00    	jmp    QWORD PTR [rip+0x20310a]        # 6040e0 <error+0x202c8e>
  400fd6:	68 19 00 00 00       	push   0x19
  400fdb:	e9 50 fe ff ff       	jmp    400e30 <free@plt-0x10>

0000000000400fe0 <signal@plt>:
  400fe0:	ff 25 02 31 20 00    	jmp    QWORD PTR [rip+0x203102]        # 6040e8 <error+0x202c96>
  400fe6:	68 1a 00 00 00       	push   0x1a
  400feb:	e9 40 fe ff ff       	jmp    400e30 <free@plt-0x10>

0000000000400ff0 <feof@plt>:
  400ff0:	ff 25 fa 30 20 00    	jmp    QWORD PTR [rip+0x2030fa]        # 6040f0 <error+0x202c9e>
  400ff6:	68 1b 00 00 00       	push   0x1b
  400ffb:	e9 30 fe ff ff       	jmp    400e30 <free@plt-0x10>

0000000000401000 <__gmon_start__@plt>:
  401000:	ff 25 f2 30 20 00    	jmp    QWORD PTR [rip+0x2030f2]        # 6040f8 <error+0x202ca6>
  401006:	68 1c 00 00 00       	push   0x1c
  40100b:	e9 20 fe ff ff       	jmp    400e30 <free@plt-0x10>

0000000000401010 <time@plt>:
  401010:	ff 25 ea 30 20 00    	jmp    QWORD PTR [rip+0x2030ea]        # 604100 <error+0x202cae>
  401016:	68 1d 00 00 00       	push   0x1d
  40101b:	e9 10 fe ff ff       	jmp    400e30 <free@plt-0x10>

0000000000401020 <inet_aton@plt>:
  401020:	ff 25 e2 30 20 00    	jmp    QWORD PTR [rip+0x2030e2]        # 604108 <error+0x202cb6>
  401026:	68 1e 00 00 00       	push   0x1e
  40102b:	e9 00 fe ff ff       	jmp    400e30 <free@plt-0x10>

0000000000401030 <__xstat@plt>:
  401030:	ff 25 da 30 20 00    	jmp    QWORD PTR [rip+0x2030da]        # 604110 <error+0x202cbe>
  401036:	68 1f 00 00 00       	push   0x1f
  40103b:	e9 f0 fd ff ff       	jmp    400e30 <free@plt-0x10>

0000000000401040 <readdir@plt>:
  401040:	ff 25 d2 30 20 00    	jmp    QWORD PTR [rip+0x2030d2]        # 604118 <error+0x202cc6>
  401046:	68 20 00 00 00       	push   0x20
  40104b:	e9 e0 fd ff ff       	jmp    400e30 <free@plt-0x10>

0000000000401050 <malloc@plt>:
  401050:	ff 25 ca 30 20 00    	jmp    QWORD PTR [rip+0x2030ca]        # 604120 <error+0x202cce>
  401056:	68 21 00 00 00       	push   0x21
  40105b:	e9 d0 fd ff ff       	jmp    400e30 <free@plt-0x10>

0000000000401060 <strncasecmp@plt>:
  401060:	ff 25 c2 30 20 00    	jmp    QWORD PTR [rip+0x2030c2]        # 604128 <error+0x202cd6>
  401066:	68 22 00 00 00       	push   0x22
  40106b:	e9 c0 fd ff ff       	jmp    400e30 <free@plt-0x10>

0000000000401070 <__isoc99_sscanf@plt>:
  401070:	ff 25 ba 30 20 00    	jmp    QWORD PTR [rip+0x2030ba]        # 604130 <error+0x202cde>
  401076:	68 23 00 00 00       	push   0x23
  40107b:	e9 b0 fd ff ff       	jmp    400e30 <free@plt-0x10>

0000000000401080 <listen@plt>:
  401080:	ff 25 b2 30 20 00    	jmp    QWORD PTR [rip+0x2030b2]        # 604138 <error+0x202ce6>
  401086:	68 24 00 00 00       	push   0x24
  40108b:	e9 a0 fd ff ff       	jmp    400e30 <free@plt-0x10>

0000000000401090 <bind@plt>:
  401090:	ff 25 aa 30 20 00    	jmp    QWORD PTR [rip+0x2030aa]        # 604140 <error+0x202cee>
  401096:	68 25 00 00 00       	push   0x25
  40109b:	e9 90 fd ff ff       	jmp    400e30 <free@plt-0x10>

00000000004010a0 <strftime@plt>:
  4010a0:	ff 25 a2 30 20 00    	jmp    QWORD PTR [rip+0x2030a2]        # 604148 <error+0x202cf6>
  4010a6:	68 26 00 00 00       	push   0x26
  4010ab:	e9 80 fd ff ff       	jmp    400e30 <free@plt-0x10>

00000000004010b0 <fopen@plt>:
  4010b0:	ff 25 9a 30 20 00    	jmp    QWORD PTR [rip+0x20309a]        # 604150 <error+0x202cfe>
  4010b6:	68 27 00 00 00       	push   0x27
  4010bb:	e9 70 fd ff ff       	jmp    400e30 <free@plt-0x10>

00000000004010c0 <bzero@plt>:
  4010c0:	ff 25 92 30 20 00    	jmp    QWORD PTR [rip+0x203092]        # 604158 <error+0x202d06>
  4010c6:	68 28 00 00 00       	push   0x28
  4010cb:	e9 60 fd ff ff       	jmp    400e30 <free@plt-0x10>

00000000004010d0 <accept@plt>:
  4010d0:	ff 25 8a 30 20 00    	jmp    QWORD PTR [rip+0x20308a]        # 604160 <error+0x202d0e>
  4010d6:	68 29 00 00 00       	push   0x29
  4010db:	e9 50 fd ff ff       	jmp    400e30 <free@plt-0x10>

00000000004010e0 <sprintf@plt>:
  4010e0:	ff 25 82 30 20 00    	jmp    QWORD PTR [rip+0x203082]        # 604168 <error+0x202d16>
  4010e6:	68 2a 00 00 00       	push   0x2a
  4010eb:	e9 40 fd ff ff       	jmp    400e30 <free@plt-0x10>

00000000004010f0 <exit@plt>:
  4010f0:	ff 25 7a 30 20 00    	jmp    QWORD PTR [rip+0x20307a]        # 604170 <error+0x202d1e>
  4010f6:	68 2b 00 00 00       	push   0x2b
  4010fb:	e9 30 fd ff ff       	jmp    400e30 <free@plt-0x10>

0000000000401100 <fork@plt>:
  401100:	ff 25 72 30 20 00    	jmp    QWORD PTR [rip+0x203072]        # 604178 <error+0x202d26>
  401106:	68 2c 00 00 00       	push   0x2c
  40110b:	e9 20 fd ff ff       	jmp    400e30 <free@plt-0x10>

0000000000401110 <rand@plt>:
  401110:	ff 25 6a 30 20 00    	jmp    QWORD PTR [rip+0x20306a]        # 604180 <error+0x202d2e>
  401116:	68 2d 00 00 00       	push   0x2d
  40111b:	e9 10 fd ff ff       	jmp    400e30 <free@plt-0x10>

0000000000401120 <socket@plt>:
  401120:	ff 25 62 30 20 00    	jmp    QWORD PTR [rip+0x203062]        # 604188 <error+0x202d36>
  401126:	68 2e 00 00 00       	push   0x2e
  40112b:	e9 00 fd ff ff       	jmp    400e30 <free@plt-0x10>

Disassembly of section .text:

0000000000401130 <error-0x322>:
  401130:	31 ed                	xor    ebp,ebp
  401132:	49 89 d1             	mov    r9,rdx
  401135:	5e                   	pop    rsi
  401136:	48 89 e2             	mov    rdx,rsp
  401139:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
  40113d:	50                   	push   rax
  40113e:	54                   	push   rsp
  40113f:	49 c7 c0 40 2f 40 00 	mov    r8,0x402f40
  401146:	48 c7 c1 d0 2e 40 00 	mov    rcx,0x402ed0
  40114d:	48 c7 c7 2e 2d 40 00 	mov    rdi,0x402d2e
  401154:	e8 57 fe ff ff       	call   400fb0 <__libc_start_main@plt>
  401159:	f4                   	hlt    
  40115a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  401160:	b8 b7 41 60 00       	mov    eax,0x6041b7
  401165:	55                   	push   rbp
  401166:	48 2d b0 41 60 00    	sub    rax,0x6041b0
  40116c:	48 83 f8 0e          	cmp    rax,0xe
  401170:	48 89 e5             	mov    rbp,rsp
  401173:	76 1b                	jbe    401190 <socket@plt+0x70>
  401175:	b8 00 00 00 00       	mov    eax,0x0
  40117a:	48 85 c0             	test   rax,rax
  40117d:	74 11                	je     401190 <socket@plt+0x70>
  40117f:	5d                   	pop    rbp
  401180:	bf b0 41 60 00       	mov    edi,0x6041b0
  401185:	ff e0                	jmp    rax
  401187:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  40118e:	00 00 
  401190:	5d                   	pop    rbp
  401191:	c3                   	ret    
  401192:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nop WORD PTR cs:[rax+rax*1+0x0]
  401199:	1f 84 00 00 00 00 00 
  4011a0:	be b0 41 60 00       	mov    esi,0x6041b0
  4011a5:	55                   	push   rbp
  4011a6:	48 81 ee b0 41 60 00 	sub    rsi,0x6041b0
  4011ad:	48 c1 fe 03          	sar    rsi,0x3
  4011b1:	48 89 e5             	mov    rbp,rsp
  4011b4:	48 89 f0             	mov    rax,rsi
  4011b7:	48 c1 e8 3f          	shr    rax,0x3f
  4011bb:	48 01 c6             	add    rsi,rax
  4011be:	48 d1 fe             	sar    rsi,1
  4011c1:	74 15                	je     4011d8 <socket@plt+0xb8>
  4011c3:	b8 00 00 00 00       	mov    eax,0x0
  4011c8:	48 85 c0             	test   rax,rax
  4011cb:	74 0b                	je     4011d8 <socket@plt+0xb8>
  4011cd:	5d                   	pop    rbp
  4011ce:	bf b0 41 60 00       	mov    edi,0x6041b0
  4011d3:	ff e0                	jmp    rax
  4011d5:	0f 1f 00             	nop    DWORD PTR [rax]
  4011d8:	5d                   	pop    rbp
  4011d9:	c3                   	ret    
  4011da:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  4011e0:	80 3d d9 2f 20 00 00 	cmp    BYTE PTR [rip+0x202fd9],0x0        # 6041c0 <error+0x202d6e>
  4011e7:	75 11                	jne    4011fa <socket@plt+0xda>
  4011e9:	55                   	push   rbp
  4011ea:	48 89 e5             	mov    rbp,rsp
  4011ed:	e8 6e ff ff ff       	call   401160 <socket@plt+0x40>
  4011f2:	5d                   	pop    rbp
  4011f3:	c6 05 c6 2f 20 00 01 	mov    BYTE PTR [rip+0x202fc6],0x1        # 6041c0 <error+0x202d6e>
  4011fa:	f3 c3                	repz ret 
  4011fc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  401200:	bf 20 3e 60 00       	mov    edi,0x603e20
  401205:	48 83 3f 00          	cmp    QWORD PTR [rdi],0x0
  401209:	75 05                	jne    401210 <socket@plt+0xf0>
  40120b:	eb 93                	jmp    4011a0 <socket@plt+0x80>
  40120d:	0f 1f 00             	nop    DWORD PTR [rax]
  401210:	b8 00 00 00 00       	mov    eax,0x0
  401215:	48 85 c0             	test   rax,rax
  401218:	74 f1                	je     40120b <socket@plt+0xeb>
  40121a:	55                   	push   rbp
  40121b:	48 89 e5             	mov    rbp,rsp
  40121e:	ff d0                	call   rax
  401220:	5d                   	pop    rbp
  401221:	e9 7a ff ff ff       	jmp    4011a0 <socket@plt+0x80>
  401226:	55                   	push   rbp
  401227:	48 89 e5             	mov    rbp,rsp
  40122a:	53                   	push   rbx
  40122b:	48 83 ec 18          	sub    rsp,0x18
  40122f:	89 7d ec             	mov    DWORD PTR [rbp-0x14],edi
  401232:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
  401235:	83 e0 01             	and    eax,0x1
  401238:	85 c0                	test   eax,eax
  40123a:	74 08                	je     401244 <socket@plt+0x124>
  40123c:	41 ba 78 00 00 00    	mov    r10d,0x78
  401242:	eb 06                	jmp    40124a <socket@plt+0x12a>
  401244:	41 ba 2d 00 00 00    	mov    r10d,0x2d
  40124a:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
  40124d:	83 e0 02             	and    eax,0x2
  401250:	85 c0                	test   eax,eax
  401252:	74 08                	je     40125c <socket@plt+0x13c>
  401254:	41 b9 77 00 00 00    	mov    r9d,0x77
  40125a:	eb 06                	jmp    401262 <socket@plt+0x142>
  40125c:	41 b9 2d 00 00 00    	mov    r9d,0x2d
  401262:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
  401265:	83 e0 04             	and    eax,0x4
  401268:	85 c0                	test   eax,eax
  40126a:	74 08                	je     401274 <socket@plt+0x154>
  40126c:	41 b8 72 00 00 00    	mov    r8d,0x72
  401272:	eb 06                	jmp    40127a <socket@plt+0x15a>
  401274:	41 b8 2d 00 00 00    	mov    r8d,0x2d
  40127a:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
  40127d:	83 e0 08             	and    eax,0x8
  401280:	85 c0                	test   eax,eax
  401282:	74 07                	je     40128b <socket@plt+0x16b>
  401284:	bf 78 00 00 00       	mov    edi,0x78
  401289:	eb 05                	jmp    401290 <socket@plt+0x170>
  40128b:	bf 2d 00 00 00       	mov    edi,0x2d
  401290:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
  401293:	83 e0 10             	and    eax,0x10
  401296:	85 c0                	test   eax,eax
  401298:	74 07                	je     4012a1 <socket@plt+0x181>
  40129a:	be 77 00 00 00       	mov    esi,0x77
  40129f:	eb 05                	jmp    4012a6 <socket@plt+0x186>
  4012a1:	be 2d 00 00 00       	mov    esi,0x2d
  4012a6:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
  4012a9:	83 e0 20             	and    eax,0x20
  4012ac:	85 c0                	test   eax,eax
  4012ae:	74 07                	je     4012b7 <socket@plt+0x197>
  4012b0:	b9 72 00 00 00       	mov    ecx,0x72
  4012b5:	eb 05                	jmp    4012bc <socket@plt+0x19c>
  4012b7:	b9 2d 00 00 00       	mov    ecx,0x2d
  4012bc:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
  4012bf:	83 e0 40             	and    eax,0x40
  4012c2:	85 c0                	test   eax,eax
  4012c4:	74 07                	je     4012cd <socket@plt+0x1ad>
  4012c6:	ba 78 00 00 00       	mov    edx,0x78
  4012cb:	eb 05                	jmp    4012d2 <socket@plt+0x1b2>
  4012cd:	ba 2d 00 00 00       	mov    edx,0x2d
  4012d2:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
  4012d5:	25 80 00 00 00       	and    eax,0x80
  4012da:	85 c0                	test   eax,eax
  4012dc:	74 07                	je     4012e5 <socket@plt+0x1c5>
  4012de:	bb 77 00 00 00       	mov    ebx,0x77
  4012e3:	eb 05                	jmp    4012ea <socket@plt+0x1ca>
  4012e5:	bb 2d 00 00 00       	mov    ebx,0x2d
  4012ea:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
  4012ed:	25 00 01 00 00       	and    eax,0x100
  4012f2:	85 c0                	test   eax,eax
  4012f4:	74 08                	je     4012fe <socket@plt+0x1de>
  4012f6:	41 bb 72 00 00 00    	mov    r11d,0x72
  4012fc:	eb 06                	jmp    401304 <socket@plt+0x1e4>
  4012fe:	41 bb 2d 00 00 00    	mov    r11d,0x2d
  401304:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
  401307:	25 00 f0 00 00       	and    eax,0xf000
  40130c:	3d 00 40 00 00       	cmp    eax,0x4000
  401311:	75 07                	jne    40131a <socket@plt+0x1fa>
  401313:	b8 64 00 00 00       	mov    eax,0x64
  401318:	eb 05                	jmp    40131f <socket@plt+0x1ff>
  40131a:	b8 2d 00 00 00       	mov    eax,0x2d
  40131f:	48 83 ec 08          	sub    rsp,0x8
  401323:	41 52                	push   r10
  401325:	41 51                	push   r9
  401327:	41 50                	push   r8
  401329:	57                   	push   rdi
  40132a:	56                   	push   rsi
  40132b:	51                   	push   rcx
  40132c:	52                   	push   rdx
  40132d:	41 89 d9             	mov    r9d,ebx
  401330:	45 89 d8             	mov    r8d,r11d
  401333:	89 c1                	mov    ecx,eax
  401335:	ba cf 2f 40 00       	mov    edx,0x402fcf
  40133a:	be 0b 00 00 00       	mov    esi,0xb
  40133f:	bf 0c 44 60 00       	mov    edi,0x60440c
  401344:	b8 00 00 00 00       	mov    eax,0x0
  401349:	e8 f2 fb ff ff       	call   400f40 <snprintf@plt>
  40134e:	48 83 c4 40          	add    rsp,0x40
  401352:	b8 0c 44 60 00       	mov    eax,0x60440c
  401357:	48 8b 5d f8          	mov    rbx,QWORD PTR [rbp-0x8]
  40135b:	c9                   	leave  
  40135c:	c3                   	ret    
  40135d:	55                   	push   rbp
  40135e:	48 89 e5             	mov    rbp,rsp
  401361:	48 83 ec 20          	sub    rsp,0x20
  401365:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
  401369:	48 8d 45 e8          	lea    rax,[rbp-0x18]
  40136d:	48 89 c7             	mov    rdi,rax
  401370:	e8 eb fa ff ff       	call   400e60 <localtime@plt>
  401375:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  401379:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  40137d:	48 89 c1             	mov    rcx,rax
  401380:	ba e4 2f 40 00       	mov    edx,0x402fe4
  401385:	be 14 00 00 00       	mov    esi,0x14
  40138a:	bf 20 44 60 00       	mov    edi,0x604420
  40138f:	e8 0c fd ff ff       	call   4010a0 <strftime@plt>
  401394:	b8 20 44 60 00       	mov    eax,0x604420
  401399:	c9                   	leave  
  40139a:	c3                   	ret    
  40139b:	55                   	push   rbp
  40139c:	48 89 e5             	mov    rbp,rsp
  40139f:	48 83 ec 20          	sub    rsp,0x20
  4013a3:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
  4013a7:	89 75 e4             	mov    DWORD PTR [rbp-0x1c],esi
  4013aa:	bf 00 02 00 00       	mov    edi,0x200
  4013af:	e8 9c fc ff ff       	call   401050 <malloc@plt>
  4013b4:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  4013b8:	48 83 7d f8 00       	cmp    QWORD PTR [rbp-0x8],0x0
  4013bd:	75 07                	jne    4013c6 <socket@plt+0x2a6>
  4013bf:	b8 00 00 00 00       	mov    eax,0x0
  4013c4:	eb 2b                	jmp    4013f1 <socket@plt+0x2d1>
  4013c6:	48 8b 4d e8          	mov    rcx,QWORD PTR [rbp-0x18]
  4013ca:	8b 55 e4             	mov    edx,DWORD PTR [rbp-0x1c]
  4013cd:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4013d1:	49 89 c8             	mov    r8,rcx
  4013d4:	89 d1                	mov    ecx,edx
  4013d6:	ba f0 2f 40 00       	mov    edx,0x402ff0
  4013db:	be 9c 01 00 00       	mov    esi,0x19c
  4013e0:	48 89 c7             	mov    rdi,rax
  4013e3:	b8 00 00 00 00       	mov    eax,0x0
  4013e8:	e8 53 fb ff ff       	call   400f40 <snprintf@plt>
  4013ed:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4013f1:	c9                   	leave  
  4013f2:	c3                   	ret    
  4013f3:	55                   	push   rbp
  4013f4:	48 89 e5             	mov    rbp,rsp
  4013f7:	48 83 ec 20          	sub    rsp,0x20
  4013fb:	89 7d ec             	mov    DWORD PTR [rbp-0x14],edi
  4013fe:	89 75 e8             	mov    DWORD PTR [rbp-0x18],esi
  401401:	8b 45 e8             	mov    eax,DWORD PTR [rbp-0x18]
  401404:	2b 45 ec             	sub    eax,DWORD PTR [rbp-0x14]
  401407:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
  40140a:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  40140d:	83 c0 01             	add    eax,0x1
  401410:	66 0f ef c0          	pxor   xmm0,xmm0
  401414:	f2 0f 2a c0          	cvtsi2sd xmm0,eax
  401418:	f2 0f 10 0d a8 21 00 	movsd  xmm1,QWORD PTR [rip+0x21a8]        # 4035c8 <error+0x2176>
  40141f:	00 
  401420:	f2 0f 5e c1          	divsd  xmm0,xmm1
  401424:	f2 0f 11 45 e0       	movsd  QWORD PTR [rbp-0x20],xmm0
  401429:	e8 e2 fc ff ff       	call   401110 <rand@plt>
  40142e:	66 0f ef c0          	pxor   xmm0,xmm0
  401432:	f2 0f 2a c0          	cvtsi2sd xmm0,eax
  401436:	f2 0f 10 4d e0       	movsd  xmm1,QWORD PTR [rbp-0x20]
  40143b:	f2 0f 59 c8          	mulsd  xmm1,xmm0
  40143f:	66 0f ef c0          	pxor   xmm0,xmm0
  401443:	f2 0f 2a 45 ec       	cvtsi2sd xmm0,DWORD PTR [rbp-0x14]
  401448:	f2 0f 58 c1          	addsd  xmm0,xmm1
  40144c:	f2 0f 2c c0          	cvttsd2si eax,xmm0
  401450:	c9                   	leave  
  401451:	c3                   	ret    

0000000000401452 <error>:
  401452:	55                   	push   rbp
  401453:	48 89 e5             	mov    rbp,rsp
  401456:	48 83 ec 10          	sub    rsp,0x10
  40145a:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  40145e:	e8 0d fa ff ff       	call   400e70 <__errno_location@plt>
  401463:	8b 10                	mov    edx,DWORD PTR [rax]
  401465:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  401469:	48 89 c6             	mov    rsi,rax
  40146c:	bf 25 30 40 00       	mov    edi,0x403025
  401471:	b8 00 00 00 00       	mov    eax,0x0
  401476:	e8 b5 fa ff ff       	call   400f30 <printf@plt>
  40147b:	bf ff ff ff ff       	mov    edi,0xffffffff
  401480:	e8 6b fc ff ff       	call   4010f0 <exit@plt>
  401485:	55                   	push   rbp
  401486:	48 89 e5             	mov    rbp,rsp
  401489:	48 83 ec 20          	sub    rsp,0x20
  40148d:	89 7d ec             	mov    DWORD PTR [rbp-0x14],edi
  401490:	bf 01 02 00 00       	mov    edi,0x201
  401495:	e8 b6 fb ff ff       	call   401050 <malloc@plt>
  40149a:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
  40149e:	48 83 7d f0 00       	cmp    QWORD PTR [rbp-0x10],0x0
  4014a3:	75 0a                	jne    4014af <error+0x5d>
  4014a5:	bf 3a 30 40 00       	mov    edi,0x40303a
  4014aa:	e8 a3 ff ff ff       	call   401452 <error>
  4014af:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4014b3:	ba 01 02 00 00       	mov    edx,0x201
  4014b8:	be 00 00 00 00       	mov    esi,0x0
  4014bd:	48 89 c7             	mov    rdi,rax
  4014c0:	e8 8b fa ff ff       	call   400f50 <memset@plt>
  4014c5:	48 8b 75 f0          	mov    rsi,QWORD PTR [rbp-0x10]
  4014c9:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
  4014cc:	b9 00 00 00 00       	mov    ecx,0x0
  4014d1:	ba 00 02 00 00       	mov    edx,0x200
  4014d6:	89 c7                	mov    edi,eax
  4014d8:	e8 73 f9 ff ff       	call   400e50 <recv@plt>
  4014dd:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  4014e1:	48 83 7d f8 00       	cmp    QWORD PTR [rbp-0x8],0x0
  4014e6:	79 0a                	jns    4014f2 <error+0xa0>
  4014e8:	bf 47 30 40 00       	mov    edi,0x403047
  4014ed:	e8 60 ff ff ff       	call   401452 <error>
  4014f2:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4014f6:	c9                   	leave  
  4014f7:	c3                   	ret    
  4014f8:	55                   	push   rbp
  4014f9:	48 89 e5             	mov    rbp,rsp
  4014fc:	48 83 ec 20          	sub    rsp,0x20
  401500:	89 7d ec             	mov    DWORD PTR [rbp-0x14],edi
  401503:	48 89 75 e0          	mov    QWORD PTR [rbp-0x20],rsi
  401507:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  40150b:	48 89 c7             	mov    rdi,rax
  40150e:	e8 dd f9 ff ff       	call   400ef0 <strlen@plt>
  401513:	48 89 c2             	mov    rdx,rax
  401516:	48 8b 75 e0          	mov    rsi,QWORD PTR [rbp-0x20]
  40151a:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
  40151d:	b9 00 00 00 00       	mov    ecx,0x0
  401522:	89 c7                	mov    edi,eax
  401524:	e8 f7 f9 ff ff       	call   400f20 <send@plt>
  401529:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  40152d:	48 83 7d f8 00       	cmp    QWORD PTR [rbp-0x8],0x0
  401532:	79 0a                	jns    40153e <error+0xec>
  401534:	bf 55 30 40 00       	mov    edi,0x403055
  401539:	e8 14 ff ff ff       	call   401452 <error>
  40153e:	c9                   	leave  
  40153f:	c3                   	ret    

########################################################################### 
  401540:	55                   	push   rbp              # HASH PASSWORD
  401541:	48 89 e5             	mov    rbp,rsp
  401544:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
  401548:	c7 45 fc 05 15 00 00 	mov    DWORD PTR [rbp-0x4],0x1505
  40154f:	c7 45 f8 00 00 00 00 	mov    DWORD PTR [rbp-0x8],0x0

  401556:	eb 2a                	jmp    401582 <error+0x130>
  401558:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  40155b:	c1 e0 05             	shl    eax,0x5
  40155e:	89 c2                	mov    edx,eax
  401560:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  401563:	8d 0c 02             	lea    ecx,[rdx+rax*1]
  401566:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
  401569:	48 63 d0             	movsxd rdx,eax
  40156c:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  401570:	48 01 d0             	add    rax,rdx
  401573:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  401576:	0f be c0             	movsx  eax,al
  401579:	01 c8                	add    eax,ecx
  40157b:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
  40157e:	83 45 f8 01          	add    DWORD PTR [rbp-0x8],0x1

  401582:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
  401585:	48 63 d0             	movsxd rdx,eax
  401588:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  40158c:	48 01 d0             	add    rax,rdx
  40158f:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  401592:	84 c0                	test   al,al
  401594:	75 c2                	jne    401558 <error+0x106>

  401596:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  401599:	5d                   	pop    rbp
  40159a:	c3                   	ret    
############################################################################
  40159b:	55                   	push   rbp
  40159c:	48 89 e5             	mov    rbp,rsp
  40159f:	48 81 ec c0 00 00 00 	sub    rsp,0xc0
  4015a6:	48 89 bd 48 ff ff ff 	mov    QWORD PTR [rbp-0xb8],rdi
  4015ad:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  4015b4:	00 00 
  4015b6:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  4015ba:	31 c0                	xor    eax,eax
  4015bc:	48 8d 85 70 ff ff ff 	lea    rax,[rbp-0x90]
  4015c3:	ba 80 00 00 00       	mov    edx,0x80
  4015c8:	be 00 00 00 00       	mov    esi,0x0
  4015cd:	48 89 c7             	mov    rdi,rax
  4015d0:	e8 7b f9 ff ff       	call   400f50 <memset@plt>
  4015d5:	48 8b 85 48 ff ff ff 	mov    rax,QWORD PTR [rbp-0xb8]
  4015dc:	8b 00                	mov    eax,DWORD PTR [rax]
  4015de:	be 60 30 40 00       	mov    esi,0x403060
  4015e3:	89 c7                	mov    edi,eax
  4015e5:	e8 0e ff ff ff       	call   4014f8 <error+0xa6>
  4015ea:	48 8b 85 48 ff ff ff 	mov    rax,QWORD PTR [rbp-0xb8]
  4015f1:	48 8b 50 20          	mov    rdx,QWORD PTR [rax+0x20]
  4015f5:	48 8b 85 48 ff ff ff 	mov    rax,QWORD PTR [rbp-0xb8]
  4015fc:	8b 00                	mov    eax,DWORD PTR [rax]
  4015fe:	48 89 d6             	mov    rsi,rdx
  401601:	89 c7                	mov    edi,eax
  401603:	e8 f0 fe ff ff       	call   4014f8 <error+0xa6>
  401608:	48 8b 85 48 ff ff ff 	mov    rax,QWORD PTR [rbp-0xb8]
  40160f:	8b 00                	mov    eax,DWORD PTR [rax]
  401611:	be 7f 30 40 00       	mov    esi,0x40307f
  401616:	89 c7                	mov    edi,eax
  401618:	e8 db fe ff ff       	call   4014f8 <error+0xa6>
  40161d:	48 8b 85 48 ff ff ff 	mov    rax,QWORD PTR [rbp-0xb8]
  401624:	8b 00                	mov    eax,DWORD PTR [rax]
  401626:	89 c7                	mov    edi,eax
  401628:	e8 58 fe ff ff       	call   401485 <error+0x33>
  40162d:	48 89 85 60 ff ff ff 	mov    QWORD PTR [rbp-0xa0],rax
  401634:	48 8b 85 60 ff ff ff 	mov    rax,QWORD PTR [rbp-0xa0]
  40163b:	48 89 85 68 ff ff ff 	mov    QWORD PTR [rbp-0x98],rax
  401642:	48 8b 85 60 ff ff ff 	mov    rax,QWORD PTR [rbp-0xa0]
  401649:	48 89 c7             	mov    rdi,rax
  40164c:	e8 9f f8 ff ff       	call   400ef0 <strlen@plt>
  401651:	89 85 5c ff ff ff    	mov    DWORD PTR [rbp-0xa4],eax
  401657:	c7 85 58 ff ff ff 00 	mov    DWORD PTR [rbp-0xa8],0x0
  40165e:	00 00 00 
  401661:	eb 2b                	jmp    40168e <error+0x23c>
  401663:	48 8b 85 60 ff ff ff 	mov    rax,QWORD PTR [rbp-0xa0]
  40166a:	48 8d 50 01          	lea    rdx,[rax+0x1]
  40166e:	48 89 95 60 ff ff ff 	mov    QWORD PTR [rbp-0xa0],rdx
  401675:	0f b6 10             	movzx  edx,BYTE PTR [rax]
  401678:	8b 85 58 ff ff ff    	mov    eax,DWORD PTR [rbp-0xa8]
  40167e:	48 98                	cdqe   
  401680:	88 94 05 70 ff ff ff 	mov    BYTE PTR [rbp+rax*1-0x90],dl
  401687:	83 85 58 ff ff ff 01 	add    DWORD PTR [rbp-0xa8],0x1
  40168e:	48 8b 85 60 ff ff ff 	mov    rax,QWORD PTR [rbp-0xa0]
  401695:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  401698:	3c 20                	cmp    al,0x20
  40169a:	74 11                	je     4016ad <error+0x25b>
  40169c:	8b 85 5c ff ff ff    	mov    eax,DWORD PTR [rbp-0xa4]
  4016a2:	83 e8 01             	sub    eax,0x1
  4016a5:	3b 85 58 ff ff ff    	cmp    eax,DWORD PTR [rbp-0xa8]
  4016ab:	7d b6                	jge    401663 <error+0x211>
  4016ad:	48 8b 85 60 ff ff ff 	mov    rax,QWORD PTR [rbp-0xa0]
  4016b4:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  4016b7:	3c 20                	cmp    al,0x20
  4016b9:	75 08                	jne    4016c3 <error+0x271>
  4016bb:	48 83 85 60 ff ff ff 	add    QWORD PTR [rbp-0xa0],0x1
  4016c2:	01 
  4016c3:	48 8d 85 70 ff ff ff 	lea    rax,[rbp-0x90]
  4016ca:	ba 04 00 00 00       	mov    edx,0x4
  4016cf:	48 89 c6             	mov    rsi,rax
  4016d2:	bf 81 30 40 00       	mov    edi,0x403081
  4016d7:	e8 84 f9 ff ff       	call   401060 <strncasecmp@plt>
  4016dc:	85 c0                	test   eax,eax
  4016de:	74 1a                	je     4016fa <error+0x2a8>
  4016e0:	48 8b 85 48 ff ff ff 	mov    rax,QWORD PTR [rbp-0xb8]
  4016e7:	8b 00                	mov    eax,DWORD PTR [rax]
  4016e9:	be 86 30 40 00       	mov    esi,0x403086
  4016ee:	89 c7                	mov    edi,eax
  4016f0:	e8 03 fe ff ff       	call   4014f8 <error+0xa6>
  4016f5:	e9 b7 00 00 00       	jmp    4017b1 <error+0x35f>
  4016fa:	48 8b 85 48 ff ff ff 	mov    rax,QWORD PTR [rbp-0xb8]
  401701:	48 8b 95 60 ff ff ff 	mov    rdx,QWORD PTR [rbp-0xa0]
  401708:	48 89 50 28          	mov    QWORD PTR [rax+0x28],rdx
  40170c:	48 8b 85 48 ff ff ff 	mov    rax,QWORD PTR [rbp-0xb8]
  401713:	48 8b 40 28          	mov    rax,QWORD PTR [rax+0x28]
  401717:	48 89 c7             	mov    rdi,rax
  40171a:	e8 21 fe ff ff       	call   401540 <error+0xee>
  40171f:	48 8b 85 48 ff ff ff 	mov    rax,QWORD PTR [rbp-0xb8]
  401726:	48 8b 40 20          	mov    rax,QWORD PTR [rax+0x20]
  40172a:	ba 09 00 00 00       	mov    edx,0x9
  40172f:	be 9c 30 40 00       	mov    esi,0x40309c
  401734:	48 89 c7             	mov    rdi,rax
  401737:	e8 54 f7 ff ff       	call   400e90 <strncmp@plt>
  40173c:	85 c0                	test   eax,eax
  40173e:	75 4d                	jne    40178d <error+0x33b>
  401740:	48 8b 85 48 ff ff ff 	mov    rax,QWORD PTR [rbp-0xb8]
  401747:	48 8b 40 28          	mov    rax,QWORD PTR [rax+0x28]
  40174b:	48 89 c7             	mov    rdi,rax
  40174e:	e8 ed fd ff ff       	call   401540 <error+0xee>
  401753:	3d 09 d2 86 d3       	cmp    eax,0xd386d209
  401758:	75 32                	jne    40178c <error+0x33a>
  40175a:	48 8b 85 48 ff ff ff 	mov    rax,QWORD PTR [rbp-0xb8]
  401761:	c7 80 c0 04 00 00 01 	mov    DWORD PTR [rax+0x4c0],0x1
  401768:	00 00 00 
  40176b:	48 8b 85 48 ff ff ff 	mov    rax,QWORD PTR [rbp-0xb8]
  401772:	8b 00                	mov    eax,DWORD PTR [rax]
  401774:	be a6 30 40 00       	mov    esi,0x4030a6
  401779:	89 c7                	mov    edi,eax
  40177b:	e8 78 fd ff ff       	call   4014f8 <error+0xa6>
  401780:	c7 05 7e 2c 20 00 66 	mov    DWORD PTR [rip+0x202c7e],0x66        # 604408 <error+0x202fb6>
  401787:	00 00 00 
  40178a:	eb 25                	jmp    4017b1 <error+0x35f>
  40178c:	90                   	nop
  40178d:	48 8b 85 48 ff ff ff 	mov    rax,QWORD PTR [rbp-0xb8]
  401794:	8b 00                	mov    eax,DWORD PTR [rax]
  401796:	be b1 30 40 00       	mov    esi,0x4030b1
  40179b:	89 c7                	mov    edi,eax
  40179d:	e8 56 fd ff ff       	call   4014f8 <error+0xa6>
  4017a2:	48 8b 85 68 ff ff ff 	mov    rax,QWORD PTR [rbp-0x98]
  4017a9:	48 89 c7             	mov    rdi,rax
  4017ac:	e8 8f f6 ff ff       	call   400e40 <free@plt>
  4017b1:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4017b5:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
  4017bc:	00 00 
  4017be:	74 05                	je     4017c5 <error+0x373>
  4017c0:	e8 3b f7 ff ff       	call   400f00 <__stack_chk_fail@plt>
  4017c5:	c9                   	leave  
  4017c6:	c3                   	ret    
  4017c7:	55                   	push   rbp
  4017c8:	48 89 e5             	mov    rbp,rsp
  4017cb:	48 83 ec 10          	sub    rsp,0x10
  4017cf:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  4017d3:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4017d7:	8b 00                	mov    eax,DWORD PTR [rax]
  4017d9:	be cc 30 40 00       	mov    esi,0x4030cc
  4017de:	89 c7                	mov    edi,eax
  4017e0:	e8 13 fd ff ff       	call   4014f8 <error+0xa6>
  4017e5:	bf 00 00 00 00       	mov    edi,0x0
  4017ea:	e8 01 f9 ff ff       	call   4010f0 <exit@plt>
  4017ef:	55                   	push   rbp
  4017f0:	48 89 e5             	mov    rbp,rsp
  4017f3:	48 81 ec d0 00 00 00 	sub    rsp,0xd0
  4017fa:	48 89 bd 38 ff ff ff 	mov    QWORD PTR [rbp-0xc8],rdi
  401801:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  401808:	00 00 
  40180a:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  40180e:	31 c0                	xor    eax,eax
  401810:	48 8b 85 38 ff ff ff 	mov    rax,QWORD PTR [rbp-0xc8]
  401817:	8b 40 04             	mov    eax,DWORD PTR [rax+0x4]
  40181a:	85 c0                	test   eax,eax
  40181c:	7e 1f                	jle    40183d <error+0x3eb>
  40181e:	48 8b 85 38 ff ff ff 	mov    rax,QWORD PTR [rbp-0xc8]
  401825:	8b 40 04             	mov    eax,DWORD PTR [rax+0x4]
  401828:	89 c7                	mov    edi,eax
  40182a:	e8 61 f7 ff ff       	call   400f90 <close@plt>
  40182f:	48 8b 85 38 ff ff ff 	mov    rax,QWORD PTR [rbp-0xc8]
  401836:	c7 40 04 ff ff ff ff 	mov    DWORD PTR [rax+0x4],0xffffffff
  40183d:	c7 85 5c ff ff ff 00 	mov    DWORD PTR [rbp-0xa4],0x0
  401844:	00 00 00 
  401847:	8b 85 5c ff ff ff    	mov    eax,DWORD PTR [rbp-0xa4]
  40184d:	89 85 58 ff ff ff    	mov    DWORD PTR [rbp-0xa8],eax
  401853:	8b 85 58 ff ff ff    	mov    eax,DWORD PTR [rbp-0xa8]
  401859:	89 85 54 ff ff ff    	mov    DWORD PTR [rbp-0xac],eax
  40185f:	8b 85 54 ff ff ff    	mov    eax,DWORD PTR [rbp-0xac]
  401865:	89 85 50 ff ff ff    	mov    DWORD PTR [rbp-0xb0],eax
  40186b:	8b 85 50 ff ff ff    	mov    eax,DWORD PTR [rbp-0xb0]
  401871:	89 85 4c ff ff ff    	mov    DWORD PTR [rbp-0xb4],eax
  401877:	8b 85 4c ff ff ff    	mov    eax,DWORD PTR [rbp-0xb4]
  40187d:	89 85 48 ff ff ff    	mov    DWORD PTR [rbp-0xb8],eax
  401883:	48 8b 85 38 ff ff ff 	mov    rax,QWORD PTR [rbp-0xc8]
  40188a:	48 8b 40 18          	mov    rax,QWORD PTR [rax+0x18]
  40188e:	4c 8d 85 54 ff ff ff 	lea    r8,[rbp-0xac]
  401895:	48 8d bd 50 ff ff ff 	lea    rdi,[rbp-0xb0]
  40189c:	48 8d 8d 4c ff ff ff 	lea    rcx,[rbp-0xb4]
  4018a3:	48 8d 95 48 ff ff ff 	lea    rdx,[rbp-0xb8]
  4018aa:	48 8d b5 5c ff ff ff 	lea    rsi,[rbp-0xa4]
  4018b1:	56                   	push   rsi
  4018b2:	48 8d b5 58 ff ff ff 	lea    rsi,[rbp-0xa8]
  4018b9:	56                   	push   rsi
  4018ba:	4d 89 c1             	mov    r9,r8
  4018bd:	49 89 f8             	mov    r8,rdi
  4018c0:	be d8 30 40 00       	mov    esi,0x4030d8
  4018c5:	48 89 c7             	mov    rdi,rax
  4018c8:	b8 00 00 00 00       	mov    eax,0x0
  4018cd:	e8 9e f7 ff ff       	call   401070 <__isoc99_sscanf@plt>
  4018d2:	48 83 c4 10          	add    rsp,0x10
  4018d6:	8b bd 54 ff ff ff    	mov    edi,DWORD PTR [rbp-0xac]
  4018dc:	8b b5 50 ff ff ff    	mov    esi,DWORD PTR [rbp-0xb0]
  4018e2:	8b 8d 4c ff ff ff    	mov    ecx,DWORD PTR [rbp-0xb4]
  4018e8:	8b 95 48 ff ff ff    	mov    edx,DWORD PTR [rbp-0xb8]
  4018ee:	48 8d 85 70 ff ff ff 	lea    rax,[rbp-0x90]
  4018f5:	41 89 f9             	mov    r9d,edi
  4018f8:	41 89 f0             	mov    r8d,esi
  4018fb:	be ea 30 40 00       	mov    esi,0x4030ea
  401900:	48 89 c7             	mov    rdi,rax
  401903:	b8 00 00 00 00       	mov    eax,0x0
  401908:	e8 d3 f7 ff ff       	call   4010e0 <sprintf@plt>
  40190d:	48 8d 85 60 ff ff ff 	lea    rax,[rbp-0xa0]
  401914:	48 8d 50 04          	lea    rdx,[rax+0x4]
  401918:	48 8d 85 70 ff ff ff 	lea    rax,[rbp-0x90]
  40191f:	48 89 d6             	mov    rsi,rdx
  401922:	48 89 c7             	mov    rdi,rax
  401925:	e8 f6 f6 ff ff       	call   401020 <inet_aton@plt>
  40192a:	85 c0                	test   eax,eax
  40192c:	75 1a                	jne    401948 <error+0x4f6>
  40192e:	48 8b 85 38 ff ff ff 	mov    rax,QWORD PTR [rbp-0xc8]
  401935:	8b 00                	mov    eax,DWORD PTR [rax]
  401937:	be f6 30 40 00       	mov    esi,0x4030f6
  40193c:	89 c7                	mov    edi,eax
  40193e:	e8 b5 fb ff ff       	call   4014f8 <error+0xa6>
  401943:	e9 a5 00 00 00       	jmp    4019ed <error+0x59b>
  401948:	48 8b 85 38 ff ff ff 	mov    rax,QWORD PTR [rbp-0xc8]
  40194f:	48 8d 48 30          	lea    rcx,[rax+0x30]
  401953:	48 8d 85 70 ff ff ff 	lea    rax,[rbp-0x90]
  40195a:	ba 80 00 00 00       	mov    edx,0x80
  40195f:	48 89 c6             	mov    rsi,rax
  401962:	48 89 cf             	mov    rdi,rcx
  401965:	e8 16 f5 ff ff       	call   400e80 <strncpy@plt>
  40196a:	8b 85 58 ff ff ff    	mov    eax,DWORD PTR [rbp-0xa8]
  401970:	c1 e0 08             	shl    eax,0x8
  401973:	89 c2                	mov    edx,eax
  401975:	8b 85 5c ff ff ff    	mov    eax,DWORD PTR [rbp-0xa4]
  40197b:	01 d0                	add    eax,edx
  40197d:	48 63 d0             	movsxd rdx,eax
  401980:	48 8b 85 38 ff ff ff 	mov    rax,QWORD PTR [rbp-0xc8]
  401987:	48 89 90 b0 00 00 00 	mov    QWORD PTR [rax+0xb0],rdx
  40198e:	48 8b 85 38 ff ff ff 	mov    rax,QWORD PTR [rbp-0xc8]
  401995:	48 8b 80 b0 00 00 00 	mov    rax,QWORD PTR [rax+0xb0]
  40199c:	48 3d 01 04 00 00    	cmp    rax,0x401
  4019a2:	74 34                	je     4019d8 <error+0x586>
  4019a4:	48 8b 85 38 ff ff ff 	mov    rax,QWORD PTR [rbp-0xc8]
  4019ab:	c6 40 30 00          	mov    BYTE PTR [rax+0x30],0x0
  4019af:	48 8b 85 38 ff ff ff 	mov    rax,QWORD PTR [rbp-0xc8]
  4019b6:	48 c7 80 b0 00 00 00 	mov    QWORD PTR [rax+0xb0],0xffffffffffffffff
  4019bd:	ff ff ff ff 
  4019c1:	48 8b 85 38 ff ff ff 	mov    rax,QWORD PTR [rbp-0xc8]
  4019c8:	8b 00                	mov    eax,DWORD PTR [rax]
  4019ca:	be 12 31 40 00       	mov    esi,0x403112
  4019cf:	89 c7                	mov    edi,eax
  4019d1:	e8 22 fb ff ff       	call   4014f8 <error+0xa6>
  4019d6:	eb 15                	jmp    4019ed <error+0x59b>
  4019d8:	48 8b 85 38 ff ff ff 	mov    rax,QWORD PTR [rbp-0xc8]
  4019df:	8b 00                	mov    eax,DWORD PTR [rax]
  4019e1:	be 2b 31 40 00       	mov    esi,0x40312b
  4019e6:	89 c7                	mov    edi,eax
  4019e8:	e8 0b fb ff ff       	call   4014f8 <error+0xa6>
  4019ed:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4019f1:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
  4019f8:	00 00 
  4019fa:	74 05                	je     401a01 <error+0x5af>
  4019fc:	e8 ff f4 ff ff       	call   400f00 <__stack_chk_fail@plt>
  401a01:	c9                   	leave  
  401a02:	c3                   	ret    
  401a03:	55                   	push   rbp
  401a04:	48 89 e5             	mov    rbp,rsp
  401a07:	48 83 ec 10          	sub    rsp,0x10
  401a0b:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  401a0f:	48 89 75 f0          	mov    QWORD PTR [rbp-0x10],rsi
  401a13:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  401a17:	48 05 c0 00 00 00    	add    rax,0xc0
  401a1d:	ba 00 04 00 00       	mov    edx,0x400
  401a22:	48 89 c6             	mov    rsi,rax
  401a25:	bf 40 44 60 00       	mov    edi,0x604440
  401a2a:	e8 51 f4 ff ff       	call   400e80 <strncpy@plt>
  401a2f:	48 83 7d f0 00       	cmp    QWORD PTR [rbp-0x10],0x0
  401a34:	74 0b                	je     401a41 <error+0x5ef>
  401a36:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401a3a:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  401a3d:	3c 2f                	cmp    al,0x2f
  401a3f:	74 79                	je     401aba <error+0x668>
  401a41:	48 83 7d f0 00       	cmp    QWORD PTR [rbp-0x10],0x0
  401a46:	74 70                	je     401ab8 <error+0x666>
  401a48:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401a4c:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  401a4f:	84 c0                	test   al,al
  401a51:	74 65                	je     401ab8 <error+0x666>
  401a53:	bf 40 44 60 00       	mov    edi,0x604440
  401a58:	e8 93 f4 ff ff       	call   400ef0 <strlen@plt>
  401a5d:	48 83 e8 01          	sub    rax,0x1
  401a61:	0f b6 80 40 44 60 00 	movzx  eax,BYTE PTR [rax+0x604440]
  401a68:	3c 2f                	cmp    al,0x2f
  401a6a:	74 27                	je     401a93 <error+0x641>
  401a6c:	bf 40 44 60 00       	mov    edi,0x604440
  401a71:	e8 7a f4 ff ff       	call   400ef0 <strlen@plt>
  401a76:	ba ff 03 00 00       	mov    edx,0x3ff
  401a7b:	48 29 c2             	sub    rdx,rax
  401a7e:	48 89 d0             	mov    rax,rdx
  401a81:	48 89 c2             	mov    rdx,rax
  401a84:	be 46 31 40 00       	mov    esi,0x403146
  401a89:	bf 40 44 60 00       	mov    edi,0x604440
  401a8e:	e8 dd f4 ff ff       	call   400f70 <strncat@plt>
  401a93:	bf 40 44 60 00       	mov    edi,0x604440
  401a98:	e8 53 f4 ff ff       	call   400ef0 <strlen@plt>
  401a9d:	ba ff 03 00 00       	mov    edx,0x3ff
  401aa2:	48 29 c2             	sub    rdx,rax
  401aa5:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401aa9:	48 89 c6             	mov    rsi,rax
  401aac:	bf 40 44 60 00       	mov    edi,0x604440
  401ab1:	e8 ba f4 ff ff       	call   400f70 <strncat@plt>
  401ab6:	eb 18                	jmp    401ad0 <error+0x67e>
  401ab8:	eb 16                	jmp    401ad0 <error+0x67e>
  401aba:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401abe:	ba 00 04 00 00       	mov    edx,0x400
  401ac3:	48 89 c6             	mov    rsi,rax
  401ac6:	bf 40 44 60 00       	mov    edi,0x604440
  401acb:	e8 b0 f3 ff ff       	call   400e80 <strncpy@plt>
  401ad0:	b8 40 44 60 00       	mov    eax,0x604440
  401ad5:	c9                   	leave  
  401ad6:	c3                   	ret    
  401ad7:	55                   	push   rbp
  401ad8:	48 89 e5             	mov    rbp,rsp
  401adb:	41 54                	push   r12
  401add:	53                   	push   rbx
  401ade:	48 81 ec f0 00 00 00 	sub    rsp,0xf0
  401ae5:	48 89 bd 08 ff ff ff 	mov    QWORD PTR [rbp-0xf8],rdi
  401aec:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  401af3:	00 00 
  401af5:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
  401af9:	31 c0                	xor    eax,eax
  401afb:	48 8b 85 08 ff ff ff 	mov    rax,QWORD PTR [rbp-0xf8]
  401b02:	48 89 c7             	mov    rdi,rax
  401b05:	e8 27 08 00 00       	call   402331 <error+0xedf>
  401b0a:	89 85 1c ff ff ff    	mov    DWORD PTR [rbp-0xe4],eax
  401b10:	83 bd 1c ff ff ff 00 	cmp    DWORD PTR [rbp-0xe4],0x0
  401b17:	79 1a                	jns    401b33 <error+0x6e1>
  401b19:	48 8b 85 08 ff ff ff 	mov    rax,QWORD PTR [rbp-0xf8]
  401b20:	8b 00                	mov    eax,DWORD PTR [rax]
  401b22:	be 48 31 40 00       	mov    esi,0x403148
  401b27:	89 c7                	mov    edi,eax
  401b29:	e8 ca f9 ff ff       	call   4014f8 <error+0xa6>
  401b2e:	e9 6e 02 00 00       	jmp    401da1 <error+0x94f>
  401b33:	48 8b 85 08 ff ff ff 	mov    rax,QWORD PTR [rbp-0xf8]
  401b3a:	48 8b 50 18          	mov    rdx,QWORD PTR [rax+0x18]
  401b3e:	48 8b 85 08 ff ff ff 	mov    rax,QWORD PTR [rbp-0xf8]
  401b45:	48 89 d6             	mov    rsi,rdx
  401b48:	48 89 c7             	mov    rdi,rax
  401b4b:	e8 b3 fe ff ff       	call   401a03 <error+0x5b1>
  401b50:	48 89 85 30 ff ff ff 	mov    QWORD PTR [rbp-0xd0],rax
  401b57:	48 8b 85 30 ff ff ff 	mov    rax,QWORD PTR [rbp-0xd0]
  401b5e:	48 89 c6             	mov    rsi,rax
  401b61:	bf 60 31 40 00       	mov    edi,0x403160
  401b66:	b8 00 00 00 00       	mov    eax,0x0
  401b6b:	e8 c0 f3 ff ff       	call   400f30 <printf@plt>
  401b70:	48 8b 85 30 ff ff ff 	mov    rax,QWORD PTR [rbp-0xd0]
  401b77:	48 89 c7             	mov    rdi,rax
  401b7a:	e8 61 f3 ff ff       	call   400ee0 <opendir@plt>
  401b7f:	48 89 85 38 ff ff ff 	mov    QWORD PTR [rbp-0xc8],rax
  401b86:	48 83 bd 38 ff ff ff 	cmp    QWORD PTR [rbp-0xc8],0x0
  401b8d:	00 
  401b8e:	75 18                	jne    401ba8 <error+0x756>
  401b90:	e8 db f2 ff ff       	call   400e70 <__errno_location@plt>
  401b95:	8b 00                	mov    eax,DWORD PTR [rax]
  401b97:	89 c6                	mov    esi,eax
  401b99:	bf 72 31 40 00       	mov    edi,0x403172
  401b9e:	b8 00 00 00 00       	mov    eax,0x0
  401ba3:	e8 88 f3 ff ff       	call   400f30 <printf@plt>
  401ba8:	e9 c2 01 00 00       	jmp    401d6f <error+0x91d>
  401bad:	48 c7 85 20 ff ff ff 	mov    QWORD PTR [rbp-0xe0],0x604200
  401bb4:	00 42 60 00 
  401bb8:	48 c7 85 28 ff ff ff 	mov    QWORD PTR [rbp-0xd8],0x400
  401bbf:	00 04 00 00 
  401bc3:	48 8b 85 30 ff ff ff 	mov    rax,QWORD PTR [rbp-0xd0]
  401bca:	48 89 c6             	mov    rsi,rax
  401bcd:	bf 87 31 40 00       	mov    edi,0x403187
  401bd2:	b8 00 00 00 00       	mov    eax,0x0
  401bd7:	e8 54 f3 ff ff       	call   400f30 <printf@plt>
  401bdc:	e9 2d 01 00 00       	jmp    401d0e <error+0x8bc>
  401be1:	48 8b 85 40 ff ff ff 	mov    rax,QWORD PTR [rbp-0xc0]
  401be8:	48 83 c0 13          	add    rax,0x13
  401bec:	48 89 85 48 ff ff ff 	mov    QWORD PTR [rbp-0xb8],rax
  401bf3:	48 8b 85 48 ff ff ff 	mov    rax,QWORD PTR [rbp-0xb8]
  401bfa:	48 89 c6             	mov    rsi,rax
  401bfd:	bf a0 31 40 00       	mov    edi,0x4031a0
  401c02:	b8 00 00 00 00       	mov    eax,0x0
  401c07:	e8 24 f3 ff ff       	call   400f30 <printf@plt>
  401c0c:	48 8b 85 48 ff ff ff 	mov    rax,QWORD PTR [rbp-0xb8]
  401c13:	be ba 31 40 00       	mov    esi,0x4031ba
  401c18:	48 89 c7             	mov    rdi,rax
  401c1b:	e8 b0 f3 ff ff       	call   400fd0 <strcmp@plt>
  401c20:	85 c0                	test   eax,eax
  401c22:	74 18                	je     401c3c <error+0x7ea>
  401c24:	48 8b 85 48 ff ff ff 	mov    rax,QWORD PTR [rbp-0xb8]
  401c2b:	be bc 31 40 00       	mov    esi,0x4031bc
  401c30:	48 89 c7             	mov    rdi,rax
  401c33:	e8 98 f3 ff ff       	call   400fd0 <strcmp@plt>
  401c38:	85 c0                	test   eax,eax
  401c3a:	75 05                	jne    401c41 <error+0x7ef>
  401c3c:	e9 cd 00 00 00       	jmp    401d0e <error+0x8bc>
  401c41:	48 8d 95 50 ff ff ff 	lea    rdx,[rbp-0xb0]
  401c48:	48 8b 85 30 ff ff ff 	mov    rax,QWORD PTR [rbp-0xd0]
  401c4f:	48 89 d6             	mov    rsi,rdx
  401c52:	48 89 c7             	mov    rdi,rax
  401c55:	e8 f6 12 00 00       	call   402f50 <error+0x1afe>
  401c5a:	85 c0                	test   eax,eax
  401c5c:	74 1e                	je     401c7c <error+0x82a>
  401c5e:	48 8b 85 30 ff ff ff 	mov    rax,QWORD PTR [rbp-0xd0]
  401c65:	48 89 c6             	mov    rsi,rax
  401c68:	bf bf 31 40 00       	mov    edi,0x4031bf
  401c6d:	b8 00 00 00 00       	mov    eax,0x0
  401c72:	e8 b9 f2 ff ff       	call   400f30 <printf@plt>
  401c77:	e9 92 00 00 00       	jmp    401d0e <error+0x8bc>
  401c7c:	48 8b 45 a8          	mov    rax,QWORD PTR [rbp-0x58]
  401c80:	48 89 c7             	mov    rdi,rax
  401c83:	e8 d5 f6 ff ff       	call   40135d <socket@plt+0x23d>
  401c88:	48 89 c3             	mov    rbx,rax
  401c8b:	48 8b 45 80          	mov    rax,QWORD PTR [rbp-0x80]
  401c8f:	49 89 c4             	mov    r12,rax
  401c92:	8b 85 68 ff ff ff    	mov    eax,DWORD PTR [rbp-0x98]
  401c98:	89 c7                	mov    edi,eax
  401c9a:	e8 87 f5 ff ff       	call   401226 <socket@plt+0x106>
  401c9f:	48 89 c2             	mov    rdx,rax
  401ca2:	48 83 ec 08          	sub    rsp,0x8
  401ca6:	48 8b b5 28 ff ff ff 	mov    rsi,QWORD PTR [rbp-0xd8]
  401cad:	48 8b 85 20 ff ff ff 	mov    rax,QWORD PTR [rbp-0xe0]
  401cb4:	ff b5 48 ff ff ff    	push   QWORD PTR [rbp-0xb8]
  401cba:	53                   	push   rbx
  401cbb:	41 54                	push   r12
  401cbd:	41 b9 00 00 00 00    	mov    r9d,0x0
  401cc3:	41 b8 00 00 00 00    	mov    r8d,0x0
  401cc9:	48 89 d1             	mov    rcx,rdx
  401ccc:	ba dd 31 40 00       	mov    edx,0x4031dd
  401cd1:	48 89 c7             	mov    rdi,rax
  401cd4:	b8 00 00 00 00       	mov    eax,0x0
  401cd9:	e8 62 f2 ff ff       	call   400f40 <snprintf@plt>
  401cde:	48 83 c4 20          	add    rsp,0x20
  401ce2:	48 8b 85 20 ff ff ff 	mov    rax,QWORD PTR [rbp-0xe0]
  401ce9:	48 89 c7             	mov    rdi,rax
  401cec:	e8 ff f1 ff ff       	call   400ef0 <strlen@plt>
  401cf1:	48 29 85 28 ff ff ff 	sub    QWORD PTR [rbp-0xd8],rax
  401cf8:	48 8b 85 20 ff ff ff 	mov    rax,QWORD PTR [rbp-0xe0]
  401cff:	48 89 c7             	mov    rdi,rax
  401d02:	e8 e9 f1 ff ff       	call   400ef0 <strlen@plt>
  401d07:	48 01 85 20 ff ff ff 	add    QWORD PTR [rbp-0xe0],rax
  401d0e:	48 8b 85 38 ff ff ff 	mov    rax,QWORD PTR [rbp-0xc8]
  401d15:	48 89 c7             	mov    rdi,rax
  401d18:	e8 23 f3 ff ff       	call   401040 <readdir@plt>
  401d1d:	48 89 85 40 ff ff ff 	mov    QWORD PTR [rbp-0xc0],rax
  401d24:	48 83 bd 40 ff ff ff 	cmp    QWORD PTR [rbp-0xc0],0x0
  401d2b:	00 
  401d2c:	74 0e                	je     401d3c <error+0x8ea>
  401d2e:	48 83 bd 28 ff ff ff 	cmp    QWORD PTR [rbp-0xd8],0x50
  401d35:	50 
  401d36:	0f 87 a5 fe ff ff    	ja     401be1 <error+0x78f>
  401d3c:	48 8b 85 08 ff ff ff 	mov    rax,QWORD PTR [rbp-0xf8]
  401d43:	8b 40 04             	mov    eax,DWORD PTR [rax+0x4]
  401d46:	be 00 42 60 00       	mov    esi,0x604200
  401d4b:	89 c7                	mov    edi,eax
  401d4d:	e8 a6 f7 ff ff       	call   4014f8 <error+0xa6>
  401d52:	48 83 bd 40 ff ff ff 	cmp    QWORD PTR [rbp-0xc0],0x0
  401d59:	00 
  401d5a:	74 02                	je     401d5e <error+0x90c>
  401d5c:	eb 11                	jmp    401d6f <error+0x91d>
  401d5e:	48 8b 85 38 ff ff ff 	mov    rax,QWORD PTR [rbp-0xc8]
  401d65:	48 89 c7             	mov    rdi,rax
  401d68:	e8 33 f2 ff ff       	call   400fa0 <closedir@plt>
  401d6d:	eb 0e                	jmp    401d7d <error+0x92b>
  401d6f:	48 83 bd 38 ff ff ff 	cmp    QWORD PTR [rbp-0xc8],0x0
  401d76:	00 
  401d77:	0f 85 30 fe ff ff    	jne    401bad <error+0x75b>
  401d7d:	48 8b 85 08 ff ff ff 	mov    rax,QWORD PTR [rbp-0xf8]
  401d84:	48 89 c7             	mov    rdi,rax
  401d87:	e8 53 06 00 00       	call   4023df <error+0xf8d>
  401d8c:	48 8b 85 08 ff ff ff 	mov    rax,QWORD PTR [rbp-0xf8]
  401d93:	8b 00                	mov    eax,DWORD PTR [rax]
  401d95:	be f8 31 40 00       	mov    esi,0x4031f8
  401d9a:	89 c7                	mov    edi,eax
  401d9c:	e8 57 f7 ff ff       	call   4014f8 <error+0xa6>
  401da1:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  401da5:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
  401dac:	00 00 
  401dae:	74 05                	je     401db5 <error+0x963>
  401db0:	e8 4b f1 ff ff       	call   400f00 <__stack_chk_fail@plt>
  401db5:	48 8d 65 f0          	lea    rsp,[rbp-0x10]
  401db9:	5b                   	pop    rbx
  401dba:	41 5c                	pop    r12
  401dbc:	5d                   	pop    rbp
  401dbd:	c3                   	ret    
  401dbe:	55                   	push   rbp
  401dbf:	48 89 e5             	mov    rbp,rsp
  401dc2:	48 83 ec 10          	sub    rsp,0x10
  401dc6:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  401dca:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  401dce:	48 8d 90 c0 00 00 00 	lea    rdx,[rax+0xc0]
  401dd5:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  401dd9:	8b 00                	mov    eax,DWORD PTR [rax]
  401ddb:	48 89 d6             	mov    rsi,rdx
  401dde:	89 c7                	mov    edi,eax
  401de0:	e8 13 f7 ff ff       	call   4014f8 <error+0xa6>
  401de5:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  401de9:	8b 00                	mov    eax,DWORD PTR [rax]
  401deb:	be 7f 30 40 00       	mov    esi,0x40307f
  401df0:	89 c7                	mov    edi,eax
  401df2:	e8 01 f7 ff ff       	call   4014f8 <error+0xa6>
  401df7:	c9                   	leave  
  401df8:	c3                   	ret    
  401df9:	55                   	push   rbp
  401dfa:	48 89 e5             	mov    rbp,rsp
  401dfd:	53                   	push   rbx
  401dfe:	48 83 ec 48          	sub    rsp,0x48
  401e02:	48 89 7d b8          	mov    QWORD PTR [rbp-0x48],rdi
  401e06:	c7 45 d0 00 00 00 00 	mov    DWORD PTR [rbp-0x30],0x0
  401e0d:	c7 45 cc 00 00 00 00 	mov    DWORD PTR [rbp-0x34],0x0
  401e14:	48 c7 45 d8 00 00 00 	mov    QWORD PTR [rbp-0x28],0x0
  401e1b:	00 
  401e1c:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
  401e20:	48 8b 50 18          	mov    rdx,QWORD PTR [rax+0x18]
  401e24:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
  401e28:	48 89 d6             	mov    rsi,rdx
  401e2b:	48 89 c7             	mov    rdi,rax
  401e2e:	e8 d0 fb ff ff       	call   401a03 <error+0x5b1>
  401e33:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
  401e37:	48 c7 45 e8 0a 00 00 	mov    QWORD PTR [rbp-0x18],0xa
  401e3e:	00 
  401e3f:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
  401e43:	48 89 c7             	mov    rdi,rax
  401e46:	e8 e6 04 00 00       	call   402331 <error+0xedf>
  401e4b:	85 c0                	test   eax,eax
  401e4d:	79 17                	jns    401e66 <error+0xa14>
  401e4f:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
  401e53:	8b 00                	mov    eax,DWORD PTR [rax]
  401e55:	be 08 32 40 00       	mov    esi,0x403208
  401e5a:	89 c7                	mov    edi,eax
  401e5c:	e8 97 f6 ff ff       	call   4014f8 <error+0xa6>
  401e61:	e9 cd 00 00 00       	jmp    401f33 <error+0xae1>
  401e66:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
  401e6a:	8b 00                	mov    eax,DWORD PTR [rax]
  401e6c:	be 2b 32 40 00       	mov    esi,0x40322b
  401e71:	89 c7                	mov    edi,eax
  401e73:	e8 80 f6 ff ff       	call   4014f8 <error+0xa6>
  401e78:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
  401e7c:	8b 40 04             	mov    eax,DWORD PTR [rax+0x4]
  401e7f:	48 8b 55 e8          	mov    rdx,QWORD PTR [rbp-0x18]
  401e83:	b9 00 00 00 00       	mov    ecx,0x0
  401e88:	be 00 42 60 00       	mov    esi,0x604200
  401e8d:	89 c7                	mov    edi,eax
  401e8f:	e8 bc ef ff ff       	call   400e50 <recv@plt>
  401e94:	89 45 d4             	mov    DWORD PTR [rbp-0x2c],eax
  401e97:	83 7d d4 00          	cmp    DWORD PTR [rbp-0x2c],0x0
  401e9b:	79 14                	jns    401eb1 <error+0xa5f>
  401e9d:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
  401ea1:	8b 00                	mov    eax,DWORD PTR [rax]
  401ea3:	be 3f 32 40 00       	mov    esi,0x40323f
  401ea8:	89 c7                	mov    edi,eax
  401eaa:	e8 49 f6 ff ff       	call   4014f8 <error+0xa6>
  401eaf:	eb 10                	jmp    401ec1 <error+0xa6f>
  401eb1:	83 7d d4 00          	cmp    DWORD PTR [rbp-0x2c],0x0
  401eb5:	75 02                	jne    401eb9 <error+0xa67>
  401eb7:	eb 08                	jmp    401ec1 <error+0xa6f>
  401eb9:	8b 45 d4             	mov    eax,DWORD PTR [rbp-0x2c]
  401ebc:	01 45 cc             	add    DWORD PTR [rbp-0x34],eax
  401ebf:	eb b7                	jmp    401e78 <error+0xa26>
  401ec1:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
  401ec5:	48 8b 40 18          	mov    rax,QWORD PTR [rax+0x18]
  401ec9:	48 89 c6             	mov    rsi,rax
  401ecc:	bf 54 32 40 00       	mov    edi,0x403254
  401ed1:	b8 00 00 00 00       	mov    eax,0x0
  401ed6:	e8 55 f0 ff ff       	call   400f30 <printf@plt>
  401edb:	8b 45 cc             	mov    eax,DWORD PTR [rbp-0x34]
  401ede:	48 98                	cdqe   
  401ee0:	c6 80 00 42 60 00 00 	mov    BYTE PTR [rax+0x604200],0x0
  401ee7:	8b 1d 17 25 20 00    	mov    ebx,DWORD PTR [rip+0x202517]        # 604404 <error+0x202fb2>
  401eed:	8d 43 01             	lea    eax,[rbx+0x1]
  401ef0:	89 05 0e 25 20 00    	mov    DWORD PTR [rip+0x20250e],eax        # 604404 <error+0x202fb2>
  401ef6:	8b 55 cc             	mov    edx,DWORD PTR [rbp-0x34]
  401ef9:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  401efd:	89 d6                	mov    esi,edx
  401eff:	48 89 c7             	mov    rdi,rax
  401f02:	e8 94 f4 ff ff       	call   40139b <socket@plt+0x27b>
  401f07:	48 89 c2             	mov    rdx,rax
  401f0a:	48 63 c3             	movsxd rax,ebx
  401f0d:	48 89 14 c5 40 48 60 	mov    QWORD PTR [rax*8+0x604840],rdx
  401f14:	00 
  401f15:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
  401f19:	8b 00                	mov    eax,DWORD PTR [rax]
  401f1b:	be 64 32 40 00       	mov    esi,0x403264
  401f20:	89 c7                	mov    edi,eax
  401f22:	e8 d1 f5 ff ff       	call   4014f8 <error+0xa6>
  401f27:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
  401f2b:	48 89 c7             	mov    rdi,rax
  401f2e:	e8 ac 04 00 00       	call   4023df <error+0xf8d>
  401f33:	48 83 c4 48          	add    rsp,0x48
  401f37:	5b                   	pop    rbx
  401f38:	5d                   	pop    rbp
  401f39:	c3                   	ret    
  401f3a:	55                   	push   rbp
  401f3b:	48 89 e5             	mov    rbp,rsp
  401f3e:	48 83 ec 20          	sub    rsp,0x20
  401f42:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
  401f46:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  401f4a:	48 8b 40 18          	mov    rax,QWORD PTR [rax+0x18]
  401f4e:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  401f52:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  401f56:	8b 00                	mov    eax,DWORD PTR [rax]
  401f58:	be 78 32 40 00       	mov    esi,0x403278
  401f5d:	89 c7                	mov    edi,eax
  401f5f:	e8 94 f5 ff ff       	call   4014f8 <error+0xa6>
  401f64:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  401f68:	48 8d 90 c0 00 00 00 	lea    rdx,[rax+0xc0]
  401f6f:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  401f73:	48 89 c6             	mov    rsi,rax
  401f76:	48 89 d7             	mov    rdi,rdx
  401f79:	e8 22 ef ff ff       	call   400ea0 <strcpy@plt>
  401f7e:	c9                   	leave  
  401f7f:	c3                   	ret    
  401f80:	55                   	push   rbp
  401f81:	48 89 e5             	mov    rbp,rsp
  401f84:	48 83 ec 30          	sub    rsp,0x30
  401f88:	48 89 7d d8          	mov    QWORD PTR [rbp-0x28],rdi
  401f8c:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  401f93:	00 00 
  401f95:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  401f99:	31 c0                	xor    eax,eax
  401f9b:	48 b8 55 4e 49 58 20 	movabs rax,0x7079542058494e55
  401fa2:	54 79 70 
  401fa5:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
  401fa9:	48 b8 65 3a 20 4c 38 	movabs rax,0xa0d384c203a65
  401fb0:	0d 0a 00 
  401fb3:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
  401fb7:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  401fbb:	8b 00                	mov    eax,DWORD PTR [rax]
  401fbd:	48 8d 55 e0          	lea    rdx,[rbp-0x20]
  401fc1:	48 89 d6             	mov    rsi,rdx
  401fc4:	89 c7                	mov    edi,eax
  401fc6:	e8 2d f5 ff ff       	call   4014f8 <error+0xa6>
  401fcb:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  401fcf:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
  401fd6:	00 00 
  401fd8:	74 05                	je     401fdf <error+0xb8d>
  401fda:	e8 21 ef ff ff       	call   400f00 <__stack_chk_fail@plt>
  401fdf:	c9                   	leave  
  401fe0:	c3                   	ret    
  401fe1:	55                   	push   rbp
  401fe2:	48 89 e5             	mov    rbp,rsp
  401fe5:	48 83 ec 30          	sub    rsp,0x30
  401fe9:	48 89 7d d8          	mov    QWORD PTR [rbp-0x28],rdi
  401fed:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  401ff4:	00 00 
  401ff6:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  401ffa:	31 c0                	xor    eax,eax
  401ffc:	48 b8 4e 4f 4f 50 20 	movabs rax,0xd6b6f20504f4f4e
  402003:	6f 6b 0d 
  402006:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
  40200a:	66 c7 45 e8 0a 00    	mov    WORD PTR [rbp-0x18],0xa
  402010:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  402014:	8b 00                	mov    eax,DWORD PTR [rax]
  402016:	48 8d 55 e0          	lea    rdx,[rbp-0x20]
  40201a:	48 89 d6             	mov    rsi,rdx
  40201d:	89 c7                	mov    edi,eax
  40201f:	e8 d4 f4 ff ff       	call   4014f8 <error+0xa6>
  402024:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  402028:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
  40202f:	00 00 
  402031:	74 05                	je     402038 <error+0xbe6>
  402033:	e8 c8 ee ff ff       	call   400f00 <__stack_chk_fail@plt>
  402038:	c9                   	leave  
  402039:	c3                   	ret    
  40203a:	55                   	push   rbp
  40203b:	48 89 e5             	mov    rbp,rsp
  40203e:	48 81 ec c0 00 00 00 	sub    rsp,0xc0
  402045:	48 89 bd 48 ff ff ff 	mov    QWORD PTR [rbp-0xb8],rdi
  40204c:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  402053:	00 00 
  402055:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  402059:	31 c0                	xor    eax,eax
  40205b:	48 8b 85 48 ff ff ff 	mov    rax,QWORD PTR [rbp-0xb8]
  402062:	48 8b 50 18          	mov    rdx,QWORD PTR [rax+0x18]
  402066:	48 8b 85 48 ff ff ff 	mov    rax,QWORD PTR [rbp-0xb8]
  40206d:	48 89 d6             	mov    rsi,rdx
  402070:	48 89 c7             	mov    rdi,rax
  402073:	e8 8b f9 ff ff       	call   401a03 <error+0x5b1>
  402078:	48 89 85 58 ff ff ff 	mov    QWORD PTR [rbp-0xa8],rax
  40207f:	48 8d 95 60 ff ff ff 	lea    rdx,[rbp-0xa0]
  402086:	48 8b 85 58 ff ff ff 	mov    rax,QWORD PTR [rbp-0xa8]
  40208d:	48 89 d6             	mov    rsi,rdx
  402090:	48 89 c7             	mov    rdi,rax
  402093:	e8 b8 0e 00 00       	call   402f50 <error+0x1afe>
  402098:	83 f8 ff             	cmp    eax,0xffffffff
  40209b:	75 17                	jne    4020b4 <error+0xc62>
  40209d:	48 8b 85 48 ff ff ff 	mov    rax,QWORD PTR [rbp-0xb8]
  4020a4:	8b 00                	mov    eax,DWORD PTR [rax]
  4020a6:	be 98 32 40 00       	mov    esi,0x403298
  4020ab:	89 c7                	mov    edi,eax
  4020ad:	e8 46 f4 ff ff       	call   4014f8 <error+0xa6>
  4020b2:	eb 3a                	jmp    4020ee <error+0xc9c>
  4020b4:	48 8b 45 90          	mov    rax,QWORD PTR [rbp-0x70]
  4020b8:	48 89 c2             	mov    rdx,rax
  4020bb:	48 8b 85 58 ff ff ff 	mov    rax,QWORD PTR [rbp-0xa8]
  4020c2:	be b5 32 40 00       	mov    esi,0x4032b5
  4020c7:	48 89 c7             	mov    rdi,rax
  4020ca:	b8 00 00 00 00       	mov    eax,0x0
  4020cf:	e8 0c f0 ff ff       	call   4010e0 <sprintf@plt>
  4020d4:	48 8b 85 48 ff ff ff 	mov    rax,QWORD PTR [rbp-0xb8]
  4020db:	8b 00                	mov    eax,DWORD PTR [rax]
  4020dd:	48 8b 95 58 ff ff ff 	mov    rdx,QWORD PTR [rbp-0xa8]
  4020e4:	48 89 d6             	mov    rsi,rdx
  4020e7:	89 c7                	mov    edi,eax
  4020e9:	e8 0a f4 ff ff       	call   4014f8 <error+0xa6>
  4020ee:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4020f2:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
  4020f9:	00 00 
  4020fb:	74 05                	je     402102 <error+0xcb0>
  4020fd:	e8 fe ed ff ff       	call   400f00 <__stack_chk_fail@plt>
  402102:	c9                   	leave  
  402103:	c3                   	ret    
  402104:	55                   	push   rbp
  402105:	48 89 e5             	mov    rbp,rsp
  402108:	48 83 ec 50          	sub    rsp,0x50
  40210c:	48 89 7d b8          	mov    QWORD PTR [rbp-0x48],rdi
  402110:	c7 45 c4 00 00 00 00 	mov    DWORD PTR [rbp-0x3c],0x0
  402117:	48 c7 45 e0 00 00 00 	mov    QWORD PTR [rbp-0x20],0x0
  40211e:	00 
  40211f:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
  402123:	48 8b 50 18          	mov    rdx,QWORD PTR [rax+0x18]
  402127:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
  40212b:	48 89 d6             	mov    rsi,rdx
  40212e:	48 89 c7             	mov    rdi,rax
  402131:	e8 cd f8 ff ff       	call   401a03 <error+0x5b1>
  402136:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
  40213a:	48 c7 45 f0 00 04 00 	mov    QWORD PTR [rbp-0x10],0x400
  402141:	00 
  402142:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  402146:	48 89 45 d0          	mov    QWORD PTR [rbp-0x30],rax
  40214a:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
  40214e:	48 89 c7             	mov    rdi,rax
  402151:	e8 9a ed ff ff       	call   400ef0 <strlen@plt>
  402156:	48 89 45 d8          	mov    QWORD PTR [rbp-0x28],rax
  40215a:	eb 05                	jmp    402161 <error+0xd0f>
  40215c:	48 83 45 d0 01       	add    QWORD PTR [rbp-0x30],0x1
  402161:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
  402165:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  402168:	0f be d0             	movsx  edx,al
  40216b:	8b 05 97 22 20 00    	mov    eax,DWORD PTR [rip+0x202297]        # 604408 <error+0x202fb6>
  402171:	39 c2                	cmp    edx,eax
  402173:	74 0c                	je     402181 <error+0xd2f>
  402175:	48 83 6d d8 01       	sub    QWORD PTR [rbp-0x28],0x1
  40217a:	48 83 7d d8 00       	cmp    QWORD PTR [rbp-0x28],0x0
  40217f:	75 db                	jne    40215c <error+0xd0a>
  402181:	48 83 45 d0 01       	add    QWORD PTR [rbp-0x30],0x1
  402186:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
  40218a:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  40218d:	84 c0                	test   al,al
  40218f:	74 17                	je     4021a8 <error+0xd56>
  402191:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
  402195:	8b 00                	mov    eax,DWORD PTR [rax]
  402197:	be bc 32 40 00       	mov    esi,0x4032bc
  40219c:	89 c7                	mov    edi,eax
  40219e:	e8 55 f3 ff ff       	call   4014f8 <error+0xa6>
  4021a3:	e9 87 01 00 00       	jmp    40232f <error+0xedd>
  4021a8:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  4021ac:	be d9 32 40 00       	mov    esi,0x4032d9
  4021b1:	48 89 c7             	mov    rdi,rax
  4021b4:	e8 f7 ee ff ff       	call   4010b0 <fopen@plt>
  4021b9:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
  4021bd:	48 83 7d e0 00       	cmp    QWORD PTR [rbp-0x20],0x0
  4021c2:	75 17                	jne    4021db <error+0xd89>
  4021c4:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
  4021c8:	8b 00                	mov    eax,DWORD PTR [rax]
  4021ca:	be dc 32 40 00       	mov    esi,0x4032dc
  4021cf:	89 c7                	mov    edi,eax
  4021d1:	e8 22 f3 ff ff       	call   4014f8 <error+0xa6>
  4021d6:	e9 54 01 00 00       	jmp    40232f <error+0xedd>
  4021db:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
  4021df:	48 89 c7             	mov    rdi,rax
  4021e2:	e8 4a 01 00 00       	call   402331 <error+0xedf>
  4021e7:	85 c0                	test   eax,eax
  4021e9:	79 23                	jns    40220e <error+0xdbc>
  4021eb:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  4021ef:	48 89 c7             	mov    rdi,rax
  4021f2:	e8 d9 ec ff ff       	call   400ed0 <fclose@plt>
  4021f7:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
  4021fb:	8b 00                	mov    eax,DWORD PTR [rax]
  4021fd:	be f8 32 40 00       	mov    esi,0x4032f8
  402202:	89 c7                	mov    edi,eax
  402204:	e8 ef f2 ff ff       	call   4014f8 <error+0xa6>
  402209:	e9 21 01 00 00       	jmp    40232f <error+0xedd>
  40220e:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
  402212:	8b 00                	mov    eax,DWORD PTR [rax]
  402214:	be 20 33 40 00       	mov    esi,0x403320
  402219:	89 c7                	mov    edi,eax
  40221b:	e8 d8 f2 ff ff       	call   4014f8 <error+0xa6>
  402220:	e9 8a 00 00 00       	jmp    4022af <error+0xe5d>
  402225:	48 8b 55 e0          	mov    rdx,QWORD PTR [rbp-0x20]
  402229:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  40222d:	48 89 d1             	mov    rcx,rdx
  402230:	48 89 c2             	mov    rdx,rax
  402233:	be 01 00 00 00       	mov    esi,0x1
  402238:	bf 00 42 60 00       	mov    edi,0x604200
  40223d:	e8 7e ec ff ff       	call   400ec0 <fread@plt>
  402242:	89 45 cc             	mov    DWORD PTR [rbp-0x34],eax
  402245:	c7 45 c8 00 00 00 00 	mov    DWORD PTR [rbp-0x38],0x0
  40224c:	eb 59                	jmp    4022a7 <error+0xe55>
  40224e:	8b 45 cc             	mov    eax,DWORD PTR [rbp-0x34]
  402251:	2b 45 c8             	sub    eax,DWORD PTR [rbp-0x38]
  402254:	48 63 d0             	movsxd rdx,eax
  402257:	8b 45 c8             	mov    eax,DWORD PTR [rbp-0x38]
  40225a:	48 98                	cdqe   
  40225c:	48 8d b0 00 42 60 00 	lea    rsi,[rax+0x604200]
  402263:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
  402267:	8b 40 04             	mov    eax,DWORD PTR [rax+0x4]
  40226a:	b9 00 00 00 00       	mov    ecx,0x0
  40226f:	89 c7                	mov    edi,eax
  402271:	e8 aa ec ff ff       	call   400f20 <send@plt>
  402276:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  40227a:	48 83 7d f8 ff       	cmp    QWORD PTR [rbp-0x8],0xffffffffffffffff
  40227f:	75 18                	jne    402299 <error+0xe47>
  402281:	bf 4a 33 40 00       	mov    edi,0x40334a
  402286:	b8 00 00 00 00       	mov    eax,0x0
  40228b:	e8 a0 ec ff ff       	call   400f30 <printf@plt>
  402290:	c7 45 c4 01 00 00 00 	mov    DWORD PTR [rbp-0x3c],0x1
  402297:	eb 16                	jmp    4022af <error+0xe5d>
  402299:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  40229d:	89 c2                	mov    edx,eax
  40229f:	8b 45 c8             	mov    eax,DWORD PTR [rbp-0x38]
  4022a2:	01 d0                	add    eax,edx
  4022a4:	89 45 c8             	mov    DWORD PTR [rbp-0x38],eax
  4022a7:	8b 45 c8             	mov    eax,DWORD PTR [rbp-0x38]
  4022aa:	3b 45 cc             	cmp    eax,DWORD PTR [rbp-0x34]
  4022ad:	7c 9f                	jl     40224e <error+0xdfc>
  4022af:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  4022b3:	48 89 c7             	mov    rdi,rax
  4022b6:	e8 35 ed ff ff       	call   400ff0 <feof@plt>
  4022bb:	85 c0                	test   eax,eax
  4022bd:	75 0a                	jne    4022c9 <error+0xe77>
  4022bf:	83 7d c4 00          	cmp    DWORD PTR [rbp-0x3c],0x0
  4022c3:	0f 84 5c ff ff ff    	je     402225 <error+0xdd3>
  4022c9:	83 7d c4 00          	cmp    DWORD PTR [rbp-0x3c],0x0
  4022cd:	74 14                	je     4022e3 <error+0xe91>
  4022cf:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
  4022d3:	8b 00                	mov    eax,DWORD PTR [rax]
  4022d5:	be 60 33 40 00       	mov    esi,0x403360
  4022da:	89 c7                	mov    edi,eax
  4022dc:	e8 17 f2 ff ff       	call   4014f8 <error+0xa6>
  4022e1:	eb 34                	jmp    402317 <error+0xec5>
  4022e3:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
  4022e7:	48 8b 50 18          	mov    rdx,QWORD PTR [rax+0x18]
  4022eb:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
  4022ef:	48 8b 40 20          	mov    rax,QWORD PTR [rax+0x20]
  4022f3:	48 89 c6             	mov    rsi,rax
  4022f6:	bf 96 33 40 00       	mov    edi,0x403396
  4022fb:	b8 00 00 00 00       	mov    eax,0x0
  402300:	e8 2b ec ff ff       	call   400f30 <printf@plt>
  402305:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
  402309:	8b 00                	mov    eax,DWORD PTR [rax]
  40230b:	be b1 33 40 00       	mov    esi,0x4033b1
  402310:	89 c7                	mov    edi,eax
  402312:	e8 e1 f1 ff ff       	call   4014f8 <error+0xa6>
  402317:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
  40231b:	48 89 c7             	mov    rdi,rax
  40231e:	e8 bc 00 00 00       	call   4023df <error+0xf8d>
  402323:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  402327:	48 89 c7             	mov    rdi,rax
  40232a:	e8 a1 eb ff ff       	call   400ed0 <fclose@plt>
  40232f:	c9                   	leave  
  402330:	c3                   	ret    
  402331:	55                   	push   rbp
  402332:	48 89 e5             	mov    rbp,rsp
  402335:	48 83 ec 40          	sub    rsp,0x40
  402339:	48 89 7d c8          	mov    QWORD PTR [rbp-0x38],rdi
  40233d:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  402344:	00 00 
  402346:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  40234a:	31 c0                	xor    eax,eax
  40234c:	c7 45 dc 10 00 00 00 	mov    DWORD PTR [rbp-0x24],0x10
  402353:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
  402357:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
  40235a:	85 c0                	test   eax,eax
  40235c:	7e 29                	jle    402387 <error+0xf35>
  40235e:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
  402362:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
  402365:	48 8d 55 dc          	lea    rdx,[rbp-0x24]
  402369:	48 8d 4d e0          	lea    rcx,[rbp-0x20]
  40236d:	48 89 ce             	mov    rsi,rcx
  402370:	89 c7                	mov    edi,eax
  402372:	e8 59 ed ff ff       	call   4010d0 <accept@plt>
  402377:	89 c2                	mov    edx,eax
  402379:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
  40237d:	89 50 04             	mov    DWORD PTR [rax+0x4],edx
  402380:	b8 01 00 00 00       	mov    eax,0x1
  402385:	eb 42                	jmp    4023c9 <error+0xf77>
  402387:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
  40238b:	0f b6 40 30          	movzx  eax,BYTE PTR [rax+0x30]
  40238f:	84 c0                	test   al,al
  402391:	74 19                	je     4023ac <error+0xf5a>
  402393:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
  402397:	8b 00                	mov    eax,DWORD PTR [rax]
  402399:	be ca 33 40 00       	mov    esi,0x4033ca
  40239e:	89 c7                	mov    edi,eax
  4023a0:	e8 53 f1 ff ff       	call   4014f8 <error+0xa6>
  4023a5:	b8 ff ff ff ff       	mov    eax,0xffffffff
  4023aa:	eb 1d                	jmp    4023c9 <error+0xf77>
  4023ac:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
  4023b0:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
  4023b3:	89 c6                	mov    esi,eax
  4023b5:	bf e6 33 40 00       	mov    edi,0x4033e6
  4023ba:	b8 00 00 00 00       	mov    eax,0x0
  4023bf:	e8 6c eb ff ff       	call   400f30 <printf@plt>
  4023c4:	b8 ff ff ff ff       	mov    eax,0xffffffff
  4023c9:	48 8b 4d f8          	mov    rcx,QWORD PTR [rbp-0x8]
  4023cd:	64 48 33 0c 25 28 00 	xor    rcx,QWORD PTR fs:0x28
  4023d4:	00 00 
  4023d6:	74 05                	je     4023dd <error+0xf8b>
  4023d8:	e8 23 eb ff ff       	call   400f00 <__stack_chk_fail@plt>
  4023dd:	c9                   	leave  
  4023de:	c3                   	ret    
  4023df:	55                   	push   rbp
  4023e0:	48 89 e5             	mov    rbp,rsp
  4023e3:	48 83 ec 10          	sub    rsp,0x10
  4023e7:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  4023eb:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4023ef:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
  4023f2:	85 c0                	test   eax,eax
  4023f4:	7e 19                	jle    40240f <error+0xfbd>
  4023f6:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4023fa:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
  4023fd:	89 c7                	mov    edi,eax
  4023ff:	e8 8c eb ff ff       	call   400f90 <close@plt>
  402404:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  402408:	c7 40 08 ff ff ff ff 	mov    DWORD PTR [rax+0x8],0xffffffff
  40240f:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  402413:	8b 40 04             	mov    eax,DWORD PTR [rax+0x4]
  402416:	85 c0                	test   eax,eax
  402418:	7e 19                	jle    402433 <error+0xfe1>
  40241a:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  40241e:	8b 40 04             	mov    eax,DWORD PTR [rax+0x4]
  402421:	89 c7                	mov    edi,eax
  402423:	e8 68 eb ff ff       	call   400f90 <close@plt>
  402428:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  40242c:	c7 40 04 ff ff ff ff 	mov    DWORD PTR [rax+0x4],0xffffffff
  402433:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  402437:	0f b6 40 30          	movzx  eax,BYTE PTR [rax+0x30]
  40243b:	84 c0                	test   al,al
  40243d:	74 17                	je     402456 <error+0x1004>
  40243f:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  402443:	c6 40 30 00          	mov    BYTE PTR [rax+0x30],0x0
  402447:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  40244b:	48 c7 80 b0 00 00 00 	mov    QWORD PTR [rax+0xb0],0x0
  402452:	00 00 00 00 
  402456:	b8 00 00 00 00       	mov    eax,0x0
  40245b:	c9                   	leave  
  40245c:	c3                   	ret    
  40245d:	55                   	push   rbp
  40245e:	48 89 e5             	mov    rbp,rsp
  402461:	48 81 ec c0 00 00 00 	sub    rsp,0xc0
  402468:	48 89 bd 48 ff ff ff 	mov    QWORD PTR [rbp-0xb8],rdi
  40246f:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  402476:	00 00 
  402478:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  40247c:	31 c0                	xor    eax,eax
  40247e:	48 8b 85 48 ff ff ff 	mov    rax,QWORD PTR [rbp-0xb8]
  402485:	48 89 c7             	mov    rdi,rax
  402488:	e8 52 ff ff ff       	call   4023df <error+0xf8d>
  40248d:	be e8 fd 00 00       	mov    esi,0xfde8
  402492:	bf 18 f6 00 00       	mov    edi,0xf618
  402497:	e8 57 ef ff ff       	call   4013f3 <socket@plt+0x2d3>
  40249c:	89 85 5c ff ff ff    	mov    DWORD PTR [rbp-0xa4],eax
  4024a2:	48 8b 85 48 ff ff ff 	mov    rax,QWORD PTR [rbp-0xb8]
  4024a9:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
  4024ac:	85 c0                	test   eax,eax
  4024ae:	7e 11                	jle    4024c1 <error+0x106f>
  4024b0:	48 8b 85 48 ff ff ff 	mov    rax,QWORD PTR [rbp-0xb8]
  4024b7:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
  4024ba:	89 c7                	mov    edi,eax
  4024bc:	e8 cf ea ff ff       	call   400f90 <close@plt>
  4024c1:	48 8b 85 48 ff ff ff 	mov    rax,QWORD PTR [rbp-0xb8]
  4024c8:	c7 40 08 63 00 00 00 	mov    DWORD PTR [rax+0x8],0x63
  4024cf:	ba 00 00 00 00       	mov    edx,0x0
  4024d4:	be 01 00 00 00       	mov    esi,0x1
  4024d9:	bf 02 00 00 00       	mov    edi,0x2
  4024de:	e8 3d ec ff ff       	call   401120 <socket@plt>
  4024e3:	89 c2                	mov    edx,eax
  4024e5:	48 8b 85 48 ff ff ff 	mov    rax,QWORD PTR [rbp-0xb8]
  4024ec:	89 50 08             	mov    DWORD PTR [rax+0x8],edx
  4024ef:	48 8b 85 48 ff ff ff 	mov    rax,QWORD PTR [rbp-0xb8]
  4024f6:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
  4024f9:	83 f8 ff             	cmp    eax,0xffffffff
  4024fc:	75 14                	jne    402512 <error+0x10c0>
  4024fe:	bf fb 33 40 00       	mov    edi,0x4033fb
  402503:	b8 00 00 00 00       	mov    eax,0x0
  402508:	e8 23 ea ff ff       	call   400f30 <printf@plt>
  40250d:	e9 d0 00 00 00       	jmp    4025e2 <error+0x1190>
  402512:	8b 85 5c ff ff ff    	mov    eax,DWORD PTR [rbp-0xa4]
  402518:	0f b7 c0             	movzx  eax,ax
  40251b:	89 c7                	mov    edi,eax
  40251d:	e8 ee e9 ff ff       	call   400f10 <htons@plt>
  402522:	66 89 85 62 ff ff ff 	mov    WORD PTR [rbp-0x9e],ax
  402529:	c7 85 64 ff ff ff 00 	mov    DWORD PTR [rbp-0x9c],0x0
  402530:	00 00 00 
  402533:	c7 85 64 ff ff ff 00 	mov    DWORD PTR [rbp-0x9c],0x0
  40253a:	00 00 00 
  40253d:	66 c7 85 60 ff ff ff 	mov    WORD PTR [rbp-0xa0],0x2
  402544:	02 00 
  402546:	48 8b 85 48 ff ff ff 	mov    rax,QWORD PTR [rbp-0xb8]
  40254d:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
  402550:	48 8d 8d 60 ff ff ff 	lea    rcx,[rbp-0xa0]
  402557:	ba 10 00 00 00       	mov    edx,0x10
  40255c:	48 89 ce             	mov    rsi,rcx
  40255f:	89 c7                	mov    edi,eax
  402561:	e8 2a eb ff ff       	call   401090 <bind@plt>
  402566:	83 f8 ff             	cmp    eax,0xffffffff
  402569:	75 11                	jne    40257c <error+0x112a>
  40256b:	bf 10 34 40 00       	mov    edi,0x403410
  402570:	b8 00 00 00 00       	mov    eax,0x0
  402575:	e8 b6 e9 ff ff       	call   400f30 <printf@plt>
  40257a:	eb 66                	jmp    4025e2 <error+0x1190>
  40257c:	48 8b 85 48 ff ff ff 	mov    rax,QWORD PTR [rbp-0xb8]
  402583:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
  402586:	be 01 00 00 00       	mov    esi,0x1
  40258b:	89 c7                	mov    edi,eax
  40258d:	e8 ee ea ff ff       	call   401080 <listen@plt>
  402592:	85 c0                	test   eax,eax
  402594:	79 0c                	jns    4025a2 <error+0x1150>
  402596:	bf 25 34 40 00       	mov    edi,0x403425
  40259b:	e8 10 e9 ff ff       	call   400eb0 <puts@plt>
  4025a0:	eb 40                	jmp    4025e2 <error+0x1190>
  4025a2:	8b 95 5c ff ff ff    	mov    edx,DWORD PTR [rbp-0xa4]
  4025a8:	48 8d 85 70 ff ff ff 	lea    rax,[rbp-0x90]
  4025af:	89 d1                	mov    ecx,edx
  4025b1:	ba 38 34 40 00       	mov    edx,0x403438
  4025b6:	be 80 00 00 00       	mov    esi,0x80
  4025bb:	48 89 c7             	mov    rdi,rax
  4025be:	b8 00 00 00 00       	mov    eax,0x0
  4025c3:	e8 78 e9 ff ff       	call   400f40 <snprintf@plt>
  4025c8:	48 8b 85 48 ff ff ff 	mov    rax,QWORD PTR [rbp-0xb8]
  4025cf:	8b 00                	mov    eax,DWORD PTR [rax]
  4025d1:	48 8d 95 70 ff ff ff 	lea    rdx,[rbp-0x90]
  4025d8:	48 89 d6             	mov    rsi,rdx
  4025db:	89 c7                	mov    edi,eax
  4025dd:	e8 16 ef ff ff       	call   4014f8 <error+0xa6>
  4025e2:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4025e6:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
  4025ed:	00 00 
  4025ef:	74 05                	je     4025f6 <error+0x11a4>
  4025f1:	e8 0a e9 ff ff       	call   400f00 <__stack_chk_fail@plt>
  4025f6:	c9                   	leave  
  4025f7:	c3                   	ret    
  4025f8:	55                   	push   rbp
  4025f9:	48 89 e5             	mov    rbp,rsp
  4025fc:	48 83 ec 20          	sub    rsp,0x20
  402600:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
  402604:	bf 28 00 00 00       	mov    edi,0x28
  402609:	e8 42 ea ff ff       	call   401050 <malloc@plt>
  40260e:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
  402612:	be 5e 34 40 00       	mov    esi,0x40345e
  402617:	bf 60 34 40 00       	mov    edi,0x403460
  40261c:	e8 8f ea ff ff       	call   4010b0 <fopen@plt>
  402621:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  402625:	48 83 7d f8 00       	cmp    QWORD PTR [rbp-0x8],0x0
  40262a:	75 14                	jne    402640 <error+0x11ee>
  40262c:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  402630:	8b 00                	mov    eax,DWORD PTR [rax]
  402632:	be 70 34 40 00       	mov    esi,0x403470
  402637:	89 c7                	mov    edi,eax
  402639:	e8 ba ee ff ff       	call   4014f8 <error+0xa6>
  40263e:	eb 31                	jmp    402671 <error+0x121f>
  402640:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
  402644:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402648:	48 89 d1             	mov    rcx,rdx
  40264b:	ba 01 00 00 00       	mov    edx,0x1
  402650:	be 28 00 00 00       	mov    esi,0x28
  402655:	48 89 c7             	mov    rdi,rax
  402658:	e8 63 e8 ff ff       	call   400ec0 <fread@plt>
  40265d:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  402661:	8b 00                	mov    eax,DWORD PTR [rax]
  402663:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
  402667:	48 89 d6             	mov    rsi,rdx
  40266a:	89 c7                	mov    edi,eax
  40266c:	e8 87 ee ff ff       	call   4014f8 <error+0xa6>
  402671:	c9                   	leave  
  402672:	c3                   	ret    
  402673:	55                   	push   rbp
  402674:	48 89 e5             	mov    rbp,rsp
  402677:	48 81 ec 90 09 00 00 	sub    rsp,0x990
  40267e:	89 bd 7c f6 ff ff    	mov    DWORD PTR [rbp-0x984],edi
  402684:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  40268b:	00 00 
  40268d:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  402691:	31 c0                	xor    eax,eax
  402693:	bf 41 00 00 00       	mov    edi,0x41
  402698:	e8 e3 e8 ff ff       	call   400f80 <alarm@plt>
  40269d:	bf 00 00 00 00       	mov    edi,0x0
  4026a2:	e8 69 e9 ff ff       	call   401010 <time@plt>
  4026a7:	89 c7                	mov    edi,eax
  4026a9:	e8 12 e9 ff ff       	call   400fc0 <srand@plt>
  4026ae:	48 8d 85 a0 f6 ff ff 	lea    rax,[rbp-0x960]
  4026b5:	ba c8 04 00 00       	mov    edx,0x4c8
  4026ba:	be 00 00 00 00       	mov    esi,0x0
  4026bf:	48 89 c7             	mov    rdi,rax
  4026c2:	e8 89 e8 ff ff       	call   400f50 <memset@plt>
  4026c7:	8b 85 7c f6 ff ff    	mov    eax,DWORD PTR [rbp-0x984]
  4026cd:	89 85 a0 f6 ff ff    	mov    DWORD PTR [rbp-0x960],eax
  4026d3:	48 8d 85 f0 fb ff ff 	lea    rax,[rbp-0x410]
  4026da:	be 00 04 00 00       	mov    esi,0x400
  4026df:	48 89 c7             	mov    rdi,rax
  4026e2:	e8 79 e8 ff ff       	call   400f60 <getcwd@plt>
  4026e7:	48 85 c0             	test   rax,rax
  4026ea:	74 22                	je     40270e <error+0x12bc>
  4026ec:	48 8d 85 f0 fb ff ff 	lea    rax,[rbp-0x410]
  4026f3:	48 8d 95 a0 f6 ff ff 	lea    rdx,[rbp-0x960]
  4026fa:	48 81 c2 c0 00 00 00 	add    rdx,0xc0
  402701:	48 89 c6             	mov    rsi,rax
  402704:	48 89 d7             	mov    rdi,rdx
  402707:	e8 94 e7 ff ff       	call   400ea0 <strcpy@plt>
  40270c:	eb 0a                	jmp    402718 <error+0x12c6>
  40270e:	bf a2 34 40 00       	mov    edi,0x4034a2
  402713:	e8 3a ed ff ff       	call   401452 <error>
  402718:	48 8b 15 89 1a 20 00 	mov    rdx,QWORD PTR [rip+0x201a89]        # 6041a8 <error+0x202d56>
  40271f:	8b 85 7c f6 ff ff    	mov    eax,DWORD PTR [rbp-0x984]
  402725:	48 89 d6             	mov    rsi,rdx
  402728:	89 c7                	mov    edi,eax
  40272a:	e8 c9 ed ff ff       	call   4014f8 <error+0xa6>
  40272f:	48 8d 85 70 fb ff ff 	lea    rax,[rbp-0x490]
  402736:	ba 80 00 00 00       	mov    edx,0x80
  40273b:	be 00 00 00 00       	mov    esi,0x0
  402740:	48 89 c7             	mov    rdi,rax
  402743:	e8 08 e8 ff ff       	call   400f50 <memset@plt>
  402748:	8b 85 7c f6 ff ff    	mov    eax,DWORD PTR [rbp-0x984]
  40274e:	89 c7                	mov    edi,eax
  402750:	e8 30 ed ff ff       	call   401485 <error+0x33>
  402755:	48 89 85 90 f6 ff ff 	mov    QWORD PTR [rbp-0x970],rax
  40275c:	48 8b 85 90 f6 ff ff 	mov    rax,QWORD PTR [rbp-0x970]
  402763:	48 89 85 98 f6 ff ff 	mov    QWORD PTR [rbp-0x968],rax
  40276a:	48 8b 85 90 f6 ff ff 	mov    rax,QWORD PTR [rbp-0x970]
  402771:	48 89 c7             	mov    rdi,rax
  402774:	e8 77 e7 ff ff       	call   400ef0 <strlen@plt>
  402779:	89 85 8c f6 ff ff    	mov    DWORD PTR [rbp-0x974],eax
  40277f:	c7 85 88 f6 ff ff 00 	mov    DWORD PTR [rbp-0x978],0x0
  402786:	00 00 00 
  402789:	eb 2b                	jmp    4027b6 <error+0x1364>
  40278b:	48 8b 85 90 f6 ff ff 	mov    rax,QWORD PTR [rbp-0x970]
  402792:	48 8d 50 01          	lea    rdx,[rax+0x1]
  402796:	48 89 95 90 f6 ff ff 	mov    QWORD PTR [rbp-0x970],rdx
  40279d:	0f b6 10             	movzx  edx,BYTE PTR [rax]
  4027a0:	8b 85 88 f6 ff ff    	mov    eax,DWORD PTR [rbp-0x978]
  4027a6:	48 98                	cdqe   
  4027a8:	88 94 05 70 fb ff ff 	mov    BYTE PTR [rbp+rax*1-0x490],dl
  4027af:	83 85 88 f6 ff ff 01 	add    DWORD PTR [rbp-0x978],0x1
  4027b6:	48 8b 85 90 f6 ff ff 	mov    rax,QWORD PTR [rbp-0x970]
  4027bd:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  4027c0:	3c 20                	cmp    al,0x20
  4027c2:	74 11                	je     4027d5 <error+0x1383>
  4027c4:	8b 85 8c f6 ff ff    	mov    eax,DWORD PTR [rbp-0x974]
  4027ca:	83 e8 01             	sub    eax,0x1
  4027cd:	3b 85 88 f6 ff ff    	cmp    eax,DWORD PTR [rbp-0x978]
  4027d3:	7d b6                	jge    40278b <error+0x1339>
  4027d5:	48 8b 85 90 f6 ff ff 	mov    rax,QWORD PTR [rbp-0x970]
  4027dc:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  4027df:	3c 20                	cmp    al,0x20
  4027e1:	75 08                	jne    4027eb <error+0x1399>
  4027e3:	48 83 85 90 f6 ff ff 	add    QWORD PTR [rbp-0x970],0x1
  4027ea:	01 
  4027eb:	48 8b 85 90 f6 ff ff 	mov    rax,QWORD PTR [rbp-0x970]
  4027f2:	48 89 c7             	mov    rdi,rax
  4027f5:	e8 f6 e6 ff ff       	call   400ef0 <strlen@plt>
  4027fa:	48 8d 50 ff          	lea    rdx,[rax-0x1]
  4027fe:	48 8b 85 90 f6 ff ff 	mov    rax,QWORD PTR [rbp-0x970]
  402805:	48 01 d0             	add    rax,rdx
  402808:	c6 00 00             	mov    BYTE PTR [rax],0x0
  40280b:	48 8d 85 70 fb ff ff 	lea    rax,[rbp-0x490]
  402812:	ba 04 00 00 00       	mov    edx,0x4
  402817:	48 89 c6             	mov    rsi,rax
  40281a:	bf a6 34 40 00       	mov    edi,0x4034a6
  40281f:	e8 3c e8 ff ff       	call   401060 <strncasecmp@plt>
  402824:	85 c0                	test   eax,eax
  402826:	75 7b                	jne    4028a3 <error+0x1451>
  402828:	8b 85 60 fb ff ff    	mov    eax,DWORD PTR [rbp-0x4a0]
  40282e:	83 f8 01             	cmp    eax,0x1
  402831:	75 40                	jne    402873 <error+0x1421>
  402833:	8b 85 7c f6 ff ff    	mov    eax,DWORD PTR [rbp-0x984]
  402839:	be ab 34 40 00       	mov    esi,0x4034ab
  40283e:	89 c7                	mov    edi,eax
  402840:	e8 b3 ec ff ff       	call   4014f8 <error+0xa6>
  402845:	48 8b 95 c0 f6 ff ff 	mov    rdx,QWORD PTR [rbp-0x940]
  40284c:	8b 85 7c f6 ff ff    	mov    eax,DWORD PTR [rbp-0x984]
  402852:	48 89 d6             	mov    rsi,rdx
  402855:	89 c7                	mov    edi,eax
  402857:	e8 9c ec ff ff       	call   4014f8 <error+0xa6>
  40285c:	8b 85 7c f6 ff ff    	mov    eax,DWORD PTR [rbp-0x984]
  402862:	be 7f 30 40 00       	mov    esi,0x40307f
  402867:	89 c7                	mov    edi,eax
  402869:	e8 8a ec ff ff       	call   4014f8 <error+0xa6>
  40286e:	e9 92 04 00 00       	jmp    402d05 <error+0x18b3>
  402873:	48 8b 85 90 f6 ff ff 	mov    rax,QWORD PTR [rbp-0x970]
  40287a:	48 89 85 c0 f6 ff ff 	mov    QWORD PTR [rbp-0x940],rax
  402881:	48 8b 85 90 f6 ff ff 	mov    rax,QWORD PTR [rbp-0x970]
  402888:	48 89 85 b8 f6 ff ff 	mov    QWORD PTR [rbp-0x948],rax
  40288f:	48 8d 85 a0 f6 ff ff 	lea    rax,[rbp-0x960]
  402896:	48 89 c7             	mov    rdi,rax
  402899:	e8 fd ec ff ff       	call   40159b <error+0x149>
  40289e:	e9 62 04 00 00       	jmp    402d05 <error+0x18b3>
  4028a3:	48 8d 85 70 fb ff ff 	lea    rax,[rbp-0x490]
  4028aa:	ba 04 00 00 00       	mov    edx,0x4
  4028af:	48 89 c6             	mov    rsi,rax
  4028b2:	bf 81 30 40 00       	mov    edi,0x403081
  4028b7:	e8 a4 e7 ff ff       	call   401060 <strncasecmp@plt>
  4028bc:	85 c0                	test   eax,eax
  4028be:	75 17                	jne    4028d7 <error+0x1485>
  4028c0:	8b 85 7c f6 ff ff    	mov    eax,DWORD PTR [rbp-0x984]
  4028c6:	be c0 34 40 00       	mov    esi,0x4034c0
  4028cb:	89 c7                	mov    edi,eax
  4028cd:	e8 26 ec ff ff       	call   4014f8 <error+0xa6>
  4028d2:	e9 2e 04 00 00       	jmp    402d05 <error+0x18b3>
  4028d7:	48 8d 85 70 fb ff ff 	lea    rax,[rbp-0x490]
  4028de:	ba 04 00 00 00       	mov    edx,0x4
  4028e3:	48 89 c6             	mov    rsi,rax
  4028e6:	bf d1 34 40 00       	mov    edi,0x4034d1
  4028eb:	e8 70 e7 ff ff       	call   401060 <strncasecmp@plt>
  4028f0:	85 c0                	test   eax,eax
  4028f2:	75 1c                	jne    402910 <error+0x14be>
  4028f4:	48 8b 15 a5 18 20 00 	mov    rdx,QWORD PTR [rip+0x2018a5]        # 6041a0 <error+0x202d4e>
  4028fb:	8b 85 7c f6 ff ff    	mov    eax,DWORD PTR [rbp-0x984]
  402901:	48 89 d6             	mov    rsi,rdx
  402904:	89 c7                	mov    edi,eax
  402906:	e8 ed eb ff ff       	call   4014f8 <error+0xa6>
  40290b:	e9 f5 03 00 00       	jmp    402d05 <error+0x18b3>
  402910:	8b 85 60 fb ff ff    	mov    eax,DWORD PTR [rbp-0x4a0]
  402916:	85 c0                	test   eax,eax
  402918:	75 17                	jne    402931 <error+0x14df>
  40291a:	8b 85 7c f6 ff ff    	mov    eax,DWORD PTR [rbp-0x984]
  402920:	be d6 34 40 00       	mov    esi,0x4034d6
  402925:	89 c7                	mov    edi,eax
  402927:	e8 cc eb ff ff       	call   4014f8 <error+0xa6>
  40292c:	e9 d4 03 00 00       	jmp    402d05 <error+0x18b3>
  402931:	48 8d 85 70 fb ff ff 	lea    rax,[rbp-0x490]
  402938:	ba 04 00 00 00       	mov    edx,0x4
  40293d:	48 89 c6             	mov    rsi,rax
  402940:	bf ed 34 40 00       	mov    edi,0x4034ed
  402945:	e8 16 e7 ff ff       	call   401060 <strncasecmp@plt>
  40294a:	85 c0                	test   eax,eax
  40294c:	75 0f                	jne    40295d <error+0x150b>
  40294e:	c7 85 60 fb ff ff 00 	mov    DWORD PTR [rbp-0x4a0],0x0
  402955:	00 00 00 
  402958:	e9 a8 03 00 00       	jmp    402d05 <error+0x18b3>
  40295d:	48 8d 85 70 fb ff ff 	lea    rax,[rbp-0x490]
  402964:	ba 04 00 00 00       	mov    edx,0x4
  402969:	48 89 c6             	mov    rsi,rax
  40296c:	bf f2 34 40 00       	mov    edi,0x4034f2
  402971:	e8 ea e6 ff ff       	call   401060 <strncasecmp@plt>
  402976:	85 c0                	test   eax,eax
  402978:	75 30                	jne    4029aa <error+0x1558>
  40297a:	48 8d 85 70 fb ff ff 	lea    rax,[rbp-0x490]
  402981:	48 89 85 b0 f6 ff ff 	mov    QWORD PTR [rbp-0x950],rax
  402988:	48 8b 85 90 f6 ff ff 	mov    rax,QWORD PTR [rbp-0x970]
  40298f:	48 89 85 b8 f6 ff ff 	mov    QWORD PTR [rbp-0x948],rax
  402996:	48 8d 85 a0 f6 ff ff 	lea    rax,[rbp-0x960]
  40299d:	48 89 c7             	mov    rdi,rax
  4029a0:	e8 4a ee ff ff       	call   4017ef <error+0x39d>
  4029a5:	e9 5b 03 00 00       	jmp    402d05 <error+0x18b3>
  4029aa:	48 8d 85 70 fb ff ff 	lea    rax,[rbp-0x490]
  4029b1:	ba 04 00 00 00       	mov    edx,0x4
  4029b6:	48 89 c6             	mov    rsi,rax
  4029b9:	bf f7 34 40 00       	mov    edi,0x4034f7
  4029be:	e8 9d e6 ff ff       	call   401060 <strncasecmp@plt>
  4029c3:	85 c0                	test   eax,eax
  4029c5:	75 30                	jne    4029f7 <error+0x15a5>
  4029c7:	48 8d 85 70 fb ff ff 	lea    rax,[rbp-0x490]
  4029ce:	48 89 85 b0 f6 ff ff 	mov    QWORD PTR [rbp-0x950],rax
  4029d5:	48 8b 85 90 f6 ff ff 	mov    rax,QWORD PTR [rbp-0x970]
  4029dc:	48 89 85 b8 f6 ff ff 	mov    QWORD PTR [rbp-0x948],rax
  4029e3:	48 8d 85 a0 f6 ff ff 	lea    rax,[rbp-0x960]
  4029ea:	48 89 c7             	mov    rdi,rax
  4029ed:	e8 6b fa ff ff       	call   40245d <error+0x100b>
  4029f2:	e9 0e 03 00 00       	jmp    402d05 <error+0x18b3>
  4029f7:	48 8d 85 70 fb ff ff 	lea    rax,[rbp-0x490]
  4029fe:	ba 04 00 00 00       	mov    edx,0x4
  402a03:	48 89 c6             	mov    rsi,rax
  402a06:	bf fc 34 40 00       	mov    edi,0x4034fc
  402a0b:	e8 50 e6 ff ff       	call   401060 <strncasecmp@plt>
  402a10:	85 c0                	test   eax,eax
  402a12:	75 30                	jne    402a44 <error+0x15f2>
  402a14:	48 8d 85 70 fb ff ff 	lea    rax,[rbp-0x490]
  402a1b:	48 89 85 b0 f6 ff ff 	mov    QWORD PTR [rbp-0x950],rax
  402a22:	48 8b 85 90 f6 ff ff 	mov    rax,QWORD PTR [rbp-0x970]
  402a29:	48 89 85 b8 f6 ff ff 	mov    QWORD PTR [rbp-0x948],rax
  402a30:	48 8d 85 a0 f6 ff ff 	lea    rax,[rbp-0x960]
  402a37:	48 89 c7             	mov    rdi,rax
  402a3a:	e8 ba f3 ff ff       	call   401df9 <error+0x9a7>
  402a3f:	e9 c1 02 00 00       	jmp    402d05 <error+0x18b3>
  402a44:	48 8d 85 70 fb ff ff 	lea    rax,[rbp-0x490]
  402a4b:	ba 04 00 00 00       	mov    edx,0x4
  402a50:	48 89 c6             	mov    rsi,rax
  402a53:	bf 01 35 40 00       	mov    edi,0x403501
  402a58:	e8 03 e6 ff ff       	call   401060 <strncasecmp@plt>
  402a5d:	85 c0                	test   eax,eax
  402a5f:	75 30                	jne    402a91 <error+0x163f>
  402a61:	48 8d 85 70 fb ff ff 	lea    rax,[rbp-0x490]
  402a68:	48 89 85 b0 f6 ff ff 	mov    QWORD PTR [rbp-0x950],rax
  402a6f:	48 8b 85 90 f6 ff ff 	mov    rax,QWORD PTR [rbp-0x970]
  402a76:	48 89 85 b8 f6 ff ff 	mov    QWORD PTR [rbp-0x948],rax
  402a7d:	48 8d 85 a0 f6 ff ff 	lea    rax,[rbp-0x960]
  402a84:	48 89 c7             	mov    rdi,rax
  402a87:	e8 78 f6 ff ff       	call   402104 <error+0xcb2>
  402a8c:	e9 74 02 00 00       	jmp    402d05 <error+0x18b3>
  402a91:	48 8d 85 70 fb ff ff 	lea    rax,[rbp-0x490]
  402a98:	ba 04 00 00 00       	mov    edx,0x4
  402a9d:	48 89 c6             	mov    rsi,rax
  402aa0:	bf 06 35 40 00       	mov    edi,0x403506
  402aa5:	e8 b6 e5 ff ff       	call   401060 <strncasecmp@plt>
  402aaa:	85 c0                	test   eax,eax
  402aac:	75 30                	jne    402ade <error+0x168c>
  402aae:	48 8d 85 70 fb ff ff 	lea    rax,[rbp-0x490]
  402ab5:	48 89 85 b0 f6 ff ff 	mov    QWORD PTR [rbp-0x950],rax
  402abc:	48 8b 85 90 f6 ff ff 	mov    rax,QWORD PTR [rbp-0x970]
  402ac3:	48 89 85 b8 f6 ff ff 	mov    QWORD PTR [rbp-0x948],rax
  402aca:	48 8d 85 a0 f6 ff ff 	lea    rax,[rbp-0x960]
  402ad1:	48 89 c7             	mov    rdi,rax
  402ad4:	e8 ee ec ff ff       	call   4017c7 <error+0x375>
  402ad9:	e9 27 02 00 00       	jmp    402d05 <error+0x18b3>
  402ade:	48 8d 85 70 fb ff ff 	lea    rax,[rbp-0x490]
  402ae5:	ba 04 00 00 00       	mov    edx,0x4
  402aea:	48 89 c6             	mov    rsi,rax
  402aed:	bf 0b 35 40 00       	mov    edi,0x40350b
  402af2:	e8 69 e5 ff ff       	call   401060 <strncasecmp@plt>
  402af7:	85 c0                	test   eax,eax
  402af9:	75 30                	jne    402b2b <error+0x16d9>
  402afb:	48 8d 85 70 fb ff ff 	lea    rax,[rbp-0x490]
  402b02:	48 89 85 b0 f6 ff ff 	mov    QWORD PTR [rbp-0x950],rax
  402b09:	48 8b 85 90 f6 ff ff 	mov    rax,QWORD PTR [rbp-0x970]
  402b10:	48 89 85 b8 f6 ff ff 	mov    QWORD PTR [rbp-0x948],rax
  402b17:	48 8d 85 a0 f6 ff ff 	lea    rax,[rbp-0x960]
  402b1e:	48 89 c7             	mov    rdi,rax
  402b21:	e8 b1 ef ff ff       	call   401ad7 <error+0x685>
  402b26:	e9 da 01 00 00       	jmp    402d05 <error+0x18b3>
  402b2b:	48 8d 85 70 fb ff ff 	lea    rax,[rbp-0x490]
  402b32:	ba 04 00 00 00       	mov    edx,0x4
  402b37:	48 89 c6             	mov    rsi,rax
  402b3a:	bf 10 35 40 00       	mov    edi,0x403510
  402b3f:	e8 1c e5 ff ff       	call   401060 <strncasecmp@plt>
  402b44:	85 c0                	test   eax,eax
  402b46:	75 30                	jne    402b78 <error+0x1726>
  402b48:	48 8d 85 70 fb ff ff 	lea    rax,[rbp-0x490]
  402b4f:	48 89 85 b0 f6 ff ff 	mov    QWORD PTR [rbp-0x950],rax
  402b56:	48 8b 85 90 f6 ff ff 	mov    rax,QWORD PTR [rbp-0x970]
  402b5d:	48 89 85 b8 f6 ff ff 	mov    QWORD PTR [rbp-0x948],rax
  402b64:	48 8d 85 a0 f6 ff ff 	lea    rax,[rbp-0x960]
  402b6b:	48 89 c7             	mov    rdi,rax
  402b6e:	e8 0d f4 ff ff       	call   401f80 <error+0xb2e>
  402b73:	e9 8d 01 00 00       	jmp    402d05 <error+0x18b3>
  402b78:	48 8d 85 70 fb ff ff 	lea    rax,[rbp-0x490]
  402b7f:	ba 04 00 00 00       	mov    edx,0x4
  402b84:	48 89 c6             	mov    rsi,rax
  402b87:	bf 15 35 40 00       	mov    edi,0x403515
  402b8c:	e8 cf e4 ff ff       	call   401060 <strncasecmp@plt>
  402b91:	85 c0                	test   eax,eax
  402b93:	75 30                	jne    402bc5 <error+0x1773>
  402b95:	48 8d 85 70 fb ff ff 	lea    rax,[rbp-0x490]
  402b9c:	48 89 85 b0 f6 ff ff 	mov    QWORD PTR [rbp-0x950],rax
  402ba3:	48 8b 85 90 f6 ff ff 	mov    rax,QWORD PTR [rbp-0x970]
  402baa:	48 89 85 b8 f6 ff ff 	mov    QWORD PTR [rbp-0x948],rax
  402bb1:	48 8d 85 a0 f6 ff ff 	lea    rax,[rbp-0x960]
  402bb8:	48 89 c7             	mov    rdi,rax
  402bbb:	e8 7a f4 ff ff       	call   40203a <error+0xbe8>
  402bc0:	e9 40 01 00 00       	jmp    402d05 <error+0x18b3>
  402bc5:	48 8d 85 70 fb ff ff 	lea    rax,[rbp-0x490]
  402bcc:	ba 04 00 00 00       	mov    edx,0x4
  402bd1:	48 89 c6             	mov    rsi,rax
  402bd4:	bf 1a 35 40 00       	mov    edi,0x40351a
  402bd9:	e8 82 e4 ff ff       	call   401060 <strncasecmp@plt>
  402bde:	85 c0                	test   eax,eax
  402be0:	75 30                	jne    402c12 <error+0x17c0>
  402be2:	48 8d 85 70 fb ff ff 	lea    rax,[rbp-0x490]
  402be9:	48 89 85 b0 f6 ff ff 	mov    QWORD PTR [rbp-0x950],rax
  402bf0:	48 8b 85 90 f6 ff ff 	mov    rax,QWORD PTR [rbp-0x970]
  402bf7:	48 89 85 b8 f6 ff ff 	mov    QWORD PTR [rbp-0x948],rax
  402bfe:	48 8d 85 a0 f6 ff ff 	lea    rax,[rbp-0x960]
  402c05:	48 89 c7             	mov    rdi,rax
  402c08:	e8 d4 f3 ff ff       	call   401fe1 <error+0xb8f>
  402c0d:	e9 f3 00 00 00       	jmp    402d05 <error+0x18b3>
  402c12:	48 8d 85 70 fb ff ff 	lea    rax,[rbp-0x490]
  402c19:	ba 03 00 00 00       	mov    edx,0x3
  402c1e:	48 89 c6             	mov    rsi,rax
  402c21:	bf 1f 35 40 00       	mov    edi,0x40351f
  402c26:	e8 35 e4 ff ff       	call   401060 <strncasecmp@plt>
  402c2b:	85 c0                	test   eax,eax
  402c2d:	75 30                	jne    402c5f <error+0x180d>
  402c2f:	48 8d 85 70 fb ff ff 	lea    rax,[rbp-0x490]
  402c36:	48 89 85 b0 f6 ff ff 	mov    QWORD PTR [rbp-0x950],rax
  402c3d:	48 8b 85 90 f6 ff ff 	mov    rax,QWORD PTR [rbp-0x970]
  402c44:	48 89 85 b8 f6 ff ff 	mov    QWORD PTR [rbp-0x948],rax
  402c4b:	48 8d 85 a0 f6 ff ff 	lea    rax,[rbp-0x960]
  402c52:	48 89 c7             	mov    rdi,rax
  402c55:	e8 64 f1 ff ff       	call   401dbe <error+0x96c>
  402c5a:	e9 a6 00 00 00       	jmp    402d05 <error+0x18b3>
  402c5f:	48 8d 85 70 fb ff ff 	lea    rax,[rbp-0x490]
  402c66:	ba 03 00 00 00       	mov    edx,0x3
  402c6b:	48 89 c6             	mov    rsi,rax
  402c6e:	bf a2 34 40 00       	mov    edi,0x4034a2
  402c73:	e8 e8 e3 ff ff       	call   401060 <strncasecmp@plt>
  402c78:	85 c0                	test   eax,eax
  402c7a:	75 2d                	jne    402ca9 <error+0x1857>
  402c7c:	48 8d 85 70 fb ff ff 	lea    rax,[rbp-0x490]
  402c83:	48 89 85 b0 f6 ff ff 	mov    QWORD PTR [rbp-0x950],rax
  402c8a:	48 8b 85 90 f6 ff ff 	mov    rax,QWORD PTR [rbp-0x970]
  402c91:	48 89 85 b8 f6 ff ff 	mov    QWORD PTR [rbp-0x948],rax
  402c98:	48 8d 85 a0 f6 ff ff 	lea    rax,[rbp-0x960]
  402c9f:	48 89 c7             	mov    rdi,rax
  402ca2:	e8 93 f2 ff ff       	call   401f3a <error+0xae8>
  402ca7:	eb 5c                	jmp    402d05 <error+0x18b3>
  402ca9:	48 8d 85 70 fb ff ff 	lea    rax,[rbp-0x490]
  402cb0:	ba 03 00 00 00       	mov    edx,0x3
  402cb5:	48 89 c6             	mov    rsi,rax
  402cb8:	bf 23 35 40 00       	mov    edi,0x403523
  402cbd:	e8 9e e3 ff ff       	call   401060 <strncasecmp@plt>
  402cc2:	85 c0                	test   eax,eax
  402cc4:	75 2d                	jne    402cf3 <error+0x18a1>
  402cc6:	48 8d 85 70 fb ff ff 	lea    rax,[rbp-0x490]
  402ccd:	48 89 85 b0 f6 ff ff 	mov    QWORD PTR [rbp-0x950],rax
  402cd4:	48 8b 85 90 f6 ff ff 	mov    rax,QWORD PTR [rbp-0x970]
  402cdb:	48 89 85 b8 f6 ff ff 	mov    QWORD PTR [rbp-0x948],rax
  402ce2:	48 8d 85 a0 f6 ff ff 	lea    rax,[rbp-0x960]
  402ce9:	48 89 c7             	mov    rdi,rax
  402cec:	e8 07 f9 ff ff       	call   4025f8 <error+0x11a6>
  402cf1:	eb 12                	jmp    402d05 <error+0x18b3>
  402cf3:	8b 85 7c f6 ff ff    	mov    eax,DWORD PTR [rbp-0x984]
  402cf9:	be 27 35 40 00       	mov    esi,0x403527
  402cfe:	89 c7                	mov    edi,eax
  402d00:	e8 f3 e7 ff ff       	call   4014f8 <error+0xa6>
  402d05:	48 8b 85 98 f6 ff ff 	mov    rax,QWORD PTR [rbp-0x968]
  402d0c:	48 89 c7             	mov    rdi,rax
  402d0f:	e8 2c e1 ff ff       	call   400e40 <free@plt>
  402d14:	e9 16 fa ff ff       	jmp    40272f <error+0x12dd>
  402d19:	55                   	push   rbp
  402d1a:	48 89 e5             	mov    rbp,rsp
  402d1d:	48 83 ec 10          	sub    rsp,0x10
  402d21:	89 7d fc             	mov    DWORD PTR [rbp-0x4],edi
  402d24:	bf 01 00 00 00       	mov    edi,0x1
  402d29:	e8 c2 e3 ff ff       	call   4010f0 <exit@plt>
  402d2e:	55                   	push   rbp
  402d2f:	48 89 e5             	mov    rbp,rsp
  402d32:	48 83 ec 50          	sub    rsp,0x50
  402d36:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  402d3d:	00 00 
  402d3f:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  402d43:	31 c0                	xor    eax,eax
  402d45:	be 19 2d 40 00       	mov    esi,0x402d19
  402d4a:	bf 0e 00 00 00       	mov    edi,0xe
  402d4f:	e8 8c e2 ff ff       	call   400fe0 <signal@plt>
  402d54:	bf 3d 35 40 00       	mov    edi,0x40353d
  402d59:	e8 52 e1 ff ff       	call   400eb0 <puts@plt>
  402d5e:	ba 00 00 00 00       	mov    edx,0x0
  402d63:	be 01 00 00 00       	mov    esi,0x1
  402d68:	bf 02 00 00 00       	mov    edi,0x2
  402d6d:	e8 ae e3 ff ff       	call   401120 <socket@plt>
  402d72:	89 45 bc             	mov    DWORD PTR [rbp-0x44],eax
  402d75:	83 7d bc 00          	cmp    DWORD PTR [rbp-0x44],0x0
  402d79:	79 0a                	jns    402d85 <error+0x1933>
  402d7b:	bf 51 35 40 00       	mov    edi,0x403551
  402d80:	e8 cd e6 ff ff       	call   401452 <error>
  402d85:	bf 5e 35 40 00       	mov    edi,0x40355e
  402d8a:	e8 21 e1 ff ff       	call   400eb0 <puts@plt>
  402d8f:	48 8d 45 d0          	lea    rax,[rbp-0x30]
  402d93:	be 10 00 00 00       	mov    esi,0x10
  402d98:	48 89 c7             	mov    rdi,rax
  402d9b:	e8 20 e3 ff ff       	call   4010c0 <bzero@plt>
  402da0:	66 c7 45 d0 02 00    	mov    WORD PTR [rbp-0x30],0x2
  402da6:	bf ec 2e 00 00       	mov    edi,0x2eec
  402dab:	e8 60 e1 ff ff       	call   400f10 <htons@plt>
  402db0:	66 89 45 d2          	mov    WORD PTR [rbp-0x2e],ax
  402db4:	bf 00 00 00 00       	mov    edi,0x0
  402db9:	e8 52 e1 ff ff       	call   400f10 <htons@plt>
  402dbe:	0f b7 c0             	movzx  eax,ax
  402dc1:	89 45 d4             	mov    DWORD PTR [rbp-0x2c],eax
  402dc4:	48 8d 4d d0          	lea    rcx,[rbp-0x30]
  402dc8:	8b 45 bc             	mov    eax,DWORD PTR [rbp-0x44]
  402dcb:	ba 10 00 00 00       	mov    edx,0x10
  402dd0:	48 89 ce             	mov    rsi,rcx
  402dd3:	89 c7                	mov    edi,eax
  402dd5:	e8 b6 e2 ff ff       	call   401090 <bind@plt>
  402dda:	85 c0                	test   eax,eax
  402ddc:	79 0a                	jns    402de8 <error+0x1996>
  402dde:	bf 6a 35 40 00       	mov    edi,0x40356a
  402de3:	e8 6a e6 ff ff       	call   401452 <error>
  402de8:	bf 75 35 40 00       	mov    edi,0x403575
  402ded:	e8 be e0 ff ff       	call   400eb0 <puts@plt>
  402df2:	8b 45 bc             	mov    eax,DWORD PTR [rbp-0x44]
  402df5:	be 05 00 00 00       	mov    esi,0x5
  402dfa:	89 c7                	mov    edi,eax
  402dfc:	e8 7f e2 ff ff       	call   401080 <listen@plt>
  402e01:	85 c0                	test   eax,eax
  402e03:	79 0a                	jns    402e0f <error+0x19bd>
  402e05:	bf 83 35 40 00       	mov    edi,0x403583
  402e0a:	e8 43 e6 ff ff       	call   401452 <error>
  402e0f:	bf 90 35 40 00       	mov    edi,0x403590
  402e14:	e8 97 e0 ff ff       	call   400eb0 <puts@plt>
  402e19:	c7 45 b8 10 00 00 00 	mov    DWORD PTR [rbp-0x48],0x10
  402e20:	48 8d 55 b8          	lea    rdx,[rbp-0x48]
  402e24:	48 8d 4d e0          	lea    rcx,[rbp-0x20]
  402e28:	8b 45 bc             	mov    eax,DWORD PTR [rbp-0x44]
  402e2b:	48 89 ce             	mov    rsi,rcx
  402e2e:	89 c7                	mov    edi,eax
  402e30:	e8 9b e2 ff ff       	call   4010d0 <accept@plt>
  402e35:	89 45 c0             	mov    DWORD PTR [rbp-0x40],eax
  402e38:	83 7d c0 00          	cmp    DWORD PTR [rbp-0x40],0x0
  402e3c:	79 37                	jns    402e75 <error+0x1a23>
  402e3e:	bf 1e 00 00 00       	mov    edi,0x1e
  402e43:	e8 08 e2 ff ff       	call   401050 <malloc@plt>
  402e48:	48 89 45 c8          	mov    QWORD PTR [rbp-0x38],rax
  402e4c:	e8 1f e0 ff ff       	call   400e70 <__errno_location@plt>
  402e51:	8b 10                	mov    edx,DWORD PTR [rax]
  402e53:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
  402e57:	be a0 35 40 00       	mov    esi,0x4035a0
  402e5c:	48 89 c7             	mov    rdi,rax
  402e5f:	b8 00 00 00 00       	mov    eax,0x0
  402e64:	e8 77 e2 ff ff       	call   4010e0 <sprintf@plt>
  402e69:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
  402e6d:	48 89 c7             	mov    rdi,rax
  402e70:	e8 dd e5 ff ff       	call   401452 <error>
  402e75:	8b 45 c0             	mov    eax,DWORD PTR [rbp-0x40]
  402e78:	89 c6                	mov    esi,eax
  402e7a:	bf b1 35 40 00       	mov    edi,0x4035b1
  402e7f:	b8 00 00 00 00       	mov    eax,0x0
  402e84:	e8 a7 e0 ff ff       	call   400f30 <printf@plt>
  402e89:	e8 72 e2 ff ff       	call   401100 <fork@plt>
  402e8e:	89 45 c4             	mov    DWORD PTR [rbp-0x3c],eax
  402e91:	83 7d c4 00          	cmp    DWORD PTR [rbp-0x3c],0x0
  402e95:	75 28                	jne    402ebf <error+0x1a6d>
  402e97:	8b 45 bc             	mov    eax,DWORD PTR [rbp-0x44]
  402e9a:	89 c7                	mov    edi,eax
  402e9c:	e8 ef e0 ff ff       	call   400f90 <close@plt>
  402ea1:	8b 45 c0             	mov    eax,DWORD PTR [rbp-0x40]
  402ea4:	89 c7                	mov    edi,eax
  402ea6:	e8 c8 f7 ff ff       	call   402673 <error+0x1221>
  402eab:	8b 45 c0             	mov    eax,DWORD PTR [rbp-0x40]
  402eae:	89 c7                	mov    edi,eax
  402eb0:	e8 db e0 ff ff       	call   400f90 <close@plt>
  402eb5:	bf 00 00 00 00       	mov    edi,0x0
  402eba:	e8 31 e2 ff ff       	call   4010f0 <exit@plt>
  402ebf:	8b 45 c0             	mov    eax,DWORD PTR [rbp-0x40]
  402ec2:	89 c7                	mov    edi,eax
  402ec4:	e8 c7 e0 ff ff       	call   400f90 <close@plt>
  402ec9:	e9 41 ff ff ff       	jmp    402e0f <error+0x19bd>
  402ece:	66 90                	xchg   ax,ax
  402ed0:	41 57                	push   r15
  402ed2:	41 89 ff             	mov    r15d,edi
  402ed5:	41 56                	push   r14
  402ed7:	49 89 f6             	mov    r14,rsi
  402eda:	41 55                	push   r13
  402edc:	49 89 d5             	mov    r13,rdx
  402edf:	41 54                	push   r12
  402ee1:	4c 8d 25 28 0f 20 00 	lea    r12,[rip+0x200f28]        # 603e10 <error+0x2029be>
  402ee8:	55                   	push   rbp
  402ee9:	48 8d 2d 28 0f 20 00 	lea    rbp,[rip+0x200f28]        # 603e18 <error+0x2029c6>
  402ef0:	53                   	push   rbx
  402ef1:	4c 29 e5             	sub    rbp,r12
  402ef4:	31 db                	xor    ebx,ebx
  402ef6:	48 c1 fd 03          	sar    rbp,0x3
  402efa:	48 83 ec 08          	sub    rsp,0x8
  402efe:	e8 0d df ff ff       	call   400e10 <free@plt-0x30>
  402f03:	48 85 ed             	test   rbp,rbp
  402f06:	74 1e                	je     402f26 <error+0x1ad4>
  402f08:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  402f0f:	00 
  402f10:	4c 89 ea             	mov    rdx,r13
  402f13:	4c 89 f6             	mov    rsi,r14
  402f16:	44 89 ff             	mov    edi,r15d
  402f19:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
  402f1d:	48 83 c3 01          	add    rbx,0x1
  402f21:	48 39 eb             	cmp    rbx,rbp
  402f24:	75 ea                	jne    402f10 <error+0x1abe>
  402f26:	48 83 c4 08          	add    rsp,0x8
  402f2a:	5b                   	pop    rbx
  402f2b:	5d                   	pop    rbp
  402f2c:	41 5c                	pop    r12
  402f2e:	41 5d                	pop    r13
  402f30:	41 5e                	pop    r14
  402f32:	41 5f                	pop    r15
  402f34:	c3                   	ret    
  402f35:	66 66 2e 0f 1f 84 00 	data16 nop WORD PTR cs:[rax+rax*1+0x0]
  402f3c:	00 00 00 00 
  402f40:	f3 c3                	repz ret 
  402f42:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  402f49:	00 00 00 
  402f4c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  402f50:	48 89 f2             	mov    rdx,rsi
  402f53:	48 89 fe             	mov    rsi,rdi
  402f56:	bf 01 00 00 00       	mov    edi,0x1
  402f5b:	e9 d0 e0 ff ff       	jmp    401030 <__xstat@plt>

Disassembly of section .fini:

0000000000402f60 <.fini>:
  402f60:	48 83 ec 08          	sub    rsp,0x8
  402f64:	48 83 c4 08          	add    rsp,0x8
  402f68:	c3                   	ret    
