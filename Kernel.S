
kernel/kernel:     file format elf32-i386


Disassembly of section .text:

c0030000 <start>:
c0030000:	fa                   	cli    
c0030001:	0f 01 15 4c 00 03 00 	lgdtl  0x3004c
c0030008:	ea 0f 00 03 00 08 00 	ljmp   $0x8,$0x3000f

c003000f <start_cond>:
c003000f:	66 b8 10 00          	mov    $0x10,%ax
c0030013:	8e d8                	mov    %eax,%ds
c0030015:	8e c0                	mov    %eax,%es
c0030017:	8e d0                	mov    %eax,%ss
c0030019:	0f 20 c0             	mov    %cr0,%eax
c003001c:	83 c8 01             	or     $0x1,%eax
c003001f:	0f 22 c0             	mov    %eax,%cr0
c0030022:	bd 00 00 00 00       	mov    $0x0,%ebp
c0030027:	bc 00 00 00 08       	mov    $0x8000000,%esp
c003002c:	83 ec 10             	sub    $0x10,%esp
c003002f:	e9 c8 13 00 00       	jmp    c00313fc <init>

c0030034 <gdt>:
	...
c003003c:	ff                   	(bad)  
c003003d:	ff 00                	incl   (%eax)
c003003f:	00 00                	add    %al,(%eax)
c0030041:	9a cf 00 ff ff 00 00 	lcall  $0x0,$0xffff00cf
c0030048:	00                   	.byte 0x0
c0030049:	92                   	xchg   %eax,%edx
c003004a:	cf                   	iret   
	...

c003004c <gdtdesc>:
c003004c:	17                   	pop    %ss
c003004d:	00 34 00             	add    %dh,(%eax,%eax,1)
c0030050:	03 00                	add    (%eax),%eax

c0030052 <vec0>:
c0030052:	6a 00                	push   $0x0
c0030054:	6a 00                	push   $0x0
c0030056:	eb 7b                	jmp    c00300d3 <asm_do_irq>

c0030058 <vec1>:
c0030058:	6a 00                	push   $0x0
c003005a:	6a 01                	push   $0x1
c003005c:	eb 75                	jmp    c00300d3 <asm_do_irq>

c003005e <vec2>:
c003005e:	6a 00                	push   $0x0
c0030060:	6a 02                	push   $0x2
c0030062:	eb 6f                	jmp    c00300d3 <asm_do_irq>

c0030064 <vec3>:
c0030064:	6a 00                	push   $0x0
c0030066:	6a 03                	push   $0x3
c0030068:	eb 69                	jmp    c00300d3 <asm_do_irq>

c003006a <vec4>:
c003006a:	6a 00                	push   $0x0
c003006c:	6a 04                	push   $0x4
c003006e:	eb 63                	jmp    c00300d3 <asm_do_irq>

c0030070 <vec5>:
c0030070:	6a 00                	push   $0x0
c0030072:	6a 05                	push   $0x5
c0030074:	eb 5d                	jmp    c00300d3 <asm_do_irq>

c0030076 <vec6>:
c0030076:	6a 00                	push   $0x0
c0030078:	6a 06                	push   $0x6
c003007a:	eb 57                	jmp    c00300d3 <asm_do_irq>

c003007c <vec7>:
c003007c:	6a 00                	push   $0x0
c003007e:	6a 07                	push   $0x7
c0030080:	eb 51                	jmp    c00300d3 <asm_do_irq>

c0030082 <vec8>:
c0030082:	6a 08                	push   $0x8
c0030084:	eb 4d                	jmp    c00300d3 <asm_do_irq>

c0030086 <vec9>:
c0030086:	6a 00                	push   $0x0
c0030088:	6a 09                	push   $0x9
c003008a:	eb 47                	jmp    c00300d3 <asm_do_irq>

c003008c <vec10>:
c003008c:	6a 0a                	push   $0xa
c003008e:	eb 43                	jmp    c00300d3 <asm_do_irq>

c0030090 <vec11>:
c0030090:	6a 0b                	push   $0xb
c0030092:	eb 3f                	jmp    c00300d3 <asm_do_irq>

c0030094 <vec12>:
c0030094:	6a 0c                	push   $0xc
c0030096:	eb 3b                	jmp    c00300d3 <asm_do_irq>

c0030098 <vec13>:
c0030098:	6a 0d                	push   $0xd
c003009a:	eb 37                	jmp    c00300d3 <asm_do_irq>

c003009c <vec14>:
c003009c:	6a 0e                	push   $0xe
c003009e:	eb 33                	jmp    c00300d3 <asm_do_irq>

c00300a0 <vecsys>:
c00300a0:	6a 00                	push   $0x0
c00300a2:	68 80 00 00 00       	push   $0x80
c00300a7:	eb 2a                	jmp    c00300d3 <asm_do_irq>

c00300a9 <irq0>:
c00300a9:	6a 00                	push   $0x0
c00300ab:	68 e8 03 00 00       	push   $0x3e8
c00300b0:	eb 21                	jmp    c00300d3 <asm_do_irq>

c00300b2 <irq1>:
c00300b2:	6a 00                	push   $0x0
c00300b4:	68 e9 03 00 00       	push   $0x3e9
c00300b9:	eb 18                	jmp    c00300d3 <asm_do_irq>

c00300bb <irq2>:
c00300bb:	6a 00                	push   $0x0
c00300bd:	68 ea 03 00 00       	push   $0x3ea
c00300c2:	eb 0f                	jmp    c00300d3 <asm_do_irq>

c00300c4 <irq14>:
c00300c4:	6a 00                	push   $0x0
c00300c6:	68 f6 03 00 00       	push   $0x3f6
c00300cb:	eb 06                	jmp    c00300d3 <asm_do_irq>

c00300cd <irq_empty>:
c00300cd:	6a 00                	push   $0x0
c00300cf:	6a ff                	push   $0xffffffff
c00300d1:	eb 00                	jmp    c00300d3 <asm_do_irq>

c00300d3 <asm_do_irq>:
c00300d3:	60                   	pusha  
c00300d4:	54                   	push   %esp
c00300d5:	e8 54 10 00 00       	call   c003112e <irq_handle>
c00300da:	83 c4 04             	add    $0x4,%esp
c00300dd:	61                   	popa   
c00300de:	83 c4 08             	add    $0x8,%esp
c00300e1:	cf                   	iret   

c00300e2 <cache_init>:
c00300e2:	55                   	push   %ebp
c00300e3:	89 e5                	mov    %esp,%ebp
c00300e5:	53                   	push   %ebx
c00300e6:	83 ec 10             	sub    $0x10,%esp
c00300e9:	e8 01 02 00 00       	call   c00302ef <__x86.get_pc_thunk.dx>
c00300ee:	81 c2 12 cf 00 00    	add    $0xcf12,%edx
c00300f4:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c00300fb:	eb 1b                	jmp    c0030118 <cache_init+0x36>
c00300fd:	8b 4d f8             	mov    -0x8(%ebp),%ecx
c0030100:	8d 9a 04 10 00 00    	lea    0x1004(%edx),%ebx
c0030106:	89 c8                	mov    %ecx,%eax
c0030108:	c1 e0 06             	shl    $0x6,%eax
c003010b:	01 c8                	add    %ecx,%eax
c003010d:	c1 e0 03             	shl    $0x3,%eax
c0030110:	01 d8                	add    %ebx,%eax
c0030112:	c6 00 00             	movb   $0x0,(%eax)
c0030115:	ff 45 f8             	incl   -0x8(%ebp)
c0030118:	83 7d f8 7f          	cmpl   $0x7f,-0x8(%ebp)
c003011c:	7e df                	jle    c00300fd <cache_init+0x1b>
c003011e:	90                   	nop
c003011f:	83 c4 10             	add    $0x10,%esp
c0030122:	5b                   	pop    %ebx
c0030123:	5d                   	pop    %ebp
c0030124:	c3                   	ret    

c0030125 <cache_writeback>:
c0030125:	55                   	push   %ebp
c0030126:	89 e5                	mov    %esp,%ebp
c0030128:	53                   	push   %ebx
c0030129:	83 ec 14             	sub    $0x14,%esp
c003012c:	e8 c2 01 00 00       	call   c00302f3 <__x86.get_pc_thunk.bx>
c0030131:	81 c3 cf ce 00 00    	add    $0xcecf,%ebx
c0030137:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c003013e:	eb 72                	jmp    c00301b2 <cache_writeback+0x8d>
c0030140:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0030143:	8d 8b 05 10 00 00    	lea    0x1005(%ebx),%ecx
c0030149:	89 d0                	mov    %edx,%eax
c003014b:	c1 e0 06             	shl    $0x6,%eax
c003014e:	01 d0                	add    %edx,%eax
c0030150:	c1 e0 03             	shl    $0x3,%eax
c0030153:	01 c8                	add    %ecx,%eax
c0030155:	8a 00                	mov    (%eax),%al
c0030157:	3c 01                	cmp    $0x1,%al
c0030159:	75 54                	jne    c00301af <cache_writeback+0x8a>
c003015b:	8b 55 f4             	mov    -0xc(%ebp),%edx
c003015e:	8d 8b 00 10 00 00    	lea    0x1000(%ebx),%ecx
c0030164:	89 d0                	mov    %edx,%eax
c0030166:	c1 e0 06             	shl    $0x6,%eax
c0030169:	01 d0                	add    %edx,%eax
c003016b:	c1 e0 03             	shl    $0x3,%eax
c003016e:	01 c8                	add    %ecx,%eax
c0030170:	8b 10                	mov    (%eax),%edx
c0030172:	8b 4d f4             	mov    -0xc(%ebp),%ecx
c0030175:	89 c8                	mov    %ecx,%eax
c0030177:	c1 e0 06             	shl    $0x6,%eax
c003017a:	01 c8                	add    %ecx,%eax
c003017c:	c1 e0 03             	shl    $0x3,%eax
c003017f:	8d 8b 00 10 00 00    	lea    0x1000(%ebx),%ecx
c0030185:	01 c8                	add    %ecx,%eax
c0030187:	83 c0 06             	add    $0x6,%eax
c003018a:	83 ec 08             	sub    $0x8,%esp
c003018d:	52                   	push   %edx
c003018e:	50                   	push   %eax
c003018f:	e8 5a 03 00 00       	call   c00304ee <disk_do_write>
c0030194:	83 c4 10             	add    $0x10,%esp
c0030197:	8b 55 f4             	mov    -0xc(%ebp),%edx
c003019a:	8d 8b 05 10 00 00    	lea    0x1005(%ebx),%ecx
c00301a0:	89 d0                	mov    %edx,%eax
c00301a2:	c1 e0 06             	shl    $0x6,%eax
c00301a5:	01 d0                	add    %edx,%eax
c00301a7:	c1 e0 03             	shl    $0x3,%eax
c00301aa:	01 c8                	add    %ecx,%eax
c00301ac:	c6 00 00             	movb   $0x0,(%eax)
c00301af:	ff 45 f4             	incl   -0xc(%ebp)
c00301b2:	83 7d f4 7f          	cmpl   $0x7f,-0xc(%ebp)
c00301b6:	7e 88                	jle    c0030140 <cache_writeback+0x1b>
c00301b8:	90                   	nop
c00301b9:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00301bc:	c9                   	leave  
c00301bd:	c3                   	ret    

c00301be <cache_fetch>:
c00301be:	55                   	push   %ebp
c00301bf:	89 e5                	mov    %esp,%ebp
c00301c1:	53                   	push   %ebx
c00301c2:	83 ec 14             	sub    $0x14,%esp
c00301c5:	e8 29 01 00 00       	call   c00302f3 <__x86.get_pc_thunk.bx>
c00301ca:	81 c3 36 ce 00 00    	add    $0xce36,%ebx
c00301d0:	8b 45 08             	mov    0x8(%ebp),%eax
c00301d3:	83 e0 7f             	and    $0x7f,%eax
c00301d6:	89 c2                	mov    %eax,%edx
c00301d8:	89 d0                	mov    %edx,%eax
c00301da:	c1 e0 06             	shl    $0x6,%eax
c00301dd:	01 d0                	add    %edx,%eax
c00301df:	c1 e0 03             	shl    $0x3,%eax
c00301e2:	8d 93 00 10 00 00    	lea    0x1000(%ebx),%edx
c00301e8:	01 d0                	add    %edx,%eax
c00301ea:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00301ed:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00301f0:	8a 40 04             	mov    0x4(%eax),%al
c00301f3:	3c 01                	cmp    $0x1,%al
c00301f5:	75 0a                	jne    c0030201 <cache_fetch+0x43>
c00301f7:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00301fa:	8b 00                	mov    (%eax),%eax
c00301fc:	39 45 08             	cmp    %eax,0x8(%ebp)
c00301ff:	74 57                	je     c0030258 <cache_fetch+0x9a>
c0030201:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030204:	8a 40 04             	mov    0x4(%eax),%al
c0030207:	3c 01                	cmp    $0x1,%al
c0030209:	75 22                	jne    c003022d <cache_fetch+0x6f>
c003020b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003020e:	8a 40 05             	mov    0x5(%eax),%al
c0030211:	3c 01                	cmp    $0x1,%al
c0030213:	75 18                	jne    c003022d <cache_fetch+0x6f>
c0030215:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030218:	8b 00                	mov    (%eax),%eax
c003021a:	8b 55 f4             	mov    -0xc(%ebp),%edx
c003021d:	83 c2 06             	add    $0x6,%edx
c0030220:	83 ec 08             	sub    $0x8,%esp
c0030223:	50                   	push   %eax
c0030224:	52                   	push   %edx
c0030225:	e8 c4 02 00 00       	call   c00304ee <disk_do_write>
c003022a:	83 c4 10             	add    $0x10,%esp
c003022d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030230:	83 c0 06             	add    $0x6,%eax
c0030233:	83 ec 08             	sub    $0x8,%esp
c0030236:	ff 75 08             	pushl  0x8(%ebp)
c0030239:	50                   	push   %eax
c003023a:	e8 44 02 00 00       	call   c0030483 <disk_do_read>
c003023f:	83 c4 10             	add    $0x10,%esp
c0030242:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030245:	c6 40 04 01          	movb   $0x1,0x4(%eax)
c0030249:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003024c:	8b 55 08             	mov    0x8(%ebp),%edx
c003024f:	89 10                	mov    %edx,(%eax)
c0030251:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030254:	c6 40 05 00          	movb   $0x0,0x5(%eax)
c0030258:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003025b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003025e:	c9                   	leave  
c003025f:	c3                   	ret    

c0030260 <read_byte>:
c0030260:	55                   	push   %ebp
c0030261:	89 e5                	mov    %esp,%ebp
c0030263:	83 ec 18             	sub    $0x18,%esp
c0030266:	e8 80 00 00 00       	call   c00302eb <__x86.get_pc_thunk.ax>
c003026b:	05 95 cd 00 00       	add    $0xcd95,%eax
c0030270:	8b 45 08             	mov    0x8(%ebp),%eax
c0030273:	c1 e8 09             	shr    $0x9,%eax
c0030276:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0030279:	83 ec 0c             	sub    $0xc,%esp
c003027c:	ff 75 f4             	pushl  -0xc(%ebp)
c003027f:	e8 3a ff ff ff       	call   c00301be <cache_fetch>
c0030284:	83 c4 10             	add    $0x10,%esp
c0030287:	89 45 f0             	mov    %eax,-0x10(%ebp)
c003028a:	8b 45 08             	mov    0x8(%ebp),%eax
c003028d:	25 ff 01 00 00       	and    $0x1ff,%eax
c0030292:	89 c2                	mov    %eax,%edx
c0030294:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0030297:	8a 44 10 06          	mov    0x6(%eax,%edx,1),%al
c003029b:	c9                   	leave  
c003029c:	c3                   	ret    

c003029d <write_byte>:
c003029d:	55                   	push   %ebp
c003029e:	89 e5                	mov    %esp,%ebp
c00302a0:	83 ec 28             	sub    $0x28,%esp
c00302a3:	e8 43 00 00 00       	call   c00302eb <__x86.get_pc_thunk.ax>
c00302a8:	05 58 cd 00 00       	add    $0xcd58,%eax
c00302ad:	8b 45 0c             	mov    0xc(%ebp),%eax
c00302b0:	88 45 e4             	mov    %al,-0x1c(%ebp)
c00302b3:	8b 45 08             	mov    0x8(%ebp),%eax
c00302b6:	c1 e8 09             	shr    $0x9,%eax
c00302b9:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00302bc:	83 ec 0c             	sub    $0xc,%esp
c00302bf:	ff 75 f4             	pushl  -0xc(%ebp)
c00302c2:	e8 f7 fe ff ff       	call   c00301be <cache_fetch>
c00302c7:	83 c4 10             	add    $0x10,%esp
c00302ca:	89 45 f0             	mov    %eax,-0x10(%ebp)
c00302cd:	8b 45 08             	mov    0x8(%ebp),%eax
c00302d0:	25 ff 01 00 00       	and    $0x1ff,%eax
c00302d5:	89 c1                	mov    %eax,%ecx
c00302d7:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00302da:	8a 55 e4             	mov    -0x1c(%ebp),%dl
c00302dd:	88 54 08 06          	mov    %dl,0x6(%eax,%ecx,1)
c00302e1:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00302e4:	c6 40 05 01          	movb   $0x1,0x5(%eax)
c00302e8:	90                   	nop
c00302e9:	c9                   	leave  
c00302ea:	c3                   	ret    

c00302eb <__x86.get_pc_thunk.ax>:
c00302eb:	8b 04 24             	mov    (%esp),%eax
c00302ee:	c3                   	ret    

c00302ef <__x86.get_pc_thunk.dx>:
c00302ef:	8b 14 24             	mov    (%esp),%edx
c00302f2:	c3                   	ret    

c00302f3 <__x86.get_pc_thunk.bx>:
c00302f3:	8b 1c 24             	mov    (%esp),%ebx
c00302f6:	c3                   	ret    

c00302f7 <in_byte>:
c00302f7:	55                   	push   %ebp
c00302f8:	89 e5                	mov    %esp,%ebp
c00302fa:	83 ec 14             	sub    $0x14,%esp
c00302fd:	e8 e9 ff ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c0030302:	05 fe cc 00 00       	add    $0xccfe,%eax
c0030307:	8b 45 08             	mov    0x8(%ebp),%eax
c003030a:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
c003030e:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0030311:	89 c2                	mov    %eax,%edx
c0030313:	ec                   	in     (%dx),%al
c0030314:	88 45 ff             	mov    %al,-0x1(%ebp)
c0030317:	8a 45 ff             	mov    -0x1(%ebp),%al
c003031a:	c9                   	leave  
c003031b:	c3                   	ret    

c003031c <in_long>:
c003031c:	55                   	push   %ebp
c003031d:	89 e5                	mov    %esp,%ebp
c003031f:	83 ec 14             	sub    $0x14,%esp
c0030322:	e8 c4 ff ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c0030327:	05 d9 cc 00 00       	add    $0xccd9,%eax
c003032c:	8b 45 08             	mov    0x8(%ebp),%eax
c003032f:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
c0030333:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0030336:	89 c2                	mov    %eax,%edx
c0030338:	ed                   	in     (%dx),%eax
c0030339:	89 45 fc             	mov    %eax,-0x4(%ebp)
c003033c:	8b 45 fc             	mov    -0x4(%ebp),%eax
c003033f:	c9                   	leave  
c0030340:	c3                   	ret    

c0030341 <out_byte>:
c0030341:	55                   	push   %ebp
c0030342:	89 e5                	mov    %esp,%ebp
c0030344:	83 ec 08             	sub    $0x8,%esp
c0030347:	e8 9f ff ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c003034c:	05 b4 cc 00 00       	add    $0xccb4,%eax
c0030351:	8b 45 08             	mov    0x8(%ebp),%eax
c0030354:	8b 55 0c             	mov    0xc(%ebp),%edx
c0030357:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c003035b:	88 d0                	mov    %dl,%al
c003035d:	88 45 f8             	mov    %al,-0x8(%ebp)
c0030360:	8a 45 f8             	mov    -0x8(%ebp),%al
c0030363:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0030366:	ee                   	out    %al,(%dx)
c0030367:	90                   	nop
c0030368:	c9                   	leave  
c0030369:	c3                   	ret    

c003036a <out_long>:
c003036a:	55                   	push   %ebp
c003036b:	89 e5                	mov    %esp,%ebp
c003036d:	83 ec 04             	sub    $0x4,%esp
c0030370:	e8 76 ff ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c0030375:	05 8b cc 00 00       	add    $0xcc8b,%eax
c003037a:	8b 45 08             	mov    0x8(%ebp),%eax
c003037d:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c0030381:	8b 45 0c             	mov    0xc(%ebp),%eax
c0030384:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0030387:	ef                   	out    %eax,(%dx)
c0030388:	90                   	nop
c0030389:	c9                   	leave  
c003038a:	c3                   	ret    

c003038b <waitdisk>:
c003038b:	55                   	push   %ebp
c003038c:	89 e5                	mov    %esp,%ebp
c003038e:	e8 58 ff ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c0030393:	05 6d cc 00 00       	add    $0xcc6d,%eax
c0030398:	90                   	nop
c0030399:	68 f7 01 00 00       	push   $0x1f7
c003039e:	e8 54 ff ff ff       	call   c00302f7 <in_byte>
c00303a3:	83 c4 04             	add    $0x4,%esp
c00303a6:	0f b6 c0             	movzbl %al,%eax
c00303a9:	25 c0 00 00 00       	and    $0xc0,%eax
c00303ae:	83 f8 40             	cmp    $0x40,%eax
c00303b1:	75 e6                	jne    c0030399 <waitdisk+0xe>
c00303b3:	90                   	nop
c00303b4:	c9                   	leave  
c00303b5:	c3                   	ret    

c00303b6 <ide_prepare>:
c00303b6:	55                   	push   %ebp
c00303b7:	89 e5                	mov    %esp,%ebp
c00303b9:	e8 2d ff ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c00303be:	05 42 cc 00 00       	add    $0xcc42,%eax
c00303c3:	e8 c3 ff ff ff       	call   c003038b <waitdisk>
c00303c8:	6a 00                	push   $0x0
c00303ca:	68 f1 01 00 00       	push   $0x1f1
c00303cf:	e8 6d ff ff ff       	call   c0030341 <out_byte>
c00303d4:	83 c4 08             	add    $0x8,%esp
c00303d7:	6a 01                	push   $0x1
c00303d9:	68 f2 01 00 00       	push   $0x1f2
c00303de:	e8 5e ff ff ff       	call   c0030341 <out_byte>
c00303e3:	83 c4 08             	add    $0x8,%esp
c00303e6:	8b 45 08             	mov    0x8(%ebp),%eax
c00303e9:	0f b6 c0             	movzbl %al,%eax
c00303ec:	50                   	push   %eax
c00303ed:	68 f3 01 00 00       	push   $0x1f3
c00303f2:	e8 4a ff ff ff       	call   c0030341 <out_byte>
c00303f7:	83 c4 08             	add    $0x8,%esp
c00303fa:	8b 45 08             	mov    0x8(%ebp),%eax
c00303fd:	c1 e8 08             	shr    $0x8,%eax
c0030400:	0f b6 c0             	movzbl %al,%eax
c0030403:	50                   	push   %eax
c0030404:	68 f4 01 00 00       	push   $0x1f4
c0030409:	e8 33 ff ff ff       	call   c0030341 <out_byte>
c003040e:	83 c4 08             	add    $0x8,%esp
c0030411:	8b 45 08             	mov    0x8(%ebp),%eax
c0030414:	c1 e8 10             	shr    $0x10,%eax
c0030417:	0f b6 c0             	movzbl %al,%eax
c003041a:	50                   	push   %eax
c003041b:	68 f5 01 00 00       	push   $0x1f5
c0030420:	e8 1c ff ff ff       	call   c0030341 <out_byte>
c0030425:	83 c4 08             	add    $0x8,%esp
c0030428:	8b 45 08             	mov    0x8(%ebp),%eax
c003042b:	c1 e8 18             	shr    $0x18,%eax
c003042e:	83 c8 e0             	or     $0xffffffe0,%eax
c0030431:	0f b6 c0             	movzbl %al,%eax
c0030434:	50                   	push   %eax
c0030435:	68 f6 01 00 00       	push   $0x1f6
c003043a:	e8 02 ff ff ff       	call   c0030341 <out_byte>
c003043f:	83 c4 08             	add    $0x8,%esp
c0030442:	90                   	nop
c0030443:	c9                   	leave  
c0030444:	c3                   	ret    

c0030445 <issue_read>:
c0030445:	55                   	push   %ebp
c0030446:	89 e5                	mov    %esp,%ebp
c0030448:	e8 9e fe ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c003044d:	05 b3 cb 00 00       	add    $0xcbb3,%eax
c0030452:	6a 20                	push   $0x20
c0030454:	68 f7 01 00 00       	push   $0x1f7
c0030459:	e8 e3 fe ff ff       	call   c0030341 <out_byte>
c003045e:	83 c4 08             	add    $0x8,%esp
c0030461:	90                   	nop
c0030462:	c9                   	leave  
c0030463:	c3                   	ret    

c0030464 <issue_write>:
c0030464:	55                   	push   %ebp
c0030465:	89 e5                	mov    %esp,%ebp
c0030467:	e8 7f fe ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c003046c:	05 94 cb 00 00       	add    $0xcb94,%eax
c0030471:	6a 30                	push   $0x30
c0030473:	68 f7 01 00 00       	push   $0x1f7
c0030478:	e8 c4 fe ff ff       	call   c0030341 <out_byte>
c003047d:	83 c4 08             	add    $0x8,%esp
c0030480:	90                   	nop
c0030481:	c9                   	leave  
c0030482:	c3                   	ret    

c0030483 <disk_do_read>:
c0030483:	55                   	push   %ebp
c0030484:	89 e5                	mov    %esp,%ebp
c0030486:	53                   	push   %ebx
c0030487:	83 ec 14             	sub    $0x14,%esp
c003048a:	e8 64 fe ff ff       	call   c00302f3 <__x86.get_pc_thunk.bx>
c003048f:	81 c3 71 cb 00 00    	add    $0xcb71,%ebx
c0030495:	e8 c8 02 00 00       	call   c0030762 <clear_ide_intr>
c003049a:	83 ec 0c             	sub    $0xc,%esp
c003049d:	ff 75 0c             	pushl  0xc(%ebp)
c00304a0:	e8 11 ff ff ff       	call   c00303b6 <ide_prepare>
c00304a5:	83 c4 10             	add    $0x10,%esp
c00304a8:	e8 98 ff ff ff       	call   c0030445 <issue_read>
c00304ad:	e8 ca 02 00 00       	call   c003077c <wait_ide_intr>
c00304b2:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c00304b9:	eb 25                	jmp    c00304e0 <disk_do_read+0x5d>
c00304bb:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00304be:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c00304c5:	8b 45 08             	mov    0x8(%ebp),%eax
c00304c8:	8d 1c 02             	lea    (%edx,%eax,1),%ebx
c00304cb:	83 ec 0c             	sub    $0xc,%esp
c00304ce:	68 f0 01 00 00       	push   $0x1f0
c00304d3:	e8 44 fe ff ff       	call   c003031c <in_long>
c00304d8:	83 c4 10             	add    $0x10,%esp
c00304db:	89 03                	mov    %eax,(%ebx)
c00304dd:	ff 45 f4             	incl   -0xc(%ebp)
c00304e0:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00304e3:	83 f8 7f             	cmp    $0x7f,%eax
c00304e6:	76 d3                	jbe    c00304bb <disk_do_read+0x38>
c00304e8:	90                   	nop
c00304e9:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00304ec:	c9                   	leave  
c00304ed:	c3                   	ret    

c00304ee <disk_do_write>:
c00304ee:	55                   	push   %ebp
c00304ef:	89 e5                	mov    %esp,%ebp
c00304f1:	83 ec 10             	sub    $0x10,%esp
c00304f4:	e8 f2 fd ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c00304f9:	05 07 cb 00 00       	add    $0xcb07,%eax
c00304fe:	ff 75 0c             	pushl  0xc(%ebp)
c0030501:	e8 b0 fe ff ff       	call   c00303b6 <ide_prepare>
c0030506:	83 c4 04             	add    $0x4,%esp
c0030509:	e8 56 ff ff ff       	call   c0030464 <issue_write>
c003050e:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0030515:	eb 22                	jmp    c0030539 <disk_do_write+0x4b>
c0030517:	8b 45 fc             	mov    -0x4(%ebp),%eax
c003051a:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0030521:	8b 45 08             	mov    0x8(%ebp),%eax
c0030524:	01 d0                	add    %edx,%eax
c0030526:	8b 00                	mov    (%eax),%eax
c0030528:	50                   	push   %eax
c0030529:	68 f0 01 00 00       	push   $0x1f0
c003052e:	e8 37 fe ff ff       	call   c003036a <out_long>
c0030533:	83 c4 08             	add    $0x8,%esp
c0030536:	ff 45 fc             	incl   -0x4(%ebp)
c0030539:	8b 45 fc             	mov    -0x4(%ebp),%eax
c003053c:	83 f8 7f             	cmp    $0x7f,%eax
c003053f:	76 d6                	jbe    c0030517 <disk_do_write+0x29>
c0030541:	90                   	nop
c0030542:	c9                   	leave  
c0030543:	c3                   	ret    

c0030544 <in_byte>:
c0030544:	55                   	push   %ebp
c0030545:	89 e5                	mov    %esp,%ebp
c0030547:	83 ec 14             	sub    $0x14,%esp
c003054a:	e8 9c fd ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c003054f:	05 b1 ca 00 00       	add    $0xcab1,%eax
c0030554:	8b 45 08             	mov    0x8(%ebp),%eax
c0030557:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
c003055b:	8b 45 ec             	mov    -0x14(%ebp),%eax
c003055e:	89 c2                	mov    %eax,%edx
c0030560:	ec                   	in     (%dx),%al
c0030561:	88 45 ff             	mov    %al,-0x1(%ebp)
c0030564:	8a 45 ff             	mov    -0x1(%ebp),%al
c0030567:	c9                   	leave  
c0030568:	c3                   	ret    

c0030569 <out_byte>:
c0030569:	55                   	push   %ebp
c003056a:	89 e5                	mov    %esp,%ebp
c003056c:	83 ec 08             	sub    $0x8,%esp
c003056f:	e8 77 fd ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c0030574:	05 8c ca 00 00       	add    $0xca8c,%eax
c0030579:	8b 45 08             	mov    0x8(%ebp),%eax
c003057c:	8b 55 0c             	mov    0xc(%ebp),%edx
c003057f:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c0030583:	88 d0                	mov    %dl,%al
c0030585:	88 45 f8             	mov    %al,-0x8(%ebp)
c0030588:	8a 45 f8             	mov    -0x8(%ebp),%al
c003058b:	8b 55 fc             	mov    -0x4(%ebp),%edx
c003058e:	ee                   	out    %al,(%dx)
c003058f:	90                   	nop
c0030590:	c9                   	leave  
c0030591:	c3                   	ret    

c0030592 <out_long>:
c0030592:	55                   	push   %ebp
c0030593:	89 e5                	mov    %esp,%ebp
c0030595:	83 ec 04             	sub    $0x4,%esp
c0030598:	e8 4e fd ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c003059d:	05 63 ca 00 00       	add    $0xca63,%eax
c00305a2:	8b 45 08             	mov    0x8(%ebp),%eax
c00305a5:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c00305a9:	8b 45 0c             	mov    0xc(%ebp),%eax
c00305ac:	8b 55 fc             	mov    -0x4(%ebp),%edx
c00305af:	ef                   	out    %eax,(%dx)
c00305b0:	90                   	nop
c00305b1:	c9                   	leave  
c00305b2:	c3                   	ret    

c00305b3 <dma_prepare>:
c00305b3:	55                   	push   %ebp
c00305b4:	89 e5                	mov    %esp,%ebp
c00305b6:	83 ec 10             	sub    $0x10,%esp
c00305b9:	e8 2d fd ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c00305be:	05 42 ca 00 00       	add    $0xca42,%eax
c00305c3:	8b 55 08             	mov    0x8(%ebp),%edx
c00305c6:	81 c2 00 00 00 40    	add    $0x40000000,%edx
c00305cc:	89 55 fc             	mov    %edx,-0x4(%ebp)
c00305cf:	c7 c2 54 00 07 c0    	mov    $0xc0070054,%edx
c00305d5:	8b 4d fc             	mov    -0x4(%ebp),%ecx
c00305d8:	89 0a                	mov    %ecx,(%edx)
c00305da:	c7 c2 54 00 07 c0    	mov    $0xc0070054,%edx
c00305e0:	66 c7 42 04 00 02    	movw   $0x200,0x4(%edx)
c00305e6:	c7 c2 54 00 07 c0    	mov    $0xc0070054,%edx
c00305ec:	8a 4a 07             	mov    0x7(%edx),%cl
c00305ef:	83 c9 80             	or     $0xffffff80,%ecx
c00305f2:	88 4a 07             	mov    %cl,0x7(%edx)
c00305f5:	c7 c1 54 00 07 c0    	mov    $0xc0070054,%ecx
c00305fb:	66 8b 51 06          	mov    0x6(%ecx),%dx
c00305ff:	81 e2 00 80 ff ff    	and    $0xffff8000,%edx
c0030605:	66 89 51 06          	mov    %dx,0x6(%ecx)
c0030609:	c7 c0 54 00 07 c0    	mov    $0xc0070054,%eax
c003060f:	05 00 00 00 40       	add    $0x40000000,%eax
c0030614:	89 45 f8             	mov    %eax,-0x8(%ebp)
c0030617:	ff 75 f8             	pushl  -0x8(%ebp)
c003061a:	68 44 c0 00 00       	push   $0xc044
c003061f:	e8 6e ff ff ff       	call   c0030592 <out_long>
c0030624:	83 c4 08             	add    $0x8,%esp
c0030627:	90                   	nop
c0030628:	c9                   	leave  
c0030629:	c3                   	ret    

c003062a <dma_issue_read>:
c003062a:	55                   	push   %ebp
c003062b:	89 e5                	mov    %esp,%ebp
c003062d:	e8 b9 fc ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c0030632:	05 ce c9 00 00       	add    $0xc9ce,%eax
c0030637:	68 40 c0 00 00       	push   $0xc040
c003063c:	e8 03 ff ff ff       	call   c0030544 <in_byte>
c0030641:	83 c4 04             	add    $0x4,%esp
c0030644:	83 c8 09             	or     $0x9,%eax
c0030647:	0f b6 c0             	movzbl %al,%eax
c003064a:	50                   	push   %eax
c003064b:	68 40 c0 00 00       	push   $0xc040
c0030650:	e8 14 ff ff ff       	call   c0030569 <out_byte>
c0030655:	83 c4 08             	add    $0x8,%esp
c0030658:	90                   	nop
c0030659:	c9                   	leave  
c003065a:	c3                   	ret    

c003065b <wait_intr>:
c003065b:	55                   	push   %ebp
c003065c:	89 e5                	mov    %esp,%ebp
c003065e:	e8 88 fc ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c0030663:	05 9d c9 00 00       	add    $0xc99d,%eax
c0030668:	f4                   	hlt    
c0030669:	90                   	nop
c003066a:	5d                   	pop    %ebp
c003066b:	c3                   	ret    

c003066c <ide_read>:
c003066c:	55                   	push   %ebp
c003066d:	89 e5                	mov    %esp,%ebp
c003066f:	56                   	push   %esi
c0030670:	53                   	push   %ebx
c0030671:	83 ec 10             	sub    $0x10,%esp
c0030674:	e8 7a fc ff ff       	call   c00302f3 <__x86.get_pc_thunk.bx>
c0030679:	81 c3 87 c9 00 00    	add    $0xc987,%ebx
c003067f:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0030686:	eb 22                	jmp    c00306aa <ide_read+0x3e>
c0030688:	8b 55 0c             	mov    0xc(%ebp),%edx
c003068b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003068e:	01 d0                	add    %edx,%eax
c0030690:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0030693:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0030696:	8d 34 11             	lea    (%ecx,%edx,1),%esi
c0030699:	83 ec 0c             	sub    $0xc,%esp
c003069c:	50                   	push   %eax
c003069d:	e8 be fb ff ff       	call   c0030260 <read_byte>
c00306a2:	83 c4 10             	add    $0x10,%esp
c00306a5:	88 06                	mov    %al,(%esi)
c00306a7:	ff 45 f4             	incl   -0xc(%ebp)
c00306aa:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00306ad:	3b 45 10             	cmp    0x10(%ebp),%eax
c00306b0:	72 d6                	jb     c0030688 <ide_read+0x1c>
c00306b2:	90                   	nop
c00306b3:	8d 65 f8             	lea    -0x8(%ebp),%esp
c00306b6:	5b                   	pop    %ebx
c00306b7:	5e                   	pop    %esi
c00306b8:	5d                   	pop    %ebp
c00306b9:	c3                   	ret    

c00306ba <ide_write>:
c00306ba:	55                   	push   %ebp
c00306bb:	89 e5                	mov    %esp,%ebp
c00306bd:	53                   	push   %ebx
c00306be:	83 ec 14             	sub    $0x14,%esp
c00306c1:	e8 2d fc ff ff       	call   c00302f3 <__x86.get_pc_thunk.bx>
c00306c6:	81 c3 3a c9 00 00    	add    $0xc93a,%ebx
c00306cc:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c00306d3:	eb 25                	jmp    c00306fa <ide_write+0x40>
c00306d5:	8b 55 08             	mov    0x8(%ebp),%edx
c00306d8:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00306db:	01 d0                	add    %edx,%eax
c00306dd:	8a 00                	mov    (%eax),%al
c00306df:	0f b6 c0             	movzbl %al,%eax
c00306e2:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c00306e5:	8b 55 f4             	mov    -0xc(%ebp),%edx
c00306e8:	01 ca                	add    %ecx,%edx
c00306ea:	83 ec 08             	sub    $0x8,%esp
c00306ed:	50                   	push   %eax
c00306ee:	52                   	push   %edx
c00306ef:	e8 a9 fb ff ff       	call   c003029d <write_byte>
c00306f4:	83 c4 10             	add    $0x10,%esp
c00306f7:	ff 45 f4             	incl   -0xc(%ebp)
c00306fa:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00306fd:	3b 45 10             	cmp    0x10(%ebp),%eax
c0030700:	72 d3                	jb     c00306d5 <ide_write+0x1b>
c0030702:	90                   	nop
c0030703:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030706:	c9                   	leave  
c0030707:	c3                   	ret    

c0030708 <ide_writeback>:
c0030708:	55                   	push   %ebp
c0030709:	89 e5                	mov    %esp,%ebp
c003070b:	53                   	push   %ebx
c003070c:	83 ec 04             	sub    $0x4,%esp
c003070f:	e8 df fb ff ff       	call   c00302f3 <__x86.get_pc_thunk.bx>
c0030714:	81 c3 ec c8 00 00    	add    $0xc8ec,%ebx
c003071a:	8b 83 04 14 01 00    	mov    0x11404(%ebx),%eax
c0030720:	40                   	inc    %eax
c0030721:	89 83 04 14 01 00    	mov    %eax,0x11404(%ebx)
c0030727:	8b 83 04 14 01 00    	mov    0x11404(%ebx),%eax
c003072d:	83 f8 64             	cmp    $0x64,%eax
c0030730:	75 0f                	jne    c0030741 <ide_writeback+0x39>
c0030732:	e8 ee f9 ff ff       	call   c0030125 <cache_writeback>
c0030737:	c7 83 04 14 01 00 00 	movl   $0x0,0x11404(%ebx)
c003073e:	00 00 00 
c0030741:	90                   	nop
c0030742:	83 c4 04             	add    $0x4,%esp
c0030745:	5b                   	pop    %ebx
c0030746:	5d                   	pop    %ebp
c0030747:	c3                   	ret    

c0030748 <ide_intr>:
c0030748:	55                   	push   %ebp
c0030749:	89 e5                	mov    %esp,%ebp
c003074b:	e8 9b fb ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c0030750:	05 b0 c8 00 00       	add    $0xc8b0,%eax
c0030755:	c7 80 00 14 01 00 01 	movl   $0x1,0x11400(%eax)
c003075c:	00 00 00 
c003075f:	90                   	nop
c0030760:	5d                   	pop    %ebp
c0030761:	c3                   	ret    

c0030762 <clear_ide_intr>:
c0030762:	55                   	push   %ebp
c0030763:	89 e5                	mov    %esp,%ebp
c0030765:	e8 81 fb ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c003076a:	05 96 c8 00 00       	add    $0xc896,%eax
c003076f:	c7 80 00 14 01 00 00 	movl   $0x0,0x11400(%eax)
c0030776:	00 00 00 
c0030779:	90                   	nop
c003077a:	5d                   	pop    %ebp
c003077b:	c3                   	ret    

c003077c <wait_ide_intr>:
c003077c:	55                   	push   %ebp
c003077d:	89 e5                	mov    %esp,%ebp
c003077f:	53                   	push   %ebx
c0030780:	e8 6e fb ff ff       	call   c00302f3 <__x86.get_pc_thunk.bx>
c0030785:	81 c3 7b c8 00 00    	add    $0xc87b,%ebx
c003078b:	eb 05                	jmp    c0030792 <wait_ide_intr+0x16>
c003078d:	e8 c9 fe ff ff       	call   c003065b <wait_intr>
c0030792:	8b 83 00 14 01 00    	mov    0x11400(%ebx),%eax
c0030798:	85 c0                	test   %eax,%eax
c003079a:	74 f1                	je     c003078d <wait_ide_intr+0x11>
c003079c:	e8 c1 ff ff ff       	call   c0030762 <clear_ide_intr>
c00307a1:	90                   	nop
c00307a2:	5b                   	pop    %ebx
c00307a3:	5d                   	pop    %ebp
c00307a4:	c3                   	ret    

c00307a5 <init_ide>:
c00307a5:	55                   	push   %ebp
c00307a6:	89 e5                	mov    %esp,%ebp
c00307a8:	53                   	push   %ebx
c00307a9:	83 ec 04             	sub    $0x4,%esp
c00307ac:	e8 42 fb ff ff       	call   c00302f3 <__x86.get_pc_thunk.bx>
c00307b1:	81 c3 4f c8 00 00    	add    $0xc84f,%ebx
c00307b7:	e8 26 f9 ff ff       	call   c00300e2 <cache_init>
c00307bc:	83 ec 08             	sub    $0x8,%esp
c00307bf:	8d 83 08 37 ff ff    	lea    -0xc8f8(%ebx),%eax
c00307c5:	50                   	push   %eax
c00307c6:	6a 00                	push   $0x0
c00307c8:	e8 94 08 00 00       	call   c0031061 <add_irq_handle>
c00307cd:	83 c4 10             	add    $0x10,%esp
c00307d0:	83 ec 08             	sub    $0x8,%esp
c00307d3:	8d 83 48 37 ff ff    	lea    -0xc8b8(%ebx),%eax
c00307d9:	50                   	push   %eax
c00307da:	6a 0e                	push   $0xe
c00307dc:	e8 80 08 00 00       	call   c0031061 <add_irq_handle>
c00307e1:	83 c4 10             	add    $0x10,%esp
c00307e4:	90                   	nop
c00307e5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00307e8:	c9                   	leave  
c00307e9:	c3                   	ret    

c00307ea <write_cr3>:
c00307ea:	55                   	push   %ebp
c00307eb:	89 e5                	mov    %esp,%ebp
c00307ed:	e8 f9 fa ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c00307f2:	05 0e c8 00 00       	add    $0xc80e,%eax
c00307f7:	8b 45 08             	mov    0x8(%ebp),%eax
c00307fa:	0f 22 d8             	mov    %eax,%cr3
c00307fd:	90                   	nop
c00307fe:	5d                   	pop    %ebp
c00307ff:	c3                   	ret    

c0030800 <loader>:
c0030800:	55                   	push   %ebp
c0030801:	89 e5                	mov    %esp,%ebp
c0030803:	53                   	push   %ebx
c0030804:	81 ec 24 10 00 00    	sub    $0x1024,%esp
c003080a:	e8 e4 fa ff ff       	call   c00302f3 <__x86.get_pc_thunk.bx>
c003080f:	81 c3 f1 c7 00 00    	add    $0xc7f1,%ebx
c0030815:	83 ec 04             	sub    $0x4,%esp
c0030818:	68 00 10 00 00       	push   $0x1000
c003081d:	6a 00                	push   $0x0
c003081f:	8d 85 e0 ef ff ff    	lea    -0x1020(%ebp),%eax
c0030825:	50                   	push   %eax
c0030826:	e8 41 fe ff ff       	call   c003066c <ide_read>
c003082b:	83 c4 10             	add    $0x10,%esp
c003082e:	8d 85 e0 ef ff ff    	lea    -0x1020(%ebp),%eax
c0030834:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0030837:	8d 83 94 c0 ff ff    	lea    -0x3f6c(%ebx),%eax
c003083d:	50                   	push   %eax
c003083e:	6a 1c                	push   $0x1c
c0030840:	8d 83 00 c0 ff ff    	lea    -0x4000(%ebx),%eax
c0030846:	50                   	push   %eax
c0030847:	8d 83 10 c0 ff ff    	lea    -0x3ff0(%ebx),%eax
c003084d:	50                   	push   %eax
c003084e:	e8 85 0a 00 00       	call   c00312d8 <printk>
c0030853:	83 c4 10             	add    $0x10,%esp
c0030856:	c7 45 ec 7f 45 4c 46 	movl   $0x464c457f,-0x14(%ebp)
c003085d:	8d 85 e0 ef ff ff    	lea    -0x1020(%ebp),%eax
c0030863:	89 45 e8             	mov    %eax,-0x18(%ebp)
c0030866:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0030869:	8b 00                	mov    (%eax),%eax
c003086b:	39 45 ec             	cmp    %eax,-0x14(%ebp)
c003086e:	74 06                	je     c0030876 <loader+0x76>
c0030870:	b8 01 00 00 00       	mov    $0x1,%eax
c0030875:	82                   	nemu_trap 
c0030876:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0030879:	8b 00                	mov    (%eax),%eax
c003087b:	83 ec 0c             	sub    $0xc,%esp
c003087e:	50                   	push   %eax
c003087f:	8d 83 94 c0 ff ff    	lea    -0x3f6c(%ebx),%eax
c0030885:	50                   	push   %eax
c0030886:	6a 25                	push   $0x25
c0030888:	8d 83 00 c0 ff ff    	lea    -0x4000(%ebx),%eax
c003088e:	50                   	push   %eax
c003088f:	8d 83 4c c0 ff ff    	lea    -0x3fb4(%ebx),%eax
c0030895:	50                   	push   %eax
c0030896:	e8 3d 0a 00 00       	call   c00312d8 <printk>
c003089b:	83 c4 20             	add    $0x20,%esp
c003089e:	b8 01 00 00 00       	mov    $0x1,%eax
c00308a3:	82                   	nemu_trap 
c00308a4:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00308a7:	8b 50 1c             	mov    0x1c(%eax),%edx
c00308aa:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00308ad:	01 d0                	add    %edx,%eax
c00308af:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00308b2:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00308b5:	8b 40 2c             	mov    0x2c(%eax),%eax
c00308b8:	0f b7 c0             	movzwl %ax,%eax
c00308bb:	c1 e0 05             	shl    $0x5,%eax
c00308be:	89 c2                	mov    %eax,%edx
c00308c0:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00308c3:	01 d0                	add    %edx,%eax
c00308c5:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c00308c8:	e9 ba 00 00 00       	jmp    c0030987 <loader+0x187>
c00308cd:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00308d0:	8b 00                	mov    (%eax),%eax
c00308d2:	83 f8 01             	cmp    $0x1,%eax
c00308d5:	0f 85 a8 00 00 00    	jne    c0030983 <loader+0x183>
c00308db:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00308de:	8b 40 14             	mov    0x14(%eax),%eax
c00308e1:	89 c2                	mov    %eax,%edx
c00308e3:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00308e6:	8b 40 08             	mov    0x8(%eax),%eax
c00308e9:	83 ec 08             	sub    $0x8,%esp
c00308ec:	52                   	push   %edx
c00308ed:	50                   	push   %eax
c00308ee:	e8 2d 13 00 00       	call   c0031c20 <mm_malloc>
c00308f3:	83 c4 10             	add    $0x10,%esp
c00308f6:	89 c2                	mov    %eax,%edx
c00308f8:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00308fb:	89 50 08             	mov    %edx,0x8(%eax)
c00308fe:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030901:	8b 50 14             	mov    0x14(%eax),%edx
c0030904:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030907:	8b 40 04             	mov    0x4(%eax),%eax
c003090a:	8b 4d f4             	mov    -0xc(%ebp),%ecx
c003090d:	8b 49 08             	mov    0x8(%ecx),%ecx
c0030910:	83 ec 04             	sub    $0x4,%esp
c0030913:	52                   	push   %edx
c0030914:	50                   	push   %eax
c0030915:	51                   	push   %ecx
c0030916:	e8 51 fd ff ff       	call   c003066c <ide_read>
c003091b:	83 c4 10             	add    $0x10,%esp
c003091e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030921:	8b 50 14             	mov    0x14(%eax),%edx
c0030924:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030927:	8b 40 10             	mov    0x10(%eax),%eax
c003092a:	39 c2                	cmp    %eax,%edx
c003092c:	76 2b                	jbe    c0030959 <loader+0x159>
c003092e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030931:	8b 50 14             	mov    0x14(%eax),%edx
c0030934:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030937:	8b 40 10             	mov    0x10(%eax),%eax
c003093a:	29 c2                	sub    %eax,%edx
c003093c:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003093f:	8b 48 10             	mov    0x10(%eax),%ecx
c0030942:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030945:	8b 40 08             	mov    0x8(%eax),%eax
c0030948:	01 c8                	add    %ecx,%eax
c003094a:	83 ec 04             	sub    $0x4,%esp
c003094d:	52                   	push   %edx
c003094e:	6a 00                	push   $0x0
c0030950:	50                   	push   %eax
c0030951:	e8 a6 15 00 00       	call   c0031efc <memset>
c0030956:	83 c4 10             	add    $0x10,%esp
c0030959:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003095c:	8b 50 08             	mov    0x8(%eax),%edx
c003095f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030962:	8b 40 14             	mov    0x14(%eax),%eax
c0030965:	01 d0                	add    %edx,%eax
c0030967:	48                   	dec    %eax
c0030968:	89 45 e0             	mov    %eax,-0x20(%ebp)
c003096b:	c7 c0 a8 ee 04 c0    	mov    $0xc004eea8,%eax
c0030971:	8b 00                	mov    (%eax),%eax
c0030973:	39 45 e0             	cmp    %eax,-0x20(%ebp)
c0030976:	76 0b                	jbe    c0030983 <loader+0x183>
c0030978:	c7 c0 a8 ee 04 c0    	mov    $0xc004eea8,%eax
c003097e:	8b 55 e0             	mov    -0x20(%ebp),%edx
c0030981:	89 10                	mov    %edx,(%eax)
c0030983:	83 45 f4 20          	addl   $0x20,-0xc(%ebp)
c0030987:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003098a:	3b 45 e4             	cmp    -0x1c(%ebp),%eax
c003098d:	0f 82 3a ff ff ff    	jb     c00308cd <loader+0xcd>
c0030993:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0030996:	8b 40 18             	mov    0x18(%eax),%eax
c0030999:	89 85 dc ef ff ff    	mov    %eax,-0x1024(%ebp)
c003099f:	83 ec 08             	sub    $0x8,%esp
c00309a2:	68 00 00 10 00       	push   $0x100000
c00309a7:	68 00 00 f0 bf       	push   $0xbff00000
c00309ac:	e8 6f 12 00 00       	call   c0031c20 <mm_malloc>
c00309b1:	83 c4 10             	add    $0x10,%esp
c00309b4:	e8 d8 0d 00 00       	call   c0031791 <get_ucr3>
c00309b9:	83 ec 0c             	sub    $0xc,%esp
c00309bc:	50                   	push   %eax
c00309bd:	e8 28 fe ff ff       	call   c00307ea <write_cr3>
c00309c2:	83 c4 10             	add    $0x10,%esp
c00309c5:	8b 85 dc ef ff ff    	mov    -0x1024(%ebp),%eax
c00309cb:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00309ce:	c9                   	leave  
c00309cf:	c3                   	ret    

c00309d0 <fs_open>:
c00309d0:	55                   	push   %ebp
c00309d1:	89 e5                	mov    %esp,%ebp
c00309d3:	53                   	push   %ebx
c00309d4:	83 ec 04             	sub    $0x4,%esp
c00309d7:	e8 0f f9 ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c00309dc:	05 24 c6 00 00       	add    $0xc624,%eax
c00309e1:	8d 90 38 c3 ff ff    	lea    -0x3cc8(%eax),%edx
c00309e7:	52                   	push   %edx
c00309e8:	6a 28                	push   $0x28
c00309ea:	8d 90 6f c1 ff ff    	lea    -0x3e91(%eax),%edx
c00309f0:	52                   	push   %edx
c00309f1:	8d 90 7c c1 ff ff    	lea    -0x3e84(%eax),%edx
c00309f7:	52                   	push   %edx
c00309f8:	89 c3                	mov    %eax,%ebx
c00309fa:	e8 d9 08 00 00       	call   c00312d8 <printk>
c00309ff:	83 c4 10             	add    $0x10,%esp
c0030a02:	b8 01 00 00 00       	mov    $0x1,%eax
c0030a07:	82                   	nemu_trap 
c0030a08:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0030a0d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030a10:	c9                   	leave  
c0030a11:	c3                   	ret    

c0030a12 <fs_read>:
c0030a12:	55                   	push   %ebp
c0030a13:	89 e5                	mov    %esp,%ebp
c0030a15:	53                   	push   %ebx
c0030a16:	83 ec 04             	sub    $0x4,%esp
c0030a19:	e8 d5 f8 ff ff       	call   c00302f3 <__x86.get_pc_thunk.bx>
c0030a1e:	81 c3 e2 c5 00 00    	add    $0xc5e2,%ebx
c0030a24:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
c0030a28:	7f 2f                	jg     c0030a59 <fs_read+0x47>
c0030a2a:	83 ec 0c             	sub    $0xc,%esp
c0030a2d:	8d 83 d2 c1 ff ff    	lea    -0x3e2e(%ebx),%eax
c0030a33:	50                   	push   %eax
c0030a34:	8d 83 40 c3 ff ff    	lea    -0x3cc0(%ebx),%eax
c0030a3a:	50                   	push   %eax
c0030a3b:	6a 2e                	push   $0x2e
c0030a3d:	8d 83 6f c1 ff ff    	lea    -0x3e91(%ebx),%eax
c0030a43:	50                   	push   %eax
c0030a44:	8d 83 dc c1 ff ff    	lea    -0x3e24(%ebx),%eax
c0030a4a:	50                   	push   %eax
c0030a4b:	e8 88 08 00 00       	call   c00312d8 <printk>
c0030a50:	83 c4 20             	add    $0x20,%esp
c0030a53:	b8 01 00 00 00       	mov    $0x1,%eax
c0030a58:	82                   	nemu_trap 
c0030a59:	8d 83 40 c3 ff ff    	lea    -0x3cc0(%ebx),%eax
c0030a5f:	50                   	push   %eax
c0030a60:	6a 2f                	push   $0x2f
c0030a62:	8d 83 6f c1 ff ff    	lea    -0x3e91(%ebx),%eax
c0030a68:	50                   	push   %eax
c0030a69:	8d 83 28 c2 ff ff    	lea    -0x3dd8(%ebx),%eax
c0030a6f:	50                   	push   %eax
c0030a70:	e8 63 08 00 00       	call   c00312d8 <printk>
c0030a75:	83 c4 10             	add    $0x10,%esp
c0030a78:	b8 01 00 00 00       	mov    $0x1,%eax
c0030a7d:	82                   	nemu_trap 
c0030a7e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0030a83:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030a86:	c9                   	leave  
c0030a87:	c3                   	ret    

c0030a88 <fs_write>:
c0030a88:	55                   	push   %ebp
c0030a89:	89 e5                	mov    %esp,%ebp
c0030a8b:	53                   	push   %ebx
c0030a8c:	83 ec 14             	sub    $0x14,%esp
c0030a8f:	e8 5f f8 ff ff       	call   c00302f3 <__x86.get_pc_thunk.bx>
c0030a94:	81 c3 6c c5 00 00    	add    $0xc56c,%ebx
c0030a9a:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
c0030a9e:	7e 2f                	jle    c0030acf <fs_write+0x47>
c0030aa0:	83 ec 0c             	sub    $0xc,%esp
c0030aa3:	8d 83 7e c2 ff ff    	lea    -0x3d82(%ebx),%eax
c0030aa9:	50                   	push   %eax
c0030aaa:	8d 83 48 c3 ff ff    	lea    -0x3cb8(%ebx),%eax
c0030ab0:	50                   	push   %eax
c0030ab1:	6a 35                	push   $0x35
c0030ab3:	8d 83 6f c1 ff ff    	lea    -0x3e91(%ebx),%eax
c0030ab9:	50                   	push   %eax
c0030aba:	8d 83 dc c1 ff ff    	lea    -0x3e24(%ebx),%eax
c0030ac0:	50                   	push   %eax
c0030ac1:	e8 12 08 00 00       	call   c00312d8 <printk>
c0030ac6:	83 c4 20             	add    $0x20,%esp
c0030ac9:	b8 01 00 00 00       	mov    $0x1,%eax
c0030ace:	82                   	nemu_trap 
c0030acf:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0030ad6:	eb 1c                	jmp    c0030af4 <fs_write+0x6c>
c0030ad8:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0030adb:	8b 45 0c             	mov    0xc(%ebp),%eax
c0030ade:	01 d0                	add    %edx,%eax
c0030ae0:	8a 00                	mov    (%eax),%al
c0030ae2:	0f be c0             	movsbl %al,%eax
c0030ae5:	83 ec 0c             	sub    $0xc,%esp
c0030ae8:	50                   	push   %eax
c0030ae9:	e8 c6 08 00 00       	call   c00313b4 <serial_printc>
c0030aee:	83 c4 10             	add    $0x10,%esp
c0030af1:	ff 45 f4             	incl   -0xc(%ebp)
c0030af4:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030af7:	39 45 10             	cmp    %eax,0x10(%ebp)
c0030afa:	77 dc                	ja     c0030ad8 <fs_write+0x50>
c0030afc:	8b 45 10             	mov    0x10(%ebp),%eax
c0030aff:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030b02:	c9                   	leave  
c0030b03:	c3                   	ret    

c0030b04 <fs_lseek>:
c0030b04:	55                   	push   %ebp
c0030b05:	89 e5                	mov    %esp,%ebp
c0030b07:	53                   	push   %ebx
c0030b08:	83 ec 04             	sub    $0x4,%esp
c0030b0b:	e8 db f7 ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c0030b10:	05 f0 c4 00 00       	add    $0xc4f0,%eax
c0030b15:	8d 90 54 c3 ff ff    	lea    -0x3cac(%eax),%edx
c0030b1b:	52                   	push   %edx
c0030b1c:	6a 48                	push   $0x48
c0030b1e:	8d 90 6f c1 ff ff    	lea    -0x3e91(%eax),%edx
c0030b24:	52                   	push   %edx
c0030b25:	8d 90 88 c2 ff ff    	lea    -0x3d78(%eax),%edx
c0030b2b:	52                   	push   %edx
c0030b2c:	89 c3                	mov    %eax,%ebx
c0030b2e:	e8 a5 07 00 00       	call   c00312d8 <printk>
c0030b33:	83 c4 10             	add    $0x10,%esp
c0030b36:	b8 01 00 00 00       	mov    $0x1,%eax
c0030b3b:	82                   	nemu_trap 
c0030b3c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0030b41:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030b44:	c9                   	leave  
c0030b45:	c3                   	ret    

c0030b46 <fs_close>:
c0030b46:	55                   	push   %ebp
c0030b47:	89 e5                	mov    %esp,%ebp
c0030b49:	53                   	push   %ebx
c0030b4a:	83 ec 04             	sub    $0x4,%esp
c0030b4d:	e8 99 f7 ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c0030b52:	05 ae c4 00 00       	add    $0xc4ae,%eax
c0030b57:	8d 90 60 c3 ff ff    	lea    -0x3ca0(%eax),%edx
c0030b5d:	52                   	push   %edx
c0030b5e:	6a 4e                	push   $0x4e
c0030b60:	8d 90 6f c1 ff ff    	lea    -0x3e91(%eax),%edx
c0030b66:	52                   	push   %edx
c0030b67:	8d 90 e0 c2 ff ff    	lea    -0x3d20(%eax),%edx
c0030b6d:	52                   	push   %edx
c0030b6e:	89 c3                	mov    %eax,%ebx
c0030b70:	e8 63 07 00 00       	call   c00312d8 <printk>
c0030b75:	83 c4 10             	add    $0x10,%esp
c0030b78:	b8 01 00 00 00       	mov    $0x1,%eax
c0030b7d:	82                   	nemu_trap 
c0030b7e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0030b83:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030b86:	c9                   	leave  
c0030b87:	c3                   	ret    

c0030b88 <out_byte>:
c0030b88:	55                   	push   %ebp
c0030b89:	89 e5                	mov    %esp,%ebp
c0030b8b:	83 ec 08             	sub    $0x8,%esp
c0030b8e:	e8 58 f7 ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c0030b93:	05 6d c4 00 00       	add    $0xc46d,%eax
c0030b98:	8b 45 08             	mov    0x8(%ebp),%eax
c0030b9b:	8b 55 0c             	mov    0xc(%ebp),%edx
c0030b9e:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c0030ba2:	88 d0                	mov    %dl,%al
c0030ba4:	88 45 f8             	mov    %al,-0x8(%ebp)
c0030ba7:	8a 45 f8             	mov    -0x8(%ebp),%al
c0030baa:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0030bad:	ee                   	out    %al,(%dx)
c0030bae:	90                   	nop
c0030baf:	c9                   	leave  
c0030bb0:	c3                   	ret    

c0030bb1 <init_i8259>:
c0030bb1:	55                   	push   %ebp
c0030bb2:	89 e5                	mov    %esp,%ebp
c0030bb4:	e8 32 f7 ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c0030bb9:	05 47 c4 00 00       	add    $0xc447,%eax
c0030bbe:	68 ff 00 00 00       	push   $0xff
c0030bc3:	6a 21                	push   $0x21
c0030bc5:	e8 be ff ff ff       	call   c0030b88 <out_byte>
c0030bca:	83 c4 08             	add    $0x8,%esp
c0030bcd:	68 ff 00 00 00       	push   $0xff
c0030bd2:	68 a1 00 00 00       	push   $0xa1
c0030bd7:	e8 ac ff ff ff       	call   c0030b88 <out_byte>
c0030bdc:	83 c4 08             	add    $0x8,%esp
c0030bdf:	6a 11                	push   $0x11
c0030be1:	6a 20                	push   $0x20
c0030be3:	e8 a0 ff ff ff       	call   c0030b88 <out_byte>
c0030be8:	83 c4 08             	add    $0x8,%esp
c0030beb:	6a 20                	push   $0x20
c0030bed:	6a 21                	push   $0x21
c0030bef:	e8 94 ff ff ff       	call   c0030b88 <out_byte>
c0030bf4:	83 c4 08             	add    $0x8,%esp
c0030bf7:	6a 04                	push   $0x4
c0030bf9:	6a 21                	push   $0x21
c0030bfb:	e8 88 ff ff ff       	call   c0030b88 <out_byte>
c0030c00:	83 c4 08             	add    $0x8,%esp
c0030c03:	6a 03                	push   $0x3
c0030c05:	6a 21                	push   $0x21
c0030c07:	e8 7c ff ff ff       	call   c0030b88 <out_byte>
c0030c0c:	83 c4 08             	add    $0x8,%esp
c0030c0f:	6a 11                	push   $0x11
c0030c11:	68 a0 00 00 00       	push   $0xa0
c0030c16:	e8 6d ff ff ff       	call   c0030b88 <out_byte>
c0030c1b:	83 c4 08             	add    $0x8,%esp
c0030c1e:	6a 28                	push   $0x28
c0030c20:	68 a1 00 00 00       	push   $0xa1
c0030c25:	e8 5e ff ff ff       	call   c0030b88 <out_byte>
c0030c2a:	83 c4 08             	add    $0x8,%esp
c0030c2d:	6a 02                	push   $0x2
c0030c2f:	68 a1 00 00 00       	push   $0xa1
c0030c34:	e8 4f ff ff ff       	call   c0030b88 <out_byte>
c0030c39:	83 c4 08             	add    $0x8,%esp
c0030c3c:	6a 03                	push   $0x3
c0030c3e:	68 a1 00 00 00       	push   $0xa1
c0030c43:	e8 40 ff ff ff       	call   c0030b88 <out_byte>
c0030c48:	83 c4 08             	add    $0x8,%esp
c0030c4b:	6a 68                	push   $0x68
c0030c4d:	6a 20                	push   $0x20
c0030c4f:	e8 34 ff ff ff       	call   c0030b88 <out_byte>
c0030c54:	83 c4 08             	add    $0x8,%esp
c0030c57:	6a 0a                	push   $0xa
c0030c59:	6a 20                	push   $0x20
c0030c5b:	e8 28 ff ff ff       	call   c0030b88 <out_byte>
c0030c60:	83 c4 08             	add    $0x8,%esp
c0030c63:	6a 68                	push   $0x68
c0030c65:	68 a0 00 00 00       	push   $0xa0
c0030c6a:	e8 19 ff ff ff       	call   c0030b88 <out_byte>
c0030c6f:	83 c4 08             	add    $0x8,%esp
c0030c72:	6a 0a                	push   $0xa
c0030c74:	68 a0 00 00 00       	push   $0xa0
c0030c79:	e8 0a ff ff ff       	call   c0030b88 <out_byte>
c0030c7e:	83 c4 08             	add    $0x8,%esp
c0030c81:	90                   	nop
c0030c82:	c9                   	leave  
c0030c83:	c3                   	ret    

c0030c84 <write_idtr>:
c0030c84:	55                   	push   %ebp
c0030c85:	89 e5                	mov    %esp,%ebp
c0030c87:	e8 5f f6 ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c0030c8c:	05 74 c3 00 00       	add    $0xc374,%eax
c0030c91:	8b 55 0c             	mov    0xc(%ebp),%edx
c0030c94:	4a                   	dec    %edx
c0030c95:	66 89 90 20 1c 01 00 	mov    %dx,0x11c20(%eax)
c0030c9c:	8b 55 08             	mov    0x8(%ebp),%edx
c0030c9f:	66 89 90 22 1c 01 00 	mov    %dx,0x11c22(%eax)
c0030ca6:	8b 55 08             	mov    0x8(%ebp),%edx
c0030ca9:	c1 ea 10             	shr    $0x10,%edx
c0030cac:	66 89 90 24 1c 01 00 	mov    %dx,0x11c24(%eax)
c0030cb3:	8d 80 20 1c 01 00    	lea    0x11c20(%eax),%eax
c0030cb9:	0f 01 18             	lidtl  (%eax)
c0030cbc:	90                   	nop
c0030cbd:	5d                   	pop    %ebp
c0030cbe:	c3                   	ret    

c0030cbf <sti>:
c0030cbf:	55                   	push   %ebp
c0030cc0:	89 e5                	mov    %esp,%ebp
c0030cc2:	e8 24 f6 ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c0030cc7:	05 39 c3 00 00       	add    $0xc339,%eax
c0030ccc:	fb                   	sti    
c0030ccd:	90                   	nop
c0030cce:	5d                   	pop    %ebp
c0030ccf:	c3                   	ret    

c0030cd0 <set_intr>:
c0030cd0:	55                   	push   %ebp
c0030cd1:	89 e5                	mov    %esp,%ebp
c0030cd3:	e8 13 f6 ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c0030cd8:	05 28 c3 00 00       	add    $0xc328,%eax
c0030cdd:	8b 45 10             	mov    0x10(%ebp),%eax
c0030ce0:	8b 55 08             	mov    0x8(%ebp),%edx
c0030ce3:	66 89 02             	mov    %ax,(%edx)
c0030ce6:	8b 45 0c             	mov    0xc(%ebp),%eax
c0030ce9:	8b 55 08             	mov    0x8(%ebp),%edx
c0030cec:	66 89 42 02          	mov    %ax,0x2(%edx)
c0030cf0:	8b 45 08             	mov    0x8(%ebp),%eax
c0030cf3:	c6 40 04 00          	movb   $0x0,0x4(%eax)
c0030cf7:	8b 45 08             	mov    0x8(%ebp),%eax
c0030cfa:	8a 50 05             	mov    0x5(%eax),%dl
c0030cfd:	83 e2 f0             	and    $0xfffffff0,%edx
c0030d00:	83 ca 0e             	or     $0xe,%edx
c0030d03:	88 50 05             	mov    %dl,0x5(%eax)
c0030d06:	8b 45 08             	mov    0x8(%ebp),%eax
c0030d09:	8a 50 05             	mov    0x5(%eax),%dl
c0030d0c:	83 e2 ef             	and    $0xffffffef,%edx
c0030d0f:	88 50 05             	mov    %dl,0x5(%eax)
c0030d12:	8b 45 14             	mov    0x14(%ebp),%eax
c0030d15:	88 c2                	mov    %al,%dl
c0030d17:	83 e2 03             	and    $0x3,%edx
c0030d1a:	8b 45 08             	mov    0x8(%ebp),%eax
c0030d1d:	83 e2 03             	and    $0x3,%edx
c0030d20:	88 d1                	mov    %dl,%cl
c0030d22:	c1 e1 05             	shl    $0x5,%ecx
c0030d25:	8a 50 05             	mov    0x5(%eax),%dl
c0030d28:	83 e2 9f             	and    $0xffffff9f,%edx
c0030d2b:	09 ca                	or     %ecx,%edx
c0030d2d:	88 50 05             	mov    %dl,0x5(%eax)
c0030d30:	8b 45 08             	mov    0x8(%ebp),%eax
c0030d33:	8a 50 05             	mov    0x5(%eax),%dl
c0030d36:	83 ca 80             	or     $0xffffff80,%edx
c0030d39:	88 50 05             	mov    %dl,0x5(%eax)
c0030d3c:	8b 45 10             	mov    0x10(%ebp),%eax
c0030d3f:	c1 e8 10             	shr    $0x10,%eax
c0030d42:	8b 55 08             	mov    0x8(%ebp),%edx
c0030d45:	66 89 42 06          	mov    %ax,0x6(%edx)
c0030d49:	90                   	nop
c0030d4a:	5d                   	pop    %ebp
c0030d4b:	c3                   	ret    

c0030d4c <set_trap>:
c0030d4c:	55                   	push   %ebp
c0030d4d:	89 e5                	mov    %esp,%ebp
c0030d4f:	e8 97 f5 ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c0030d54:	05 ac c2 00 00       	add    $0xc2ac,%eax
c0030d59:	8b 45 10             	mov    0x10(%ebp),%eax
c0030d5c:	8b 55 08             	mov    0x8(%ebp),%edx
c0030d5f:	66 89 02             	mov    %ax,(%edx)
c0030d62:	8b 45 0c             	mov    0xc(%ebp),%eax
c0030d65:	8b 55 08             	mov    0x8(%ebp),%edx
c0030d68:	66 89 42 02          	mov    %ax,0x2(%edx)
c0030d6c:	8b 45 08             	mov    0x8(%ebp),%eax
c0030d6f:	c6 40 04 00          	movb   $0x0,0x4(%eax)
c0030d73:	8b 45 08             	mov    0x8(%ebp),%eax
c0030d76:	8a 50 05             	mov    0x5(%eax),%dl
c0030d79:	83 ca 0f             	or     $0xf,%edx
c0030d7c:	88 50 05             	mov    %dl,0x5(%eax)
c0030d7f:	8b 45 08             	mov    0x8(%ebp),%eax
c0030d82:	8a 50 05             	mov    0x5(%eax),%dl
c0030d85:	83 e2 ef             	and    $0xffffffef,%edx
c0030d88:	88 50 05             	mov    %dl,0x5(%eax)
c0030d8b:	8b 45 14             	mov    0x14(%ebp),%eax
c0030d8e:	88 c2                	mov    %al,%dl
c0030d90:	83 e2 03             	and    $0x3,%edx
c0030d93:	8b 45 08             	mov    0x8(%ebp),%eax
c0030d96:	83 e2 03             	and    $0x3,%edx
c0030d99:	88 d1                	mov    %dl,%cl
c0030d9b:	c1 e1 05             	shl    $0x5,%ecx
c0030d9e:	8a 50 05             	mov    0x5(%eax),%dl
c0030da1:	83 e2 9f             	and    $0xffffff9f,%edx
c0030da4:	09 ca                	or     %ecx,%edx
c0030da6:	88 50 05             	mov    %dl,0x5(%eax)
c0030da9:	8b 45 08             	mov    0x8(%ebp),%eax
c0030dac:	8a 50 05             	mov    0x5(%eax),%dl
c0030daf:	83 ca 80             	or     $0xffffff80,%edx
c0030db2:	88 50 05             	mov    %dl,0x5(%eax)
c0030db5:	8b 45 10             	mov    0x10(%ebp),%eax
c0030db8:	c1 e8 10             	shr    $0x10,%eax
c0030dbb:	8b 55 08             	mov    0x8(%ebp),%edx
c0030dbe:	66 89 42 06          	mov    %ax,0x6(%edx)
c0030dc2:	90                   	nop
c0030dc3:	5d                   	pop    %ebp
c0030dc4:	c3                   	ret    

c0030dc5 <init_idt>:
c0030dc5:	55                   	push   %ebp
c0030dc6:	89 e5                	mov    %esp,%ebp
c0030dc8:	53                   	push   %ebx
c0030dc9:	83 ec 10             	sub    $0x10,%esp
c0030dcc:	e8 22 f5 ff ff       	call   c00302f3 <__x86.get_pc_thunk.bx>
c0030dd1:	81 c3 2f c2 00 00    	add    $0xc22f,%ebx
c0030dd7:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0030dde:	eb 2b                	jmp    c0030e0b <init_idt+0x46>
c0030de0:	c7 c0 cd 00 03 c0    	mov    $0xc00300cd,%eax
c0030de6:	89 c2                	mov    %eax,%edx
c0030de8:	8b 45 f8             	mov    -0x8(%ebp),%eax
c0030deb:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
c0030df2:	8d 83 20 14 01 00    	lea    0x11420(%ebx),%eax
c0030df8:	01 c8                	add    %ecx,%eax
c0030dfa:	6a 00                	push   $0x0
c0030dfc:	52                   	push   %edx
c0030dfd:	6a 08                	push   $0x8
c0030dff:	50                   	push   %eax
c0030e00:	e8 47 ff ff ff       	call   c0030d4c <set_trap>
c0030e05:	83 c4 10             	add    $0x10,%esp
c0030e08:	ff 45 f8             	incl   -0x8(%ebp)
c0030e0b:	81 7d f8 ff 00 00 00 	cmpl   $0xff,-0x8(%ebp)
c0030e12:	7e cc                	jle    c0030de0 <init_idt+0x1b>
c0030e14:	c7 c0 52 00 03 c0    	mov    $0xc0030052,%eax
c0030e1a:	6a 00                	push   $0x0
c0030e1c:	50                   	push   %eax
c0030e1d:	6a 08                	push   $0x8
c0030e1f:	8d 83 20 14 01 00    	lea    0x11420(%ebx),%eax
c0030e25:	50                   	push   %eax
c0030e26:	e8 21 ff ff ff       	call   c0030d4c <set_trap>
c0030e2b:	83 c4 10             	add    $0x10,%esp
c0030e2e:	c7 c0 58 00 03 c0    	mov    $0xc0030058,%eax
c0030e34:	89 c2                	mov    %eax,%edx
c0030e36:	8d 83 28 14 01 00    	lea    0x11428(%ebx),%eax
c0030e3c:	6a 00                	push   $0x0
c0030e3e:	52                   	push   %edx
c0030e3f:	6a 08                	push   $0x8
c0030e41:	50                   	push   %eax
c0030e42:	e8 05 ff ff ff       	call   c0030d4c <set_trap>
c0030e47:	83 c4 10             	add    $0x10,%esp
c0030e4a:	c7 c0 5e 00 03 c0    	mov    $0xc003005e,%eax
c0030e50:	89 c2                	mov    %eax,%edx
c0030e52:	8d 83 30 14 01 00    	lea    0x11430(%ebx),%eax
c0030e58:	6a 00                	push   $0x0
c0030e5a:	52                   	push   %edx
c0030e5b:	6a 08                	push   $0x8
c0030e5d:	50                   	push   %eax
c0030e5e:	e8 e9 fe ff ff       	call   c0030d4c <set_trap>
c0030e63:	83 c4 10             	add    $0x10,%esp
c0030e66:	c7 c0 64 00 03 c0    	mov    $0xc0030064,%eax
c0030e6c:	89 c2                	mov    %eax,%edx
c0030e6e:	8d 83 38 14 01 00    	lea    0x11438(%ebx),%eax
c0030e74:	6a 00                	push   $0x0
c0030e76:	52                   	push   %edx
c0030e77:	6a 08                	push   $0x8
c0030e79:	50                   	push   %eax
c0030e7a:	e8 cd fe ff ff       	call   c0030d4c <set_trap>
c0030e7f:	83 c4 10             	add    $0x10,%esp
c0030e82:	c7 c0 6a 00 03 c0    	mov    $0xc003006a,%eax
c0030e88:	89 c2                	mov    %eax,%edx
c0030e8a:	8d 83 40 14 01 00    	lea    0x11440(%ebx),%eax
c0030e90:	6a 00                	push   $0x0
c0030e92:	52                   	push   %edx
c0030e93:	6a 08                	push   $0x8
c0030e95:	50                   	push   %eax
c0030e96:	e8 b1 fe ff ff       	call   c0030d4c <set_trap>
c0030e9b:	83 c4 10             	add    $0x10,%esp
c0030e9e:	c7 c0 70 00 03 c0    	mov    $0xc0030070,%eax
c0030ea4:	89 c2                	mov    %eax,%edx
c0030ea6:	8d 83 48 14 01 00    	lea    0x11448(%ebx),%eax
c0030eac:	6a 00                	push   $0x0
c0030eae:	52                   	push   %edx
c0030eaf:	6a 08                	push   $0x8
c0030eb1:	50                   	push   %eax
c0030eb2:	e8 95 fe ff ff       	call   c0030d4c <set_trap>
c0030eb7:	83 c4 10             	add    $0x10,%esp
c0030eba:	c7 c0 76 00 03 c0    	mov    $0xc0030076,%eax
c0030ec0:	89 c2                	mov    %eax,%edx
c0030ec2:	8d 83 50 14 01 00    	lea    0x11450(%ebx),%eax
c0030ec8:	6a 00                	push   $0x0
c0030eca:	52                   	push   %edx
c0030ecb:	6a 08                	push   $0x8
c0030ecd:	50                   	push   %eax
c0030ece:	e8 79 fe ff ff       	call   c0030d4c <set_trap>
c0030ed3:	83 c4 10             	add    $0x10,%esp
c0030ed6:	c7 c0 7c 00 03 c0    	mov    $0xc003007c,%eax
c0030edc:	89 c2                	mov    %eax,%edx
c0030ede:	8d 83 58 14 01 00    	lea    0x11458(%ebx),%eax
c0030ee4:	6a 00                	push   $0x0
c0030ee6:	52                   	push   %edx
c0030ee7:	6a 08                	push   $0x8
c0030ee9:	50                   	push   %eax
c0030eea:	e8 5d fe ff ff       	call   c0030d4c <set_trap>
c0030eef:	83 c4 10             	add    $0x10,%esp
c0030ef2:	c7 c0 82 00 03 c0    	mov    $0xc0030082,%eax
c0030ef8:	89 c2                	mov    %eax,%edx
c0030efa:	8d 83 60 14 01 00    	lea    0x11460(%ebx),%eax
c0030f00:	6a 00                	push   $0x0
c0030f02:	52                   	push   %edx
c0030f03:	6a 08                	push   $0x8
c0030f05:	50                   	push   %eax
c0030f06:	e8 41 fe ff ff       	call   c0030d4c <set_trap>
c0030f0b:	83 c4 10             	add    $0x10,%esp
c0030f0e:	c7 c0 86 00 03 c0    	mov    $0xc0030086,%eax
c0030f14:	89 c2                	mov    %eax,%edx
c0030f16:	8d 83 68 14 01 00    	lea    0x11468(%ebx),%eax
c0030f1c:	6a 00                	push   $0x0
c0030f1e:	52                   	push   %edx
c0030f1f:	6a 08                	push   $0x8
c0030f21:	50                   	push   %eax
c0030f22:	e8 25 fe ff ff       	call   c0030d4c <set_trap>
c0030f27:	83 c4 10             	add    $0x10,%esp
c0030f2a:	c7 c0 8c 00 03 c0    	mov    $0xc003008c,%eax
c0030f30:	89 c2                	mov    %eax,%edx
c0030f32:	8d 83 70 14 01 00    	lea    0x11470(%ebx),%eax
c0030f38:	6a 00                	push   $0x0
c0030f3a:	52                   	push   %edx
c0030f3b:	6a 08                	push   $0x8
c0030f3d:	50                   	push   %eax
c0030f3e:	e8 09 fe ff ff       	call   c0030d4c <set_trap>
c0030f43:	83 c4 10             	add    $0x10,%esp
c0030f46:	c7 c0 90 00 03 c0    	mov    $0xc0030090,%eax
c0030f4c:	89 c2                	mov    %eax,%edx
c0030f4e:	8d 83 78 14 01 00    	lea    0x11478(%ebx),%eax
c0030f54:	6a 00                	push   $0x0
c0030f56:	52                   	push   %edx
c0030f57:	6a 08                	push   $0x8
c0030f59:	50                   	push   %eax
c0030f5a:	e8 ed fd ff ff       	call   c0030d4c <set_trap>
c0030f5f:	83 c4 10             	add    $0x10,%esp
c0030f62:	c7 c0 94 00 03 c0    	mov    $0xc0030094,%eax
c0030f68:	89 c2                	mov    %eax,%edx
c0030f6a:	8d 83 80 14 01 00    	lea    0x11480(%ebx),%eax
c0030f70:	6a 00                	push   $0x0
c0030f72:	52                   	push   %edx
c0030f73:	6a 08                	push   $0x8
c0030f75:	50                   	push   %eax
c0030f76:	e8 d1 fd ff ff       	call   c0030d4c <set_trap>
c0030f7b:	83 c4 10             	add    $0x10,%esp
c0030f7e:	c7 c0 98 00 03 c0    	mov    $0xc0030098,%eax
c0030f84:	89 c2                	mov    %eax,%edx
c0030f86:	8d 83 88 14 01 00    	lea    0x11488(%ebx),%eax
c0030f8c:	6a 00                	push   $0x0
c0030f8e:	52                   	push   %edx
c0030f8f:	6a 08                	push   $0x8
c0030f91:	50                   	push   %eax
c0030f92:	e8 b5 fd ff ff       	call   c0030d4c <set_trap>
c0030f97:	83 c4 10             	add    $0x10,%esp
c0030f9a:	c7 c0 9c 00 03 c0    	mov    $0xc003009c,%eax
c0030fa0:	89 c2                	mov    %eax,%edx
c0030fa2:	8d 83 90 14 01 00    	lea    0x11490(%ebx),%eax
c0030fa8:	6a 00                	push   $0x0
c0030faa:	52                   	push   %edx
c0030fab:	6a 08                	push   $0x8
c0030fad:	50                   	push   %eax
c0030fae:	e8 99 fd ff ff       	call   c0030d4c <set_trap>
c0030fb3:	83 c4 10             	add    $0x10,%esp
c0030fb6:	c7 c0 a0 00 03 c0    	mov    $0xc00300a0,%eax
c0030fbc:	89 c2                	mov    %eax,%edx
c0030fbe:	8d 83 20 18 01 00    	lea    0x11820(%ebx),%eax
c0030fc4:	6a 03                	push   $0x3
c0030fc6:	52                   	push   %edx
c0030fc7:	6a 08                	push   $0x8
c0030fc9:	50                   	push   %eax
c0030fca:	e8 7d fd ff ff       	call   c0030d4c <set_trap>
c0030fcf:	83 c4 10             	add    $0x10,%esp
c0030fd2:	c7 c0 a9 00 03 c0    	mov    $0xc00300a9,%eax
c0030fd8:	89 c2                	mov    %eax,%edx
c0030fda:	8d 83 20 15 01 00    	lea    0x11520(%ebx),%eax
c0030fe0:	6a 00                	push   $0x0
c0030fe2:	52                   	push   %edx
c0030fe3:	6a 08                	push   $0x8
c0030fe5:	50                   	push   %eax
c0030fe6:	e8 e5 fc ff ff       	call   c0030cd0 <set_intr>
c0030feb:	83 c4 10             	add    $0x10,%esp
c0030fee:	c7 c0 b2 00 03 c0    	mov    $0xc00300b2,%eax
c0030ff4:	89 c2                	mov    %eax,%edx
c0030ff6:	8d 83 28 15 01 00    	lea    0x11528(%ebx),%eax
c0030ffc:	6a 00                	push   $0x0
c0030ffe:	52                   	push   %edx
c0030fff:	6a 08                	push   $0x8
c0031001:	50                   	push   %eax
c0031002:	e8 c9 fc ff ff       	call   c0030cd0 <set_intr>
c0031007:	83 c4 10             	add    $0x10,%esp
c003100a:	c7 c0 bb 00 03 c0    	mov    $0xc00300bb,%eax
c0031010:	89 c2                	mov    %eax,%edx
c0031012:	8d 83 30 15 01 00    	lea    0x11530(%ebx),%eax
c0031018:	6a 00                	push   $0x0
c003101a:	52                   	push   %edx
c003101b:	6a 08                	push   $0x8
c003101d:	50                   	push   %eax
c003101e:	e8 ad fc ff ff       	call   c0030cd0 <set_intr>
c0031023:	83 c4 10             	add    $0x10,%esp
c0031026:	c7 c0 c4 00 03 c0    	mov    $0xc00300c4,%eax
c003102c:	89 c2                	mov    %eax,%edx
c003102e:	8d 83 90 15 01 00    	lea    0x11590(%ebx),%eax
c0031034:	6a 00                	push   $0x0
c0031036:	52                   	push   %edx
c0031037:	6a 08                	push   $0x8
c0031039:	50                   	push   %eax
c003103a:	e8 91 fc ff ff       	call   c0030cd0 <set_intr>
c003103f:	83 c4 10             	add    $0x10,%esp
c0031042:	68 00 08 00 00       	push   $0x800
c0031047:	8d 83 20 14 01 00    	lea    0x11420(%ebx),%eax
c003104d:	50                   	push   %eax
c003104e:	e8 31 fc ff ff       	call   c0030c84 <write_idtr>
c0031053:	83 c4 08             	add    $0x8,%esp
c0031056:	e8 64 fc ff ff       	call   c0030cbf <sti>
c003105b:	90                   	nop
c003105c:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003105f:	c9                   	leave  
c0031060:	c3                   	ret    

c0031061 <add_irq_handle>:
c0031061:	55                   	push   %ebp
c0031062:	89 e5                	mov    %esp,%ebp
c0031064:	53                   	push   %ebx
c0031065:	83 ec 14             	sub    $0x14,%esp
c0031068:	e8 86 f2 ff ff       	call   c00302f3 <__x86.get_pc_thunk.bx>
c003106d:	81 c3 93 bf 00 00    	add    $0xbf93,%ebx
c0031073:	83 7d 08 0f          	cmpl   $0xf,0x8(%ebp)
c0031077:	7e 2f                	jle    c00310a8 <add_irq_handle+0x47>
c0031079:	83 ec 0c             	sub    $0xc,%esp
c003107c:	8d 83 6c c3 ff ff    	lea    -0x3c94(%ebx),%eax
c0031082:	50                   	push   %eax
c0031083:	8d 83 bc c4 ff ff    	lea    -0x3b44(%ebx),%eax
c0031089:	50                   	push   %eax
c003108a:	6a 16                	push   $0x16
c003108c:	8d 83 7f c3 ff ff    	lea    -0x3c81(%ebx),%eax
c0031092:	50                   	push   %eax
c0031093:	8d 83 94 c3 ff ff    	lea    -0x3c6c(%ebx),%eax
c0031099:	50                   	push   %eax
c003109a:	e8 39 02 00 00       	call   c00312d8 <printk>
c003109f:	83 c4 20             	add    $0x20,%esp
c00310a2:	b8 01 00 00 00       	mov    $0x1,%eax
c00310a7:	82                   	nemu_trap 
c00310a8:	8b 83 80 1d 01 00    	mov    0x11d80(%ebx),%eax
c00310ae:	83 f8 20             	cmp    $0x20,%eax
c00310b1:	7e 2f                	jle    c00310e2 <add_irq_handle+0x81>
c00310b3:	83 ec 0c             	sub    $0xc,%esp
c00310b6:	8d 83 de c3 ff ff    	lea    -0x3c22(%ebx),%eax
c00310bc:	50                   	push   %eax
c00310bd:	8d 83 bc c4 ff ff    	lea    -0x3b44(%ebx),%eax
c00310c3:	50                   	push   %eax
c00310c4:	6a 17                	push   $0x17
c00310c6:	8d 83 7f c3 ff ff    	lea    -0x3c81(%ebx),%eax
c00310cc:	50                   	push   %eax
c00310cd:	8d 83 94 c3 ff ff    	lea    -0x3c6c(%ebx),%eax
c00310d3:	50                   	push   %eax
c00310d4:	e8 ff 01 00 00       	call   c00312d8 <printk>
c00310d9:	83 c4 20             	add    $0x20,%esp
c00310dc:	b8 01 00 00 00       	mov    $0x1,%eax
c00310e1:	82                   	nemu_trap 
c00310e2:	8b 83 80 1d 01 00    	mov    0x11d80(%ebx),%eax
c00310e8:	8d 50 01             	lea    0x1(%eax),%edx
c00310eb:	89 93 80 1d 01 00    	mov    %edx,0x11d80(%ebx)
c00310f1:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
c00310f8:	8d 83 40 1c 01 00    	lea    0x11c40(%ebx),%eax
c00310fe:	01 d0                	add    %edx,%eax
c0031100:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0031103:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031106:	8b 55 0c             	mov    0xc(%ebp),%edx
c0031109:	89 10                	mov    %edx,(%eax)
c003110b:	8b 45 08             	mov    0x8(%ebp),%eax
c003110e:	8b 94 83 40 1d 01 00 	mov    0x11d40(%ebx,%eax,4),%edx
c0031115:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031118:	89 50 04             	mov    %edx,0x4(%eax)
c003111b:	8b 45 08             	mov    0x8(%ebp),%eax
c003111e:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0031121:	89 94 83 40 1d 01 00 	mov    %edx,0x11d40(%ebx,%eax,4)
c0031128:	90                   	nop
c0031129:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003112c:	c9                   	leave  
c003112d:	c3                   	ret    

c003112e <irq_handle>:
c003112e:	55                   	push   %ebp
c003112f:	89 e5                	mov    %esp,%ebp
c0031131:	53                   	push   %ebx
c0031132:	83 ec 14             	sub    $0x14,%esp
c0031135:	e8 b9 f1 ff ff       	call   c00302f3 <__x86.get_pc_thunk.bx>
c003113a:	81 c3 c6 be 00 00    	add    $0xbec6,%ebx
c0031140:	8b 45 08             	mov    0x8(%ebp),%eax
c0031143:	8b 40 20             	mov    0x20(%eax),%eax
c0031146:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0031149:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
c003114d:	79 2a                	jns    c0031179 <irq_handle+0x4b>
c003114f:	8d 83 cc c4 ff ff    	lea    -0x3b34(%ebx),%eax
c0031155:	50                   	push   %eax
c0031156:	6a 26                	push   $0x26
c0031158:	8d 83 7f c3 ff ff    	lea    -0x3c81(%ebx),%eax
c003115e:	50                   	push   %eax
c003115f:	8d 83 fc c3 ff ff    	lea    -0x3c04(%ebx),%eax
c0031165:	50                   	push   %eax
c0031166:	e8 6d 01 00 00       	call   c00312d8 <printk>
c003116b:	83 c4 10             	add    $0x10,%esp
c003116e:	b8 01 00 00 00       	mov    $0x1,%eax
c0031173:	82                   	nemu_trap 
c0031174:	e9 0d 01 00 00       	jmp    c0031286 <irq_handle+0x158>
c0031179:	81 7d f0 80 00 00 00 	cmpl   $0x80,-0x10(%ebp)
c0031180:	75 13                	jne    c0031195 <irq_handle+0x67>
c0031182:	83 ec 0c             	sub    $0xc,%esp
c0031185:	ff 75 08             	pushl  0x8(%ebp)
c0031188:	e8 9f 09 00 00       	call   c0031b2c <do_syscall>
c003118d:	83 c4 10             	add    $0x10,%esp
c0031190:	e9 f1 00 00 00       	jmp    c0031286 <irq_handle+0x158>
c0031195:	81 7d f0 e7 03 00 00 	cmpl   $0x3e7,-0x10(%ebp)
c003119c:	7f 37                	jg     c00311d5 <irq_handle+0xa7>
c003119e:	8b 45 08             	mov    0x8(%ebp),%eax
c00311a1:	8b 40 28             	mov    0x28(%eax),%eax
c00311a4:	83 ec 08             	sub    $0x8,%esp
c00311a7:	50                   	push   %eax
c00311a8:	ff 75 f0             	pushl  -0x10(%ebp)
c00311ab:	8d 83 cc c4 ff ff    	lea    -0x3b34(%ebx),%eax
c00311b1:	50                   	push   %eax
c00311b2:	6a 2e                	push   $0x2e
c00311b4:	8d 83 7f c3 ff ff    	lea    -0x3c81(%ebx),%eax
c00311ba:	50                   	push   %eax
c00311bb:	8d 83 48 c4 ff ff    	lea    -0x3bb8(%ebx),%eax
c00311c1:	50                   	push   %eax
c00311c2:	e8 11 01 00 00       	call   c00312d8 <printk>
c00311c7:	83 c4 20             	add    $0x20,%esp
c00311ca:	b8 01 00 00 00       	mov    $0x1,%eax
c00311cf:	82                   	nemu_trap 
c00311d0:	e9 b1 00 00 00       	jmp    c0031286 <irq_handle+0x158>
c00311d5:	81 7d f0 e7 03 00 00 	cmpl   $0x3e7,-0x10(%ebp)
c00311dc:	0f 8e a4 00 00 00    	jle    c0031286 <irq_handle+0x158>
c00311e2:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00311e5:	2d e8 03 00 00       	sub    $0x3e8,%eax
c00311ea:	89 45 ec             	mov    %eax,-0x14(%ebp)
c00311ed:	83 7d ec 0f          	cmpl   $0xf,-0x14(%ebp)
c00311f1:	7e 2f                	jle    c0031222 <irq_handle+0xf4>
c00311f3:	83 ec 0c             	sub    $0xc,%esp
c00311f6:	8d 83 a2 c4 ff ff    	lea    -0x3b5e(%ebx),%eax
c00311fc:	50                   	push   %eax
c00311fd:	8d 83 cc c4 ff ff    	lea    -0x3b34(%ebx),%eax
c0031203:	50                   	push   %eax
c0031204:	6a 33                	push   $0x33
c0031206:	8d 83 7f c3 ff ff    	lea    -0x3c81(%ebx),%eax
c003120c:	50                   	push   %eax
c003120d:	8d 83 94 c3 ff ff    	lea    -0x3c6c(%ebx),%eax
c0031213:	50                   	push   %eax
c0031214:	e8 bf 00 00 00       	call   c00312d8 <printk>
c0031219:	83 c4 20             	add    $0x20,%esp
c003121c:	b8 01 00 00 00       	mov    $0x1,%eax
c0031221:	82                   	nemu_trap 
c0031222:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0031225:	8b 84 83 40 1d 01 00 	mov    0x11d40(%ebx,%eax,4),%eax
c003122c:	89 45 f4             	mov    %eax,-0xc(%ebp)
c003122f:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0031233:	0f 94 c0             	sete   %al
c0031236:	88 45 eb             	mov    %al,-0x15(%ebp)
c0031239:	80 7d eb 00          	cmpb   $0x0,-0x15(%ebp)
c003123d:	74 41                	je     c0031280 <irq_handle+0x152>
c003123f:	83 ec 0c             	sub    $0xc,%esp
c0031242:	8d 83 b8 c4 ff ff    	lea    -0x3b48(%ebx),%eax
c0031248:	50                   	push   %eax
c0031249:	8d 83 cc c4 ff ff    	lea    -0x3b34(%ebx),%eax
c003124f:	50                   	push   %eax
c0031250:	6a 3b                	push   $0x3b
c0031252:	8d 83 7f c3 ff ff    	lea    -0x3c81(%ebx),%eax
c0031258:	50                   	push   %eax
c0031259:	8d 83 94 c3 ff ff    	lea    -0x3c6c(%ebx),%eax
c003125f:	50                   	push   %eax
c0031260:	e8 73 00 00 00       	call   c00312d8 <printk>
c0031265:	83 c4 20             	add    $0x20,%esp
c0031268:	b8 01 00 00 00       	mov    $0x1,%eax
c003126d:	82                   	nemu_trap 
c003126e:	eb 10                	jmp    c0031280 <irq_handle+0x152>
c0031270:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031273:	8b 00                	mov    (%eax),%eax
c0031275:	ff d0                	call   *%eax
c0031277:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003127a:	8b 40 04             	mov    0x4(%eax),%eax
c003127d:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0031280:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0031284:	75 ea                	jne    c0031270 <irq_handle+0x142>
c0031286:	90                   	nop
c0031287:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003128a:	c9                   	leave  
c003128b:	c3                   	ret    

c003128c <sbrk>:
c003128c:	55                   	push   %ebp
c003128d:	89 e5                	mov    %esp,%ebp
c003128f:	53                   	push   %ebx
c0031290:	83 ec 04             	sub    $0x4,%esp
c0031293:	e8 53 f0 ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c0031298:	05 68 bd 00 00       	add    $0xbd68,%eax
c003129d:	83 ec 0c             	sub    $0xc,%esp
c00312a0:	8d 90 d8 c4 ff ff    	lea    -0x3b28(%eax),%edx
c00312a6:	52                   	push   %edx
c00312a7:	8d 90 38 c5 ff ff    	lea    -0x3ac8(%eax),%edx
c00312ad:	52                   	push   %edx
c00312ae:	6a 09                	push   $0x9
c00312b0:	8d 90 da c4 ff ff    	lea    -0x3b26(%eax),%edx
c00312b6:	52                   	push   %edx
c00312b7:	8d 90 ec c4 ff ff    	lea    -0x3b14(%eax),%edx
c00312bd:	52                   	push   %edx
c00312be:	89 c3                	mov    %eax,%ebx
c00312c0:	e8 13 00 00 00       	call   c00312d8 <printk>
c00312c5:	83 c4 20             	add    $0x20,%esp
c00312c8:	b8 01 00 00 00       	mov    $0x1,%eax
c00312cd:	82                   	nemu_trap 
c00312ce:	b8 00 00 00 00       	mov    $0x0,%eax
c00312d3:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00312d6:	c9                   	leave  
c00312d7:	c3                   	ret    

c00312d8 <printk>:
c00312d8:	55                   	push   %ebp
c00312d9:	89 e5                	mov    %esp,%ebp
c00312db:	53                   	push   %ebx
c00312dc:	83 ec 14             	sub    $0x14,%esp
c00312df:	e8 0f f0 ff ff       	call   c00302f3 <__x86.get_pc_thunk.bx>
c00312e4:	81 c3 1c bd 00 00    	add    $0xbd1c,%ebx
c00312ea:	8d 45 0c             	lea    0xc(%ebp),%eax
c00312ed:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00312f0:	8b 45 08             	mov    0x8(%ebp),%eax
c00312f3:	ff 75 f4             	pushl  -0xc(%ebp)
c00312f6:	50                   	push   %eax
c00312f7:	68 00 01 00 00       	push   $0x100
c00312fc:	8d 83 a0 1d 01 00    	lea    0x11da0(%ebx),%eax
c0031302:	50                   	push   %eax
c0031303:	e8 18 0d 00 00       	call   c0032020 <vsnprintf>
c0031308:	83 c4 10             	add    $0x10,%esp
c003130b:	89 45 f0             	mov    %eax,-0x10(%ebp)
c003130e:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0031311:	83 ec 04             	sub    $0x4,%esp
c0031314:	50                   	push   %eax
c0031315:	8d 83 a0 1d 01 00    	lea    0x11da0(%ebx),%eax
c003131b:	50                   	push   %eax
c003131c:	6a 01                	push   $0x1
c003131e:	e8 65 f7 ff ff       	call   c0030a88 <fs_write>
c0031323:	83 c4 10             	add    $0x10,%esp
c0031326:	90                   	nop
c0031327:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003132a:	c9                   	leave  
c003132b:	c3                   	ret    

c003132c <in_byte>:
c003132c:	55                   	push   %ebp
c003132d:	89 e5                	mov    %esp,%ebp
c003132f:	83 ec 14             	sub    $0x14,%esp
c0031332:	e8 b4 ef ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c0031337:	05 c9 bc 00 00       	add    $0xbcc9,%eax
c003133c:	8b 45 08             	mov    0x8(%ebp),%eax
c003133f:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
c0031343:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0031346:	89 c2                	mov    %eax,%edx
c0031348:	ec                   	in     (%dx),%al
c0031349:	88 45 ff             	mov    %al,-0x1(%ebp)
c003134c:	8a 45 ff             	mov    -0x1(%ebp),%al
c003134f:	c9                   	leave  
c0031350:	c3                   	ret    

c0031351 <out_byte>:
c0031351:	55                   	push   %ebp
c0031352:	89 e5                	mov    %esp,%ebp
c0031354:	83 ec 08             	sub    $0x8,%esp
c0031357:	e8 8f ef ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c003135c:	05 a4 bc 00 00       	add    $0xbca4,%eax
c0031361:	8b 45 08             	mov    0x8(%ebp),%eax
c0031364:	8b 55 0c             	mov    0xc(%ebp),%edx
c0031367:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c003136b:	88 d0                	mov    %dl,%al
c003136d:	88 45 f8             	mov    %al,-0x8(%ebp)
c0031370:	8a 45 f8             	mov    -0x8(%ebp),%al
c0031373:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0031376:	ee                   	out    %al,(%dx)
c0031377:	90                   	nop
c0031378:	c9                   	leave  
c0031379:	c3                   	ret    

c003137a <init_serial>:
c003137a:	55                   	push   %ebp
c003137b:	89 e5                	mov    %esp,%ebp
c003137d:	e8 69 ef ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c0031382:	05 7e bc 00 00       	add    $0xbc7e,%eax
c0031387:	90                   	nop
c0031388:	5d                   	pop    %ebp
c0031389:	c3                   	ret    

c003138a <serial_idle>:
c003138a:	55                   	push   %ebp
c003138b:	89 e5                	mov    %esp,%ebp
c003138d:	e8 59 ef ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c0031392:	05 6e bc 00 00       	add    $0xbc6e,%eax
c0031397:	68 fd 03 00 00       	push   $0x3fd
c003139c:	e8 8b ff ff ff       	call   c003132c <in_byte>
c00313a1:	83 c4 04             	add    $0x4,%esp
c00313a4:	0f b6 c0             	movzbl %al,%eax
c00313a7:	83 e0 20             	and    $0x20,%eax
c00313aa:	85 c0                	test   %eax,%eax
c00313ac:	0f 95 c0             	setne  %al
c00313af:	0f b6 c0             	movzbl %al,%eax
c00313b2:	c9                   	leave  
c00313b3:	c3                   	ret    

c00313b4 <serial_printc>:
c00313b4:	55                   	push   %ebp
c00313b5:	89 e5                	mov    %esp,%ebp
c00313b7:	83 ec 04             	sub    $0x4,%esp
c00313ba:	e8 2c ef ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c00313bf:	05 41 bc 00 00       	add    $0xbc41,%eax
c00313c4:	8b 45 08             	mov    0x8(%ebp),%eax
c00313c7:	88 45 fc             	mov    %al,-0x4(%ebp)
c00313ca:	90                   	nop
c00313cb:	e8 ba ff ff ff       	call   c003138a <serial_idle>
c00313d0:	85 c0                	test   %eax,%eax
c00313d2:	74 f7                	je     c00313cb <serial_printc+0x17>
c00313d4:	8a 45 fc             	mov    -0x4(%ebp),%al
c00313d7:	0f b6 c0             	movzbl %al,%eax
c00313da:	50                   	push   %eax
c00313db:	68 f8 03 00 00       	push   $0x3f8
c00313e0:	e8 6c ff ff ff       	call   c0031351 <out_byte>
c00313e5:	83 c4 08             	add    $0x8,%esp
c00313e8:	90                   	nop
c00313e9:	c9                   	leave  
c00313ea:	c3                   	ret    

c00313eb <sti>:
c00313eb:	55                   	push   %ebp
c00313ec:	89 e5                	mov    %esp,%ebp
c00313ee:	e8 f8 ee ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c00313f3:	05 0d bc 00 00       	add    $0xbc0d,%eax
c00313f8:	fb                   	sti    
c00313f9:	90                   	nop
c00313fa:	5d                   	pop    %ebp
c00313fb:	c3                   	ret    

c00313fc <init>:
c00313fc:	55                   	push   %ebp
c00313fd:	89 e5                	mov    %esp,%ebp
c00313ff:	53                   	push   %ebx
c0031400:	83 ec 04             	sub    $0x4,%esp
c0031403:	e8 eb ee ff ff       	call   c00302f3 <__x86.get_pc_thunk.bx>
c0031408:	81 c3 f8 bb 00 00    	add    $0xbbf8,%ebx
c003140e:	e8 14 01 00 00       	call   c0031527 <init_page>
c0031413:	81 c4 00 00 00 c0    	add    $0xc0000000,%esp
c0031419:	8d 83 2e 44 ff bf    	lea    -0x4000bbd2(%ebx),%eax
c003141f:	ff e0                	jmp    *%eax
c0031421:	b8 01 00 00 00       	mov    $0x1,%eax
c0031426:	82                   	nemu_trap 
c0031427:	90                   	nop
c0031428:	83 c4 04             	add    $0x4,%esp
c003142b:	5b                   	pop    %ebx
c003142c:	5d                   	pop    %ebp
c003142d:	c3                   	ret    

c003142e <init_cond>:
c003142e:	55                   	push   %ebp
c003142f:	89 e5                	mov    %esp,%ebp
c0031431:	53                   	push   %ebx
c0031432:	83 ec 14             	sub    $0x14,%esp
c0031435:	e8 b9 ee ff ff       	call   c00302f3 <__x86.get_pc_thunk.bx>
c003143a:	81 c3 c6 bb 00 00    	add    $0xbbc6,%ebx
c0031440:	e8 c3 02 00 00       	call   c0031708 <init_segment>
c0031445:	e8 7b f9 ff ff       	call   c0030dc5 <init_idt>
c003144a:	e8 9c ff ff ff       	call   c00313eb <sti>
c003144f:	e8 51 f3 ff ff       	call   c00307a5 <init_ide>
c0031454:	e8 9d 03 00 00       	call   c00317f6 <init_mm>
c0031459:	8d 83 80 c5 ff ff    	lea    -0x3a80(%ebx),%eax
c003145f:	50                   	push   %eax
c0031460:	6a 56                	push   $0x56
c0031462:	8d 83 40 c5 ff ff    	lea    -0x3ac0(%ebx),%eax
c0031468:	50                   	push   %eax
c0031469:	8d 83 4c c5 ff ff    	lea    -0x3ab4(%ebx),%eax
c003146f:	50                   	push   %eax
c0031470:	e8 63 fe ff ff       	call   c00312d8 <printk>
c0031475:	83 c4 10             	add    $0x10,%esp
c0031478:	e8 83 f3 ff ff       	call   c0030800 <loader>
c003147d:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0031480:	bc 00 00 00 c0       	mov    $0xc0000000,%esp
c0031485:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031488:	ff d0                	call   *%eax
c003148a:	90                   	nop
c003148b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003148e:	c9                   	leave  
c003148f:	c3                   	ret    

c0031490 <read_cr0>:
c0031490:	55                   	push   %ebp
c0031491:	89 e5                	mov    %esp,%ebp
c0031493:	83 ec 10             	sub    $0x10,%esp
c0031496:	e8 50 ee ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c003149b:	05 65 bb 00 00       	add    $0xbb65,%eax
c00314a0:	0f 20 c0             	mov    %cr0,%eax
c00314a3:	89 45 fc             	mov    %eax,-0x4(%ebp)
c00314a6:	8b 45 fc             	mov    -0x4(%ebp),%eax
c00314a9:	c9                   	leave  
c00314aa:	c3                   	ret    

c00314ab <write_cr0>:
c00314ab:	55                   	push   %ebp
c00314ac:	89 e5                	mov    %esp,%ebp
c00314ae:	e8 38 ee ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c00314b3:	05 4d bb 00 00       	add    $0xbb4d,%eax
c00314b8:	8b 45 08             	mov    0x8(%ebp),%eax
c00314bb:	0f 22 c0             	mov    %eax,%cr0
c00314be:	90                   	nop
c00314bf:	5d                   	pop    %ebp
c00314c0:	c3                   	ret    

c00314c1 <write_cr3>:
c00314c1:	55                   	push   %ebp
c00314c2:	89 e5                	mov    %esp,%ebp
c00314c4:	e8 22 ee ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c00314c9:	05 37 bb 00 00       	add    $0xbb37,%eax
c00314ce:	8b 45 08             	mov    0x8(%ebp),%eax
c00314d1:	0f 22 d8             	mov    %eax,%cr3
c00314d4:	90                   	nop
c00314d5:	5d                   	pop    %ebp
c00314d6:	c3                   	ret    

c00314d7 <write_gdtr>:
c00314d7:	55                   	push   %ebp
c00314d8:	89 e5                	mov    %esp,%ebp
c00314da:	e8 0c ee ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c00314df:	05 21 bb 00 00       	add    $0xbb21,%eax
c00314e4:	8b 55 0c             	mov    0xc(%ebp),%edx
c00314e7:	4a                   	dec    %edx
c00314e8:	66 89 90 a0 1e 01 00 	mov    %dx,0x11ea0(%eax)
c00314ef:	8b 55 08             	mov    0x8(%ebp),%edx
c00314f2:	66 89 90 a2 1e 01 00 	mov    %dx,0x11ea2(%eax)
c00314f9:	8b 55 08             	mov    0x8(%ebp),%edx
c00314fc:	c1 ea 10             	shr    $0x10,%edx
c00314ff:	66 89 90 a4 1e 01 00 	mov    %dx,0x11ea4(%eax)
c0031506:	8d 80 a0 1e 01 00    	lea    0x11ea0(%eax),%eax
c003150c:	0f 01 10             	lgdtl  (%eax)
c003150f:	90                   	nop
c0031510:	5d                   	pop    %ebp
c0031511:	c3                   	ret    

c0031512 <get_kpdir>:
c0031512:	55                   	push   %ebp
c0031513:	89 e5                	mov    %esp,%ebp
c0031515:	e8 d1 ed ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c003151a:	05 e6 ba 00 00       	add    $0xbae6,%eax
c003151f:	c7 c0 00 20 07 c0    	mov    $0xc0072000,%eax
c0031525:	5d                   	pop    %ebp
c0031526:	c3                   	ret    

c0031527 <init_page>:
c0031527:	55                   	push   %ebp
c0031528:	89 e5                	mov    %esp,%ebp
c003152a:	53                   	push   %ebx
c003152b:	83 ec 24             	sub    $0x24,%esp
c003152e:	e8 b8 ed ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c0031533:	05 cd ba 00 00       	add    $0xbacd,%eax
c0031538:	c7 c2 00 20 07 c0    	mov    $0xc0072000,%edx
c003153e:	81 c2 00 00 00 40    	add    $0x40000000,%edx
c0031544:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c0031547:	c7 c2 00 30 07 c0    	mov    $0xc0073000,%edx
c003154d:	81 c2 00 00 00 40    	add    $0x40000000,%edx
c0031553:	89 55 f4             	mov    %edx,-0xc(%ebp)
c0031556:	83 ec 04             	sub    $0x4,%esp
c0031559:	68 00 10 00 00       	push   $0x1000
c003155e:	6a 00                	push   $0x0
c0031560:	ff 75 e4             	pushl  -0x1c(%ebp)
c0031563:	89 c3                	mov    %eax,%ebx
c0031565:	e8 92 09 00 00       	call   c0031efc <memset>
c003156a:	83 c4 10             	add    $0x10,%esp
c003156d:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
c0031574:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c003157b:	eb 70                	jmp    c00315ed <init_page+0xc6>
c003157d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031580:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0031585:	89 c2                	mov    %eax,%edx
c0031587:	8b 45 f0             	mov    -0x10(%ebp),%eax
c003158a:	8d 0c 85 00 00 00 00 	lea    0x0(,%eax,4),%ecx
c0031591:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0031594:	01 c8                	add    %ecx,%eax
c0031596:	83 ca 07             	or     $0x7,%edx
c0031599:	89 10                	mov    %edx,(%eax)
c003159b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003159e:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c00315a3:	89 c2                	mov    %eax,%edx
c00315a5:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00315a8:	05 00 03 00 00       	add    $0x300,%eax
c00315ad:	8d 0c 85 00 00 00 00 	lea    0x0(,%eax,4),%ecx
c00315b4:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c00315b7:	01 c8                	add    %ecx,%eax
c00315b9:	83 ca 07             	or     $0x7,%edx
c00315bc:	89 10                	mov    %edx,(%eax)
c00315be:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
c00315c5:	eb 1a                	jmp    c00315e1 <init_page+0xba>
c00315c7:	8b 45 e8             	mov    -0x18(%ebp),%eax
c00315ca:	c1 e0 0c             	shl    $0xc,%eax
c00315cd:	83 c8 07             	or     $0x7,%eax
c00315d0:	89 c2                	mov    %eax,%edx
c00315d2:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00315d5:	89 10                	mov    %edx,(%eax)
c00315d7:	ff 45 e8             	incl   -0x18(%ebp)
c00315da:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
c00315de:	ff 45 ec             	incl   -0x14(%ebp)
c00315e1:	81 7d ec ff 03 00 00 	cmpl   $0x3ff,-0x14(%ebp)
c00315e8:	76 dd                	jbe    c00315c7 <init_page+0xa0>
c00315ea:	ff 45 f0             	incl   -0x10(%ebp)
c00315ed:	83 7d f0 1f          	cmpl   $0x1f,-0x10(%ebp)
c00315f1:	76 8a                	jbe    c003157d <init_page+0x56>
c00315f3:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
c00315fa:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c00315fd:	c1 e8 0c             	shr    $0xc,%eax
c0031600:	25 ff ff 0f 00       	and    $0xfffff,%eax
c0031605:	c1 e0 0c             	shl    $0xc,%eax
c0031608:	89 c2                	mov    %eax,%edx
c003160a:	8b 45 dc             	mov    -0x24(%ebp),%eax
c003160d:	25 ff 0f 00 00       	and    $0xfff,%eax
c0031612:	09 d0                	or     %edx,%eax
c0031614:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0031617:	8b 45 dc             	mov    -0x24(%ebp),%eax
c003161a:	83 ec 0c             	sub    $0xc,%esp
c003161d:	50                   	push   %eax
c003161e:	e8 9e fe ff ff       	call   c00314c1 <write_cr3>
c0031623:	83 c4 10             	add    $0x10,%esp
c0031626:	e8 65 fe ff ff       	call   c0031490 <read_cr0>
c003162b:	89 45 e0             	mov    %eax,-0x20(%ebp)
c003162e:	8a 45 e3             	mov    -0x1d(%ebp),%al
c0031631:	83 c8 80             	or     $0xffffff80,%eax
c0031634:	88 45 e3             	mov    %al,-0x1d(%ebp)
c0031637:	8b 45 e0             	mov    -0x20(%ebp),%eax
c003163a:	83 ec 0c             	sub    $0xc,%esp
c003163d:	50                   	push   %eax
c003163e:	e8 68 fe ff ff       	call   c00314ab <write_cr0>
c0031643:	83 c4 10             	add    $0x10,%esp
c0031646:	90                   	nop
c0031647:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003164a:	c9                   	leave  
c003164b:	c3                   	ret    

c003164c <set_segment>:
c003164c:	55                   	push   %ebp
c003164d:	89 e5                	mov    %esp,%ebp
c003164f:	e8 97 ec ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c0031654:	05 ac b9 00 00       	add    $0xb9ac,%eax
c0031659:	8b 45 08             	mov    0x8(%ebp),%eax
c003165c:	66 c7 00 ff ff       	movw   $0xffff,(%eax)
c0031661:	8b 45 08             	mov    0x8(%ebp),%eax
c0031664:	66 c7 40 02 00 00    	movw   $0x0,0x2(%eax)
c003166a:	8b 45 08             	mov    0x8(%ebp),%eax
c003166d:	c6 40 04 00          	movb   $0x0,0x4(%eax)
c0031671:	8b 45 10             	mov    0x10(%ebp),%eax
c0031674:	88 c2                	mov    %al,%dl
c0031676:	83 e2 0f             	and    $0xf,%edx
c0031679:	8b 45 08             	mov    0x8(%ebp),%eax
c003167c:	88 d1                	mov    %dl,%cl
c003167e:	83 e1 0f             	and    $0xf,%ecx
c0031681:	8a 50 05             	mov    0x5(%eax),%dl
c0031684:	83 e2 f0             	and    $0xfffffff0,%edx
c0031687:	09 ca                	or     %ecx,%edx
c0031689:	88 50 05             	mov    %dl,0x5(%eax)
c003168c:	8b 45 08             	mov    0x8(%ebp),%eax
c003168f:	8a 50 05             	mov    0x5(%eax),%dl
c0031692:	83 ca 10             	or     $0x10,%edx
c0031695:	88 50 05             	mov    %dl,0x5(%eax)
c0031698:	8b 45 0c             	mov    0xc(%ebp),%eax
c003169b:	88 c2                	mov    %al,%dl
c003169d:	83 e2 03             	and    $0x3,%edx
c00316a0:	8b 45 08             	mov    0x8(%ebp),%eax
c00316a3:	83 e2 03             	and    $0x3,%edx
c00316a6:	88 d1                	mov    %dl,%cl
c00316a8:	c1 e1 05             	shl    $0x5,%ecx
c00316ab:	8a 50 05             	mov    0x5(%eax),%dl
c00316ae:	83 e2 9f             	and    $0xffffff9f,%edx
c00316b1:	09 ca                	or     %ecx,%edx
c00316b3:	88 50 05             	mov    %dl,0x5(%eax)
c00316b6:	8b 45 08             	mov    0x8(%ebp),%eax
c00316b9:	8a 50 05             	mov    0x5(%eax),%dl
c00316bc:	83 ca 80             	or     $0xffffff80,%edx
c00316bf:	88 50 05             	mov    %dl,0x5(%eax)
c00316c2:	8b 45 08             	mov    0x8(%ebp),%eax
c00316c5:	8a 50 06             	mov    0x6(%eax),%dl
c00316c8:	83 ca 0f             	or     $0xf,%edx
c00316cb:	88 50 06             	mov    %dl,0x6(%eax)
c00316ce:	8b 45 08             	mov    0x8(%ebp),%eax
c00316d1:	8a 50 06             	mov    0x6(%eax),%dl
c00316d4:	83 e2 ef             	and    $0xffffffef,%edx
c00316d7:	88 50 06             	mov    %dl,0x6(%eax)
c00316da:	8b 45 08             	mov    0x8(%ebp),%eax
c00316dd:	8a 50 06             	mov    0x6(%eax),%dl
c00316e0:	83 e2 df             	and    $0xffffffdf,%edx
c00316e3:	88 50 06             	mov    %dl,0x6(%eax)
c00316e6:	8b 45 08             	mov    0x8(%ebp),%eax
c00316e9:	8a 50 06             	mov    0x6(%eax),%dl
c00316ec:	83 ca 40             	or     $0x40,%edx
c00316ef:	88 50 06             	mov    %dl,0x6(%eax)
c00316f2:	8b 45 08             	mov    0x8(%ebp),%eax
c00316f5:	8a 50 06             	mov    0x6(%eax),%dl
c00316f8:	83 ca 80             	or     $0xffffff80,%edx
c00316fb:	88 50 06             	mov    %dl,0x6(%eax)
c00316fe:	8b 45 08             	mov    0x8(%ebp),%eax
c0031701:	c6 40 07 00          	movb   $0x0,0x7(%eax)
c0031705:	90                   	nop
c0031706:	5d                   	pop    %ebp
c0031707:	c3                   	ret    

c0031708 <init_segment>:
c0031708:	55                   	push   %ebp
c0031709:	89 e5                	mov    %esp,%ebp
c003170b:	53                   	push   %ebx
c003170c:	83 ec 04             	sub    $0x4,%esp
c003170f:	e8 df eb ff ff       	call   c00302f3 <__x86.get_pc_thunk.bx>
c0031714:	81 c3 ec b8 00 00    	add    $0xb8ec,%ebx
c003171a:	83 ec 04             	sub    $0x4,%esp
c003171d:	6a 18                	push   $0x18
c003171f:	6a 00                	push   $0x0
c0031721:	c7 c0 00 10 07 c0    	mov    $0xc0071000,%eax
c0031727:	50                   	push   %eax
c0031728:	e8 cf 07 00 00       	call   c0031efc <memset>
c003172d:	83 c4 10             	add    $0x10,%esp
c0031730:	83 ec 04             	sub    $0x4,%esp
c0031733:	6a 0a                	push   $0xa
c0031735:	6a 00                	push   $0x0
c0031737:	c7 c0 00 10 07 c0    	mov    $0xc0071000,%eax
c003173d:	8d 40 08             	lea    0x8(%eax),%eax
c0031740:	50                   	push   %eax
c0031741:	e8 06 ff ff ff       	call   c003164c <set_segment>
c0031746:	83 c4 10             	add    $0x10,%esp
c0031749:	83 ec 04             	sub    $0x4,%esp
c003174c:	6a 02                	push   $0x2
c003174e:	6a 00                	push   $0x0
c0031750:	c7 c0 00 10 07 c0    	mov    $0xc0071000,%eax
c0031756:	8d 40 10             	lea    0x10(%eax),%eax
c0031759:	50                   	push   %eax
c003175a:	e8 ed fe ff ff       	call   c003164c <set_segment>
c003175f:	83 c4 10             	add    $0x10,%esp
c0031762:	83 ec 08             	sub    $0x8,%esp
c0031765:	6a 18                	push   $0x18
c0031767:	c7 c0 00 10 07 c0    	mov    $0xc0071000,%eax
c003176d:	50                   	push   %eax
c003176e:	e8 64 fd ff ff       	call   c00314d7 <write_gdtr>
c0031773:	83 c4 10             	add    $0x10,%esp
c0031776:	90                   	nop
c0031777:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003177a:	c9                   	leave  
c003177b:	c3                   	ret    

c003177c <get_updir>:
c003177c:	55                   	push   %ebp
c003177d:	89 e5                	mov    %esp,%ebp
c003177f:	e8 67 eb ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c0031784:	05 7c b8 00 00       	add    $0xb87c,%eax
c0031789:	c7 c0 00 30 09 c0    	mov    $0xc0093000,%eax
c003178f:	5d                   	pop    %ebp
c0031790:	c3                   	ret    

c0031791 <get_ucr3>:
c0031791:	55                   	push   %ebp
c0031792:	89 e5                	mov    %esp,%ebp
c0031794:	e8 52 eb ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c0031799:	05 67 b8 00 00       	add    $0xb867,%eax
c003179e:	c7 c0 00 40 09 c0    	mov    $0xc0094000,%eax
c00317a4:	8b 00                	mov    (%eax),%eax
c00317a6:	5d                   	pop    %ebp
c00317a7:	c3                   	ret    

c00317a8 <mm_brk>:
c00317a8:	55                   	push   %ebp
c00317a9:	89 e5                	mov    %esp,%ebp
c00317ab:	53                   	push   %ebx
c00317ac:	83 ec 04             	sub    $0x4,%esp
c00317af:	e8 3f eb ff ff       	call   c00302f3 <__x86.get_pc_thunk.bx>
c00317b4:	81 c3 4c b8 00 00    	add    $0xb84c,%ebx
c00317ba:	8b 83 a8 1e 01 00    	mov    0x11ea8(%ebx),%eax
c00317c0:	39 45 08             	cmp    %eax,0x8(%ebp)
c00317c3:	76 22                	jbe    c00317e7 <mm_brk+0x3f>
c00317c5:	8b 83 a8 1e 01 00    	mov    0x11ea8(%ebx),%eax
c00317cb:	8b 55 08             	mov    0x8(%ebp),%edx
c00317ce:	29 c2                	sub    %eax,%edx
c00317d0:	89 d0                	mov    %edx,%eax
c00317d2:	89 c2                	mov    %eax,%edx
c00317d4:	8b 83 a8 1e 01 00    	mov    0x11ea8(%ebx),%eax
c00317da:	83 ec 08             	sub    $0x8,%esp
c00317dd:	52                   	push   %edx
c00317de:	50                   	push   %eax
c00317df:	e8 3c 04 00 00       	call   c0031c20 <mm_malloc>
c00317e4:	83 c4 10             	add    $0x10,%esp
c00317e7:	8b 45 08             	mov    0x8(%ebp),%eax
c00317ea:	89 83 a8 1e 01 00    	mov    %eax,0x11ea8(%ebx)
c00317f0:	90                   	nop
c00317f1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00317f4:	c9                   	leave  
c00317f5:	c3                   	ret    

c00317f6 <init_mm>:
c00317f6:	55                   	push   %ebp
c00317f7:	89 e5                	mov    %esp,%ebp
c00317f9:	53                   	push   %ebx
c00317fa:	83 ec 14             	sub    $0x14,%esp
c00317fd:	e8 f1 ea ff ff       	call   c00302f3 <__x86.get_pc_thunk.bx>
c0031802:	81 c3 fe b7 00 00    	add    $0xb7fe,%ebx
c0031808:	e8 05 fd ff ff       	call   c0031512 <get_kpdir>
c003180d:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0031810:	83 ec 04             	sub    $0x4,%esp
c0031813:	68 00 10 00 00       	push   $0x1000
c0031818:	6a 00                	push   $0x0
c003181a:	c7 c0 00 30 09 c0    	mov    $0xc0093000,%eax
c0031820:	50                   	push   %eax
c0031821:	e8 d6 06 00 00       	call   c0031efc <memset>
c0031826:	83 c4 10             	add    $0x10,%esp
c0031829:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003182c:	05 00 0c 00 00       	add    $0xc00,%eax
c0031831:	83 ec 04             	sub    $0x4,%esp
c0031834:	68 80 00 00 00       	push   $0x80
c0031839:	50                   	push   %eax
c003183a:	c7 c0 00 30 09 c0    	mov    $0xc0093000,%eax
c0031840:	8d 80 00 0c 00 00    	lea    0xc00(%eax),%eax
c0031846:	50                   	push   %eax
c0031847:	e8 68 06 00 00       	call   c0031eb4 <memcpy>
c003184c:	83 c4 10             	add    $0x10,%esp
c003184f:	c7 c0 00 30 09 c0    	mov    $0xc0093000,%eax
c0031855:	05 00 00 00 40       	add    $0x40000000,%eax
c003185a:	25 00 fc ff ff       	and    $0xfffffc00,%eax
c003185f:	89 c2                	mov    %eax,%edx
c0031861:	c7 c0 00 40 09 c0    	mov    $0xc0094000,%eax
c0031867:	89 10                	mov    %edx,(%eax)
c0031869:	90                   	nop
c003186a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003186d:	c9                   	leave  
c003186e:	c3                   	ret    

c003186f <create_video_mapping>:
c003186f:	55                   	push   %ebp
c0031870:	89 e5                	mov    %esp,%ebp
c0031872:	53                   	push   %ebx
c0031873:	83 ec 04             	sub    $0x4,%esp
c0031876:	e8 70 ea ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c003187b:	05 85 b7 00 00       	add    $0xb785,%eax
c0031880:	8d 90 44 c6 ff ff    	lea    -0x39bc(%eax),%edx
c0031886:	52                   	push   %edx
c0031887:	6a 14                	push   $0x14
c0031889:	8d 90 8c c5 ff ff    	lea    -0x3a74(%eax),%edx
c003188f:	52                   	push   %edx
c0031890:	8d 90 a0 c5 ff ff    	lea    -0x3a60(%eax),%edx
c0031896:	52                   	push   %edx
c0031897:	89 c3                	mov    %eax,%ebx
c0031899:	e8 3a fa ff ff       	call   c00312d8 <printk>
c003189e:	83 c4 10             	add    $0x10,%esp
c00318a1:	b8 01 00 00 00       	mov    $0x1,%eax
c00318a6:	82                   	nemu_trap 
c00318a7:	90                   	nop
c00318a8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00318ab:	c9                   	leave  
c00318ac:	c3                   	ret    

c00318ad <video_mapping_write_test>:
c00318ad:	55                   	push   %ebp
c00318ae:	89 e5                	mov    %esp,%ebp
c00318b0:	83 ec 10             	sub    $0x10,%esp
c00318b3:	e8 33 ea ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c00318b8:	05 48 b7 00 00       	add    $0xb748,%eax
c00318bd:	c7 45 f8 00 00 0a 00 	movl   $0xa0000,-0x8(%ebp)
c00318c4:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c00318cb:	eb 17                	jmp    c00318e4 <video_mapping_write_test+0x37>
c00318cd:	8b 45 fc             	mov    -0x4(%ebp),%eax
c00318d0:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c00318d7:	8b 45 f8             	mov    -0x8(%ebp),%eax
c00318da:	01 c2                	add    %eax,%edx
c00318dc:	8b 45 fc             	mov    -0x4(%ebp),%eax
c00318df:	89 02                	mov    %eax,(%edx)
c00318e1:	ff 45 fc             	incl   -0x4(%ebp)
c00318e4:	81 7d fc 7f 3e 00 00 	cmpl   $0x3e7f,-0x4(%ebp)
c00318eb:	7e e0                	jle    c00318cd <video_mapping_write_test+0x20>
c00318ed:	90                   	nop
c00318ee:	c9                   	leave  
c00318ef:	c3                   	ret    

c00318f0 <video_mapping_read_test>:
c00318f0:	55                   	push   %ebp
c00318f1:	89 e5                	mov    %esp,%ebp
c00318f3:	53                   	push   %ebx
c00318f4:	83 ec 14             	sub    $0x14,%esp
c00318f7:	e8 f7 e9 ff ff       	call   c00302f3 <__x86.get_pc_thunk.bx>
c00318fc:	81 c3 04 b7 00 00    	add    $0xb704,%ebx
c0031902:	c7 45 f0 00 00 0a 00 	movl   $0xa0000,-0x10(%ebp)
c0031909:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0031910:	eb 4a                	jmp    c003195c <video_mapping_read_test+0x6c>
c0031912:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031915:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c003191c:	8b 45 f0             	mov    -0x10(%ebp),%eax
c003191f:	01 d0                	add    %edx,%eax
c0031921:	8b 10                	mov    (%eax),%edx
c0031923:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031926:	39 c2                	cmp    %eax,%edx
c0031928:	74 2f                	je     c0031959 <video_mapping_read_test+0x69>
c003192a:	83 ec 0c             	sub    $0xc,%esp
c003192d:	8d 83 e9 c5 ff ff    	lea    -0x3a17(%ebx),%eax
c0031933:	50                   	push   %eax
c0031934:	8d 83 5c c6 ff ff    	lea    -0x39a4(%ebx),%eax
c003193a:	50                   	push   %eax
c003193b:	6a 27                	push   $0x27
c003193d:	8d 83 8c c5 ff ff    	lea    -0x3a74(%ebx),%eax
c0031943:	50                   	push   %eax
c0031944:	8d 83 f8 c5 ff ff    	lea    -0x3a08(%ebx),%eax
c003194a:	50                   	push   %eax
c003194b:	e8 88 f9 ff ff       	call   c00312d8 <printk>
c0031950:	83 c4 20             	add    $0x20,%esp
c0031953:	b8 01 00 00 00       	mov    $0x1,%eax
c0031958:	82                   	nemu_trap 
c0031959:	ff 45 f4             	incl   -0xc(%ebp)
c003195c:	81 7d f4 7f 3e 00 00 	cmpl   $0x3e7f,-0xc(%ebp)
c0031963:	7e ad                	jle    c0031912 <video_mapping_read_test+0x22>
c0031965:	90                   	nop
c0031966:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031969:	c9                   	leave  
c003196a:	c3                   	ret    

c003196b <video_mapping_clear>:
c003196b:	55                   	push   %ebp
c003196c:	89 e5                	mov    %esp,%ebp
c003196e:	53                   	push   %ebx
c003196f:	83 ec 04             	sub    $0x4,%esp
c0031972:	e8 74 e9 ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c0031977:	05 89 b6 00 00       	add    $0xb689,%eax
c003197c:	83 ec 04             	sub    $0x4,%esp
c003197f:	68 00 fa 00 00       	push   $0xfa00
c0031984:	6a 00                	push   $0x0
c0031986:	68 00 00 0a 00       	push   $0xa0000
c003198b:	89 c3                	mov    %eax,%ebx
c003198d:	e8 6a 05 00 00       	call   c0031efc <memset>
c0031992:	83 c4 10             	add    $0x10,%esp
c0031995:	90                   	nop
c0031996:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031999:	c9                   	leave  
c003199a:	c3                   	ret    

c003199b <sti>:
c003199b:	55                   	push   %ebp
c003199c:	89 e5                	mov    %esp,%ebp
c003199e:	e8 48 e9 ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c00319a3:	05 5d b6 00 00       	add    $0xb65d,%eax
c00319a8:	fb                   	sti    
c00319a9:	90                   	nop
c00319aa:	5d                   	pop    %ebp
c00319ab:	c3                   	ret    

c00319ac <cli>:
c00319ac:	55                   	push   %ebp
c00319ad:	89 e5                	mov    %esp,%ebp
c00319af:	e8 37 e9 ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c00319b4:	05 4c b6 00 00       	add    $0xb64c,%eax
c00319b9:	fa                   	cli    
c00319ba:	90                   	nop
c00319bb:	5d                   	pop    %ebp
c00319bc:	c3                   	ret    

c00319bd <sys_brk>:
c00319bd:	55                   	push   %ebp
c00319be:	89 e5                	mov    %esp,%ebp
c00319c0:	53                   	push   %ebx
c00319c1:	83 ec 04             	sub    $0x4,%esp
c00319c4:	e8 22 e9 ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c00319c9:	05 37 b6 00 00       	add    $0xb637,%eax
c00319ce:	8b 55 08             	mov    0x8(%ebp),%edx
c00319d1:	8b 52 10             	mov    0x10(%edx),%edx
c00319d4:	83 ec 0c             	sub    $0xc,%esp
c00319d7:	52                   	push   %edx
c00319d8:	89 c3                	mov    %eax,%ebx
c00319da:	e8 c9 fd ff ff       	call   c00317a8 <mm_brk>
c00319df:	83 c4 10             	add    $0x10,%esp
c00319e2:	8b 45 08             	mov    0x8(%ebp),%eax
c00319e5:	c7 40 1c 00 00 00 00 	movl   $0x0,0x1c(%eax)
c00319ec:	90                   	nop
c00319ed:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00319f0:	c9                   	leave  
c00319f1:	c3                   	ret    

c00319f2 <sys_open>:
c00319f2:	55                   	push   %ebp
c00319f3:	89 e5                	mov    %esp,%ebp
c00319f5:	53                   	push   %ebx
c00319f6:	83 ec 04             	sub    $0x4,%esp
c00319f9:	e8 ed e8 ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c00319fe:	05 02 b6 00 00       	add    $0xb602,%eax
c0031a03:	8b 55 08             	mov    0x8(%ebp),%edx
c0031a06:	8b 52 18             	mov    0x18(%edx),%edx
c0031a09:	89 d1                	mov    %edx,%ecx
c0031a0b:	8b 55 08             	mov    0x8(%ebp),%edx
c0031a0e:	8b 52 10             	mov    0x10(%edx),%edx
c0031a11:	83 ec 08             	sub    $0x8,%esp
c0031a14:	51                   	push   %ecx
c0031a15:	52                   	push   %edx
c0031a16:	89 c3                	mov    %eax,%ebx
c0031a18:	e8 b3 ef ff ff       	call   c00309d0 <fs_open>
c0031a1d:	83 c4 10             	add    $0x10,%esp
c0031a20:	89 c2                	mov    %eax,%edx
c0031a22:	8b 45 08             	mov    0x8(%ebp),%eax
c0031a25:	89 50 1c             	mov    %edx,0x1c(%eax)
c0031a28:	90                   	nop
c0031a29:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031a2c:	c9                   	leave  
c0031a2d:	c3                   	ret    

c0031a2e <sys_read>:
c0031a2e:	55                   	push   %ebp
c0031a2f:	89 e5                	mov    %esp,%ebp
c0031a31:	53                   	push   %ebx
c0031a32:	83 ec 04             	sub    $0x4,%esp
c0031a35:	e8 b1 e8 ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c0031a3a:	05 c6 b5 00 00       	add    $0xb5c6,%eax
c0031a3f:	8b 55 08             	mov    0x8(%ebp),%edx
c0031a42:	8b 52 14             	mov    0x14(%edx),%edx
c0031a45:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0031a48:	8b 49 18             	mov    0x18(%ecx),%ecx
c0031a4b:	89 cb                	mov    %ecx,%ebx
c0031a4d:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0031a50:	8b 49 10             	mov    0x10(%ecx),%ecx
c0031a53:	83 ec 04             	sub    $0x4,%esp
c0031a56:	52                   	push   %edx
c0031a57:	53                   	push   %ebx
c0031a58:	51                   	push   %ecx
c0031a59:	89 c3                	mov    %eax,%ebx
c0031a5b:	e8 b2 ef ff ff       	call   c0030a12 <fs_read>
c0031a60:	83 c4 10             	add    $0x10,%esp
c0031a63:	89 c2                	mov    %eax,%edx
c0031a65:	8b 45 08             	mov    0x8(%ebp),%eax
c0031a68:	89 50 1c             	mov    %edx,0x1c(%eax)
c0031a6b:	90                   	nop
c0031a6c:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031a6f:	c9                   	leave  
c0031a70:	c3                   	ret    

c0031a71 <sys_write>:
c0031a71:	55                   	push   %ebp
c0031a72:	89 e5                	mov    %esp,%ebp
c0031a74:	53                   	push   %ebx
c0031a75:	83 ec 04             	sub    $0x4,%esp
c0031a78:	e8 6e e8 ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c0031a7d:	05 83 b5 00 00       	add    $0xb583,%eax
c0031a82:	8b 55 08             	mov    0x8(%ebp),%edx
c0031a85:	8b 52 14             	mov    0x14(%edx),%edx
c0031a88:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0031a8b:	8b 49 18             	mov    0x18(%ecx),%ecx
c0031a8e:	89 cb                	mov    %ecx,%ebx
c0031a90:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0031a93:	8b 49 10             	mov    0x10(%ecx),%ecx
c0031a96:	83 ec 04             	sub    $0x4,%esp
c0031a99:	52                   	push   %edx
c0031a9a:	53                   	push   %ebx
c0031a9b:	51                   	push   %ecx
c0031a9c:	89 c3                	mov    %eax,%ebx
c0031a9e:	e8 e5 ef ff ff       	call   c0030a88 <fs_write>
c0031aa3:	83 c4 10             	add    $0x10,%esp
c0031aa6:	89 c2                	mov    %eax,%edx
c0031aa8:	8b 45 08             	mov    0x8(%ebp),%eax
c0031aab:	89 50 1c             	mov    %edx,0x1c(%eax)
c0031aae:	90                   	nop
c0031aaf:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031ab2:	c9                   	leave  
c0031ab3:	c3                   	ret    

c0031ab4 <sys_lseek>:
c0031ab4:	55                   	push   %ebp
c0031ab5:	89 e5                	mov    %esp,%ebp
c0031ab7:	53                   	push   %ebx
c0031ab8:	83 ec 04             	sub    $0x4,%esp
c0031abb:	e8 2b e8 ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c0031ac0:	05 40 b5 00 00       	add    $0xb540,%eax
c0031ac5:	8b 55 08             	mov    0x8(%ebp),%edx
c0031ac8:	8b 52 14             	mov    0x14(%edx),%edx
c0031acb:	89 d3                	mov    %edx,%ebx
c0031acd:	8b 55 08             	mov    0x8(%ebp),%edx
c0031ad0:	8b 52 18             	mov    0x18(%edx),%edx
c0031ad3:	89 d1                	mov    %edx,%ecx
c0031ad5:	8b 55 08             	mov    0x8(%ebp),%edx
c0031ad8:	8b 52 10             	mov    0x10(%edx),%edx
c0031adb:	83 ec 04             	sub    $0x4,%esp
c0031ade:	53                   	push   %ebx
c0031adf:	51                   	push   %ecx
c0031ae0:	52                   	push   %edx
c0031ae1:	89 c3                	mov    %eax,%ebx
c0031ae3:	e8 1c f0 ff ff       	call   c0030b04 <fs_lseek>
c0031ae8:	83 c4 10             	add    $0x10,%esp
c0031aeb:	89 c2                	mov    %eax,%edx
c0031aed:	8b 45 08             	mov    0x8(%ebp),%eax
c0031af0:	89 50 1c             	mov    %edx,0x1c(%eax)
c0031af3:	90                   	nop
c0031af4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031af7:	c9                   	leave  
c0031af8:	c3                   	ret    

c0031af9 <sys_close>:
c0031af9:	55                   	push   %ebp
c0031afa:	89 e5                	mov    %esp,%ebp
c0031afc:	53                   	push   %ebx
c0031afd:	83 ec 04             	sub    $0x4,%esp
c0031b00:	e8 e6 e7 ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c0031b05:	05 fb b4 00 00       	add    $0xb4fb,%eax
c0031b0a:	8b 55 08             	mov    0x8(%ebp),%edx
c0031b0d:	8b 52 10             	mov    0x10(%edx),%edx
c0031b10:	83 ec 0c             	sub    $0xc,%esp
c0031b13:	52                   	push   %edx
c0031b14:	89 c3                	mov    %eax,%ebx
c0031b16:	e8 2b f0 ff ff       	call   c0030b46 <fs_close>
c0031b1b:	83 c4 10             	add    $0x10,%esp
c0031b1e:	89 c2                	mov    %eax,%edx
c0031b20:	8b 45 08             	mov    0x8(%ebp),%eax
c0031b23:	89 50 1c             	mov    %edx,0x1c(%eax)
c0031b26:	90                   	nop
c0031b27:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031b2a:	c9                   	leave  
c0031b2b:	c3                   	ret    

c0031b2c <do_syscall>:
c0031b2c:	55                   	push   %ebp
c0031b2d:	89 e5                	mov    %esp,%ebp
c0031b2f:	53                   	push   %ebx
c0031b30:	83 ec 04             	sub    $0x4,%esp
c0031b33:	e8 bb e7 ff ff       	call   c00302f3 <__x86.get_pc_thunk.bx>
c0031b38:	81 c3 c8 b4 00 00    	add    $0xb4c8,%ebx
c0031b3e:	8b 45 08             	mov    0x8(%ebp),%eax
c0031b41:	8b 40 1c             	mov    0x1c(%eax),%eax
c0031b44:	83 f8 2d             	cmp    $0x2d,%eax
c0031b47:	0f 87 98 00 00 00    	ja     c0031be5 <.L10>
c0031b4d:	c1 e0 02             	shl    $0x2,%eax
c0031b50:	8b 84 18 e4 c6 ff ff 	mov    -0x391c(%eax,%ebx,1),%eax
c0031b57:	01 d8                	add    %ebx,%eax
c0031b59:	ff e0                	jmp    *%eax

c0031b5b <.L18>:
c0031b5b:	e8 4c fe ff ff       	call   c00319ac <cli>
c0031b60:	8b 45 08             	mov    0x8(%ebp),%eax
c0031b63:	8b 40 18             	mov    0x18(%eax),%eax
c0031b66:	89 c2                	mov    %eax,%edx
c0031b68:	8b 45 08             	mov    0x8(%ebp),%eax
c0031b6b:	8b 40 10             	mov    0x10(%eax),%eax
c0031b6e:	83 ec 08             	sub    $0x8,%esp
c0031b71:	52                   	push   %edx
c0031b72:	50                   	push   %eax
c0031b73:	e8 e9 f4 ff ff       	call   c0031061 <add_irq_handle>
c0031b78:	83 c4 10             	add    $0x10,%esp
c0031b7b:	e8 1b fe ff ff       	call   c003199b <sti>
c0031b80:	e9 8f 00 00 00       	jmp    c0031c14 <.L10+0x2f>

c0031b85 <.L11>:
c0031b85:	83 ec 0c             	sub    $0xc,%esp
c0031b88:	ff 75 08             	pushl  0x8(%ebp)
c0031b8b:	e8 2d fe ff ff       	call   c00319bd <sys_brk>
c0031b90:	83 c4 10             	add    $0x10,%esp
c0031b93:	eb 7f                	jmp    c0031c14 <.L10+0x2f>

c0031b95 <.L15>:
c0031b95:	83 ec 0c             	sub    $0xc,%esp
c0031b98:	ff 75 08             	pushl  0x8(%ebp)
c0031b9b:	e8 52 fe ff ff       	call   c00319f2 <sys_open>
c0031ba0:	83 c4 10             	add    $0x10,%esp
c0031ba3:	eb 6f                	jmp    c0031c14 <.L10+0x2f>

c0031ba5 <.L17>:
c0031ba5:	83 ec 0c             	sub    $0xc,%esp
c0031ba8:	ff 75 08             	pushl  0x8(%ebp)
c0031bab:	e8 7e fe ff ff       	call   c0031a2e <sys_read>
c0031bb0:	83 c4 10             	add    $0x10,%esp
c0031bb3:	eb 5f                	jmp    c0031c14 <.L10+0x2f>

c0031bb5 <.L16>:
c0031bb5:	83 ec 0c             	sub    $0xc,%esp
c0031bb8:	ff 75 08             	pushl  0x8(%ebp)
c0031bbb:	e8 b1 fe ff ff       	call   c0031a71 <sys_write>
c0031bc0:	83 c4 10             	add    $0x10,%esp
c0031bc3:	eb 4f                	jmp    c0031c14 <.L10+0x2f>

c0031bc5 <.L13>:
c0031bc5:	83 ec 0c             	sub    $0xc,%esp
c0031bc8:	ff 75 08             	pushl  0x8(%ebp)
c0031bcb:	e8 e4 fe ff ff       	call   c0031ab4 <sys_lseek>
c0031bd0:	83 c4 10             	add    $0x10,%esp
c0031bd3:	eb 3f                	jmp    c0031c14 <.L10+0x2f>

c0031bd5 <.L14>:
c0031bd5:	83 ec 0c             	sub    $0xc,%esp
c0031bd8:	ff 75 08             	pushl  0x8(%ebp)
c0031bdb:	e8 19 ff ff ff       	call   c0031af9 <sys_close>
c0031be0:	83 c4 10             	add    $0x10,%esp
c0031be3:	eb 2f                	jmp    c0031c14 <.L10+0x2f>

c0031be5 <.L10>:
c0031be5:	8b 45 08             	mov    0x8(%ebp),%eax
c0031be8:	8b 40 1c             	mov    0x1c(%eax),%eax
c0031beb:	83 ec 0c             	sub    $0xc,%esp
c0031bee:	50                   	push   %eax
c0031bef:	8d 83 9c c7 ff ff    	lea    -0x3864(%ebx),%eax
c0031bf5:	50                   	push   %eax
c0031bf6:	6a 4a                	push   $0x4a
c0031bf8:	8d 83 74 c6 ff ff    	lea    -0x398c(%ebx),%eax
c0031bfe:	50                   	push   %eax
c0031bff:	8d 83 90 c6 ff ff    	lea    -0x3970(%ebx),%eax
c0031c05:	50                   	push   %eax
c0031c06:	e8 cd f6 ff ff       	call   c00312d8 <printk>
c0031c0b:	83 c4 20             	add    $0x20,%esp
c0031c0e:	b8 01 00 00 00       	mov    $0x1,%eax
c0031c13:	82                   	nemu_trap 
c0031c14:	90                   	nop
c0031c15:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031c18:	c9                   	leave  
c0031c19:	c3                   	ret    
c0031c1a:	66 90                	xchg   %ax,%ax
c0031c1c:	66 90                	xchg   %ax,%ax
c0031c1e:	66 90                	xchg   %ax,%ax

c0031c20 <mm_malloc>:
c0031c20:	55                   	push   %ebp
c0031c21:	31 c0                	xor    %eax,%eax
c0031c23:	89 e5                	mov    %esp,%ebp
c0031c25:	57                   	push   %edi
c0031c26:	56                   	push   %esi
c0031c27:	53                   	push   %ebx
c0031c28:	83 ec 3c             	sub    $0x3c,%esp
c0031c2b:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c0031c2e:	85 db                	test   %ebx,%ebx
c0031c30:	0f 8e 36 02 00 00    	jle    c0031e6c <mm_malloc+0x24c>
c0031c36:	e8 41 fb ff ff       	call   c003177c <get_updir>
c0031c3b:	89 c6                	mov    %eax,%esi
c0031c3d:	e8 4f fb ff ff       	call   c0031791 <get_ucr3>
c0031c42:	8b 55 08             	mov    0x8(%ebp),%edx
c0031c45:	8d 5c 1a ff          	lea    -0x1(%edx,%ebx,1),%ebx
c0031c49:	89 5d e0             	mov    %ebx,-0x20(%ebp)
c0031c4c:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0031c4f:	b8 00 10 00 00       	mov    $0x1000,%eax
c0031c54:	29 d0                	sub    %edx,%eax
c0031c56:	89 da                	mov    %ebx,%edx
c0031c58:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
c0031c5e:	01 d0                	add    %edx,%eax
c0031c60:	85 c0                	test   %eax,%eax
c0031c62:	0f 8e c0 00 00 00    	jle    c0031d28 <mm_malloc+0x108>
c0031c68:	8b 55 08             	mov    0x8(%ebp),%edx
c0031c6b:	83 e8 01             	sub    $0x1,%eax
c0031c6e:	89 f7                	mov    %esi,%edi
c0031c70:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0031c75:	8d 84 02 00 10 00 00 	lea    0x1000(%edx,%eax,1),%eax
c0031c7c:	89 d3                	mov    %edx,%ebx
c0031c7e:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0031c81:	eb 51                	jmp    c0031cd4 <mm_malloc+0xb4>
c0031c83:	90                   	nop
c0031c84:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0031c88:	8b 31                	mov    (%ecx),%esi
c0031c8a:	81 e6 00 f0 ff ff    	and    $0xfffff000,%esi
c0031c90:	81 ee 00 00 00 40    	sub    $0x40000000,%esi
c0031c96:	89 d8                	mov    %ebx,%eax
c0031c98:	c1 e8 0a             	shr    $0xa,%eax
c0031c9b:	25 fc 0f 00 00       	and    $0xffc,%eax
c0031ca0:	01 c6                	add    %eax,%esi
c0031ca2:	f6 06 01             	testb  $0x1,(%esi)
c0031ca5:	75 22                	jne    c0031cc9 <mm_malloc+0xa9>
c0031ca7:	a1 20 d0 03 c0       	mov    0xc003d020,%eax
c0031cac:	3d ff 7f 00 00       	cmp    $0x7fff,%eax
c0031cb1:	0f 8f c1 01 00 00    	jg     c0031e78 <mm_malloc+0x258>
c0031cb7:	89 c1                	mov    %eax,%ecx
c0031cb9:	83 c0 01             	add    $0x1,%eax
c0031cbc:	c1 e1 0c             	shl    $0xc,%ecx
c0031cbf:	83 c9 07             	or     $0x7,%ecx
c0031cc2:	89 0e                	mov    %ecx,(%esi)
c0031cc4:	a3 20 d0 03 c0       	mov    %eax,0xc003d020
c0031cc9:	81 c3 00 10 00 00    	add    $0x1000,%ebx
c0031ccf:	3b 5d e4             	cmp    -0x1c(%ebp),%ebx
c0031cd2:	74 54                	je     c0031d28 <mm_malloc+0x108>
c0031cd4:	89 d8                	mov    %ebx,%eax
c0031cd6:	c1 e8 16             	shr    $0x16,%eax
c0031cd9:	8d 0c 87             	lea    (%edi,%eax,4),%ecx
c0031cdc:	f6 01 01             	testb  $0x1,(%ecx)
c0031cdf:	75 a7                	jne    c0031c88 <mm_malloc+0x68>
c0031ce1:	a1 00 f0 04 c0       	mov    0xc004f000,%eax
c0031ce6:	89 c6                	mov    %eax,%esi
c0031ce8:	83 c0 01             	add    $0x1,%eax
c0031ceb:	c1 e6 0c             	shl    $0xc,%esi
c0031cee:	81 c6 00 00 05 c0    	add    $0xc0050000,%esi
c0031cf4:	a3 00 f0 04 c0       	mov    %eax,0xc004f000
c0031cf9:	8d 86 00 00 00 40    	lea    0x40000000(%esi),%eax
c0031cff:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0031d04:	83 c8 07             	or     $0x7,%eax
c0031d07:	89 01                	mov    %eax,(%ecx)
c0031d09:	c7 44 24 08 00 10 00 	movl   $0x1000,0x8(%esp)
c0031d10:	00 
c0031d11:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0031d18:	00 
c0031d19:	89 34 24             	mov    %esi,(%esp)
c0031d1c:	e8 db 01 00 00       	call   c0031efc <memset>
c0031d21:	e9 70 ff ff ff       	jmp    c0031c96 <mm_malloc+0x76>
c0031d26:	66 90                	xchg   %ax,%ax
c0031d28:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c0031d2b:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0031d2e:	81 eb 00 00 00 40    	sub    $0x40000000,%ebx
c0031d34:	81 e3 00 f0 ff ff    	and    $0xfffff000,%ebx
c0031d3a:	c1 e8 16             	shr    $0x16,%eax
c0031d3d:	8b 34 83             	mov    (%ebx,%eax,4),%esi
c0031d40:	f7 c6 01 00 00 00    	test   $0x1,%esi
c0031d46:	75 32                	jne    c0031d7a <mm_malloc+0x15a>
c0031d48:	c7 44 24 10 cb 97 03 	movl   $0xc00397cb,0x10(%esp)
c0031d4f:	c0 
c0031d50:	c7 44 24 0c 32 98 03 	movl   $0xc0039832,0xc(%esp)
c0031d57:	c0 
c0031d58:	c7 44 24 08 11 00 00 	movl   $0x11,0x8(%esp)
c0031d5f:	00 
c0031d60:	c7 44 24 04 ba 97 03 	movl   $0xc00397ba,0x4(%esp)
c0031d67:	c0 
c0031d68:	c7 04 24 dc 97 03 c0 	movl   $0xc00397dc,(%esp)
c0031d6f:	e8 64 f5 ff ff       	call   c00312d8 <printk>
c0031d74:	b8 01 00 00 00       	mov    $0x1,%eax
c0031d79:	82                   	nemu_trap 
c0031d7a:	8b 55 e0             	mov    -0x20(%ebp),%edx
c0031d7d:	8d 86 00 00 00 c0    	lea    -0x40000000(%esi),%eax
c0031d83:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0031d88:	c1 ea 0c             	shr    $0xc,%edx
c0031d8b:	81 e2 ff 03 00 00    	and    $0x3ff,%edx
c0031d91:	f6 04 90 01          	testb  $0x1,(%eax,%edx,4)
c0031d95:	75 32                	jne    c0031dc9 <mm_malloc+0x1a9>
c0031d97:	c7 44 24 10 d3 97 03 	movl   $0xc00397d3,0x10(%esp)
c0031d9e:	c0 
c0031d9f:	c7 44 24 0c 32 98 03 	movl   $0xc0039832,0xc(%esp)
c0031da6:	c0 
c0031da7:	c7 44 24 08 13 00 00 	movl   $0x13,0x8(%esp)
c0031dae:	00 
c0031daf:	c7 44 24 04 ba 97 03 	movl   $0xc00397ba,0x4(%esp)
c0031db6:	c0 
c0031db7:	c7 04 24 dc 97 03 c0 	movl   $0xc00397dc,(%esp)
c0031dbe:	e8 15 f5 ff ff       	call   c00312d8 <printk>
c0031dc3:	b8 01 00 00 00       	mov    $0x1,%eax
c0031dc8:	82                   	nemu_trap 
c0031dc9:	8b 45 08             	mov    0x8(%ebp),%eax
c0031dcc:	c1 e8 16             	shr    $0x16,%eax
c0031dcf:	8b 1c 83             	mov    (%ebx,%eax,4),%ebx
c0031dd2:	f6 c3 01             	test   $0x1,%bl
c0031dd5:	75 32                	jne    c0031e09 <mm_malloc+0x1e9>
c0031dd7:	c7 44 24 10 cb 97 03 	movl   $0xc00397cb,0x10(%esp)
c0031dde:	c0 
c0031ddf:	c7 44 24 0c 32 98 03 	movl   $0xc0039832,0xc(%esp)
c0031de6:	c0 
c0031de7:	c7 44 24 08 11 00 00 	movl   $0x11,0x8(%esp)
c0031dee:	00 
c0031def:	c7 44 24 04 ba 97 03 	movl   $0xc00397ba,0x4(%esp)
c0031df6:	c0 
c0031df7:	c7 04 24 dc 97 03 c0 	movl   $0xc00397dc,(%esp)
c0031dfe:	e8 d5 f4 ff ff       	call   c00312d8 <printk>
c0031e03:	b8 01 00 00 00       	mov    $0x1,%eax
c0031e08:	82                   	nemu_trap 
c0031e09:	8b 55 08             	mov    0x8(%ebp),%edx
c0031e0c:	8d 83 00 00 00 c0    	lea    -0x40000000(%ebx),%eax
c0031e12:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0031e17:	c1 ea 0c             	shr    $0xc,%edx
c0031e1a:	81 e2 ff 03 00 00    	and    $0x3ff,%edx
c0031e20:	8b 1c 90             	mov    (%eax,%edx,4),%ebx
c0031e23:	f6 c3 01             	test   $0x1,%bl
c0031e26:	75 32                	jne    c0031e5a <mm_malloc+0x23a>
c0031e28:	c7 44 24 10 d3 97 03 	movl   $0xc00397d3,0x10(%esp)
c0031e2f:	c0 
c0031e30:	c7 44 24 0c 32 98 03 	movl   $0xc0039832,0xc(%esp)
c0031e37:	c0 
c0031e38:	c7 44 24 08 13 00 00 	movl   $0x13,0x8(%esp)
c0031e3f:	00 
c0031e40:	c7 44 24 04 ba 97 03 	movl   $0xc00397ba,0x4(%esp)
c0031e47:	c0 
c0031e48:	c7 04 24 dc 97 03 c0 	movl   $0xc00397dc,(%esp)
c0031e4f:	e8 84 f4 ff ff       	call   c00312d8 <printk>
c0031e54:	b8 01 00 00 00       	mov    $0x1,%eax
c0031e59:	82                   	nemu_trap 
c0031e5a:	8b 55 08             	mov    0x8(%ebp),%edx
c0031e5d:	89 d8                	mov    %ebx,%eax
c0031e5f:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0031e64:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
c0031e6a:	09 d0                	or     %edx,%eax
c0031e6c:	83 c4 3c             	add    $0x3c,%esp
c0031e6f:	5b                   	pop    %ebx
c0031e70:	5e                   	pop    %esi
c0031e71:	5f                   	pop    %edi
c0031e72:	5d                   	pop    %ebp
c0031e73:	c3                   	ret    
c0031e74:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0031e78:	c7 44 24 10 a7 97 03 	movl   $0xc00397a7,0x10(%esp)
c0031e7f:	c0 
c0031e80:	c7 44 24 0c 28 98 03 	movl   $0xc0039828,0xc(%esp)
c0031e87:	c0 
c0031e88:	c7 44 24 08 31 00 00 	movl   $0x31,0x8(%esp)
c0031e8f:	00 
c0031e90:	c7 44 24 04 ba 97 03 	movl   $0xc00397ba,0x4(%esp)
c0031e97:	c0 
c0031e98:	c7 04 24 dc 97 03 c0 	movl   $0xc00397dc,(%esp)
c0031e9f:	e8 34 f4 ff ff       	call   c00312d8 <printk>
c0031ea4:	b8 01 00 00 00       	mov    $0x1,%eax
c0031ea9:	82                   	nemu_trap 
c0031eaa:	a1 20 d0 03 c0       	mov    0xc003d020,%eax
c0031eaf:	e9 03 fe ff ff       	jmp    c0031cb7 <mm_malloc+0x97>

c0031eb4 <memcpy>:
c0031eb4:	55                   	push   %ebp
c0031eb5:	89 e5                	mov    %esp,%ebp
c0031eb7:	56                   	push   %esi
c0031eb8:	57                   	push   %edi
c0031eb9:	53                   	push   %ebx
c0031eba:	8b 7d 08             	mov    0x8(%ebp),%edi
c0031ebd:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0031ec0:	8b 75 0c             	mov    0xc(%ebp),%esi
c0031ec3:	fc                   	cld    
c0031ec4:	83 f9 08             	cmp    $0x8,%ecx
c0031ec7:	76 26                	jbe    c0031eef <memcpy+0x3b>
c0031ec9:	89 fa                	mov    %edi,%edx
c0031ecb:	89 cb                	mov    %ecx,%ebx
c0031ecd:	83 e2 03             	and    $0x3,%edx
c0031ed0:	74 10                	je     c0031ee2 <memcpy+0x2e>
c0031ed2:	b9 04 00 00 00       	mov    $0x4,%ecx
c0031ed7:	29 d1                	sub    %edx,%ecx
c0031ed9:	83 e1 03             	and    $0x3,%ecx
c0031edc:	29 cb                	sub    %ecx,%ebx
c0031ede:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0031ee0:	89 d9                	mov    %ebx,%ecx
c0031ee2:	c1 e9 02             	shr    $0x2,%ecx
c0031ee5:	8d 76 00             	lea    0x0(%esi),%esi
c0031ee8:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
c0031eea:	89 d9                	mov    %ebx,%ecx
c0031eec:	83 e1 03             	and    $0x3,%ecx
c0031eef:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0031ef1:	8b 45 08             	mov    0x8(%ebp),%eax
c0031ef4:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0031ef7:	5b                   	pop    %ebx
c0031ef8:	5f                   	pop    %edi
c0031ef9:	5e                   	pop    %esi
c0031efa:	c9                   	leave  
c0031efb:	c3                   	ret    

c0031efc <memset>:
c0031efc:	55                   	push   %ebp
c0031efd:	89 e5                	mov    %esp,%ebp
c0031eff:	57                   	push   %edi
c0031f00:	8b 7d 08             	mov    0x8(%ebp),%edi
c0031f03:	0f b6 45 0c          	movzbl 0xc(%ebp),%eax
c0031f07:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0031f0a:	fc                   	cld    
c0031f0b:	83 f9 10             	cmp    $0x10,%ecx
c0031f0e:	76 69                	jbe    c0031f79 <memset+0x7d>
c0031f10:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031f16:	74 4c                	je     c0031f64 <memset+0x68>
c0031f18:	88 07                	mov    %al,(%edi)
c0031f1a:	47                   	inc    %edi
c0031f1b:	49                   	dec    %ecx
c0031f1c:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031f22:	74 40                	je     c0031f64 <memset+0x68>
c0031f24:	88 07                	mov    %al,(%edi)
c0031f26:	47                   	inc    %edi
c0031f27:	49                   	dec    %ecx
c0031f28:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031f2e:	74 34                	je     c0031f64 <memset+0x68>
c0031f30:	88 07                	mov    %al,(%edi)
c0031f32:	47                   	inc    %edi
c0031f33:	49                   	dec    %ecx
c0031f34:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031f3a:	74 28                	je     c0031f64 <memset+0x68>
c0031f3c:	88 07                	mov    %al,(%edi)
c0031f3e:	47                   	inc    %edi
c0031f3f:	49                   	dec    %ecx
c0031f40:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031f46:	74 1c                	je     c0031f64 <memset+0x68>
c0031f48:	88 07                	mov    %al,(%edi)
c0031f4a:	47                   	inc    %edi
c0031f4b:	49                   	dec    %ecx
c0031f4c:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031f52:	74 10                	je     c0031f64 <memset+0x68>
c0031f54:	88 07                	mov    %al,(%edi)
c0031f56:	47                   	inc    %edi
c0031f57:	49                   	dec    %ecx
c0031f58:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031f5e:	74 04                	je     c0031f64 <memset+0x68>
c0031f60:	88 07                	mov    %al,(%edi)
c0031f62:	47                   	inc    %edi
c0031f63:	49                   	dec    %ecx
c0031f64:	88 c4                	mov    %al,%ah
c0031f66:	89 c2                	mov    %eax,%edx
c0031f68:	c1 e2 10             	shl    $0x10,%edx
c0031f6b:	09 d0                	or     %edx,%eax
c0031f6d:	89 ca                	mov    %ecx,%edx
c0031f6f:	c1 e9 02             	shr    $0x2,%ecx
c0031f72:	83 e2 03             	and    $0x3,%edx
c0031f75:	f3 ab                	rep stos %eax,%es:(%edi)
c0031f77:	89 d1                	mov    %edx,%ecx
c0031f79:	f3 aa                	rep stos %al,%es:(%edi)
c0031f7b:	8b 45 08             	mov    0x8(%ebp),%eax
c0031f7e:	8d 65 fc             	lea    -0x4(%ebp),%esp
c0031f81:	5f                   	pop    %edi
c0031f82:	c9                   	leave  
c0031f83:	c3                   	ret    
c0031f84:	66 90                	xchg   %ax,%ax
c0031f86:	66 90                	xchg   %ax,%ax
c0031f88:	66 90                	xchg   %ax,%ax
c0031f8a:	66 90                	xchg   %ax,%ax
c0031f8c:	66 90                	xchg   %ax,%ax
c0031f8e:	66 90                	xchg   %ax,%ax

c0031f90 <_vsnprintf_r>:
c0031f90:	55                   	push   %ebp
c0031f91:	89 e5                	mov    %esp,%ebp
c0031f93:	56                   	push   %esi
c0031f94:	53                   	push   %ebx
c0031f95:	83 c4 80             	add    $0xffffff80,%esp
c0031f98:	8b 5d 10             	mov    0x10(%ebp),%ebx
c0031f9b:	8b 75 08             	mov    0x8(%ebp),%esi
c0031f9e:	8b 45 0c             	mov    0xc(%ebp),%eax
c0031fa1:	85 db                	test   %ebx,%ebx
c0031fa3:	78 63                	js     c0032008 <_vsnprintf_r+0x78>
c0031fa5:	ba 08 02 00 00       	mov    $0x208,%edx
c0031faa:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
c0031faf:	66 89 55 9c          	mov    %dx,-0x64(%ebp)
c0031fb3:	8d 53 ff             	lea    -0x1(%ebx),%edx
c0031fb6:	89 45 90             	mov    %eax,-0x70(%ebp)
c0031fb9:	89 45 a0             	mov    %eax,-0x60(%ebp)
c0031fbc:	31 c0                	xor    %eax,%eax
c0031fbe:	85 db                	test   %ebx,%ebx
c0031fc0:	0f 45 c2             	cmovne %edx,%eax
c0031fc3:	89 45 98             	mov    %eax,-0x68(%ebp)
c0031fc6:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0031fc9:	8b 45 18             	mov    0x18(%ebp),%eax
c0031fcc:	89 34 24             	mov    %esi,(%esp)
c0031fcf:	66 89 4d 9e          	mov    %cx,-0x62(%ebp)
c0031fd3:	89 44 24 0c          	mov    %eax,0xc(%esp)
c0031fd7:	8b 45 14             	mov    0x14(%ebp),%eax
c0031fda:	89 44 24 08          	mov    %eax,0x8(%esp)
c0031fde:	8d 45 90             	lea    -0x70(%ebp),%eax
c0031fe1:	89 44 24 04          	mov    %eax,0x4(%esp)
c0031fe5:	e8 86 00 00 00       	call   c0032070 <_svfprintf_r>
c0031fea:	83 f8 ff             	cmp    $0xffffffff,%eax
c0031fed:	7c 11                	jl     c0032000 <_vsnprintf_r+0x70>
c0031fef:	85 db                	test   %ebx,%ebx
c0031ff1:	74 06                	je     c0031ff9 <_vsnprintf_r+0x69>
c0031ff3:	8b 55 90             	mov    -0x70(%ebp),%edx
c0031ff6:	c6 02 00             	movb   $0x0,(%edx)
c0031ff9:	83 ec 80             	sub    $0xffffff80,%esp
c0031ffc:	5b                   	pop    %ebx
c0031ffd:	5e                   	pop    %esi
c0031ffe:	5d                   	pop    %ebp
c0031fff:	c3                   	ret    
c0032000:	c7 06 8b 00 00 00    	movl   $0x8b,(%esi)
c0032006:	eb e7                	jmp    c0031fef <_vsnprintf_r+0x5f>
c0032008:	c7 06 8b 00 00 00    	movl   $0x8b,(%esi)
c003200e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0032013:	eb e4                	jmp    c0031ff9 <_vsnprintf_r+0x69>
c0032015:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032019:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0032020 <vsnprintf>:
c0032020:	55                   	push   %ebp
c0032021:	89 e5                	mov    %esp,%ebp
c0032023:	83 ec 28             	sub    $0x28,%esp
c0032026:	e8 35 00 00 00       	call   c0032060 <__getreent>
c003202b:	8b 55 14             	mov    0x14(%ebp),%edx
c003202e:	89 54 24 10          	mov    %edx,0x10(%esp)
c0032032:	8b 55 10             	mov    0x10(%ebp),%edx
c0032035:	89 04 24             	mov    %eax,(%esp)
c0032038:	89 54 24 0c          	mov    %edx,0xc(%esp)
c003203c:	8b 55 0c             	mov    0xc(%ebp),%edx
c003203f:	89 54 24 08          	mov    %edx,0x8(%esp)
c0032043:	8b 55 08             	mov    0x8(%ebp),%edx
c0032046:	89 54 24 04          	mov    %edx,0x4(%esp)
c003204a:	e8 41 ff ff ff       	call   c0031f90 <_vsnprintf_r>
c003204f:	c9                   	leave  
c0032050:	c3                   	ret    
c0032051:	66 90                	xchg   %ax,%ax
c0032053:	66 90                	xchg   %ax,%ax
c0032055:	66 90                	xchg   %ax,%ax
c0032057:	66 90                	xchg   %ax,%ax
c0032059:	66 90                	xchg   %ax,%ax
c003205b:	66 90                	xchg   %ax,%ax
c003205d:	66 90                	xchg   %ax,%ax
c003205f:	90                   	nop

c0032060 <__getreent>:
c0032060:	55                   	push   %ebp
c0032061:	a1 40 d0 03 c0       	mov    0xc003d040,%eax
c0032066:	89 e5                	mov    %esp,%ebp
c0032068:	5d                   	pop    %ebp
c0032069:	c3                   	ret    
c003206a:	66 90                	xchg   %ax,%ax
c003206c:	66 90                	xchg   %ax,%ax
c003206e:	66 90                	xchg   %ax,%ax

c0032070 <_svfprintf_r>:
c0032070:	55                   	push   %ebp
c0032071:	89 e5                	mov    %esp,%ebp
c0032073:	57                   	push   %edi
c0032074:	56                   	push   %esi
c0032075:	53                   	push   %ebx
c0032076:	81 ec 1c 01 00 00    	sub    $0x11c,%esp
c003207c:	8b 45 08             	mov    0x8(%ebp),%eax
c003207f:	89 04 24             	mov    %eax,(%esp)
c0032082:	e8 89 33 00 00       	call   c0035410 <_localeconv_r>
c0032087:	8b 00                	mov    (%eax),%eax
c0032089:	89 04 24             	mov    %eax,(%esp)
c003208c:	89 85 0c ff ff ff    	mov    %eax,-0xf4(%ebp)
c0032092:	e8 d9 4a 00 00       	call   c0036b70 <strlen>
c0032097:	89 85 08 ff ff ff    	mov    %eax,-0xf8(%ebp)
c003209d:	8b 45 0c             	mov    0xc(%ebp),%eax
c00320a0:	f6 40 0c 80          	testb  $0x80,0xc(%eax)
c00320a4:	74 0b                	je     c00320b1 <_svfprintf_r+0x41>
c00320a6:	8b 40 10             	mov    0x10(%eax),%eax
c00320a9:	85 c0                	test   %eax,%eax
c00320ab:	0f 84 62 18 00 00    	je     c0033913 <_svfprintf_r+0x18a3>
c00320b1:	8d 45 a8             	lea    -0x58(%ebp),%eax
c00320b4:	8d 55 a7             	lea    -0x59(%ebp),%edx
c00320b7:	89 c7                	mov    %eax,%edi
c00320b9:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%ebp)
c00320bf:	d9 ee                	fldz   
c00320c1:	29 d0                	sub    %edx,%eax
c00320c3:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%ebp)
c00320ca:	00 00 00 
c00320cd:	dd 9d 10 ff ff ff    	fstpl  -0xf0(%ebp)
c00320d3:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c00320da:	00 00 00 
c00320dd:	c7 85 1c ff ff ff 00 	movl   $0x0,-0xe4(%ebp)
c00320e4:	00 00 00 
c00320e7:	c7 85 18 ff ff ff 00 	movl   $0x0,-0xe8(%ebp)
c00320ee:	00 00 00 
c00320f1:	c7 85 04 ff ff ff 00 	movl   $0x0,-0xfc(%ebp)
c00320f8:	00 00 00 
c00320fb:	c7 85 34 ff ff ff 00 	movl   $0x0,-0xcc(%ebp)
c0032102:	00 00 00 
c0032105:	89 85 00 ff ff ff    	mov    %eax,-0x100(%ebp)
c003210b:	8b 45 10             	mov    0x10(%ebp),%eax
c003210e:	8b 5d 10             	mov    0x10(%ebp),%ebx
c0032111:	0f b6 00             	movzbl (%eax),%eax
c0032114:	3c 25                	cmp    $0x25,%al
c0032116:	74 4d                	je     c0032165 <_svfprintf_r+0xf5>
c0032118:	84 c0                	test   %al,%al
c003211a:	75 08                	jne    c0032124 <_svfprintf_r+0xb4>
c003211c:	eb 47                	jmp    c0032165 <_svfprintf_r+0xf5>
c003211e:	66 90                	xchg   %ax,%ax
c0032120:	84 c0                	test   %al,%al
c0032122:	74 0a                	je     c003212e <_svfprintf_r+0xbe>
c0032124:	83 c3 01             	add    $0x1,%ebx
c0032127:	0f b6 03             	movzbl (%ebx),%eax
c003212a:	3c 25                	cmp    $0x25,%al
c003212c:	75 f2                	jne    c0032120 <_svfprintf_r+0xb0>
c003212e:	89 de                	mov    %ebx,%esi
c0032130:	2b 75 10             	sub    0x10(%ebp),%esi
c0032133:	74 30                	je     c0032165 <_svfprintf_r+0xf5>
c0032135:	8b 45 10             	mov    0x10(%ebp),%eax
c0032138:	83 c7 08             	add    $0x8,%edi
c003213b:	89 77 fc             	mov    %esi,-0x4(%edi)
c003213e:	01 b5 7c ff ff ff    	add    %esi,-0x84(%ebp)
c0032144:	89 47 f8             	mov    %eax,-0x8(%edi)
c0032147:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003214d:	83 c0 01             	add    $0x1,%eax
c0032150:	83 f8 07             	cmp    $0x7,%eax
c0032153:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032159:	0f 8f 91 00 00 00    	jg     c00321f0 <_svfprintf_r+0x180>
c003215f:	01 b5 34 ff ff ff    	add    %esi,-0xcc(%ebp)
c0032165:	80 3b 00             	cmpb   $0x0,(%ebx)
c0032168:	0f 84 aa 00 00 00    	je     c0032218 <_svfprintf_r+0x1a8>
c003216e:	8d 43 01             	lea    0x1(%ebx),%eax
c0032171:	be 20 00 00 00       	mov    $0x20,%esi
c0032176:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c003217d:	31 db                	xor    %ebx,%ebx
c003217f:	c7 85 44 ff ff ff ff 	movl   $0xffffffff,-0xbc(%ebp)
c0032186:	ff ff ff 
c0032189:	c7 85 40 ff ff ff 00 	movl   $0x0,-0xc0(%ebp)
c0032190:	00 00 00 
c0032193:	c7 85 4c ff ff ff 00 	movl   $0x0,-0xb4(%ebp)
c003219a:	00 00 00 
c003219d:	8d 48 01             	lea    0x1(%eax),%ecx
c00321a0:	0f be 00             	movsbl (%eax),%eax
c00321a3:	8d 50 e0             	lea    -0x20(%eax),%edx
c00321a6:	83 fa 58             	cmp    $0x58,%edx
c00321a9:	0f 87 8f 07 00 00    	ja     c003293e <_svfprintf_r+0x8ce>
c00321af:	ff 24 95 7c 98 03 c0 	jmp    *-0x3ffc6784(,%edx,4)
c00321b6:	66 90                	xchg   %ax,%ax
c00321b8:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c00321bf:	89 c8                	mov    %ecx,%eax
c00321c1:	eb da                	jmp    c003219d <_svfprintf_r+0x12d>
c00321c3:	8b 45 14             	mov    0x14(%ebp),%eax
c00321c6:	8b 55 14             	mov    0x14(%ebp),%edx
c00321c9:	8b 00                	mov    (%eax),%eax
c00321cb:	83 c2 04             	add    $0x4,%edx
c00321ce:	89 55 14             	mov    %edx,0x14(%ebp)
c00321d1:	85 c0                	test   %eax,%eax
c00321d3:	89 85 40 ff ff ff    	mov    %eax,-0xc0(%ebp)
c00321d9:	79 e4                	jns    c00321bf <_svfprintf_r+0x14f>
c00321db:	f7 9d 40 ff ff ff    	negl   -0xc0(%ebp)
c00321e1:	83 8d 4c ff ff ff 04 	orl    $0x4,-0xb4(%ebp)
c00321e8:	89 c8                	mov    %ecx,%eax
c00321ea:	eb b1                	jmp    c003219d <_svfprintf_r+0x12d>
c00321ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00321f0:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00321f6:	89 44 24 08          	mov    %eax,0x8(%esp)
c00321fa:	8b 45 0c             	mov    0xc(%ebp),%eax
c00321fd:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032201:	8b 45 08             	mov    0x8(%ebp),%eax
c0032204:	89 04 24             	mov    %eax,(%esp)
c0032207:	e8 e4 49 00 00       	call   c0036bf0 <__ssprint_r>
c003220c:	85 c0                	test   %eax,%eax
c003220e:	75 30                	jne    c0032240 <_svfprintf_r+0x1d0>
c0032210:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032213:	e9 47 ff ff ff       	jmp    c003215f <_svfprintf_r+0xef>
c0032218:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
c003221e:	85 c0                	test   %eax,%eax
c0032220:	74 1e                	je     c0032240 <_svfprintf_r+0x1d0>
c0032222:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032228:	89 44 24 08          	mov    %eax,0x8(%esp)
c003222c:	8b 45 0c             	mov    0xc(%ebp),%eax
c003222f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032233:	8b 45 08             	mov    0x8(%ebp),%eax
c0032236:	89 04 24             	mov    %eax,(%esp)
c0032239:	e8 b2 49 00 00       	call   c0036bf0 <__ssprint_r>
c003223e:	66 90                	xchg   %ax,%ax
c0032240:	8b 55 0c             	mov    0xc(%ebp),%edx
c0032243:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0032248:	f6 42 0c 40          	testb  $0x40,0xc(%edx)
c003224c:	0f 44 85 34 ff ff ff 	cmove  -0xcc(%ebp),%eax
c0032253:	81 c4 1c 01 00 00    	add    $0x11c,%esp
c0032259:	5b                   	pop    %ebx
c003225a:	5e                   	pop    %esi
c003225b:	5f                   	pop    %edi
c003225c:	5d                   	pop    %ebp
c003225d:	c3                   	ret    
c003225e:	bb 2b 00 00 00       	mov    $0x2b,%ebx
c0032263:	89 c8                	mov    %ecx,%eax
c0032265:	e9 33 ff ff ff       	jmp    c003219d <_svfprintf_r+0x12d>
c003226a:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032270:	8b 45 14             	mov    0x14(%ebp),%eax
c0032273:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032276:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c003227d:	8d 70 04             	lea    0x4(%eax),%esi
c0032280:	8b 00                	mov    (%eax),%eax
c0032282:	85 c0                	test   %eax,%eax
c0032284:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c003228a:	0f 84 7f 18 00 00    	je     c0033b0f <_svfprintf_r+0x1a9f>
c0032290:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c0032296:	85 c0                	test   %eax,%eax
c0032298:	0f 88 b6 17 00 00    	js     c0033a54 <_svfprintf_r+0x19e4>
c003229e:	89 44 24 08          	mov    %eax,0x8(%esp)
c00322a2:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c00322a8:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c00322af:	00 
c00322b0:	89 04 24             	mov    %eax,(%esp)
c00322b3:	e8 f8 38 00 00       	call   c0035bb0 <memchr>
c00322b8:	85 c0                	test   %eax,%eax
c00322ba:	0f 84 a0 19 00 00    	je     c0033c60 <_svfprintf_r+0x1bf0>
c00322c0:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c00322c6:	2b 85 28 ff ff ff    	sub    -0xd8(%ebp),%eax
c00322cc:	39 d0                	cmp    %edx,%eax
c00322ce:	0f 4f c2             	cmovg  %edx,%eax
c00322d1:	89 c2                	mov    %eax,%edx
c00322d3:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c00322da:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c00322e0:	31 c0                	xor    %eax,%eax
c00322e2:	85 d2                	test   %edx,%edx
c00322e4:	0f 49 c2             	cmovns %edx,%eax
c00322e7:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c00322ed:	89 75 14             	mov    %esi,0x14(%ebp)
c00322f0:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c00322f7:	00 00 00 
c00322fa:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0032301:	00 00 00 
c0032304:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032308:	84 db                	test   %bl,%bl
c003230a:	74 07                	je     c0032313 <_svfprintf_r+0x2a3>
c003230c:	83 85 48 ff ff ff 01 	addl   $0x1,-0xb8(%ebp)
c0032313:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c0032319:	8b b5 4c ff ff ff    	mov    -0xb4(%ebp),%esi
c003231f:	89 c8                	mov    %ecx,%eax
c0032321:	89 f2                	mov    %esi,%edx
c0032323:	83 c0 02             	add    $0x2,%eax
c0032326:	83 e2 02             	and    $0x2,%edx
c0032329:	89 95 30 ff ff ff    	mov    %edx,-0xd0(%ebp)
c003232f:	89 f2                	mov    %esi,%edx
c0032331:	0f 44 c1             	cmove  %ecx,%eax
c0032334:	81 e2 84 00 00 00    	and    $0x84,%edx
c003233a:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0032340:	89 95 2c ff ff ff    	mov    %edx,-0xd4(%ebp)
c0032346:	0f 85 1c 06 00 00    	jne    c0032968 <_svfprintf_r+0x8f8>
c003234c:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
c0032352:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
c0032358:	85 f6                	test   %esi,%esi
c003235a:	0f 8e 08 06 00 00    	jle    c0032968 <_svfprintf_r+0x8f8>
c0032360:	83 fe 10             	cmp    $0x10,%esi
c0032363:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032369:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003236f:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0032375:	7f 11                	jg     c0032388 <_svfprintf_r+0x318>
c0032377:	eb 6b                	jmp    c00323e4 <_svfprintf_r+0x374>
c0032379:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0032380:	83 ee 10             	sub    $0x10,%esi
c0032383:	83 fe 10             	cmp    $0x10,%esi
c0032386:	7e 5c                	jle    c00323e4 <_svfprintf_r+0x374>
c0032388:	83 c0 01             	add    $0x1,%eax
c003238b:	83 c1 10             	add    $0x10,%ecx
c003238e:	c7 07 f0 99 03 c0    	movl   $0xc00399f0,(%edi)
c0032394:	83 c7 08             	add    $0x8,%edi
c0032397:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c003239e:	83 f8 07             	cmp    $0x7,%eax
c00323a1:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00323a7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00323ad:	7e d1                	jle    c0032380 <_svfprintf_r+0x310>
c00323af:	8b 45 0c             	mov    0xc(%ebp),%eax
c00323b2:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c00323b6:	89 44 24 04          	mov    %eax,0x4(%esp)
c00323ba:	8b 45 08             	mov    0x8(%ebp),%eax
c00323bd:	89 04 24             	mov    %eax,(%esp)
c00323c0:	e8 2b 48 00 00       	call   c0036bf0 <__ssprint_r>
c00323c5:	85 c0                	test   %eax,%eax
c00323c7:	0f 85 73 fe ff ff    	jne    c0032240 <_svfprintf_r+0x1d0>
c00323cd:	83 ee 10             	sub    $0x10,%esi
c00323d0:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00323d6:	83 fe 10             	cmp    $0x10,%esi
c00323d9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00323df:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00323e2:	7f a4                	jg     c0032388 <_svfprintf_r+0x318>
c00323e4:	83 c0 01             	add    $0x1,%eax
c00323e7:	01 f1                	add    %esi,%ecx
c00323e9:	83 f8 07             	cmp    $0x7,%eax
c00323ec:	c7 07 f0 99 03 c0    	movl   $0xc00399f0,(%edi)
c00323f2:	89 77 04             	mov    %esi,0x4(%edi)
c00323f5:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00323fb:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032401:	0f 8f 16 0e 00 00    	jg     c003321d <_svfprintf_r+0x11ad>
c0032407:	83 c7 08             	add    $0x8,%edi
c003240a:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0032411:	e9 58 05 00 00       	jmp    c003296e <_svfprintf_r+0x8fe>
c0032416:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c003241d:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032423:	8b 45 14             	mov    0x14(%ebp),%eax
c0032426:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032429:	0f 85 fd 04 00 00    	jne    c003292c <_svfprintf_r+0x8bc>
c003242f:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c0032436:	0f 84 f0 04 00 00    	je     c003292c <_svfprintf_r+0x8bc>
c003243c:	0f b7 08             	movzwl (%eax),%ecx
c003243f:	83 c0 04             	add    $0x4,%eax
c0032442:	89 45 14             	mov    %eax,0x14(%ebp)
c0032445:	b8 01 00 00 00       	mov    $0x1,%eax
c003244a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032450:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c0032457:	31 db                	xor    %ebx,%ebx
c0032459:	8b b5 4c ff ff ff    	mov    -0xb4(%ebp),%esi
c003245f:	89 f2                	mov    %esi,%edx
c0032461:	80 e2 7f             	and    $0x7f,%dl
c0032464:	83 bd 44 ff ff ff 00 	cmpl   $0x0,-0xbc(%ebp)
c003246b:	0f 48 d6             	cmovs  %esi,%edx
c003246e:	89 95 4c ff ff ff    	mov    %edx,-0xb4(%ebp)
c0032474:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c003247a:	85 d2                	test   %edx,%edx
c003247c:	75 08                	jne    c0032486 <_svfprintf_r+0x416>
c003247e:	85 c9                	test   %ecx,%ecx
c0032480:	0f 84 ea 08 00 00    	je     c0032d70 <_svfprintf_r+0xd00>
c0032486:	3c 01                	cmp    $0x1,%al
c0032488:	0f 84 6a 0d 00 00    	je     c00331f8 <_svfprintf_r+0x1188>
c003248e:	3c 02                	cmp    $0x2,%al
c0032490:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0032493:	0f 85 bf 0b 00 00    	jne    c0033058 <_svfprintf_r+0xfe8>
c0032499:	8b b5 18 ff ff ff    	mov    -0xe8(%ebp),%esi
c003249f:	90                   	nop
c00324a0:	89 ca                	mov    %ecx,%edx
c00324a2:	83 e8 01             	sub    $0x1,%eax
c00324a5:	83 e2 0f             	and    $0xf,%edx
c00324a8:	0f b6 14 16          	movzbl (%esi,%edx,1),%edx
c00324ac:	c1 e9 04             	shr    $0x4,%ecx
c00324af:	85 c9                	test   %ecx,%ecx
c00324b1:	88 10                	mov    %dl,(%eax)
c00324b3:	75 eb                	jne    c00324a0 <_svfprintf_r+0x430>
c00324b5:	8d 55 a8             	lea    -0x58(%ebp),%edx
c00324b8:	29 c2                	sub    %eax,%edx
c00324ba:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c00324c0:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c00324c6:	66 90                	xchg   %ax,%ax
c00324c8:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c00324ce:	8b 95 38 ff ff ff    	mov    -0xc8(%ebp),%edx
c00324d4:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c00324db:	00 00 00 
c00324de:	39 c2                	cmp    %eax,%edx
c00324e0:	0f 4d c2             	cmovge %edx,%eax
c00324e3:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c00324e9:	e9 1a fe ff ff       	jmp    c0032308 <_svfprintf_r+0x298>
c00324ee:	84 db                	test   %bl,%bl
c00324f0:	89 c8                	mov    %ecx,%eax
c00324f2:	0f 44 de             	cmove  %esi,%ebx
c00324f5:	e9 a3 fc ff ff       	jmp    c003219d <_svfprintf_r+0x12d>
c00324fa:	83 8d 4c ff ff ff 01 	orl    $0x1,-0xb4(%ebp)
c0032501:	89 c8                	mov    %ecx,%eax
c0032503:	e9 95 fc ff ff       	jmp    c003219d <_svfprintf_r+0x12d>
c0032508:	81 8d 4c ff ff ff 80 	orl    $0x80,-0xb4(%ebp)
c003250f:	00 00 00 
c0032512:	89 c8                	mov    %ecx,%eax
c0032514:	e9 84 fc ff ff       	jmp    c003219d <_svfprintf_r+0x12d>
c0032519:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c003251f:	8d 50 d0             	lea    -0x30(%eax),%edx
c0032522:	31 ff                	xor    %edi,%edi
c0032524:	c7 85 40 ff ff ff 00 	movl   $0x0,-0xc0(%ebp)
c003252b:	00 00 00 
c003252e:	66 90                	xchg   %ax,%ax
c0032530:	8d 04 bf             	lea    (%edi,%edi,4),%eax
c0032533:	83 c1 01             	add    $0x1,%ecx
c0032536:	8d 3c 42             	lea    (%edx,%eax,2),%edi
c0032539:	0f be 41 ff          	movsbl -0x1(%ecx),%eax
c003253d:	8d 50 d0             	lea    -0x30(%eax),%edx
c0032540:	83 fa 09             	cmp    $0x9,%edx
c0032543:	76 eb                	jbe    c0032530 <_svfprintf_r+0x4c0>
c0032545:	89 bd 40 ff ff ff    	mov    %edi,-0xc0(%ebp)
c003254b:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
c0032551:	e9 4d fc ff ff       	jmp    c00321a3 <_svfprintf_r+0x133>
c0032556:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c003255d:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0032564:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c003256a:	8b 45 14             	mov    0x14(%ebp),%eax
c003256d:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032570:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c0032576:	0f 85 61 02 00 00    	jne    c00327dd <_svfprintf_r+0x76d>
c003257c:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c0032583:	0f 84 54 02 00 00    	je     c00327dd <_svfprintf_r+0x76d>
c0032589:	0f bf 08             	movswl (%eax),%ecx
c003258c:	83 c0 04             	add    $0x4,%eax
c003258f:	89 45 14             	mov    %eax,0x14(%ebp)
c0032592:	85 c9                	test   %ecx,%ecx
c0032594:	0f 88 53 02 00 00    	js     c00327ed <_svfprintf_r+0x77d>
c003259a:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c00325a1:	b8 01 00 00 00       	mov    $0x1,%eax
c00325a6:	e9 ae fe ff ff       	jmp    c0032459 <_svfprintf_r+0x3e9>
c00325ab:	f6 85 4c ff ff ff 08 	testb  $0x8,-0xb4(%ebp)
c00325b2:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c00325b8:	8b 45 14             	mov    0x14(%ebp),%eax
c00325bb:	89 4d 10             	mov    %ecx,0x10(%ebp)
c00325be:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c00325c4:	0f 84 15 10 00 00    	je     c00335df <_svfprintf_r+0x156f>
c00325ca:	db 28                	fldt   (%eax)
c00325cc:	83 c0 0c             	add    $0xc,%eax
c00325cf:	89 45 14             	mov    %eax,0x14(%ebp)
c00325d2:	dd 9d 10 ff ff ff    	fstpl  -0xf0(%ebp)
c00325d8:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c00325de:	dd 1c 24             	fstpl  (%esp)
c00325e1:	e8 aa 44 00 00       	call   c0036a90 <__fpclassifyd>
c00325e6:	83 f8 01             	cmp    $0x1,%eax
c00325e9:	0f 85 82 0f 00 00    	jne    c0033571 <_svfprintf_r+0x1501>
c00325ef:	d9 ee                	fldz   
c00325f1:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c00325f7:	d9 c9                	fxch   %st(1)
c00325f9:	df e9                	fucomip %st(1),%st
c00325fb:	dd d8                	fstp   %st(0)
c00325fd:	0f 87 59 15 00 00    	ja     c0033b5c <_svfprintf_r+0x1aec>
c0032603:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c003260a:	83 bd 24 ff ff ff 47 	cmpl   $0x47,-0xdc(%ebp)
c0032611:	ba 3e 98 03 c0       	mov    $0xc003983e,%edx
c0032616:	b8 42 98 03 c0       	mov    $0xc0039842,%eax
c003261b:	c7 85 48 ff ff ff 03 	movl   $0x3,-0xb8(%ebp)
c0032622:	00 00 00 
c0032625:	0f 4e c2             	cmovle %edx,%eax
c0032628:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c003262e:	81 a5 4c ff ff ff 7f 	andl   $0xffffff7f,-0xb4(%ebp)
c0032635:	ff ff ff 
c0032638:	c7 85 38 ff ff ff 03 	movl   $0x3,-0xc8(%ebp)
c003263f:	00 00 00 
c0032642:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0032649:	00 00 00 
c003264c:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0032653:	00 00 00 
c0032656:	e9 ad fc ff ff       	jmp    c0032308 <_svfprintf_r+0x298>
c003265b:	8d 41 01             	lea    0x1(%ecx),%eax
c003265e:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0032664:	0f be 01             	movsbl (%ecx),%eax
c0032667:	83 f8 2a             	cmp    $0x2a,%eax
c003266a:	0f 84 84 18 00 00    	je     c0033ef4 <_svfprintf_r+0x1e84>
c0032670:	8d 50 d0             	lea    -0x30(%eax),%edx
c0032673:	31 c9                	xor    %ecx,%ecx
c0032675:	83 fa 09             	cmp    $0x9,%edx
c0032678:	0f 87 a8 16 00 00    	ja     c0033d26 <_svfprintf_r+0x1cb6>
c003267e:	89 bd 44 ff ff ff    	mov    %edi,-0xbc(%ebp)
c0032684:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
c003268a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032690:	8d 04 89             	lea    (%ecx,%ecx,4),%eax
c0032693:	83 c7 01             	add    $0x1,%edi
c0032696:	8d 0c 42             	lea    (%edx,%eax,2),%ecx
c0032699:	0f be 47 ff          	movsbl -0x1(%edi),%eax
c003269d:	8d 50 d0             	lea    -0x30(%eax),%edx
c00326a0:	83 fa 09             	cmp    $0x9,%edx
c00326a3:	76 eb                	jbe    c0032690 <_svfprintf_r+0x620>
c00326a5:	85 c9                	test   %ecx,%ecx
c00326a7:	89 ca                	mov    %ecx,%edx
c00326a9:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
c00326ae:	0f 48 d1             	cmovs  %ecx,%edx
c00326b1:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c00326b7:	8b bd 44 ff ff ff    	mov    -0xbc(%ebp),%edi
c00326bd:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c00326c3:	89 95 44 ff ff ff    	mov    %edx,-0xbc(%ebp)
c00326c9:	e9 d5 fa ff ff       	jmp    c00321a3 <_svfprintf_r+0x133>
c00326ce:	8b 45 14             	mov    0x14(%ebp),%eax
c00326d1:	89 4d 10             	mov    %ecx,0x10(%ebp)
c00326d4:	83 8d 4c ff ff ff 02 	orl    $0x2,-0xb4(%ebp)
c00326db:	8b 08                	mov    (%eax),%ecx
c00326dd:	83 c0 04             	add    $0x4,%eax
c00326e0:	89 45 14             	mov    %eax,0x14(%ebp)
c00326e3:	b8 02 00 00 00       	mov    $0x2,%eax
c00326e8:	c6 85 5a ff ff ff 30 	movb   $0x30,-0xa6(%ebp)
c00326ef:	c6 85 5b ff ff ff 78 	movb   $0x78,-0xa5(%ebp)
c00326f6:	c7 85 18 ff ff ff 5f 	movl   $0xc003985f,-0xe8(%ebp)
c00326fd:	98 03 c0 
c0032700:	c7 85 24 ff ff ff 78 	movl   $0x78,-0xdc(%ebp)
c0032707:	00 00 00 
c003270a:	e9 41 fd ff ff       	jmp    c0032450 <_svfprintf_r+0x3e0>
c003270f:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0032716:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c003271c:	8b 45 14             	mov    0x14(%ebp),%eax
c003271f:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032722:	0f 85 87 00 00 00    	jne    c00327af <_svfprintf_r+0x73f>
c0032728:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c003272f:	74 7e                	je     c00327af <_svfprintf_r+0x73f>
c0032731:	0f b7 08             	movzwl (%eax),%ecx
c0032734:	83 c0 04             	add    $0x4,%eax
c0032737:	89 45 14             	mov    %eax,0x14(%ebp)
c003273a:	31 c0                	xor    %eax,%eax
c003273c:	e9 0f fd ff ff       	jmp    c0032450 <_svfprintf_r+0x3e0>
c0032741:	83 8d 4c ff ff ff 08 	orl    $0x8,-0xb4(%ebp)
c0032748:	89 c8                	mov    %ecx,%eax
c003274a:	e9 4e fa ff ff       	jmp    c003219d <_svfprintf_r+0x12d>
c003274f:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0032756:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032759:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c003275f:	0f 85 97 0b 00 00    	jne    c00332fc <_svfprintf_r+0x128c>
c0032765:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c003276c:	0f 84 8a 0b 00 00    	je     c00332fc <_svfprintf_r+0x128c>
c0032772:	8b 45 14             	mov    0x14(%ebp),%eax
c0032775:	0f b7 95 34 ff ff ff 	movzwl -0xcc(%ebp),%edx
c003277c:	8b 00                	mov    (%eax),%eax
c003277e:	66 89 10             	mov    %dx,(%eax)
c0032781:	8b 45 14             	mov    0x14(%ebp),%eax
c0032784:	83 c0 04             	add    $0x4,%eax
c0032787:	89 45 14             	mov    %eax,0x14(%ebp)
c003278a:	e9 7c f9 ff ff       	jmp    c003210b <_svfprintf_r+0x9b>
c003278f:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c0032796:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c003279d:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c00327a3:	8b 45 14             	mov    0x14(%ebp),%eax
c00327a6:	89 4d 10             	mov    %ecx,0x10(%ebp)
c00327a9:	0f 84 79 ff ff ff    	je     c0032728 <_svfprintf_r+0x6b8>
c00327af:	8b 08                	mov    (%eax),%ecx
c00327b1:	83 c0 04             	add    $0x4,%eax
c00327b4:	89 45 14             	mov    %eax,0x14(%ebp)
c00327b7:	31 c0                	xor    %eax,%eax
c00327b9:	e9 92 fc ff ff       	jmp    c0032450 <_svfprintf_r+0x3e0>
c00327be:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c00327c5:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c00327cb:	8b 45 14             	mov    0x14(%ebp),%eax
c00327ce:	89 4d 10             	mov    %ecx,0x10(%ebp)
c00327d1:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c00327d7:	0f 84 9f fd ff ff    	je     c003257c <_svfprintf_r+0x50c>
c00327dd:	8b 08                	mov    (%eax),%ecx
c00327df:	83 c0 04             	add    $0x4,%eax
c00327e2:	89 45 14             	mov    %eax,0x14(%ebp)
c00327e5:	85 c9                	test   %ecx,%ecx
c00327e7:	0f 89 ad fd ff ff    	jns    c003259a <_svfprintf_r+0x52a>
c00327ed:	f7 d9                	neg    %ecx
c00327ef:	bb 2d 00 00 00       	mov    $0x2d,%ebx
c00327f4:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
c00327fb:	b8 01 00 00 00       	mov    $0x1,%eax
c0032800:	e9 54 fc ff ff       	jmp    c0032459 <_svfprintf_r+0x3e9>
c0032805:	83 8d 4c ff ff ff 40 	orl    $0x40,-0xb4(%ebp)
c003280c:	89 c8                	mov    %ecx,%eax
c003280e:	e9 8a f9 ff ff       	jmp    c003219d <_svfprintf_r+0x12d>
c0032813:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c003281a:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032820:	8b 45 14             	mov    0x14(%ebp),%eax
c0032823:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032826:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c003282c:	c7 85 18 ff ff ff 5f 	movl   $0xc003985f,-0xe8(%ebp)
c0032833:	98 03 c0 
c0032836:	75 71                	jne    c00328a9 <_svfprintf_r+0x839>
c0032838:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c003283f:	74 68                	je     c00328a9 <_svfprintf_r+0x839>
c0032841:	0f b7 08             	movzwl (%eax),%ecx
c0032844:	83 c0 04             	add    $0x4,%eax
c0032847:	89 45 14             	mov    %eax,0x14(%ebp)
c003284a:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0032851:	b8 02 00 00 00       	mov    $0x2,%eax
c0032856:	0f 84 f4 fb ff ff    	je     c0032450 <_svfprintf_r+0x3e0>
c003285c:	85 c9                	test   %ecx,%ecx
c003285e:	0f 84 ec fb ff ff    	je     c0032450 <_svfprintf_r+0x3e0>
c0032864:	0f b6 95 24 ff ff ff 	movzbl -0xdc(%ebp),%edx
c003286b:	c6 85 5a ff ff ff 30 	movb   $0x30,-0xa6(%ebp)
c0032872:	83 8d 4c ff ff ff 02 	orl    $0x2,-0xb4(%ebp)
c0032879:	88 95 5b ff ff ff    	mov    %dl,-0xa5(%ebp)
c003287f:	e9 cc fb ff ff       	jmp    c0032450 <_svfprintf_r+0x3e0>
c0032884:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c003288b:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032891:	8b 45 14             	mov    0x14(%ebp),%eax
c0032894:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032897:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c003289d:	c7 85 18 ff ff ff 4e 	movl   $0xc003984e,-0xe8(%ebp)
c00328a4:	98 03 c0 
c00328a7:	74 8f                	je     c0032838 <_svfprintf_r+0x7c8>
c00328a9:	8b 08                	mov    (%eax),%ecx
c00328ab:	83 c0 04             	add    $0x4,%eax
c00328ae:	89 45 14             	mov    %eax,0x14(%ebp)
c00328b1:	eb 97                	jmp    c003284a <_svfprintf_r+0x7da>
c00328b3:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c00328b9:	8b 45 14             	mov    0x14(%ebp),%eax
c00328bc:	89 4d 10             	mov    %ecx,0x10(%ebp)
c00328bf:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c00328c6:	8b 00                	mov    (%eax),%eax
c00328c8:	88 45 80             	mov    %al,-0x80(%ebp)
c00328cb:	8b 45 14             	mov    0x14(%ebp),%eax
c00328ce:	83 c0 04             	add    $0x4,%eax
c00328d1:	89 45 14             	mov    %eax,0x14(%ebp)
c00328d4:	8d 45 80             	lea    -0x80(%ebp),%eax
c00328d7:	31 db                	xor    %ebx,%ebx
c00328d9:	c7 85 48 ff ff ff 01 	movl   $0x1,-0xb8(%ebp)
c00328e0:	00 00 00 
c00328e3:	c7 85 38 ff ff ff 01 	movl   $0x1,-0xc8(%ebp)
c00328ea:	00 00 00 
c00328ed:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c00328f4:	00 00 00 
c00328f7:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c00328fe:	00 00 00 
c0032901:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0032907:	e9 07 fa ff ff       	jmp    c0032313 <_svfprintf_r+0x2a3>
c003290c:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c0032913:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c003291a:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032920:	8b 45 14             	mov    0x14(%ebp),%eax
c0032923:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032926:	0f 84 03 fb ff ff    	je     c003242f <_svfprintf_r+0x3bf>
c003292c:	8b 08                	mov    (%eax),%ecx
c003292e:	83 c0 04             	add    $0x4,%eax
c0032931:	89 45 14             	mov    %eax,0x14(%ebp)
c0032934:	b8 01 00 00 00       	mov    $0x1,%eax
c0032939:	e9 12 fb ff ff       	jmp    c0032450 <_svfprintf_r+0x3e0>
c003293e:	85 c0                	test   %eax,%eax
c0032940:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032946:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032949:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c003294f:	0f 84 c3 f8 ff ff    	je     c0032218 <_svfprintf_r+0x1a8>
c0032955:	88 45 80             	mov    %al,-0x80(%ebp)
c0032958:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c003295f:	e9 70 ff ff ff       	jmp    c00328d4 <_svfprintf_r+0x864>
c0032964:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032968:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c003296e:	84 db                	test   %bl,%bl
c0032970:	74 33                	je     c00329a5 <_svfprintf_r+0x935>
c0032972:	8d 85 59 ff ff ff    	lea    -0xa7(%ebp),%eax
c0032978:	83 c1 01             	add    $0x1,%ecx
c003297b:	89 07                	mov    %eax,(%edi)
c003297d:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032983:	83 c7 08             	add    $0x8,%edi
c0032986:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
c003298d:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032993:	83 c0 01             	add    $0x1,%eax
c0032996:	83 f8 07             	cmp    $0x7,%eax
c0032999:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003299f:	0f 8f 7b 06 00 00    	jg     c0033020 <_svfprintf_r+0xfb0>
c00329a5:	8b 9d 30 ff ff ff    	mov    -0xd0(%ebp),%ebx
c00329ab:	85 db                	test   %ebx,%ebx
c00329ad:	74 33                	je     c00329e2 <_svfprintf_r+0x972>
c00329af:	8d 85 5a ff ff ff    	lea    -0xa6(%ebp),%eax
c00329b5:	83 c1 02             	add    $0x2,%ecx
c00329b8:	89 07                	mov    %eax,(%edi)
c00329ba:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00329c0:	83 c7 08             	add    $0x8,%edi
c00329c3:	c7 47 fc 02 00 00 00 	movl   $0x2,-0x4(%edi)
c00329ca:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00329d0:	83 c0 01             	add    $0x1,%eax
c00329d3:	83 f8 07             	cmp    $0x7,%eax
c00329d6:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00329dc:	0f 8f 06 06 00 00    	jg     c0032fe8 <_svfprintf_r+0xf78>
c00329e2:	81 bd 2c ff ff ff 80 	cmpl   $0x80,-0xd4(%ebp)
c00329e9:	00 00 00 
c00329ec:	0f 84 c6 03 00 00    	je     c0032db8 <_svfprintf_r+0xd48>
c00329f2:	8b b5 44 ff ff ff    	mov    -0xbc(%ebp),%esi
c00329f8:	2b b5 38 ff ff ff    	sub    -0xc8(%ebp),%esi
c00329fe:	85 f6                	test   %esi,%esi
c0032a00:	0f 8e d2 00 00 00    	jle    c0032ad8 <_svfprintf_r+0xa68>
c0032a06:	83 fe 10             	cmp    $0x10,%esi
c0032a09:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032a0f:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0032a15:	7f 11                	jg     c0032a28 <_svfprintf_r+0x9b8>
c0032a17:	eb 6b                	jmp    c0032a84 <_svfprintf_r+0xa14>
c0032a19:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0032a20:	83 ee 10             	sub    $0x10,%esi
c0032a23:	83 fe 10             	cmp    $0x10,%esi
c0032a26:	7e 5c                	jle    c0032a84 <_svfprintf_r+0xa14>
c0032a28:	83 c0 01             	add    $0x1,%eax
c0032a2b:	83 c1 10             	add    $0x10,%ecx
c0032a2e:	c7 07 e0 99 03 c0    	movl   $0xc00399e0,(%edi)
c0032a34:	83 c7 08             	add    $0x8,%edi
c0032a37:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0032a3e:	83 f8 07             	cmp    $0x7,%eax
c0032a41:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032a47:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032a4d:	7e d1                	jle    c0032a20 <_svfprintf_r+0x9b0>
c0032a4f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032a52:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0032a56:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032a5a:	8b 45 08             	mov    0x8(%ebp),%eax
c0032a5d:	89 04 24             	mov    %eax,(%esp)
c0032a60:	e8 8b 41 00 00       	call   c0036bf0 <__ssprint_r>
c0032a65:	85 c0                	test   %eax,%eax
c0032a67:	0f 85 d3 f7 ff ff    	jne    c0032240 <_svfprintf_r+0x1d0>
c0032a6d:	83 ee 10             	sub    $0x10,%esi
c0032a70:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032a76:	83 fe 10             	cmp    $0x10,%esi
c0032a79:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032a7f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032a82:	7f a4                	jg     c0032a28 <_svfprintf_r+0x9b8>
c0032a84:	83 c0 01             	add    $0x1,%eax
c0032a87:	01 f1                	add    %esi,%ecx
c0032a89:	c7 07 e0 99 03 c0    	movl   $0xc00399e0,(%edi)
c0032a8f:	83 c7 08             	add    $0x8,%edi
c0032a92:	89 77 fc             	mov    %esi,-0x4(%edi)
c0032a95:	83 f8 07             	cmp    $0x7,%eax
c0032a98:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032a9e:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032aa4:	7e 32                	jle    c0032ad8 <_svfprintf_r+0xa68>
c0032aa6:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032aac:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032ab0:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032ab3:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032ab7:	8b 45 08             	mov    0x8(%ebp),%eax
c0032aba:	89 04 24             	mov    %eax,(%esp)
c0032abd:	e8 2e 41 00 00       	call   c0036bf0 <__ssprint_r>
c0032ac2:	85 c0                	test   %eax,%eax
c0032ac4:	0f 85 76 f7 ff ff    	jne    c0032240 <_svfprintf_r+0x1d0>
c0032aca:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032ad0:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032ad3:	90                   	nop
c0032ad4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032ad8:	f7 85 4c ff ff ff 00 	testl  $0x100,-0xb4(%ebp)
c0032adf:	01 00 00 
c0032ae2:	0f 85 50 01 00 00    	jne    c0032c38 <_svfprintf_r+0xbc8>
c0032ae8:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c0032aee:	89 07                	mov    %eax,(%edi)
c0032af0:	8b 85 38 ff ff ff    	mov    -0xc8(%ebp),%eax
c0032af6:	01 c1                	add    %eax,%ecx
c0032af8:	89 47 04             	mov    %eax,0x4(%edi)
c0032afb:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032b01:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032b07:	83 c0 01             	add    $0x1,%eax
c0032b0a:	83 f8 07             	cmp    $0x7,%eax
c0032b0d:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032b13:	0f 8f 6a 04 00 00    	jg     c0032f83 <_svfprintf_r+0xf13>
c0032b19:	83 c7 08             	add    $0x8,%edi
c0032b1c:	f6 85 4c ff ff ff 04 	testb  $0x4,-0xb4(%ebp)
c0032b23:	0f 84 d7 00 00 00    	je     c0032c00 <_svfprintf_r+0xb90>
c0032b29:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
c0032b2f:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
c0032b35:	85 f6                	test   %esi,%esi
c0032b37:	0f 8e c3 00 00 00    	jle    c0032c00 <_svfprintf_r+0xb90>
c0032b3d:	83 fe 10             	cmp    $0x10,%esi
c0032b40:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032b46:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0032b4c:	7f 0a                	jg     c0032b58 <_svfprintf_r+0xae8>
c0032b4e:	eb 64                	jmp    c0032bb4 <_svfprintf_r+0xb44>
c0032b50:	83 ee 10             	sub    $0x10,%esi
c0032b53:	83 fe 10             	cmp    $0x10,%esi
c0032b56:	7e 5c                	jle    c0032bb4 <_svfprintf_r+0xb44>
c0032b58:	83 c0 01             	add    $0x1,%eax
c0032b5b:	83 c1 10             	add    $0x10,%ecx
c0032b5e:	c7 07 f0 99 03 c0    	movl   $0xc00399f0,(%edi)
c0032b64:	83 c7 08             	add    $0x8,%edi
c0032b67:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0032b6e:	83 f8 07             	cmp    $0x7,%eax
c0032b71:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032b77:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032b7d:	7e d1                	jle    c0032b50 <_svfprintf_r+0xae0>
c0032b7f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032b82:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0032b86:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032b8a:	8b 45 08             	mov    0x8(%ebp),%eax
c0032b8d:	89 04 24             	mov    %eax,(%esp)
c0032b90:	e8 5b 40 00 00       	call   c0036bf0 <__ssprint_r>
c0032b95:	85 c0                	test   %eax,%eax
c0032b97:	0f 85 a3 f6 ff ff    	jne    c0032240 <_svfprintf_r+0x1d0>
c0032b9d:	83 ee 10             	sub    $0x10,%esi
c0032ba0:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032ba6:	83 fe 10             	cmp    $0x10,%esi
c0032ba9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032baf:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032bb2:	7f a4                	jg     c0032b58 <_svfprintf_r+0xae8>
c0032bb4:	83 c0 01             	add    $0x1,%eax
c0032bb7:	01 f1                	add    %esi,%ecx
c0032bb9:	83 f8 07             	cmp    $0x7,%eax
c0032bbc:	c7 07 f0 99 03 c0    	movl   $0xc00399f0,(%edi)
c0032bc2:	89 77 04             	mov    %esi,0x4(%edi)
c0032bc5:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032bcb:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032bd1:	7e 2d                	jle    c0032c00 <_svfprintf_r+0xb90>
c0032bd3:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032bd9:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032bdd:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032be0:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032be4:	8b 45 08             	mov    0x8(%ebp),%eax
c0032be7:	89 04 24             	mov    %eax,(%esp)
c0032bea:	e8 01 40 00 00       	call   c0036bf0 <__ssprint_r>
c0032bef:	85 c0                	test   %eax,%eax
c0032bf1:	0f 85 49 f6 ff ff    	jne    c0032240 <_svfprintf_r+0x1d0>
c0032bf7:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032bfd:	8d 76 00             	lea    0x0(%esi),%esi
c0032c00:	8b 85 40 ff ff ff    	mov    -0xc0(%ebp),%eax
c0032c06:	8b 95 48 ff ff ff    	mov    -0xb8(%ebp),%edx
c0032c0c:	39 c2                	cmp    %eax,%edx
c0032c0e:	0f 4d c2             	cmovge %edx,%eax
c0032c11:	01 85 34 ff ff ff    	add    %eax,-0xcc(%ebp)
c0032c17:	85 c9                	test   %ecx,%ecx
c0032c19:	0f 85 99 03 00 00    	jne    c0032fb8 <_svfprintf_r+0xf48>
c0032c1f:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c0032c26:	00 00 00 
c0032c29:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032c2c:	e9 da f4 ff ff       	jmp    c003210b <_svfprintf_r+0x9b>
c0032c31:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0032c38:	83 bd 24 ff ff ff 65 	cmpl   $0x65,-0xdc(%ebp)
c0032c3f:	0f 8e 5b 02 00 00    	jle    c0032ea0 <_svfprintf_r+0xe30>
c0032c45:	d9 ee                	fldz   
c0032c47:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0032c4d:	df e9                	fucomip %st(1),%st
c0032c4f:	dd d8                	fstp   %st(0)
c0032c51:	0f 8a 59 04 00 00    	jp     c00330b0 <_svfprintf_r+0x1040>
c0032c57:	0f 85 53 04 00 00    	jne    c00330b0 <_svfprintf_r+0x1040>
c0032c5d:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032c63:	83 c1 01             	add    $0x1,%ecx
c0032c66:	83 c7 08             	add    $0x8,%edi
c0032c69:	c7 47 f8 77 98 03 c0 	movl   $0xc0039877,-0x8(%edi)
c0032c70:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
c0032c77:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032c7d:	83 c0 01             	add    $0x1,%eax
c0032c80:	83 f8 07             	cmp    $0x7,%eax
c0032c83:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032c89:	0f 8f 63 09 00 00    	jg     c00335f2 <_svfprintf_r+0x1582>
c0032c8f:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
c0032c95:	39 85 5c ff ff ff    	cmp    %eax,-0xa4(%ebp)
c0032c9b:	7c 0d                	jl     c0032caa <_svfprintf_r+0xc3a>
c0032c9d:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0032ca4:	0f 84 72 fe ff ff    	je     c0032b1c <_svfprintf_r+0xaac>
c0032caa:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
c0032cb0:	83 c7 08             	add    $0x8,%edi
c0032cb3:	89 47 f8             	mov    %eax,-0x8(%edi)
c0032cb6:	8b 85 08 ff ff ff    	mov    -0xf8(%ebp),%eax
c0032cbc:	89 47 fc             	mov    %eax,-0x4(%edi)
c0032cbf:	01 c1                	add    %eax,%ecx
c0032cc1:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032cc7:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032ccd:	83 c0 01             	add    $0x1,%eax
c0032cd0:	83 f8 07             	cmp    $0x7,%eax
c0032cd3:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032cd9:	0f 8f dc 0b 00 00    	jg     c00338bb <_svfprintf_r+0x184b>
c0032cdf:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
c0032ce5:	8d 70 ff             	lea    -0x1(%eax),%esi
c0032ce8:	85 f6                	test   %esi,%esi
c0032cea:	0f 8e 2c fe ff ff    	jle    c0032b1c <_svfprintf_r+0xaac>
c0032cf0:	83 fe 10             	cmp    $0x10,%esi
c0032cf3:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032cf9:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0032cff:	7f 13                	jg     c0032d14 <_svfprintf_r+0xca4>
c0032d01:	e9 e6 05 00 00       	jmp    c00332ec <_svfprintf_r+0x127c>
c0032d06:	66 90                	xchg   %ax,%ax
c0032d08:	83 ee 10             	sub    $0x10,%esi
c0032d0b:	83 fe 10             	cmp    $0x10,%esi
c0032d0e:	0f 8e d8 05 00 00    	jle    c00332ec <_svfprintf_r+0x127c>
c0032d14:	83 c0 01             	add    $0x1,%eax
c0032d17:	83 c1 10             	add    $0x10,%ecx
c0032d1a:	c7 07 e0 99 03 c0    	movl   $0xc00399e0,(%edi)
c0032d20:	83 c7 08             	add    $0x8,%edi
c0032d23:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0032d2a:	83 f8 07             	cmp    $0x7,%eax
c0032d2d:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032d33:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032d39:	7e cd                	jle    c0032d08 <_svfprintf_r+0xc98>
c0032d3b:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032d3e:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0032d42:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032d46:	8b 45 08             	mov    0x8(%ebp),%eax
c0032d49:	89 04 24             	mov    %eax,(%esp)
c0032d4c:	e8 9f 3e 00 00       	call   c0036bf0 <__ssprint_r>
c0032d51:	85 c0                	test   %eax,%eax
c0032d53:	0f 85 e7 f4 ff ff    	jne    c0032240 <_svfprintf_r+0x1d0>
c0032d59:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032d5f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032d62:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032d68:	eb 9e                	jmp    c0032d08 <_svfprintf_r+0xc98>
c0032d6a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032d70:	84 c0                	test   %al,%al
c0032d72:	75 2c                	jne    c0032da0 <_svfprintf_r+0xd30>
c0032d74:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0032d7b:	74 23                	je     c0032da0 <_svfprintf_r+0xd30>
c0032d7d:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
c0032d83:	c6 45 a7 30          	movb   $0x30,-0x59(%ebp)
c0032d87:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0032d8d:	8d 45 a7             	lea    -0x59(%ebp),%eax
c0032d90:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0032d96:	e9 2d f7 ff ff       	jmp    c00324c8 <_svfprintf_r+0x458>
c0032d9b:	90                   	nop
c0032d9c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032da0:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0032da3:	c7 85 38 ff ff ff 00 	movl   $0x0,-0xc8(%ebp)
c0032daa:	00 00 00 
c0032dad:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0032db3:	e9 10 f7 ff ff       	jmp    c00324c8 <_svfprintf_r+0x458>
c0032db8:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
c0032dbe:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
c0032dc4:	85 f6                	test   %esi,%esi
c0032dc6:	0f 8e 26 fc ff ff    	jle    c00329f2 <_svfprintf_r+0x982>
c0032dcc:	83 fe 10             	cmp    $0x10,%esi
c0032dcf:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032dd5:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0032ddb:	7f 0b                	jg     c0032de8 <_svfprintf_r+0xd78>
c0032ddd:	eb 65                	jmp    c0032e44 <_svfprintf_r+0xdd4>
c0032ddf:	90                   	nop
c0032de0:	83 ee 10             	sub    $0x10,%esi
c0032de3:	83 fe 10             	cmp    $0x10,%esi
c0032de6:	7e 5c                	jle    c0032e44 <_svfprintf_r+0xdd4>
c0032de8:	83 c0 01             	add    $0x1,%eax
c0032deb:	83 c1 10             	add    $0x10,%ecx
c0032dee:	c7 07 e0 99 03 c0    	movl   $0xc00399e0,(%edi)
c0032df4:	83 c7 08             	add    $0x8,%edi
c0032df7:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0032dfe:	83 f8 07             	cmp    $0x7,%eax
c0032e01:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032e07:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032e0d:	7e d1                	jle    c0032de0 <_svfprintf_r+0xd70>
c0032e0f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032e12:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0032e16:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032e1a:	8b 45 08             	mov    0x8(%ebp),%eax
c0032e1d:	89 04 24             	mov    %eax,(%esp)
c0032e20:	e8 cb 3d 00 00       	call   c0036bf0 <__ssprint_r>
c0032e25:	85 c0                	test   %eax,%eax
c0032e27:	0f 85 13 f4 ff ff    	jne    c0032240 <_svfprintf_r+0x1d0>
c0032e2d:	83 ee 10             	sub    $0x10,%esi
c0032e30:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032e36:	83 fe 10             	cmp    $0x10,%esi
c0032e39:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032e3f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032e42:	7f a4                	jg     c0032de8 <_svfprintf_r+0xd78>
c0032e44:	83 c0 01             	add    $0x1,%eax
c0032e47:	01 f1                	add    %esi,%ecx
c0032e49:	c7 07 e0 99 03 c0    	movl   $0xc00399e0,(%edi)
c0032e4f:	83 c7 08             	add    $0x8,%edi
c0032e52:	89 77 fc             	mov    %esi,-0x4(%edi)
c0032e55:	83 f8 07             	cmp    $0x7,%eax
c0032e58:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032e5e:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032e64:	0f 8e 88 fb ff ff    	jle    c00329f2 <_svfprintf_r+0x982>
c0032e6a:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032e70:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032e74:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032e77:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032e7b:	8b 45 08             	mov    0x8(%ebp),%eax
c0032e7e:	89 04 24             	mov    %eax,(%esp)
c0032e81:	e8 6a 3d 00 00       	call   c0036bf0 <__ssprint_r>
c0032e86:	85 c0                	test   %eax,%eax
c0032e88:	0f 85 b2 f3 ff ff    	jne    c0032240 <_svfprintf_r+0x1d0>
c0032e8e:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032e94:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032e97:	e9 56 fb ff ff       	jmp    c00329f2 <_svfprintf_r+0x982>
c0032e9c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032ea0:	83 bd 1c ff ff ff 01 	cmpl   $0x1,-0xe4(%ebp)
c0032ea7:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c0032ead:	0f 8e df 05 00 00    	jle    c0033492 <_svfprintf_r+0x1422>
c0032eb3:	89 07                	mov    %eax,(%edi)
c0032eb5:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032ebb:	8d 51 01             	lea    0x1(%ecx),%edx
c0032ebe:	c7 47 04 01 00 00 00 	movl   $0x1,0x4(%edi)
c0032ec5:	83 c7 08             	add    $0x8,%edi
c0032ec8:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0032ece:	83 c0 01             	add    $0x1,%eax
c0032ed1:	83 f8 07             	cmp    $0x7,%eax
c0032ed4:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032eda:	0f 8f 59 06 00 00    	jg     c0033539 <_svfprintf_r+0x14c9>
c0032ee0:	8b 9d 0c ff ff ff    	mov    -0xf4(%ebp),%ebx
c0032ee6:	83 c0 01             	add    $0x1,%eax
c0032ee9:	83 c7 08             	add    $0x8,%edi
c0032eec:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032ef2:	89 5f f8             	mov    %ebx,-0x8(%edi)
c0032ef5:	8b 9d 08 ff ff ff    	mov    -0xf8(%ebp),%ebx
c0032efb:	89 5f fc             	mov    %ebx,-0x4(%edi)
c0032efe:	01 da                	add    %ebx,%edx
c0032f00:	83 f8 07             	cmp    $0x7,%eax
c0032f03:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0032f09:	0f 8f f2 05 00 00    	jg     c0033501 <_svfprintf_r+0x1491>
c0032f0f:	d9 ee                	fldz   
c0032f11:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0032f17:	df e9                	fucomip %st(1),%st
c0032f19:	dd d8                	fstp   %st(0)
c0032f1b:	7a 06                	jp     c0032f23 <_svfprintf_r+0xeb3>
c0032f1d:	0f 84 33 03 00 00    	je     c0033256 <_svfprintf_r+0x11e6>
c0032f23:	8b 8d 28 ff ff ff    	mov    -0xd8(%ebp),%ecx
c0032f29:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c0032f2f:	83 c1 01             	add    $0x1,%ecx
c0032f32:	89 0f                	mov    %ecx,(%edi)
c0032f34:	8d 4b ff             	lea    -0x1(%ebx),%ecx
c0032f37:	89 4f 04             	mov    %ecx,0x4(%edi)
c0032f3a:	01 ca                	add    %ecx,%edx
c0032f3c:	83 c0 01             	add    $0x1,%eax
c0032f3f:	83 f8 07             	cmp    $0x7,%eax
c0032f42:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0032f48:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032f4e:	0f 8f 75 05 00 00    	jg     c00334c9 <_svfprintf_r+0x1459>
c0032f54:	83 c7 08             	add    $0x8,%edi
c0032f57:	8b 9d 04 ff ff ff    	mov    -0xfc(%ebp),%ebx
c0032f5d:	8d 8d 65 ff ff ff    	lea    -0x9b(%ebp),%ecx
c0032f63:	89 0f                	mov    %ecx,(%edi)
c0032f65:	89 5f 04             	mov    %ebx,0x4(%edi)
c0032f68:	8d 0c 1a             	lea    (%edx,%ebx,1),%ecx
c0032f6b:	83 c0 01             	add    $0x1,%eax
c0032f6e:	83 f8 07             	cmp    $0x7,%eax
c0032f71:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032f77:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032f7d:	0f 8e 96 fb ff ff    	jle    c0032b19 <_svfprintf_r+0xaa9>
c0032f83:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032f89:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032f8d:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032f90:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032f94:	8b 45 08             	mov    0x8(%ebp),%eax
c0032f97:	89 04 24             	mov    %eax,(%esp)
c0032f9a:	e8 51 3c 00 00       	call   c0036bf0 <__ssprint_r>
c0032f9f:	85 c0                	test   %eax,%eax
c0032fa1:	0f 85 99 f2 ff ff    	jne    c0032240 <_svfprintf_r+0x1d0>
c0032fa7:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032fad:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032fb0:	e9 67 fb ff ff       	jmp    c0032b1c <_svfprintf_r+0xaac>
c0032fb5:	8d 76 00             	lea    0x0(%esi),%esi
c0032fb8:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032fbe:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032fc2:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032fc5:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032fc9:	8b 45 08             	mov    0x8(%ebp),%eax
c0032fcc:	89 04 24             	mov    %eax,(%esp)
c0032fcf:	e8 1c 3c 00 00       	call   c0036bf0 <__ssprint_r>
c0032fd4:	85 c0                	test   %eax,%eax
c0032fd6:	0f 84 43 fc ff ff    	je     c0032c1f <_svfprintf_r+0xbaf>
c0032fdc:	e9 5f f2 ff ff       	jmp    c0032240 <_svfprintf_r+0x1d0>
c0032fe1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0032fe8:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032fee:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032ff2:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032ff5:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032ff9:	8b 45 08             	mov    0x8(%ebp),%eax
c0032ffc:	89 04 24             	mov    %eax,(%esp)
c0032fff:	e8 ec 3b 00 00       	call   c0036bf0 <__ssprint_r>
c0033004:	85 c0                	test   %eax,%eax
c0033006:	0f 85 34 f2 ff ff    	jne    c0032240 <_svfprintf_r+0x1d0>
c003300c:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033012:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033015:	e9 c8 f9 ff ff       	jmp    c00329e2 <_svfprintf_r+0x972>
c003301a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0033020:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033026:	89 44 24 08          	mov    %eax,0x8(%esp)
c003302a:	8b 45 0c             	mov    0xc(%ebp),%eax
c003302d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033031:	8b 45 08             	mov    0x8(%ebp),%eax
c0033034:	89 04 24             	mov    %eax,(%esp)
c0033037:	e8 b4 3b 00 00       	call   c0036bf0 <__ssprint_r>
c003303c:	85 c0                	test   %eax,%eax
c003303e:	0f 85 fc f1 ff ff    	jne    c0032240 <_svfprintf_r+0x1d0>
c0033044:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c003304a:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003304d:	e9 53 f9 ff ff       	jmp    c00329a5 <_svfprintf_r+0x935>
c0033052:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0033058:	89 c2                	mov    %eax,%edx
c003305a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0033060:	89 c8                	mov    %ecx,%eax
c0033062:	83 ea 01             	sub    $0x1,%edx
c0033065:	83 e0 07             	and    $0x7,%eax
c0033068:	c1 e9 03             	shr    $0x3,%ecx
c003306b:	83 c0 30             	add    $0x30,%eax
c003306e:	85 c9                	test   %ecx,%ecx
c0033070:	88 02                	mov    %al,(%edx)
c0033072:	75 ec                	jne    c0033060 <_svfprintf_r+0xff0>
c0033074:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c003307b:	89 95 28 ff ff ff    	mov    %edx,-0xd8(%ebp)
c0033081:	0f 84 5b 01 00 00    	je     c00331e2 <_svfprintf_r+0x1172>
c0033087:	3c 30                	cmp    $0x30,%al
c0033089:	74 0b                	je     c0033096 <_svfprintf_r+0x1026>
c003308b:	83 ad 28 ff ff ff 01 	subl   $0x1,-0xd8(%ebp)
c0033092:	c6 42 ff 30          	movb   $0x30,-0x1(%edx)
c0033096:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0033099:	2b 85 28 ff ff ff    	sub    -0xd8(%ebp),%eax
c003309f:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c00330a5:	e9 1e f4 ff ff       	jmp    c00324c8 <_svfprintf_r+0x458>
c00330aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00330b0:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c00330b6:	85 db                	test   %ebx,%ebx
c00330b8:	0f 8e 66 05 00 00    	jle    c0033624 <_svfprintf_r+0x15b4>
c00330be:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
c00330c4:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
c00330ca:	01 d0                	add    %edx,%eax
c00330cc:	89 c3                	mov    %eax,%ebx
c00330ce:	29 d3                	sub    %edx,%ebx
c00330d0:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%ebp)
c00330d6:	89 d0                	mov    %edx,%eax
c00330d8:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c00330de:	39 d3                	cmp    %edx,%ebx
c00330e0:	0f 4f da             	cmovg  %edx,%ebx
c00330e3:	85 db                	test   %ebx,%ebx
c00330e5:	7e 28                	jle    c003310f <_svfprintf_r+0x109f>
c00330e7:	89 07                	mov    %eax,(%edi)
c00330e9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00330ef:	01 d9                	add    %ebx,%ecx
c00330f1:	89 5f 04             	mov    %ebx,0x4(%edi)
c00330f4:	83 c7 08             	add    $0x8,%edi
c00330f7:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00330fd:	83 c0 01             	add    $0x1,%eax
c0033100:	83 f8 07             	cmp    $0x7,%eax
c0033103:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033109:	0f 8f 58 09 00 00    	jg     c0033a67 <_svfprintf_r+0x19f7>
c003310f:	8b b5 20 ff ff ff    	mov    -0xe0(%ebp),%esi
c0033115:	31 c0                	xor    %eax,%eax
c0033117:	85 db                	test   %ebx,%ebx
c0033119:	0f 49 c3             	cmovns %ebx,%eax
c003311c:	29 c6                	sub    %eax,%esi
c003311e:	85 f6                	test   %esi,%esi
c0033120:	0f 8e 40 02 00 00    	jle    c0033366 <_svfprintf_r+0x12f6>
c0033126:	83 fe 10             	cmp    $0x10,%esi
c0033129:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003312f:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0033135:	7f 15                	jg     c003314c <_svfprintf_r+0x10dc>
c0033137:	e9 db 01 00 00       	jmp    c0033317 <_svfprintf_r+0x12a7>
c003313c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033140:	83 ee 10             	sub    $0x10,%esi
c0033143:	83 fe 10             	cmp    $0x10,%esi
c0033146:	0f 8e cb 01 00 00    	jle    c0033317 <_svfprintf_r+0x12a7>
c003314c:	83 c0 01             	add    $0x1,%eax
c003314f:	83 c1 10             	add    $0x10,%ecx
c0033152:	c7 07 e0 99 03 c0    	movl   $0xc00399e0,(%edi)
c0033158:	83 c7 08             	add    $0x8,%edi
c003315b:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0033162:	83 f8 07             	cmp    $0x7,%eax
c0033165:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c003316b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033171:	7e cd                	jle    c0033140 <_svfprintf_r+0x10d0>
c0033173:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033176:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c003317a:	89 44 24 04          	mov    %eax,0x4(%esp)
c003317e:	8b 45 08             	mov    0x8(%ebp),%eax
c0033181:	89 04 24             	mov    %eax,(%esp)
c0033184:	e8 67 3a 00 00       	call   c0036bf0 <__ssprint_r>
c0033189:	85 c0                	test   %eax,%eax
c003318b:	0f 85 af f0 ff ff    	jne    c0032240 <_svfprintf_r+0x1d0>
c0033191:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033197:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003319a:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00331a0:	eb 9e                	jmp    c0033140 <_svfprintf_r+0x10d0>
c00331a2:	8d 45 a8             	lea    -0x58(%ebp),%eax
c00331a5:	be cd cc cc cc       	mov    $0xcccccccd,%esi
c00331aa:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c00331b0:	89 c7                	mov    %eax,%edi
c00331b2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00331b8:	89 c8                	mov    %ecx,%eax
c00331ba:	83 ef 01             	sub    $0x1,%edi
c00331bd:	f7 e6                	mul    %esi
c00331bf:	c1 ea 03             	shr    $0x3,%edx
c00331c2:	8d 04 92             	lea    (%edx,%edx,4),%eax
c00331c5:	01 c0                	add    %eax,%eax
c00331c7:	29 c1                	sub    %eax,%ecx
c00331c9:	83 c1 30             	add    $0x30,%ecx
c00331cc:	85 d2                	test   %edx,%edx
c00331ce:	88 0f                	mov    %cl,(%edi)
c00331d0:	89 d1                	mov    %edx,%ecx
c00331d2:	75 e4                	jne    c00331b8 <_svfprintf_r+0x1148>
c00331d4:	89 fa                	mov    %edi,%edx
c00331d6:	89 bd 28 ff ff ff    	mov    %edi,-0xd8(%ebp)
c00331dc:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
c00331e2:	8d 45 a8             	lea    -0x58(%ebp),%eax
c00331e5:	29 d0                	sub    %edx,%eax
c00331e7:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c00331ed:	e9 d6 f2 ff ff       	jmp    c00324c8 <_svfprintf_r+0x458>
c00331f2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00331f8:	83 f9 09             	cmp    $0x9,%ecx
c00331fb:	77 a5                	ja     c00331a2 <_svfprintf_r+0x1132>
c00331fd:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
c0033203:	83 c1 30             	add    $0x30,%ecx
c0033206:	88 4d a7             	mov    %cl,-0x59(%ebp)
c0033209:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c003320f:	8d 45 a7             	lea    -0x59(%ebp),%eax
c0033212:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0033218:	e9 ab f2 ff ff       	jmp    c00324c8 <_svfprintf_r+0x458>
c003321d:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033223:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033227:	8b 45 0c             	mov    0xc(%ebp),%eax
c003322a:	89 44 24 04          	mov    %eax,0x4(%esp)
c003322e:	8b 45 08             	mov    0x8(%ebp),%eax
c0033231:	89 04 24             	mov    %eax,(%esp)
c0033234:	e8 b7 39 00 00       	call   c0036bf0 <__ssprint_r>
c0033239:	85 c0                	test   %eax,%eax
c003323b:	0f 85 ff ef ff ff    	jne    c0032240 <_svfprintf_r+0x1d0>
c0033241:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0033248:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003324b:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033251:	e9 18 f7 ff ff       	jmp    c003296e <_svfprintf_r+0x8fe>
c0033256:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c003325c:	8d 73 ff             	lea    -0x1(%ebx),%esi
c003325f:	85 f6                	test   %esi,%esi
c0033261:	0f 8e f0 fc ff ff    	jle    c0032f57 <_svfprintf_r+0xee7>
c0033267:	83 fe 10             	cmp    $0x10,%esi
c003326a:	7e 70                	jle    c00332dc <_svfprintf_r+0x126c>
c003326c:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0033272:	eb 0c                	jmp    c0033280 <_svfprintf_r+0x1210>
c0033274:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033278:	83 ee 10             	sub    $0x10,%esi
c003327b:	83 fe 10             	cmp    $0x10,%esi
c003327e:	7e 5c                	jle    c00332dc <_svfprintf_r+0x126c>
c0033280:	83 c0 01             	add    $0x1,%eax
c0033283:	83 c2 10             	add    $0x10,%edx
c0033286:	c7 07 e0 99 03 c0    	movl   $0xc00399e0,(%edi)
c003328c:	83 c7 08             	add    $0x8,%edi
c003328f:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0033296:	83 f8 07             	cmp    $0x7,%eax
c0033299:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c003329f:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00332a5:	7e d1                	jle    c0033278 <_svfprintf_r+0x1208>
c00332a7:	8b 45 0c             	mov    0xc(%ebp),%eax
c00332aa:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c00332ae:	89 44 24 04          	mov    %eax,0x4(%esp)
c00332b2:	8b 45 08             	mov    0x8(%ebp),%eax
c00332b5:	89 04 24             	mov    %eax,(%esp)
c00332b8:	e8 33 39 00 00       	call   c0036bf0 <__ssprint_r>
c00332bd:	85 c0                	test   %eax,%eax
c00332bf:	0f 85 7b ef ff ff    	jne    c0032240 <_svfprintf_r+0x1d0>
c00332c5:	83 ee 10             	sub    $0x10,%esi
c00332c8:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00332ce:	83 fe 10             	cmp    $0x10,%esi
c00332d1:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00332d7:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00332da:	7f a4                	jg     c0033280 <_svfprintf_r+0x1210>
c00332dc:	c7 07 e0 99 03 c0    	movl   $0xc00399e0,(%edi)
c00332e2:	01 f2                	add    %esi,%edx
c00332e4:	89 77 04             	mov    %esi,0x4(%edi)
c00332e7:	e9 50 fc ff ff       	jmp    c0032f3c <_svfprintf_r+0xecc>
c00332ec:	c7 07 e0 99 03 c0    	movl   $0xc00399e0,(%edi)
c00332f2:	01 f1                	add    %esi,%ecx
c00332f4:	89 77 04             	mov    %esi,0x4(%edi)
c00332f7:	e9 6f fc ff ff       	jmp    c0032f6b <_svfprintf_r+0xefb>
c00332fc:	8b 45 14             	mov    0x14(%ebp),%eax
c00332ff:	8b 95 34 ff ff ff    	mov    -0xcc(%ebp),%edx
c0033305:	8b 00                	mov    (%eax),%eax
c0033307:	89 10                	mov    %edx,(%eax)
c0033309:	8b 45 14             	mov    0x14(%ebp),%eax
c003330c:	83 c0 04             	add    $0x4,%eax
c003330f:	89 45 14             	mov    %eax,0x14(%ebp)
c0033312:	e9 f4 ed ff ff       	jmp    c003210b <_svfprintf_r+0x9b>
c0033317:	83 c0 01             	add    $0x1,%eax
c003331a:	01 f1                	add    %esi,%ecx
c003331c:	c7 07 e0 99 03 c0    	movl   $0xc00399e0,(%edi)
c0033322:	83 c7 08             	add    $0x8,%edi
c0033325:	89 77 fc             	mov    %esi,-0x4(%edi)
c0033328:	83 f8 07             	cmp    $0x7,%eax
c003332b:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0033331:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033337:	7e 2d                	jle    c0033366 <_svfprintf_r+0x12f6>
c0033339:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003333f:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033343:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033346:	89 44 24 04          	mov    %eax,0x4(%esp)
c003334a:	8b 45 08             	mov    0x8(%ebp),%eax
c003334d:	89 04 24             	mov    %eax,(%esp)
c0033350:	e8 9b 38 00 00       	call   c0036bf0 <__ssprint_r>
c0033355:	85 c0                	test   %eax,%eax
c0033357:	0f 85 e3 ee ff ff    	jne    c0032240 <_svfprintf_r+0x1d0>
c003335d:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033363:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033366:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c003336c:	8b 95 5c ff ff ff    	mov    -0xa4(%ebp),%edx
c0033372:	03 85 20 ff ff ff    	add    -0xe0(%ebp),%eax
c0033378:	3b 95 1c ff ff ff    	cmp    -0xe4(%ebp),%edx
c003337e:	89 c6                	mov    %eax,%esi
c0033380:	7c 0d                	jl     c003338f <_svfprintf_r+0x131f>
c0033382:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0033389:	0f 84 5e 05 00 00    	je     c00338ed <_svfprintf_r+0x187d>
c003338f:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
c0033395:	89 07                	mov    %eax,(%edi)
c0033397:	8b 85 08 ff ff ff    	mov    -0xf8(%ebp),%eax
c003339d:	01 c1                	add    %eax,%ecx
c003339f:	89 47 04             	mov    %eax,0x4(%edi)
c00333a2:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00333a8:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00333ae:	83 c0 01             	add    $0x1,%eax
c00333b1:	83 f8 07             	cmp    $0x7,%eax
c00333b4:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00333ba:	0f 8f d9 06 00 00    	jg     c0033a99 <_svfprintf_r+0x1a29>
c00333c0:	83 c7 08             	add    $0x8,%edi
c00333c3:	89 d0                	mov    %edx,%eax
c00333c5:	8b 9d 44 ff ff ff    	mov    -0xbc(%ebp),%ebx
c00333cb:	89 f2                	mov    %esi,%edx
c00333cd:	29 f3                	sub    %esi,%ebx
c00333cf:	8b b5 1c ff ff ff    	mov    -0xe4(%ebp),%esi
c00333d5:	29 c6                	sub    %eax,%esi
c00333d7:	39 de                	cmp    %ebx,%esi
c00333d9:	0f 4e de             	cmovle %esi,%ebx
c00333dc:	85 db                	test   %ebx,%ebx
c00333de:	7e 29                	jle    c0033409 <_svfprintf_r+0x1399>
c00333e0:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00333e6:	01 d9                	add    %ebx,%ecx
c00333e8:	83 c7 08             	add    $0x8,%edi
c00333eb:	89 57 f8             	mov    %edx,-0x8(%edi)
c00333ee:	89 5f fc             	mov    %ebx,-0x4(%edi)
c00333f1:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00333f7:	83 c0 01             	add    $0x1,%eax
c00333fa:	83 f8 07             	cmp    $0x7,%eax
c00333fd:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033403:	0f 8f c8 06 00 00    	jg     c0033ad1 <_svfprintf_r+0x1a61>
c0033409:	31 c0                	xor    %eax,%eax
c003340b:	85 db                	test   %ebx,%ebx
c003340d:	0f 49 c3             	cmovns %ebx,%eax
c0033410:	29 c6                	sub    %eax,%esi
c0033412:	85 f6                	test   %esi,%esi
c0033414:	0f 8e 02 f7 ff ff    	jle    c0032b1c <_svfprintf_r+0xaac>
c003341a:	83 fe 10             	cmp    $0x10,%esi
c003341d:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033423:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0033429:	7f 11                	jg     c003343c <_svfprintf_r+0x13cc>
c003342b:	e9 bc fe ff ff       	jmp    c00332ec <_svfprintf_r+0x127c>
c0033430:	83 ee 10             	sub    $0x10,%esi
c0033433:	83 fe 10             	cmp    $0x10,%esi
c0033436:	0f 8e b0 fe ff ff    	jle    c00332ec <_svfprintf_r+0x127c>
c003343c:	83 c0 01             	add    $0x1,%eax
c003343f:	83 c1 10             	add    $0x10,%ecx
c0033442:	c7 07 e0 99 03 c0    	movl   $0xc00399e0,(%edi)
c0033448:	83 c7 08             	add    $0x8,%edi
c003344b:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0033452:	83 f8 07             	cmp    $0x7,%eax
c0033455:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c003345b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033461:	7e cd                	jle    c0033430 <_svfprintf_r+0x13c0>
c0033463:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033466:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c003346a:	89 44 24 04          	mov    %eax,0x4(%esp)
c003346e:	8b 45 08             	mov    0x8(%ebp),%eax
c0033471:	89 04 24             	mov    %eax,(%esp)
c0033474:	e8 77 37 00 00       	call   c0036bf0 <__ssprint_r>
c0033479:	85 c0                	test   %eax,%eax
c003347b:	0f 85 bf ed ff ff    	jne    c0032240 <_svfprintf_r+0x1d0>
c0033481:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033487:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003348a:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033490:	eb 9e                	jmp    c0033430 <_svfprintf_r+0x13c0>
c0033492:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0033499:	0f 85 14 fa ff ff    	jne    c0032eb3 <_svfprintf_r+0xe43>
c003349f:	89 07                	mov    %eax,(%edi)
c00334a1:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00334a7:	8d 51 01             	lea    0x1(%ecx),%edx
c00334aa:	c7 47 04 01 00 00 00 	movl   $0x1,0x4(%edi)
c00334b1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00334b7:	83 c0 01             	add    $0x1,%eax
c00334ba:	83 f8 07             	cmp    $0x7,%eax
c00334bd:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00334c3:	0f 8e 8b fa ff ff    	jle    c0032f54 <_svfprintf_r+0xee4>
c00334c9:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00334cf:	89 44 24 08          	mov    %eax,0x8(%esp)
c00334d3:	8b 45 0c             	mov    0xc(%ebp),%eax
c00334d6:	89 44 24 04          	mov    %eax,0x4(%esp)
c00334da:	8b 45 08             	mov    0x8(%ebp),%eax
c00334dd:	89 04 24             	mov    %eax,(%esp)
c00334e0:	e8 0b 37 00 00       	call   c0036bf0 <__ssprint_r>
c00334e5:	85 c0                	test   %eax,%eax
c00334e7:	0f 85 53 ed ff ff    	jne    c0032240 <_svfprintf_r+0x1d0>
c00334ed:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00334f3:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00334f6:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00334fc:	e9 56 fa ff ff       	jmp    c0032f57 <_svfprintf_r+0xee7>
c0033501:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033507:	89 44 24 08          	mov    %eax,0x8(%esp)
c003350b:	8b 45 0c             	mov    0xc(%ebp),%eax
c003350e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033512:	8b 45 08             	mov    0x8(%ebp),%eax
c0033515:	89 04 24             	mov    %eax,(%esp)
c0033518:	e8 d3 36 00 00       	call   c0036bf0 <__ssprint_r>
c003351d:	85 c0                	test   %eax,%eax
c003351f:	0f 85 1b ed ff ff    	jne    c0032240 <_svfprintf_r+0x1d0>
c0033525:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003352b:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003352e:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033534:	e9 d6 f9 ff ff       	jmp    c0032f0f <_svfprintf_r+0xe9f>
c0033539:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003353f:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033543:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033546:	89 44 24 04          	mov    %eax,0x4(%esp)
c003354a:	8b 45 08             	mov    0x8(%ebp),%eax
c003354d:	89 04 24             	mov    %eax,(%esp)
c0033550:	e8 9b 36 00 00       	call   c0036bf0 <__ssprint_r>
c0033555:	85 c0                	test   %eax,%eax
c0033557:	0f 85 e3 ec ff ff    	jne    c0032240 <_svfprintf_r+0x1d0>
c003355d:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0033563:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033566:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003356c:	e9 6f f9 ff ff       	jmp    c0032ee0 <_svfprintf_r+0xe70>
c0033571:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0033577:	dd 1c 24             	fstpl  (%esp)
c003357a:	e8 11 35 00 00       	call   c0036a90 <__fpclassifyd>
c003357f:	85 c0                	test   %eax,%eax
c0033581:	0f 85 a3 01 00 00    	jne    c003372a <_svfprintf_r+0x16ba>
c0033587:	83 bd 24 ff ff ff 47 	cmpl   $0x47,-0xdc(%ebp)
c003358e:	ba 46 98 03 c0       	mov    $0xc0039846,%edx
c0033593:	b8 4a 98 03 c0       	mov    $0xc003984a,%eax
c0033598:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c003359f:	c7 85 48 ff ff ff 03 	movl   $0x3,-0xb8(%ebp)
c00335a6:	00 00 00 
c00335a9:	0f 4e c2             	cmovle %edx,%eax
c00335ac:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c00335b2:	81 a5 4c ff ff ff 7f 	andl   $0xffffff7f,-0xb4(%ebp)
c00335b9:	ff ff ff 
c00335bc:	c7 85 38 ff ff ff 03 	movl   $0x3,-0xc8(%ebp)
c00335c3:	00 00 00 
c00335c6:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c00335cd:	00 00 00 
c00335d0:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c00335d7:	00 00 00 
c00335da:	e9 29 ed ff ff       	jmp    c0032308 <_svfprintf_r+0x298>
c00335df:	dd 00                	fldl   (%eax)
c00335e1:	83 c0 08             	add    $0x8,%eax
c00335e4:	dd 9d 10 ff ff ff    	fstpl  -0xf0(%ebp)
c00335ea:	89 45 14             	mov    %eax,0x14(%ebp)
c00335ed:	e9 e6 ef ff ff       	jmp    c00325d8 <_svfprintf_r+0x568>
c00335f2:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00335f8:	89 44 24 08          	mov    %eax,0x8(%esp)
c00335fc:	8b 45 0c             	mov    0xc(%ebp),%eax
c00335ff:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033603:	8b 45 08             	mov    0x8(%ebp),%eax
c0033606:	89 04 24             	mov    %eax,(%esp)
c0033609:	e8 e2 35 00 00       	call   c0036bf0 <__ssprint_r>
c003360e:	85 c0                	test   %eax,%eax
c0033610:	0f 85 2a ec ff ff    	jne    c0032240 <_svfprintf_r+0x1d0>
c0033616:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c003361c:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003361f:	e9 6b f6 ff ff       	jmp    c0032c8f <_svfprintf_r+0xc1f>
c0033624:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003362a:	83 c1 01             	add    $0x1,%ecx
c003362d:	83 c7 08             	add    $0x8,%edi
c0033630:	c7 47 f8 77 98 03 c0 	movl   $0xc0039877,-0x8(%edi)
c0033637:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
c003363e:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0033644:	83 c0 01             	add    $0x1,%eax
c0033647:	83 f8 07             	cmp    $0x7,%eax
c003364a:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033650:	0f 8f ef 02 00 00    	jg     c0033945 <_svfprintf_r+0x18d5>
c0033656:	85 db                	test   %ebx,%ebx
c0033658:	75 17                	jne    c0033671 <_svfprintf_r+0x1601>
c003365a:	8b 95 1c ff ff ff    	mov    -0xe4(%ebp),%edx
c0033660:	85 d2                	test   %edx,%edx
c0033662:	75 0d                	jne    c0033671 <_svfprintf_r+0x1601>
c0033664:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c003366b:	0f 84 ab f4 ff ff    	je     c0032b1c <_svfprintf_r+0xaac>
c0033671:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
c0033677:	83 c7 08             	add    $0x8,%edi
c003367a:	89 47 f8             	mov    %eax,-0x8(%edi)
c003367d:	8b 85 08 ff ff ff    	mov    -0xf8(%ebp),%eax
c0033683:	89 47 fc             	mov    %eax,-0x4(%edi)
c0033686:	8d 14 01             	lea    (%ecx,%eax,1),%edx
c0033689:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003368f:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0033695:	83 c0 01             	add    $0x1,%eax
c0033698:	83 f8 07             	cmp    $0x7,%eax
c003369b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00336a1:	0f 8f 60 03 00 00    	jg     c0033a07 <_svfprintf_r+0x1997>
c00336a7:	f7 db                	neg    %ebx
c00336a9:	85 db                	test   %ebx,%ebx
c00336ab:	0f 8e 21 03 00 00    	jle    c00339d2 <_svfprintf_r+0x1962>
c00336b1:	83 fb 10             	cmp    $0x10,%ebx
c00336b4:	0f 8e c3 02 00 00    	jle    c003397d <_svfprintf_r+0x190d>
c00336ba:	8d b5 74 ff ff ff    	lea    -0x8c(%ebp),%esi
c00336c0:	eb 12                	jmp    c00336d4 <_svfprintf_r+0x1664>
c00336c2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00336c8:	83 eb 10             	sub    $0x10,%ebx
c00336cb:	83 fb 10             	cmp    $0x10,%ebx
c00336ce:	0f 8e a9 02 00 00    	jle    c003397d <_svfprintf_r+0x190d>
c00336d4:	83 c0 01             	add    $0x1,%eax
c00336d7:	83 c2 10             	add    $0x10,%edx
c00336da:	c7 07 e0 99 03 c0    	movl   $0xc00399e0,(%edi)
c00336e0:	83 c7 08             	add    $0x8,%edi
c00336e3:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c00336ea:	83 f8 07             	cmp    $0x7,%eax
c00336ed:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00336f3:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00336f9:	7e cd                	jle    c00336c8 <_svfprintf_r+0x1658>
c00336fb:	8b 45 0c             	mov    0xc(%ebp),%eax
c00336fe:	89 74 24 08          	mov    %esi,0x8(%esp)
c0033702:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033706:	8b 45 08             	mov    0x8(%ebp),%eax
c0033709:	89 04 24             	mov    %eax,(%esp)
c003370c:	e8 df 34 00 00       	call   c0036bf0 <__ssprint_r>
c0033711:	85 c0                	test   %eax,%eax
c0033713:	0f 85 27 eb ff ff    	jne    c0032240 <_svfprintf_r+0x1d0>
c0033719:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003371f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033722:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033728:	eb 9e                	jmp    c00336c8 <_svfprintf_r+0x1658>
c003372a:	8b 9d 24 ff ff ff    	mov    -0xdc(%ebp),%ebx
c0033730:	83 e3 df             	and    $0xffffffdf,%ebx
c0033733:	83 bd 44 ff ff ff ff 	cmpl   $0xffffffff,-0xbc(%ebp)
c003373a:	0f 84 05 03 00 00    	je     c0033a45 <_svfprintf_r+0x19d5>
c0033740:	83 fb 47             	cmp    $0x47,%ebx
c0033743:	75 16                	jne    c003375b <_svfprintf_r+0x16eb>
c0033745:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c003374b:	b8 01 00 00 00       	mov    $0x1,%eax
c0033750:	85 d2                	test   %edx,%edx
c0033752:	0f 45 c2             	cmovne %edx,%eax
c0033755:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%ebp)
c003375b:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
c0033761:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0033767:	dd 95 38 ff ff ff    	fstl   -0xc8(%ebp)
c003376d:	80 cc 01             	or     $0x1,%ah
c0033770:	89 85 30 ff ff ff    	mov    %eax,-0xd0(%ebp)
c0033776:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
c003377c:	c6 85 48 ff ff ff 00 	movb   $0x0,-0xb8(%ebp)
c0033783:	85 c0                	test   %eax,%eax
c0033785:	0f 88 ba 05 00 00    	js     c0033d45 <_svfprintf_r+0x1cd5>
c003378b:	83 fb 46             	cmp    $0x46,%ebx
c003378e:	0f 94 c0             	sete   %al
c0033791:	89 c6                	mov    %eax,%esi
c0033793:	0f 84 d4 03 00 00    	je     c0033b6d <_svfprintf_r+0x1afd>
c0033799:	83 fb 45             	cmp    $0x45,%ebx
c003379c:	0f 85 99 05 00 00    	jne    c0033d3b <_svfprintf_r+0x1ccb>
c00337a2:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c00337a8:	dd 54 24 04          	fstl   0x4(%esp)
c00337ac:	c7 44 24 0c 02 00 00 	movl   $0x2,0xc(%esp)
c00337b3:	00 
c00337b4:	dd 9d 38 ff ff ff    	fstpl  -0xc8(%ebp)
c00337ba:	8d 70 01             	lea    0x1(%eax),%esi
c00337bd:	8d 85 6c ff ff ff    	lea    -0x94(%ebp),%eax
c00337c3:	89 44 24 1c          	mov    %eax,0x1c(%esp)
c00337c7:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
c00337cd:	89 44 24 18          	mov    %eax,0x18(%esp)
c00337d1:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
c00337d7:	89 44 24 14          	mov    %eax,0x14(%esp)
c00337db:	8b 45 08             	mov    0x8(%ebp),%eax
c00337de:	89 74 24 10          	mov    %esi,0x10(%esp)
c00337e2:	89 04 24             	mov    %eax,(%esp)
c00337e5:	e8 56 09 00 00       	call   c0034140 <_dtoa_r>
c00337ea:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c00337f0:	8d 0c 30             	lea    (%eax,%esi,1),%ecx
c00337f3:	dd 85 38 ff ff ff    	fldl   -0xc8(%ebp)
c00337f9:	d9 ee                	fldz   
c00337fb:	d9 c9                	fxch   %st(1)
c00337fd:	df e9                	fucomip %st(1),%st
c00337ff:	dd d8                	fstp   %st(0)
c0033801:	0f 8a fd 00 00 00    	jp     c0033904 <_svfprintf_r+0x1894>
c0033807:	89 c8                	mov    %ecx,%eax
c0033809:	0f 85 f5 00 00 00    	jne    c0033904 <_svfprintf_r+0x1894>
c003380f:	2b 85 28 ff ff ff    	sub    -0xd8(%ebp),%eax
c0033815:	83 fb 47             	cmp    $0x47,%ebx
c0033818:	89 85 1c ff ff ff    	mov    %eax,-0xe4(%ebp)
c003381e:	0f 84 1e 04 00 00    	je     c0033c42 <_svfprintf_r+0x1bd2>
c0033824:	83 bd 24 ff ff ff 65 	cmpl   $0x65,-0xdc(%ebp)
c003382b:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0033831:	0f 8e 65 04 00 00    	jle    c0033c9c <_svfprintf_r+0x1c2c>
c0033837:	83 bd 24 ff ff ff 66 	cmpl   $0x66,-0xdc(%ebp)
c003383e:	89 85 20 ff ff ff    	mov    %eax,-0xe0(%ebp)
c0033844:	0f 84 3c 05 00 00    	je     c0033d86 <_svfprintf_r+0x1d16>
c003384a:	8b 85 20 ff ff ff    	mov    -0xe0(%ebp),%eax
c0033850:	39 85 1c ff ff ff    	cmp    %eax,-0xe4(%ebp)
c0033856:	0f 8f f7 04 00 00    	jg     c0033d53 <_svfprintf_r+0x1ce3>
c003385c:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
c0033862:	83 e0 01             	and    $0x1,%eax
c0033865:	0f 85 e2 05 00 00    	jne    c0033e4d <_svfprintf_r+0x1ddd>
c003386b:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c0033871:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
c0033878:	00 00 00 
c003387b:	85 d2                	test   %edx,%edx
c003387d:	0f 49 c2             	cmovns %edx,%eax
c0033880:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0033886:	80 bd 48 ff ff ff 00 	cmpb   $0x0,-0xb8(%ebp)
c003388d:	0f 85 68 03 00 00    	jne    c0033bfb <_svfprintf_r+0x1b8b>
c0033893:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0033899:	8b 85 30 ff ff ff    	mov    -0xd0(%ebp),%eax
c003389f:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c00338a6:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c00338ad:	00 00 00 
c00338b0:	89 85 4c ff ff ff    	mov    %eax,-0xb4(%ebp)
c00338b6:	e9 4d ea ff ff       	jmp    c0032308 <_svfprintf_r+0x298>
c00338bb:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00338c1:	89 44 24 08          	mov    %eax,0x8(%esp)
c00338c5:	8b 45 0c             	mov    0xc(%ebp),%eax
c00338c8:	89 44 24 04          	mov    %eax,0x4(%esp)
c00338cc:	8b 45 08             	mov    0x8(%ebp),%eax
c00338cf:	89 04 24             	mov    %eax,(%esp)
c00338d2:	e8 19 33 00 00       	call   c0036bf0 <__ssprint_r>
c00338d7:	85 c0                	test   %eax,%eax
c00338d9:	0f 85 61 e9 ff ff    	jne    c0032240 <_svfprintf_r+0x1d0>
c00338df:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00338e5:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00338e8:	e9 f2 f3 ff ff       	jmp    c0032cdf <_svfprintf_r+0xc6f>
c00338ed:	89 d0                	mov    %edx,%eax
c00338ef:	e9 d1 fa ff ff       	jmp    c00333c5 <_svfprintf_r+0x1355>
c00338f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00338f8:	8d 50 01             	lea    0x1(%eax),%edx
c00338fb:	89 95 6c ff ff ff    	mov    %edx,-0x94(%ebp)
c0033901:	c6 00 30             	movb   $0x30,(%eax)
c0033904:	8b 85 6c ff ff ff    	mov    -0x94(%ebp),%eax
c003390a:	39 c1                	cmp    %eax,%ecx
c003390c:	77 ea                	ja     c00338f8 <_svfprintf_r+0x1888>
c003390e:	e9 fc fe ff ff       	jmp    c003380f <_svfprintf_r+0x179f>
c0033913:	8b 45 08             	mov    0x8(%ebp),%eax
c0033916:	c7 44 24 04 40 00 00 	movl   $0x40,0x4(%esp)
c003391d:	00 
c003391e:	89 04 24             	mov    %eax,(%esp)
c0033921:	e8 4a 1b 00 00       	call   c0035470 <_malloc_r>
c0033926:	8b 55 0c             	mov    0xc(%ebp),%edx
c0033929:	85 c0                	test   %eax,%eax
c003392b:	89 02                	mov    %eax,(%edx)
c003392d:	89 42 10             	mov    %eax,0x10(%edx)
c0033930:	0f 84 15 06 00 00    	je     c0033f4b <_svfprintf_r+0x1edb>
c0033936:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033939:	c7 40 14 40 00 00 00 	movl   $0x40,0x14(%eax)
c0033940:	e9 6c e7 ff ff       	jmp    c00320b1 <_svfprintf_r+0x41>
c0033945:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003394b:	89 44 24 08          	mov    %eax,0x8(%esp)
c003394f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033952:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033956:	8b 45 08             	mov    0x8(%ebp),%eax
c0033959:	89 04 24             	mov    %eax,(%esp)
c003395c:	e8 8f 32 00 00       	call   c0036bf0 <__ssprint_r>
c0033961:	85 c0                	test   %eax,%eax
c0033963:	0f 85 d7 e8 ff ff    	jne    c0032240 <_svfprintf_r+0x1d0>
c0033969:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c003396f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033972:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033978:	e9 d9 fc ff ff       	jmp    c0033656 <_svfprintf_r+0x15e6>
c003397d:	83 c0 01             	add    $0x1,%eax
c0033980:	01 da                	add    %ebx,%edx
c0033982:	c7 07 e0 99 03 c0    	movl   $0xc00399e0,(%edi)
c0033988:	83 c7 08             	add    $0x8,%edi
c003398b:	89 5f fc             	mov    %ebx,-0x4(%edi)
c003398e:	83 f8 07             	cmp    $0x7,%eax
c0033991:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0033997:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003399d:	7e 33                	jle    c00339d2 <_svfprintf_r+0x1962>
c003399f:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00339a5:	89 44 24 08          	mov    %eax,0x8(%esp)
c00339a9:	8b 45 0c             	mov    0xc(%ebp),%eax
c00339ac:	89 44 24 04          	mov    %eax,0x4(%esp)
c00339b0:	8b 45 08             	mov    0x8(%ebp),%eax
c00339b3:	89 04 24             	mov    %eax,(%esp)
c00339b6:	e8 35 32 00 00       	call   c0036bf0 <__ssprint_r>
c00339bb:	85 c0                	test   %eax,%eax
c00339bd:	0f 85 7d e8 ff ff    	jne    c0032240 <_svfprintf_r+0x1d0>
c00339c3:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00339c9:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00339cc:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00339d2:	8b 9d 28 ff ff ff    	mov    -0xd8(%ebp),%ebx
c00339d8:	83 c0 01             	add    $0x1,%eax
c00339db:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00339e1:	89 1f                	mov    %ebx,(%edi)
c00339e3:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c00339e9:	01 da                	add    %ebx,%edx
c00339eb:	83 f8 07             	cmp    $0x7,%eax
c00339ee:	89 5f 04             	mov    %ebx,0x4(%edi)
c00339f1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00339f7:	0f 8f 86 f5 ff ff    	jg     c0032f83 <_svfprintf_r+0xf13>
c00339fd:	83 c7 08             	add    $0x8,%edi
c0033a00:	89 d1                	mov    %edx,%ecx
c0033a02:	e9 15 f1 ff ff       	jmp    c0032b1c <_svfprintf_r+0xaac>
c0033a07:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033a0d:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033a11:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033a14:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033a18:	8b 45 08             	mov    0x8(%ebp),%eax
c0033a1b:	89 04 24             	mov    %eax,(%esp)
c0033a1e:	e8 cd 31 00 00       	call   c0036bf0 <__ssprint_r>
c0033a23:	85 c0                	test   %eax,%eax
c0033a25:	0f 85 15 e8 ff ff    	jne    c0032240 <_svfprintf_r+0x1d0>
c0033a2b:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c0033a31:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033a34:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0033a3a:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033a40:	e9 62 fc ff ff       	jmp    c00336a7 <_svfprintf_r+0x1637>
c0033a45:	c7 85 44 ff ff ff 06 	movl   $0x6,-0xbc(%ebp)
c0033a4c:	00 00 00 
c0033a4f:	e9 07 fd ff ff       	jmp    c003375b <_svfprintf_r+0x16eb>
c0033a54:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c0033a5a:	89 04 24             	mov    %eax,(%esp)
c0033a5d:	e8 0e 31 00 00       	call   c0036b70 <strlen>
c0033a62:	e9 6a e8 ff ff       	jmp    c00322d1 <_svfprintf_r+0x261>
c0033a67:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033a6d:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033a71:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033a74:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033a78:	8b 45 08             	mov    0x8(%ebp),%eax
c0033a7b:	89 04 24             	mov    %eax,(%esp)
c0033a7e:	e8 6d 31 00 00       	call   c0036bf0 <__ssprint_r>
c0033a83:	85 c0                	test   %eax,%eax
c0033a85:	0f 85 b5 e7 ff ff    	jne    c0032240 <_svfprintf_r+0x1d0>
c0033a8b:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033a91:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033a94:	e9 76 f6 ff ff       	jmp    c003310f <_svfprintf_r+0x109f>
c0033a99:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033a9f:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033aa3:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033aa6:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033aaa:	8b 45 08             	mov    0x8(%ebp),%eax
c0033aad:	89 04 24             	mov    %eax,(%esp)
c0033ab0:	e8 3b 31 00 00       	call   c0036bf0 <__ssprint_r>
c0033ab5:	85 c0                	test   %eax,%eax
c0033ab7:	0f 85 83 e7 ff ff    	jne    c0032240 <_svfprintf_r+0x1d0>
c0033abd:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0033ac3:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033ac6:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033acc:	e9 f4 f8 ff ff       	jmp    c00333c5 <_svfprintf_r+0x1355>
c0033ad1:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033ad7:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033adb:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033ade:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033ae2:	8b 45 08             	mov    0x8(%ebp),%eax
c0033ae5:	89 04 24             	mov    %eax,(%esp)
c0033ae8:	e8 03 31 00 00       	call   c0036bf0 <__ssprint_r>
c0033aed:	85 c0                	test   %eax,%eax
c0033aef:	0f 85 4b e7 ff ff    	jne    c0032240 <_svfprintf_r+0x1d0>
c0033af5:	8b b5 1c ff ff ff    	mov    -0xe4(%ebp),%esi
c0033afb:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033afe:	2b b5 5c ff ff ff    	sub    -0xa4(%ebp),%esi
c0033b04:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033b0a:	e9 fa f8 ff ff       	jmp    c0033409 <_svfprintf_r+0x1399>
c0033b0f:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c0033b15:	b0 06                	mov    $0x6,%al
c0033b17:	89 75 14             	mov    %esi,0x14(%ebp)
c0033b1a:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0033b21:	00 00 00 
c0033b24:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0033b2b:	00 00 00 
c0033b2e:	83 fa 06             	cmp    $0x6,%edx
c0033b31:	0f 46 c2             	cmovbe %edx,%eax
c0033b34:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
c0033b3a:	85 c0                	test   %eax,%eax
c0033b3c:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0033b42:	c7 85 28 ff ff ff 70 	movl   $0xc0039870,-0xd8(%ebp)
c0033b49:	98 03 c0 
c0033b4c:	0f 49 d0             	cmovns %eax,%edx
c0033b4f:	31 db                	xor    %ebx,%ebx
c0033b51:	89 95 48 ff ff ff    	mov    %edx,-0xb8(%ebp)
c0033b57:	e9 b7 e7 ff ff       	jmp    c0032313 <_svfprintf_r+0x2a3>
c0033b5c:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
c0033b63:	bb 2d 00 00 00       	mov    $0x2d,%ebx
c0033b68:	e9 9d ea ff ff       	jmp    c003260a <_svfprintf_r+0x59a>
c0033b6d:	ba 03 00 00 00       	mov    $0x3,%edx
c0033b72:	8d 85 6c ff ff ff    	lea    -0x94(%ebp),%eax
c0033b78:	89 44 24 1c          	mov    %eax,0x1c(%esp)
c0033b7c:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
c0033b82:	89 44 24 18          	mov    %eax,0x18(%esp)
c0033b86:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
c0033b8c:	89 44 24 14          	mov    %eax,0x14(%esp)
c0033b90:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c0033b96:	dd 54 24 04          	fstl   0x4(%esp)
c0033b9a:	89 54 24 0c          	mov    %edx,0xc(%esp)
c0033b9e:	dd 9d 38 ff ff ff    	fstpl  -0xc8(%ebp)
c0033ba4:	89 44 24 10          	mov    %eax,0x10(%esp)
c0033ba8:	8b 45 08             	mov    0x8(%ebp),%eax
c0033bab:	89 04 24             	mov    %eax,(%esp)
c0033bae:	e8 8d 05 00 00       	call   c0034140 <_dtoa_r>
c0033bb3:	83 fb 47             	cmp    $0x47,%ebx
c0033bb6:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0033bbc:	dd 85 38 ff ff ff    	fldl   -0xc8(%ebp)
c0033bc2:	75 09                	jne    c0033bcd <_svfprintf_r+0x1b5d>
c0033bc4:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0033bcb:	74 5b                	je     c0033c28 <_svfprintf_r+0x1bb8>
c0033bcd:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
c0033bd3:	89 f0                	mov    %esi,%eax
c0033bd5:	8b 8d 44 ff ff ff    	mov    -0xbc(%ebp),%ecx
c0033bdb:	01 d1                	add    %edx,%ecx
c0033bdd:	84 c0                	test   %al,%al
c0033bdf:	0f 84 14 fc ff ff    	je     c00337f9 <_svfprintf_r+0x1789>
c0033be5:	80 3a 30             	cmpb   $0x30,(%edx)
c0033be8:	0f 84 37 02 00 00    	je     c0033e25 <_svfprintf_r+0x1db5>
c0033bee:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0033bf4:	01 c1                	add    %eax,%ecx
c0033bf6:	e9 fe fb ff ff       	jmp    c00337f9 <_svfprintf_r+0x1789>
c0033bfb:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0033c01:	8b 85 30 ff ff ff    	mov    -0xd0(%ebp),%eax
c0033c07:	bb 2d 00 00 00       	mov    $0x2d,%ebx
c0033c0c:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
c0033c13:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0033c1a:	00 00 00 
c0033c1d:	89 85 4c ff ff ff    	mov    %eax,-0xb4(%ebp)
c0033c23:	e9 e4 e6 ff ff       	jmp    c003230c <_svfprintf_r+0x29c>
c0033c28:	dd d8                	fstp   %st(0)
c0033c2a:	8b 85 6c ff ff ff    	mov    -0x94(%ebp),%eax
c0033c30:	89 85 1c ff ff ff    	mov    %eax,-0xe4(%ebp)
c0033c36:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c0033c3c:	29 85 1c ff ff ff    	sub    %eax,-0xe4(%ebp)
c0033c42:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0033c48:	83 f8 fd             	cmp    $0xfffffffd,%eax
c0033c4b:	7c 48                	jl     c0033c95 <_svfprintf_r+0x1c25>
c0033c4d:	39 85 44 ff ff ff    	cmp    %eax,-0xbc(%ebp)
c0033c53:	7c 40                	jl     c0033c95 <_svfprintf_r+0x1c25>
c0033c55:	89 85 20 ff ff ff    	mov    %eax,-0xe0(%ebp)
c0033c5b:	e9 ea fb ff ff       	jmp    c003384a <_svfprintf_r+0x17da>
c0033c60:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c0033c66:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0033c6d:	89 75 14             	mov    %esi,0x14(%ebp)
c0033c70:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0033c77:	00 00 00 
c0033c7a:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0033c80:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0033c86:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0033c8d:	00 00 00 
c0033c90:	e9 73 e6 ff ff       	jmp    c0032308 <_svfprintf_r+0x298>
c0033c95:	83 ad 24 ff ff ff 02 	subl   $0x2,-0xdc(%ebp)
c0033c9c:	8d 48 ff             	lea    -0x1(%eax),%ecx
c0033c9f:	0f b6 85 24 ff ff ff 	movzbl -0xdc(%ebp),%eax
c0033ca6:	85 c9                	test   %ecx,%ecx
c0033ca8:	89 8d 5c ff ff ff    	mov    %ecx,-0xa4(%ebp)
c0033cae:	88 85 65 ff ff ff    	mov    %al,-0x9b(%ebp)
c0033cb4:	0f 88 2c 02 00 00    	js     c0033ee6 <_svfprintf_r+0x1e76>
c0033cba:	c6 85 66 ff ff ff 2b 	movb   $0x2b,-0x9a(%ebp)
c0033cc1:	83 f9 09             	cmp    $0x9,%ecx
c0033cc4:	0f 8f ea 00 00 00    	jg     c0033db4 <_svfprintf_r+0x1d44>
c0033cca:	83 c1 30             	add    $0x30,%ecx
c0033ccd:	c6 85 67 ff ff ff 30 	movb   $0x30,-0x99(%ebp)
c0033cd4:	8d 85 69 ff ff ff    	lea    -0x97(%ebp),%eax
c0033cda:	88 8d 68 ff ff ff    	mov    %cl,-0x98(%ebp)
c0033ce0:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c0033ce6:	8d 95 65 ff ff ff    	lea    -0x9b(%ebp),%edx
c0033cec:	29 d0                	sub    %edx,%eax
c0033cee:	89 85 04 ff ff ff    	mov    %eax,-0xfc(%ebp)
c0033cf4:	89 da                	mov    %ebx,%edx
c0033cf6:	01 c2                	add    %eax,%edx
c0033cf8:	83 fb 01             	cmp    $0x1,%ebx
c0033cfb:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0033d01:	0f 8e 21 02 00 00    	jle    c0033f28 <_svfprintf_r+0x1eb8>
c0033d07:	31 c0                	xor    %eax,%eax
c0033d09:	83 85 38 ff ff ff 01 	addl   $0x1,-0xc8(%ebp)
c0033d10:	0f 49 85 38 ff ff ff 	cmovns -0xc8(%ebp),%eax
c0033d17:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0033d1e:	00 00 00 
c0033d21:	e9 60 fb ff ff       	jmp    c0033886 <_svfprintf_r+0x1816>
c0033d26:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c0033d2c:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0033d33:	00 00 00 
c0033d36:	e9 68 e4 ff ff       	jmp    c00321a3 <_svfprintf_r+0x133>
c0033d3b:	ba 02 00 00 00       	mov    $0x2,%edx
c0033d40:	e9 2d fe ff ff       	jmp    c0033b72 <_svfprintf_r+0x1b02>
c0033d45:	d9 e0                	fchs   
c0033d47:	c6 85 48 ff ff ff 2d 	movb   $0x2d,-0xb8(%ebp)
c0033d4e:	e9 38 fa ff ff       	jmp    c003378b <_svfprintf_r+0x171b>
c0033d53:	8b 8d 20 ff ff ff    	mov    -0xe0(%ebp),%ecx
c0033d59:	ba 01 00 00 00       	mov    $0x1,%edx
c0033d5e:	85 c9                	test   %ecx,%ecx
c0033d60:	0f 8e 5a 01 00 00    	jle    c0033ec0 <_svfprintf_r+0x1e50>
c0033d66:	31 c0                	xor    %eax,%eax
c0033d68:	03 95 1c ff ff ff    	add    -0xe4(%ebp),%edx
c0033d6e:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
c0033d75:	00 00 00 
c0033d78:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0033d7e:	0f 49 c2             	cmovns %edx,%eax
c0033d81:	e9 00 fb ff ff       	jmp    c0033886 <_svfprintf_r+0x1816>
c0033d86:	85 c0                	test   %eax,%eax
c0033d88:	0f 8e 06 01 00 00    	jle    c0033e94 <_svfprintf_r+0x1e24>
c0033d8e:	8b b5 44 ff ff ff    	mov    -0xbc(%ebp),%esi
c0033d94:	85 f6                	test   %esi,%esi
c0033d96:	0f 85 d4 00 00 00    	jne    c0033e70 <_svfprintf_r+0x1e00>
c0033d9c:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0033da3:	0f 85 c7 00 00 00    	jne    c0033e70 <_svfprintf_r+0x1e00>
c0033da9:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0033daf:	e9 d2 fa ff ff       	jmp    c0033886 <_svfprintf_r+0x1816>
c0033db4:	8d b5 73 ff ff ff    	lea    -0x8d(%ebp),%esi
c0033dba:	89 f3                	mov    %esi,%ebx
c0033dbc:	b8 67 66 66 66       	mov    $0x66666667,%eax
c0033dc1:	83 eb 01             	sub    $0x1,%ebx
c0033dc4:	f7 e9                	imul   %ecx
c0033dc6:	89 c8                	mov    %ecx,%eax
c0033dc8:	c1 f8 1f             	sar    $0x1f,%eax
c0033dcb:	c1 fa 02             	sar    $0x2,%edx
c0033dce:	29 c2                	sub    %eax,%edx
c0033dd0:	8d 04 92             	lea    (%edx,%edx,4),%eax
c0033dd3:	01 c0                	add    %eax,%eax
c0033dd5:	29 c1                	sub    %eax,%ecx
c0033dd7:	83 fa 09             	cmp    $0x9,%edx
c0033dda:	8d 41 30             	lea    0x30(%ecx),%eax
c0033ddd:	89 d1                	mov    %edx,%ecx
c0033ddf:	88 03                	mov    %al,(%ebx)
c0033de1:	7f d9                	jg     c0033dbc <_svfprintf_r+0x1d4c>
c0033de3:	8d 43 ff             	lea    -0x1(%ebx),%eax
c0033de6:	83 c1 30             	add    $0x30,%ecx
c0033de9:	39 f0                	cmp    %esi,%eax
c0033deb:	88 4b ff             	mov    %cl,-0x1(%ebx)
c0033dee:	0f 83 6a 01 00 00    	jae    c0033f5e <_svfprintf_r+0x1eee>
c0033df4:	8d 95 67 ff ff ff    	lea    -0x99(%ebp),%edx
c0033dfa:	eb 07                	jmp    c0033e03 <_svfprintf_r+0x1d93>
c0033dfc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033e00:	0f b6 08             	movzbl (%eax),%ecx
c0033e03:	83 c0 01             	add    $0x1,%eax
c0033e06:	83 c2 01             	add    $0x1,%edx
c0033e09:	39 f0                	cmp    %esi,%eax
c0033e0b:	88 4a ff             	mov    %cl,-0x1(%edx)
c0033e0e:	75 f0                	jne    c0033e00 <_svfprintf_r+0x1d90>
c0033e10:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033e16:	29 d8                	sub    %ebx,%eax
c0033e18:	8d 95 67 ff ff ff    	lea    -0x99(%ebp),%edx
c0033e1e:	01 d0                	add    %edx,%eax
c0033e20:	e9 bb fe ff ff       	jmp    c0033ce0 <_svfprintf_r+0x1c70>
c0033e25:	d9 ee                	fldz   
c0033e27:	d9 c9                	fxch   %st(1)
c0033e29:	db e9                	fucomi %st(1),%st
c0033e2b:	dd d9                	fstp   %st(1)
c0033e2d:	7a 06                	jp     c0033e35 <_svfprintf_r+0x1dc5>
c0033e2f:	0f 84 b9 fd ff ff    	je     c0033bee <_svfprintf_r+0x1b7e>
c0033e35:	b8 01 00 00 00       	mov    $0x1,%eax
c0033e3a:	2b 85 44 ff ff ff    	sub    -0xbc(%ebp),%eax
c0033e40:	89 85 5c ff ff ff    	mov    %eax,-0xa4(%ebp)
c0033e46:	01 c1                	add    %eax,%ecx
c0033e48:	e9 ac f9 ff ff       	jmp    c00337f9 <_svfprintf_r+0x1789>
c0033e4d:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c0033e53:	31 c0                	xor    %eax,%eax
c0033e55:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
c0033e5c:	00 00 00 
c0033e5f:	83 c2 01             	add    $0x1,%edx
c0033e62:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0033e68:	0f 49 c2             	cmovns %edx,%eax
c0033e6b:	e9 16 fa ff ff       	jmp    c0033886 <_svfprintf_r+0x1816>
c0033e70:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c0033e76:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c0033e7c:	8d 44 10 01          	lea    0x1(%eax,%edx,1),%eax
c0033e80:	89 c2                	mov    %eax,%edx
c0033e82:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0033e88:	31 c0                	xor    %eax,%eax
c0033e8a:	85 d2                	test   %edx,%edx
c0033e8c:	0f 49 c2             	cmovns %edx,%eax
c0033e8f:	e9 f2 f9 ff ff       	jmp    c0033886 <_svfprintf_r+0x1816>
c0033e94:	8b 9d 44 ff ff ff    	mov    -0xbc(%ebp),%ebx
c0033e9a:	85 db                	test   %ebx,%ebx
c0033e9c:	75 2f                	jne    c0033ecd <_svfprintf_r+0x1e5d>
c0033e9e:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0033ea5:	75 26                	jne    c0033ecd <_svfprintf_r+0x1e5d>
c0033ea7:	b8 01 00 00 00       	mov    $0x1,%eax
c0033eac:	c7 85 38 ff ff ff 01 	movl   $0x1,-0xc8(%ebp)
c0033eb3:	00 00 00 
c0033eb6:	e9 cb f9 ff ff       	jmp    c0033886 <_svfprintf_r+0x1816>
c0033ebb:	90                   	nop
c0033ebc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033ec0:	b2 02                	mov    $0x2,%dl
c0033ec2:	2b 95 20 ff ff ff    	sub    -0xe0(%ebp),%edx
c0033ec8:	e9 99 fe ff ff       	jmp    c0033d66 <_svfprintf_r+0x1cf6>
c0033ecd:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c0033ed3:	31 c0                	xor    %eax,%eax
c0033ed5:	83 c2 02             	add    $0x2,%edx
c0033ed8:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0033ede:	0f 49 c2             	cmovns %edx,%eax
c0033ee1:	e9 a0 f9 ff ff       	jmp    c0033886 <_svfprintf_r+0x1816>
c0033ee6:	f7 d9                	neg    %ecx
c0033ee8:	c6 85 66 ff ff ff 2d 	movb   $0x2d,-0x9a(%ebp)
c0033eef:	e9 cd fd ff ff       	jmp    c0033cc1 <_svfprintf_r+0x1c51>
c0033ef4:	8b 55 14             	mov    0x14(%ebp),%edx
c0033ef7:	8b 45 14             	mov    0x14(%ebp),%eax
c0033efa:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c0033f00:	8b 12                	mov    (%edx),%edx
c0033f02:	83 c0 04             	add    $0x4,%eax
c0033f05:	89 45 14             	mov    %eax,0x14(%ebp)
c0033f08:	85 d2                	test   %edx,%edx
c0033f0a:	89 95 44 ff ff ff    	mov    %edx,-0xbc(%ebp)
c0033f10:	0f 89 a9 e2 ff ff    	jns    c00321bf <_svfprintf_r+0x14f>
c0033f16:	c7 85 44 ff ff ff ff 	movl   $0xffffffff,-0xbc(%ebp)
c0033f1d:	ff ff ff 
c0033f20:	89 c8                	mov    %ecx,%eax
c0033f22:	e9 76 e2 ff ff       	jmp    c003219d <_svfprintf_r+0x12d>
c0033f27:	90                   	nop
c0033f28:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
c0033f2e:	83 e0 01             	and    $0x1,%eax
c0033f31:	0f 85 d0 fd ff ff    	jne    c0033d07 <_svfprintf_r+0x1c97>
c0033f37:	85 d2                	test   %edx,%edx
c0033f39:	0f 49 c2             	cmovns %edx,%eax
c0033f3c:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0033f43:	00 00 00 
c0033f46:	e9 3b f9 ff ff       	jmp    c0033886 <_svfprintf_r+0x1816>
c0033f4b:	8b 45 08             	mov    0x8(%ebp),%eax
c0033f4e:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0033f54:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0033f59:	e9 f5 e2 ff ff       	jmp    c0032253 <_svfprintf_r+0x1e3>
c0033f5e:	8d 85 67 ff ff ff    	lea    -0x99(%ebp),%eax
c0033f64:	e9 77 fd ff ff       	jmp    c0033ce0 <_svfprintf_r+0x1c70>
c0033f69:	66 90                	xchg   %ax,%ax
c0033f6b:	66 90                	xchg   %ax,%ax
c0033f6d:	66 90                	xchg   %ax,%ax
c0033f6f:	90                   	nop

c0033f70 <quorem>:
c0033f70:	55                   	push   %ebp
c0033f71:	89 c1                	mov    %eax,%ecx
c0033f73:	89 e5                	mov    %esp,%ebp
c0033f75:	57                   	push   %edi
c0033f76:	89 d7                	mov    %edx,%edi
c0033f78:	56                   	push   %esi
c0033f79:	53                   	push   %ebx
c0033f7a:	83 ec 3c             	sub    $0x3c,%esp
c0033f7d:	89 45 d0             	mov    %eax,-0x30(%ebp)
c0033f80:	8b 42 10             	mov    0x10(%edx),%eax
c0033f83:	3b 41 10             	cmp    0x10(%ecx),%eax
c0033f86:	89 55 c8             	mov    %edx,-0x38(%ebp)
c0033f89:	89 ca                	mov    %ecx,%edx
c0033f8b:	0f 8f 9f 01 00 00    	jg     c0034130 <quorem+0x1c0>
c0033f91:	83 e8 01             	sub    $0x1,%eax
c0033f94:	83 c7 14             	add    $0x14,%edi
c0033f97:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0033f9a:	c1 e0 02             	shl    $0x2,%eax
c0033f9d:	83 c2 14             	add    $0x14,%edx
c0033fa0:	8d 1c 07             	lea    (%edi,%eax,1),%ebx
c0033fa3:	01 d0                	add    %edx,%eax
c0033fa5:	89 55 d8             	mov    %edx,-0x28(%ebp)
c0033fa8:	8b 13                	mov    (%ebx),%edx
c0033faa:	89 45 c4             	mov    %eax,-0x3c(%ebp)
c0033fad:	8b 00                	mov    (%eax),%eax
c0033faf:	89 5d e4             	mov    %ebx,-0x1c(%ebp)
c0033fb2:	8d 4a 01             	lea    0x1(%edx),%ecx
c0033fb5:	31 d2                	xor    %edx,%edx
c0033fb7:	f7 f1                	div    %ecx
c0033fb9:	85 c0                	test   %eax,%eax
c0033fbb:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0033fbe:	89 45 cc             	mov    %eax,-0x34(%ebp)
c0033fc1:	0f 84 b5 00 00 00    	je     c003407c <quorem+0x10c>
c0033fc7:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0033fca:	31 f6                	xor    %esi,%esi
c0033fcc:	89 fa                	mov    %edi,%edx
c0033fce:	89 7d c0             	mov    %edi,-0x40(%ebp)
c0033fd1:	89 f7                	mov    %esi,%edi
c0033fd3:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
c0033fda:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0033fe0:	83 c2 04             	add    $0x4,%edx
c0033fe3:	8b 72 fc             	mov    -0x4(%edx),%esi
c0033fe6:	83 c0 04             	add    $0x4,%eax
c0033fe9:	0f b7 ce             	movzwl %si,%ecx
c0033fec:	0f af 4d e0          	imul   -0x20(%ebp),%ecx
c0033ff0:	03 4d dc             	add    -0x24(%ebp),%ecx
c0033ff3:	c1 ee 10             	shr    $0x10,%esi
c0033ff6:	0f af 75 e0          	imul   -0x20(%ebp),%esi
c0033ffa:	89 cb                	mov    %ecx,%ebx
c0033ffc:	0f b7 c9             	movzwl %cx,%ecx
c0033fff:	c1 eb 10             	shr    $0x10,%ebx
c0034002:	29 cf                	sub    %ecx,%edi
c0034004:	01 f3                	add    %esi,%ebx
c0034006:	89 de                	mov    %ebx,%esi
c0034008:	0f b7 db             	movzwl %bx,%ebx
c003400b:	c1 ee 10             	shr    $0x10,%esi
c003400e:	89 75 dc             	mov    %esi,-0x24(%ebp)
c0034011:	8b 70 fc             	mov    -0x4(%eax),%esi
c0034014:	0f b7 ce             	movzwl %si,%ecx
c0034017:	01 f9                	add    %edi,%ecx
c0034019:	c1 ee 10             	shr    $0x10,%esi
c003401c:	29 de                	sub    %ebx,%esi
c003401e:	89 cb                	mov    %ecx,%ebx
c0034020:	c1 fb 10             	sar    $0x10,%ebx
c0034023:	0f b7 c9             	movzwl %cx,%ecx
c0034026:	01 de                	add    %ebx,%esi
c0034028:	89 f7                	mov    %esi,%edi
c003402a:	c1 e6 10             	shl    $0x10,%esi
c003402d:	09 ce                	or     %ecx,%esi
c003402f:	c1 ff 10             	sar    $0x10,%edi
c0034032:	39 55 e4             	cmp    %edx,-0x1c(%ebp)
c0034035:	89 70 fc             	mov    %esi,-0x4(%eax)
c0034038:	73 a6                	jae    c0033fe0 <quorem+0x70>
c003403a:	8b 45 c4             	mov    -0x3c(%ebp),%eax
c003403d:	8b 7d c0             	mov    -0x40(%ebp),%edi
c0034040:	8b 10                	mov    (%eax),%edx
c0034042:	85 d2                	test   %edx,%edx
c0034044:	75 36                	jne    c003407c <quorem+0x10c>
c0034046:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c0034049:	89 c2                	mov    %eax,%edx
c003404b:	83 e8 04             	sub    $0x4,%eax
c003404e:	39 c1                	cmp    %eax,%ecx
c0034050:	73 21                	jae    c0034073 <quorem+0x103>
c0034052:	8b 72 fc             	mov    -0x4(%edx),%esi
c0034055:	85 f6                	test   %esi,%esi
c0034057:	75 1a                	jne    c0034073 <quorem+0x103>
c0034059:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c003405c:	eb 08                	jmp    c0034066 <quorem+0xf6>
c003405e:	66 90                	xchg   %ax,%ax
c0034060:	8b 18                	mov    (%eax),%ebx
c0034062:	85 db                	test   %ebx,%ebx
c0034064:	75 0a                	jne    c0034070 <quorem+0x100>
c0034066:	83 e8 04             	sub    $0x4,%eax
c0034069:	83 ea 01             	sub    $0x1,%edx
c003406c:	39 c1                	cmp    %eax,%ecx
c003406e:	72 f0                	jb     c0034060 <quorem+0xf0>
c0034070:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c0034073:	8b 45 d0             	mov    -0x30(%ebp),%eax
c0034076:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c0034079:	89 50 10             	mov    %edx,0x10(%eax)
c003407c:	8b 45 c8             	mov    -0x38(%ebp),%eax
c003407f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034083:	8b 45 d0             	mov    -0x30(%ebp),%eax
c0034086:	89 04 24             	mov    %eax,(%esp)
c0034089:	e8 a2 23 00 00       	call   c0036430 <__mcmp>
c003408e:	85 c0                	test   %eax,%eax
c0034090:	0f 88 8e 00 00 00    	js     c0034124 <quorem+0x1b4>
c0034096:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0034099:	31 f6                	xor    %esi,%esi
c003409b:	83 c0 01             	add    $0x1,%eax
c003409e:	89 45 cc             	mov    %eax,-0x34(%ebp)
c00340a1:	8b 45 d8             	mov    -0x28(%ebp),%eax
c00340a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00340a8:	83 c7 04             	add    $0x4,%edi
c00340ab:	8b 4f fc             	mov    -0x4(%edi),%ecx
c00340ae:	83 c0 04             	add    $0x4,%eax
c00340b1:	8b 58 fc             	mov    -0x4(%eax),%ebx
c00340b4:	0f b7 d1             	movzwl %cx,%edx
c00340b7:	29 d6                	sub    %edx,%esi
c00340b9:	0f b7 d3             	movzwl %bx,%edx
c00340bc:	01 f2                	add    %esi,%edx
c00340be:	c1 e9 10             	shr    $0x10,%ecx
c00340c1:	c1 eb 10             	shr    $0x10,%ebx
c00340c4:	29 cb                	sub    %ecx,%ebx
c00340c6:	89 d1                	mov    %edx,%ecx
c00340c8:	c1 f9 10             	sar    $0x10,%ecx
c00340cb:	0f b7 d2             	movzwl %dx,%edx
c00340ce:	01 cb                	add    %ecx,%ebx
c00340d0:	89 de                	mov    %ebx,%esi
c00340d2:	c1 e3 10             	shl    $0x10,%ebx
c00340d5:	09 d3                	or     %edx,%ebx
c00340d7:	c1 fe 10             	sar    $0x10,%esi
c00340da:	39 7d e4             	cmp    %edi,-0x1c(%ebp)
c00340dd:	89 58 fc             	mov    %ebx,-0x4(%eax)
c00340e0:	73 c6                	jae    c00340a8 <quorem+0x138>
c00340e2:	8b 45 d8             	mov    -0x28(%ebp),%eax
c00340e5:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c00340e8:	8d 14 b8             	lea    (%eax,%edi,4),%edx
c00340eb:	8b 02                	mov    (%edx),%eax
c00340ed:	85 c0                	test   %eax,%eax
c00340ef:	75 33                	jne    c0034124 <quorem+0x1b4>
c00340f1:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c00340f4:	8d 42 fc             	lea    -0x4(%edx),%eax
c00340f7:	39 c1                	cmp    %eax,%ecx
c00340f9:	73 20                	jae    c003411b <quorem+0x1ab>
c00340fb:	8b 72 fc             	mov    -0x4(%edx),%esi
c00340fe:	85 f6                	test   %esi,%esi
c0034100:	75 19                	jne    c003411b <quorem+0x1ab>
c0034102:	89 fa                	mov    %edi,%edx
c0034104:	eb 08                	jmp    c003410e <quorem+0x19e>
c0034106:	66 90                	xchg   %ax,%ax
c0034108:	8b 18                	mov    (%eax),%ebx
c003410a:	85 db                	test   %ebx,%ebx
c003410c:	75 0a                	jne    c0034118 <quorem+0x1a8>
c003410e:	83 e8 04             	sub    $0x4,%eax
c0034111:	83 ea 01             	sub    $0x1,%edx
c0034114:	39 c1                	cmp    %eax,%ecx
c0034116:	72 f0                	jb     c0034108 <quorem+0x198>
c0034118:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c003411b:	8b 45 d0             	mov    -0x30(%ebp),%eax
c003411e:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c0034121:	89 78 10             	mov    %edi,0x10(%eax)
c0034124:	8b 45 cc             	mov    -0x34(%ebp),%eax
c0034127:	83 c4 3c             	add    $0x3c,%esp
c003412a:	5b                   	pop    %ebx
c003412b:	5e                   	pop    %esi
c003412c:	5f                   	pop    %edi
c003412d:	5d                   	pop    %ebp
c003412e:	c3                   	ret    
c003412f:	90                   	nop
c0034130:	83 c4 3c             	add    $0x3c,%esp
c0034133:	31 c0                	xor    %eax,%eax
c0034135:	5b                   	pop    %ebx
c0034136:	5e                   	pop    %esi
c0034137:	5f                   	pop    %edi
c0034138:	5d                   	pop    %ebp
c0034139:	c3                   	ret    
c003413a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0034140 <_dtoa_r>:
c0034140:	55                   	push   %ebp
c0034141:	89 e5                	mov    %esp,%ebp
c0034143:	57                   	push   %edi
c0034144:	56                   	push   %esi
c0034145:	53                   	push   %ebx
c0034146:	81 ec 8c 00 00 00    	sub    $0x8c,%esp
c003414c:	8b 75 08             	mov    0x8(%ebp),%esi
c003414f:	dd 45 0c             	fldl   0xc(%ebp)
c0034152:	8b 5d 20             	mov    0x20(%ebp),%ebx
c0034155:	dd 5d c0             	fstpl  -0x40(%ebp)
c0034158:	8b 46 40             	mov    0x40(%esi),%eax
c003415b:	85 c0                	test   %eax,%eax
c003415d:	74 23                	je     c0034182 <_dtoa_r+0x42>
c003415f:	8b 4e 44             	mov    0x44(%esi),%ecx
c0034162:	ba 01 00 00 00       	mov    $0x1,%edx
c0034167:	d3 e2                	shl    %cl,%edx
c0034169:	89 48 04             	mov    %ecx,0x4(%eax)
c003416c:	89 50 08             	mov    %edx,0x8(%eax)
c003416f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034173:	89 34 24             	mov    %esi,(%esp)
c0034176:	e8 95 1b 00 00       	call   c0035d10 <_Bfree>
c003417b:	c7 46 40 00 00 00 00 	movl   $0x0,0x40(%esi)
c0034182:	8b 7d c4             	mov    -0x3c(%ebp),%edi
c0034185:	85 ff                	test   %edi,%edi
c0034187:	0f 88 3b 02 00 00    	js     c00343c8 <_dtoa_r+0x288>
c003418d:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
c0034193:	89 f8                	mov    %edi,%eax
c0034195:	25 00 00 f0 7f       	and    $0x7ff00000,%eax
c003419a:	3d 00 00 f0 7f       	cmp    $0x7ff00000,%eax
c003419f:	0f 84 e3 01 00 00    	je     c0034388 <_dtoa_r+0x248>
c00341a5:	dd 45 c0             	fldl   -0x40(%ebp)
c00341a8:	d9 ee                	fldz   
c00341aa:	d9 c9                	fxch   %st(1)
c00341ac:	db e9                	fucomi %st(1),%st
c00341ae:	dd d9                	fstp   %st(1)
c00341b0:	7a 36                	jp     c00341e8 <_dtoa_r+0xa8>
c00341b2:	75 34                	jne    c00341e8 <_dtoa_r+0xa8>
c00341b4:	dd d8                	fstp   %st(0)
c00341b6:	8b 4d 24             	mov    0x24(%ebp),%ecx
c00341b9:	8b 45 1c             	mov    0x1c(%ebp),%eax
c00341bc:	85 c9                	test   %ecx,%ecx
c00341be:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
c00341c4:	0f 84 4e 02 00 00    	je     c0034418 <_dtoa_r+0x2d8>
c00341ca:	8b 45 24             	mov    0x24(%ebp),%eax
c00341cd:	c7 00 78 98 03 c0    	movl   $0xc0039878,(%eax)
c00341d3:	b8 77 98 03 c0       	mov    $0xc0039877,%eax
c00341d8:	81 c4 8c 00 00 00    	add    $0x8c,%esp
c00341de:	5b                   	pop    %ebx
c00341df:	5e                   	pop    %esi
c00341e0:	5f                   	pop    %edi
c00341e1:	5d                   	pop    %ebp
c00341e2:	c3                   	ret    
c00341e3:	90                   	nop
c00341e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00341e8:	8d 45 e0             	lea    -0x20(%ebp),%eax
c00341eb:	89 fb                	mov    %edi,%ebx
c00341ed:	89 44 24 10          	mov    %eax,0x10(%esp)
c00341f1:	8d 45 e4             	lea    -0x1c(%ebp),%eax
c00341f4:	dd 54 24 04          	fstl   0x4(%esp)
c00341f8:	89 44 24 0c          	mov    %eax,0xc(%esp)
c00341fc:	dd 5d b8             	fstpl  -0x48(%ebp)
c00341ff:	89 34 24             	mov    %esi,(%esp)
c0034202:	c1 eb 14             	shr    $0x14,%ebx
c0034205:	e8 76 25 00 00       	call   c0036780 <__d2b>
c003420a:	85 db                	test   %ebx,%ebx
c003420c:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c003420f:	0f 85 db 01 00 00    	jne    c00343f0 <_dtoa_r+0x2b0>
c0034215:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0034218:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
c003421b:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c003421e:	01 c3                	add    %eax,%ebx
c0034220:	81 fb ef fb ff ff    	cmp    $0xfffffbef,%ebx
c0034226:	0f 8c ec 07 00 00    	jl     c0034a18 <_dtoa_r+0x8d8>
c003422c:	8b 55 c0             	mov    -0x40(%ebp),%edx
c003422f:	b9 0e fc ff ff       	mov    $0xfffffc0e,%ecx
c0034234:	89 f8                	mov    %edi,%eax
c0034236:	29 d9                	sub    %ebx,%ecx
c0034238:	d3 e0                	shl    %cl,%eax
c003423a:	8d 8b 12 04 00 00    	lea    0x412(%ebx),%ecx
c0034240:	d3 ea                	shr    %cl,%edx
c0034242:	09 d0                	or     %edx,%eax
c0034244:	31 d2                	xor    %edx,%edx
c0034246:	83 eb 01             	sub    $0x1,%ebx
c0034249:	89 55 cc             	mov    %edx,-0x34(%ebp)
c003424c:	8b 55 b4             	mov    -0x4c(%ebp),%edx
c003424f:	89 45 c8             	mov    %eax,-0x38(%ebp)
c0034252:	df 6d c8             	fildll -0x38(%ebp)
c0034255:	dd 5d b8             	fstpl  -0x48(%ebp)
c0034258:	81 6d bc 00 00 f0 01 	subl   $0x1f00000,-0x44(%ebp)
c003425f:	c7 45 8c 01 00 00 00 	movl   $0x1,-0x74(%ebp)
c0034266:	dd 45 b8             	fldl   -0x48(%ebp)
c0034269:	d8 25 10 9a 03 c0    	fsubs  0xc0039a10
c003426f:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
c0034272:	d9 7d d2             	fnstcw -0x2e(%ebp)
c0034275:	dc 0d 28 9a 03 c0    	fmull  0xc0039a28
c003427b:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c003427f:	b4 0c                	mov    $0xc,%ah
c0034281:	dc 05 30 9a 03 c0    	faddl  0xc0039a30
c0034287:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c003428b:	db 45 d4             	fildl  -0x2c(%ebp)
c003428e:	dc 0d 38 9a 03 c0    	fmull  0xc0039a38
c0034294:	de c1                	faddp  %st,%st(1)
c0034296:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034299:	db 55 b8             	fistl  -0x48(%ebp)
c003429c:	d9 6d d2             	fldcw  -0x2e(%ebp)
c003429f:	d9 ee                	fldz   
c00342a1:	df e9                	fucomip %st(1),%st
c00342a3:	0f 87 27 07 00 00    	ja     c00349d0 <_dtoa_r+0x890>
c00342a9:	dd d8                	fstp   %st(0)
c00342ab:	83 7d b8 16          	cmpl   $0x16,-0x48(%ebp)
c00342af:	c7 45 9c 01 00 00 00 	movl   $0x1,-0x64(%ebp)
c00342b6:	77 24                	ja     c00342dc <_dtoa_r+0x19c>
c00342b8:	8b 45 b8             	mov    -0x48(%ebp),%eax
c00342bb:	dd 04 c5 00 9b 03 c0 	fldl   -0x3ffc6500(,%eax,8)
c00342c2:	dd 45 c0             	fldl   -0x40(%ebp)
c00342c5:	d9 c9                	fxch   %st(1)
c00342c7:	df e9                	fucomip %st(1),%st
c00342c9:	dd d8                	fstp   %st(0)
c00342cb:	0f 86 5f 07 00 00    	jbe    c0034a30 <_dtoa_r+0x8f0>
c00342d1:	83 6d b8 01          	subl   $0x1,-0x48(%ebp)
c00342d5:	c7 45 9c 00 00 00 00 	movl   $0x0,-0x64(%ebp)
c00342dc:	89 d0                	mov    %edx,%eax
c00342de:	29 d8                	sub    %ebx,%eax
c00342e0:	83 e8 01             	sub    $0x1,%eax
c00342e3:	c7 45 a0 00 00 00 00 	movl   $0x0,-0x60(%ebp)
c00342ea:	89 45 ac             	mov    %eax,-0x54(%ebp)
c00342ed:	0f 88 0d 07 00 00    	js     c0034a00 <_dtoa_r+0x8c0>
c00342f3:	8b 45 b8             	mov    -0x48(%ebp),%eax
c00342f6:	85 c0                	test   %eax,%eax
c00342f8:	0f 88 ea 06 00 00    	js     c00349e8 <_dtoa_r+0x8a8>
c00342fe:	01 45 ac             	add    %eax,-0x54(%ebp)
c0034301:	89 45 94             	mov    %eax,-0x6c(%ebp)
c0034304:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c003430b:	83 7d 14 09          	cmpl   $0x9,0x14(%ebp)
c003430f:	0f 87 0b 03 00 00    	ja     c0034620 <_dtoa_r+0x4e0>
c0034315:	83 7d 14 05          	cmpl   $0x5,0x14(%ebp)
c0034319:	0f 8e 23 10 00 00    	jle    c0035342 <_dtoa_r+0x1202>
c003431f:	83 6d 14 04          	subl   $0x4,0x14(%ebp)
c0034323:	31 c0                	xor    %eax,%eax
c0034325:	83 7d 14 03          	cmpl   $0x3,0x14(%ebp)
c0034329:	0f 84 43 0d 00 00    	je     c0035072 <_dtoa_r+0xf32>
c003432f:	0f 8e f3 00 00 00    	jle    c0034428 <_dtoa_r+0x2e8>
c0034335:	83 7d 14 04          	cmpl   $0x4,0x14(%ebp)
c0034339:	c7 45 98 01 00 00 00 	movl   $0x1,-0x68(%ebp)
c0034340:	0f 84 f3 00 00 00    	je     c0034439 <_dtoa_r+0x2f9>
c0034346:	83 7d 14 05          	cmpl   $0x5,0x14(%ebp)
c003434a:	0f 85 d7 02 00 00    	jne    c0034627 <_dtoa_r+0x4e7>
c0034350:	8b 5d b8             	mov    -0x48(%ebp),%ebx
c0034353:	03 5d 18             	add    0x18(%ebp),%ebx
c0034356:	89 5d 90             	mov    %ebx,-0x70(%ebp)
c0034359:	83 c3 01             	add    $0x1,%ebx
c003435c:	83 fb 0e             	cmp    $0xe,%ebx
c003435f:	0f 96 c2             	setbe  %dl
c0034362:	85 db                	test   %ebx,%ebx
c0034364:	89 5d a8             	mov    %ebx,-0x58(%ebp)
c0034367:	0f 8e a7 08 00 00    	jle    c0034c14 <_dtoa_r+0xad4>
c003436d:	8b 5d a8             	mov    -0x58(%ebp),%ebx
c0034370:	83 fb 0e             	cmp    $0xe,%ebx
c0034373:	89 df                	mov    %ebx,%edi
c0034375:	0f 96 45 b4          	setbe  -0x4c(%ebp)
c0034379:	20 45 b4             	and    %al,-0x4c(%ebp)
c003437c:	e9 d6 00 00 00       	jmp    c0034457 <_dtoa_r+0x317>
c0034381:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034388:	8b 55 c0             	mov    -0x40(%ebp),%edx
c003438b:	8b 45 1c             	mov    0x1c(%ebp),%eax
c003438e:	85 d2                	test   %edx,%edx
c0034390:	c7 00 0f 27 00 00    	movl   $0x270f,(%eax)
c0034396:	b8 09 9a 03 c0       	mov    $0xc0039a09,%eax
c003439b:	74 43                	je     c00343e0 <_dtoa_r+0x2a0>
c003439d:	8b 5d 24             	mov    0x24(%ebp),%ebx
c00343a0:	85 db                	test   %ebx,%ebx
c00343a2:	0f 84 30 fe ff ff    	je     c00341d8 <_dtoa_r+0x98>
c00343a8:	8b 75 24             	mov    0x24(%ebp),%esi
c00343ab:	8d 50 08             	lea    0x8(%eax),%edx
c00343ae:	80 78 03 00          	cmpb   $0x0,0x3(%eax)
c00343b2:	8d 48 03             	lea    0x3(%eax),%ecx
c00343b5:	0f 44 d1             	cmove  %ecx,%edx
c00343b8:	89 16                	mov    %edx,(%esi)
c00343ba:	81 c4 8c 00 00 00    	add    $0x8c,%esp
c00343c0:	5b                   	pop    %ebx
c00343c1:	5e                   	pop    %esi
c00343c2:	5f                   	pop    %edi
c00343c3:	5d                   	pop    %ebp
c00343c4:	c3                   	ret    
c00343c5:	8d 76 00             	lea    0x0(%esi),%esi
c00343c8:	81 e7 ff ff ff 7f    	and    $0x7fffffff,%edi
c00343ce:	c7 03 01 00 00 00    	movl   $0x1,(%ebx)
c00343d4:	89 7d c4             	mov    %edi,-0x3c(%ebp)
c00343d7:	e9 b7 fd ff ff       	jmp    c0034193 <_dtoa_r+0x53>
c00343dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00343e0:	81 e7 ff ff 0f 00    	and    $0xfffff,%edi
c00343e6:	ba 00 9a 03 c0       	mov    $0xc0039a00,%edx
c00343eb:	0f 44 c2             	cmove  %edx,%eax
c00343ee:	eb ad                	jmp    c003439d <_dtoa_r+0x25d>
c00343f0:	8b 45 bc             	mov    -0x44(%ebp),%eax
c00343f3:	81 eb ff 03 00 00    	sub    $0x3ff,%ebx
c00343f9:	8b 55 e0             	mov    -0x20(%ebp),%edx
c00343fc:	c7 45 8c 00 00 00 00 	movl   $0x0,-0x74(%ebp)
c0034403:	25 ff ff 0f 00       	and    $0xfffff,%eax
c0034408:	0d 00 00 f0 3f       	or     $0x3ff00000,%eax
c003440d:	89 45 bc             	mov    %eax,-0x44(%ebp)
c0034410:	e9 51 fe ff ff       	jmp    c0034266 <_dtoa_r+0x126>
c0034415:	8d 76 00             	lea    0x0(%esi),%esi
c0034418:	b8 77 98 03 c0       	mov    $0xc0039877,%eax
c003441d:	e9 b6 fd ff ff       	jmp    c00341d8 <_dtoa_r+0x98>
c0034422:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034428:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c003442c:	c7 45 98 00 00 00 00 	movl   $0x0,-0x68(%ebp)
c0034433:	0f 85 ee 01 00 00    	jne    c0034627 <_dtoa_r+0x4e7>
c0034439:	8b 55 18             	mov    0x18(%ebp),%edx
c003443c:	85 d2                	test   %edx,%edx
c003443e:	0f 8e b6 07 00 00    	jle    c0034bfa <_dtoa_r+0xaba>
c0034444:	8b 7d 18             	mov    0x18(%ebp),%edi
c0034447:	83 ff 0e             	cmp    $0xe,%edi
c003444a:	0f 96 45 b4          	setbe  -0x4c(%ebp)
c003444e:	20 45 b4             	and    %al,-0x4c(%ebp)
c0034451:	89 7d 90             	mov    %edi,-0x70(%ebp)
c0034454:	89 7d a8             	mov    %edi,-0x58(%ebp)
c0034457:	83 ff 17             	cmp    $0x17,%edi
c003445a:	c7 46 44 00 00 00 00 	movl   $0x0,0x44(%esi)
c0034461:	0f 86 e5 0e 00 00    	jbe    c003534c <_dtoa_r+0x120c>
c0034467:	b9 01 00 00 00       	mov    $0x1,%ecx
c003446c:	b8 04 00 00 00       	mov    $0x4,%eax
c0034471:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034478:	01 c0                	add    %eax,%eax
c003447a:	89 ca                	mov    %ecx,%edx
c003447c:	8d 58 14             	lea    0x14(%eax),%ebx
c003447f:	39 fb                	cmp    %edi,%ebx
c0034481:	8d 49 01             	lea    0x1(%ecx),%ecx
c0034484:	76 f2                	jbe    c0034478 <_dtoa_r+0x338>
c0034486:	89 56 44             	mov    %edx,0x44(%esi)
c0034489:	89 54 24 04          	mov    %edx,0x4(%esp)
c003448d:	89 34 24             	mov    %esi,(%esp)
c0034490:	e8 db 17 00 00       	call   c0035c70 <_Balloc>
c0034495:	80 7d b4 00          	cmpb   $0x0,-0x4c(%ebp)
c0034499:	89 c7                	mov    %eax,%edi
c003449b:	89 46 40             	mov    %eax,0x40(%esi)
c003449e:	0f 84 bb 01 00 00    	je     c003465f <_dtoa_r+0x51f>
c00344a4:	8b 5d b8             	mov    -0x48(%ebp),%ebx
c00344a7:	dd 45 c0             	fldl   -0x40(%ebp)
c00344aa:	85 db                	test   %ebx,%ebx
c00344ac:	0f 8e de 07 00 00    	jle    c0034c90 <_dtoa_r+0xb50>
c00344b2:	89 d8                	mov    %ebx,%eax
c00344b4:	83 e0 0f             	and    $0xf,%eax
c00344b7:	dd 04 c5 00 9b 03 c0 	fldl   -0x3ffc6500(,%eax,8)
c00344be:	89 d8                	mov    %ebx,%eax
c00344c0:	c1 f8 04             	sar    $0x4,%eax
c00344c3:	a8 10                	test   $0x10,%al
c00344c5:	0f 84 cd 05 00 00    	je     c0034a98 <_dtoa_r+0x958>
c00344cb:	dd 05 e0 9a 03 c0    	fldl   0xc0039ae0
c00344d1:	83 e0 0f             	and    $0xf,%eax
c00344d4:	b9 03 00 00 00       	mov    $0x3,%ecx
c00344d9:	d8 fa                	fdivr  %st(2),%st
c00344db:	85 c0                	test   %eax,%eax
c00344dd:	74 22                	je     c0034501 <_dtoa_r+0x3c1>
c00344df:	31 d2                	xor    %edx,%edx
c00344e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00344e8:	a8 01                	test   $0x1,%al
c00344ea:	74 0e                	je     c00344fa <_dtoa_r+0x3ba>
c00344ec:	d9 c9                	fxch   %st(1)
c00344ee:	dc 0c d5 c0 9a 03 c0 	fmull  -0x3ffc6540(,%edx,8)
c00344f5:	d9 c9                	fxch   %st(1)
c00344f7:	83 c1 01             	add    $0x1,%ecx
c00344fa:	83 c2 01             	add    $0x1,%edx
c00344fd:	d1 f8                	sar    %eax
c00344ff:	75 e7                	jne    c00344e8 <_dtoa_r+0x3a8>
c0034501:	de f1                	fdivp  %st,%st(1)
c0034503:	8b 45 9c             	mov    -0x64(%ebp),%eax
c0034506:	85 c0                	test   %eax,%eax
c0034508:	74 0a                	je     c0034514 <_dtoa_r+0x3d4>
c003450a:	d9 e8                	fld1   
c003450c:	df e9                	fucomip %st(1),%st
c003450e:	0f 87 92 0b 00 00    	ja     c00350a6 <_dtoa_r+0xf66>
c0034514:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c0034517:	8b 45 a8             	mov    -0x58(%ebp),%eax
c003451a:	db 45 d4             	fildl  -0x2c(%ebp)
c003451d:	d8 c9                	fmul   %st(1),%st
c003451f:	d8 05 1c 9a 03 c0    	fadds  0xc0039a1c
c0034525:	dd 5d c0             	fstpl  -0x40(%ebp)
c0034528:	81 6d c4 00 00 40 03 	subl   $0x3400000,-0x3c(%ebp)
c003452f:	85 c0                	test   %eax,%eax
c0034531:	0f 84 89 05 00 00    	je     c0034ac0 <_dtoa_r+0x980>
c0034537:	8b 45 b8             	mov    -0x48(%ebp),%eax
c003453a:	8b 4d a8             	mov    -0x58(%ebp),%ecx
c003453d:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034540:	8b 45 98             	mov    -0x68(%ebp),%eax
c0034543:	85 c0                	test   %eax,%eax
c0034545:	0f 84 b5 07 00 00    	je     c0034d00 <_dtoa_r+0xbc0>
c003454b:	d9 05 24 9a 03 c0    	flds   0xc0039a24
c0034551:	8d 57 01             	lea    0x1(%edi),%edx
c0034554:	dc 34 cd f8 9a 03 c0 	fdivl  -0x3ffc6508(,%ecx,8)
c003455b:	d9 7d d2             	fnstcw -0x2e(%ebp)
c003455e:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c0034562:	b4 0c                	mov    $0xc,%ah
c0034564:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c0034568:	dc 65 c0             	fsubl  -0x40(%ebp)
c003456b:	d9 c9                	fxch   %st(1)
c003456d:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034570:	db 55 d4             	fistl  -0x2c(%ebp)
c0034573:	d9 6d d2             	fldcw  -0x2e(%ebp)
c0034576:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c0034579:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c003457c:	83 c0 30             	add    $0x30,%eax
c003457f:	db 45 d4             	fildl  -0x2c(%ebp)
c0034582:	de e9                	fsubrp %st,%st(1)
c0034584:	d9 c9                	fxch   %st(1)
c0034586:	88 07                	mov    %al,(%edi)
c0034588:	db e9                	fucomi %st(1),%st
c003458a:	77 7f                	ja     c003460b <_dtoa_r+0x4cb>
c003458c:	d9 c1                	fld    %st(1)
c003458e:	d8 2d 14 9a 03 c0    	fsubrs 0xc0039a14
c0034594:	d9 c9                	fxch   %st(1)
c0034596:	db e9                	fucomi %st(1),%st
c0034598:	dd d9                	fstp   %st(1)
c003459a:	0f 87 33 0c 00 00    	ja     c00351d3 <_dtoa_r+0x1093>
c00345a0:	83 f9 01             	cmp    $0x1,%ecx
c00345a3:	0f 8e c4 06 00 00    	jle    c0034c6d <_dtoa_r+0xb2d>
c00345a9:	01 f9                	add    %edi,%ecx
c00345ab:	d9 05 18 9a 03 c0    	flds   0xc0039a18
c00345b1:	eb 25                	jmp    c00345d8 <_dtoa_r+0x498>
c00345b3:	90                   	nop
c00345b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00345b8:	d9 c1                	fld    %st(1)
c00345ba:	d8 2d 14 9a 03 c0    	fsubrs 0xc0039a14
c00345c0:	d9 c9                	fxch   %st(1)
c00345c2:	db e9                	fucomi %st(1),%st
c00345c4:	dd d9                	fstp   %st(1)
c00345c6:	0f 87 14 0c 00 00    	ja     c00351e0 <_dtoa_r+0x10a0>
c00345cc:	39 ca                	cmp    %ecx,%edx
c00345ce:	0f 84 a4 06 00 00    	je     c0034c78 <_dtoa_r+0xb38>
c00345d4:	d9 c9                	fxch   %st(1)
c00345d6:	d9 ca                	fxch   %st(2)
c00345d8:	dc c9                	fmul   %st,%st(1)
c00345da:	83 c2 01             	add    $0x1,%edx
c00345dd:	dc ca                	fmul   %st,%st(2)
c00345df:	d9 ca                	fxch   %st(2)
c00345e1:	d9 6d d0             	fldcw  -0x30(%ebp)
c00345e4:	db 55 d4             	fistl  -0x2c(%ebp)
c00345e7:	d9 6d d2             	fldcw  -0x2e(%ebp)
c00345ea:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c00345ed:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c00345f0:	83 c0 30             	add    $0x30,%eax
c00345f3:	db 45 d4             	fildl  -0x2c(%ebp)
c00345f6:	de e9                	fsubrp %st,%st(1)
c00345f8:	d9 c9                	fxch   %st(1)
c00345fa:	88 42 ff             	mov    %al,-0x1(%edx)
c00345fd:	db e9                	fucomi %st(1),%st
c00345ff:	76 b7                	jbe    c00345b8 <_dtoa_r+0x478>
c0034601:	dd d8                	fstp   %st(0)
c0034603:	dd d8                	fstp   %st(0)
c0034605:	dd d8                	fstp   %st(0)
c0034607:	dd d8                	fstp   %st(0)
c0034609:	eb 06                	jmp    c0034611 <_dtoa_r+0x4d1>
c003460b:	dd d8                	fstp   %st(0)
c003460d:	dd d8                	fstp   %st(0)
c003460f:	dd d8                	fstp   %st(0)
c0034611:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034614:	89 fb                	mov    %edi,%ebx
c0034616:	89 d7                	mov    %edx,%edi
c0034618:	89 45 b8             	mov    %eax,-0x48(%ebp)
c003461b:	e9 70 03 00 00       	jmp    c0034990 <_dtoa_r+0x850>
c0034620:	c7 45 14 00 00 00 00 	movl   $0x0,0x14(%ebp)
c0034627:	c7 46 44 00 00 00 00 	movl   $0x0,0x44(%esi)
c003462e:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0034635:	00 
c0034636:	89 34 24             	mov    %esi,(%esp)
c0034639:	e8 32 16 00 00       	call   c0035c70 <_Balloc>
c003463e:	c7 45 98 01 00 00 00 	movl   $0x1,-0x68(%ebp)
c0034645:	c7 45 a8 ff ff ff ff 	movl   $0xffffffff,-0x58(%ebp)
c003464c:	c7 45 90 ff ff ff ff 	movl   $0xffffffff,-0x70(%ebp)
c0034653:	c7 45 18 00 00 00 00 	movl   $0x0,0x18(%ebp)
c003465a:	89 c7                	mov    %eax,%edi
c003465c:	89 46 40             	mov    %eax,0x40(%esi)
c003465f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0034662:	85 c0                	test   %eax,%eax
c0034664:	0f 88 2e 01 00 00    	js     c0034798 <_dtoa_r+0x658>
c003466a:	83 7d b8 0e          	cmpl   $0xe,-0x48(%ebp)
c003466e:	0f 8f 24 01 00 00    	jg     c0034798 <_dtoa_r+0x658>
c0034674:	8b 45 b8             	mov    -0x48(%ebp),%eax
c0034677:	dd 04 c5 00 9b 03 c0 	fldl   -0x3ffc6500(,%eax,8)
c003467e:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034681:	85 c0                	test   %eax,%eax
c0034683:	7f 0e                	jg     c0034693 <_dtoa_r+0x553>
c0034685:	8b 45 18             	mov    0x18(%ebp),%eax
c0034688:	c1 e8 1f             	shr    $0x1f,%eax
c003468b:	84 c0                	test   %al,%al
c003468d:	0f 85 9d 07 00 00    	jne    c0034e30 <_dtoa_r+0xcf0>
c0034693:	dd 45 c0             	fldl   -0x40(%ebp)
c0034696:	d9 c0                	fld    %st(0)
c0034698:	d8 f2                	fdiv   %st(2),%st
c003469a:	d9 7d d2             	fnstcw -0x2e(%ebp)
c003469d:	83 7d a8 01          	cmpl   $0x1,-0x58(%ebp)
c00346a1:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c00346a5:	b4 0c                	mov    $0xc,%ah
c00346a7:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c00346ab:	8d 47 01             	lea    0x1(%edi),%eax
c00346ae:	89 45 c0             	mov    %eax,-0x40(%ebp)
c00346b1:	d9 6d d0             	fldcw  -0x30(%ebp)
c00346b4:	db 5d d4             	fistpl -0x2c(%ebp)
c00346b7:	d9 6d d2             	fldcw  -0x2e(%ebp)
c00346ba:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c00346bd:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c00346c0:	8d 42 30             	lea    0x30(%edx),%eax
c00346c3:	db 45 d4             	fildl  -0x2c(%ebp)
c00346c6:	d8 ca                	fmul   %st(2),%st
c00346c8:	88 07                	mov    %al,(%edi)
c00346ca:	de e9                	fsubrp %st,%st(1)
c00346cc:	74 66                	je     c0034734 <_dtoa_r+0x5f4>
c00346ce:	d8 0d 18 9a 03 c0    	fmuls  0xc0039a18
c00346d4:	d9 ee                	fldz   
c00346d6:	d9 c9                	fxch   %st(1)
c00346d8:	db e9                	fucomi %st(1),%st
c00346da:	dd d9                	fstp   %st(1)
c00346dc:	0f 8b 33 0c 00 00    	jnp    c0035315 <_dtoa_r+0x11d5>
c00346e2:	8b 5d a8             	mov    -0x58(%ebp),%ebx
c00346e5:	8d 47 02             	lea    0x2(%edi),%eax
c00346e8:	d9 05 18 9a 03 c0    	flds   0xc0039a18
c00346ee:	01 fb                	add    %edi,%ebx
c00346f0:	eb 19                	jmp    c003470b <_dtoa_r+0x5cb>
c00346f2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00346f8:	dc c9                	fmul   %st,%st(1)
c00346fa:	83 c0 01             	add    $0x1,%eax
c00346fd:	d9 ee                	fldz   
c00346ff:	d9 ca                	fxch   %st(2)
c0034701:	db ea                	fucomi %st(2),%st
c0034703:	dd da                	fstp   %st(2)
c0034705:	0f 8b 73 09 00 00    	jnp    c003507e <_dtoa_r+0xf3e>
c003470b:	d9 c1                	fld    %st(1)
c003470d:	39 d8                	cmp    %ebx,%eax
c003470f:	d8 f3                	fdiv   %st(3),%st
c0034711:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0034714:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034717:	db 5d d4             	fistpl -0x2c(%ebp)
c003471a:	d9 6d d2             	fldcw  -0x2e(%ebp)
c003471d:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c0034720:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c0034723:	8d 4a 30             	lea    0x30(%edx),%ecx
c0034726:	db 45 d4             	fildl  -0x2c(%ebp)
c0034729:	d8 cb                	fmul   %st(3),%st
c003472b:	88 48 ff             	mov    %cl,-0x1(%eax)
c003472e:	de ea                	fsubrp %st,%st(2)
c0034730:	75 c6                	jne    c00346f8 <_dtoa_r+0x5b8>
c0034732:	dd d8                	fstp   %st(0)
c0034734:	d8 c0                	fadd   %st(0),%st
c0034736:	db e9                	fucomi %st(1),%st
c0034738:	77 1e                	ja     c0034758 <_dtoa_r+0x618>
c003473a:	d9 c9                	fxch   %st(1)
c003473c:	df e9                	fucomip %st(1),%st
c003473e:	dd d8                	fstp   %st(0)
c0034740:	0f 8a 44 09 00 00    	jp     c003508a <_dtoa_r+0xf4a>
c0034746:	0f 85 3e 09 00 00    	jne    c003508a <_dtoa_r+0xf4a>
c003474c:	83 e2 01             	and    $0x1,%edx
c003474f:	90                   	nop
c0034750:	0f 84 34 09 00 00    	je     c003508a <_dtoa_r+0xf4a>
c0034756:	eb 04                	jmp    c003475c <_dtoa_r+0x61c>
c0034758:	dd d8                	fstp   %st(0)
c003475a:	dd d8                	fstp   %st(0)
c003475c:	8b 4d c0             	mov    -0x40(%ebp),%ecx
c003475f:	89 fb                	mov    %edi,%ebx
c0034761:	0f b6 41 ff          	movzbl -0x1(%ecx),%eax
c0034765:	89 cf                	mov    %ecx,%edi
c0034767:	8b 4d b8             	mov    -0x48(%ebp),%ecx
c003476a:	89 4d b4             	mov    %ecx,-0x4c(%ebp)
c003476d:	eb 0f                	jmp    c003477e <_dtoa_r+0x63e>
c003476f:	90                   	nop
c0034770:	39 d3                	cmp    %edx,%ebx
c0034772:	0f 84 75 09 00 00    	je     c00350ed <_dtoa_r+0xfad>
c0034778:	0f b6 42 ff          	movzbl -0x1(%edx),%eax
c003477c:	89 d7                	mov    %edx,%edi
c003477e:	3c 39                	cmp    $0x39,%al
c0034780:	8d 57 ff             	lea    -0x1(%edi),%edx
c0034783:	74 eb                	je     c0034770 <_dtoa_r+0x630>
c0034785:	8b 4d b4             	mov    -0x4c(%ebp),%ecx
c0034788:	83 c0 01             	add    $0x1,%eax
c003478b:	88 02                	mov    %al,(%edx)
c003478d:	89 4d b8             	mov    %ecx,-0x48(%ebp)
c0034790:	e9 fb 01 00 00       	jmp    c0034990 <_dtoa_r+0x850>
c0034795:	8d 76 00             	lea    0x0(%esi),%esi
c0034798:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c003479b:	85 c9                	test   %ecx,%ecx
c003479d:	0f 85 9d 02 00 00    	jne    c0034a40 <_dtoa_r+0x900>
c00347a3:	8b 55 b0             	mov    -0x50(%ebp),%edx
c00347a6:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c00347a9:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c00347b0:	8b 45 ac             	mov    -0x54(%ebp),%eax
c00347b3:	85 c0                	test   %eax,%eax
c00347b5:	7e 14                	jle    c00347cb <_dtoa_r+0x68b>
c00347b7:	85 db                	test   %ebx,%ebx
c00347b9:	7e 10                	jle    c00347cb <_dtoa_r+0x68b>
c00347bb:	8b 45 ac             	mov    -0x54(%ebp),%eax
c00347be:	39 d8                	cmp    %ebx,%eax
c00347c0:	0f 4f c3             	cmovg  %ebx,%eax
c00347c3:	29 45 a0             	sub    %eax,-0x60(%ebp)
c00347c6:	29 c3                	sub    %eax,%ebx
c00347c8:	29 45 ac             	sub    %eax,-0x54(%ebp)
c00347cb:	8b 45 b0             	mov    -0x50(%ebp),%eax
c00347ce:	85 c0                	test   %eax,%eax
c00347d0:	7e 61                	jle    c0034833 <_dtoa_r+0x6f3>
c00347d2:	8b 45 98             	mov    -0x68(%ebp),%eax
c00347d5:	85 c0                	test   %eax,%eax
c00347d7:	0f 84 72 04 00 00    	je     c0034c4f <_dtoa_r+0xb0f>
c00347dd:	85 d2                	test   %edx,%edx
c00347df:	7e 47                	jle    c0034828 <_dtoa_r+0x6e8>
c00347e1:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c00347e4:	89 54 24 08          	mov    %edx,0x8(%esp)
c00347e8:	89 34 24             	mov    %esi,(%esp)
c00347eb:	89 55 88             	mov    %edx,-0x78(%ebp)
c00347ee:	89 44 24 04          	mov    %eax,0x4(%esp)
c00347f2:	e8 f9 19 00 00       	call   c00361f0 <__pow5mult>
c00347f7:	8b 4d a4             	mov    -0x5c(%ebp),%ecx
c00347fa:	89 34 24             	mov    %esi,(%esp)
c00347fd:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c0034801:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034805:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034808:	e8 13 18 00 00       	call   c0036020 <__multiply>
c003480d:	8b 4d a4             	mov    -0x5c(%ebp),%ecx
c0034810:	89 34 24             	mov    %esi,(%esp)
c0034813:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c0034817:	89 45 8c             	mov    %eax,-0x74(%ebp)
c003481a:	e8 f1 14 00 00       	call   c0035d10 <_Bfree>
c003481f:	8b 45 8c             	mov    -0x74(%ebp),%eax
c0034822:	8b 55 88             	mov    -0x78(%ebp),%edx
c0034825:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0034828:	8b 45 b0             	mov    -0x50(%ebp),%eax
c003482b:	29 d0                	sub    %edx,%eax
c003482d:	0f 85 1f 04 00 00    	jne    c0034c52 <_dtoa_r+0xb12>
c0034833:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c003483a:	00 
c003483b:	89 34 24             	mov    %esi,(%esp)
c003483e:	e8 ad 17 00 00       	call   c0035ff0 <__i2b>
c0034843:	8b 4d 94             	mov    -0x6c(%ebp),%ecx
c0034846:	85 c9                	test   %ecx,%ecx
c0034848:	89 45 b0             	mov    %eax,-0x50(%ebp)
c003484b:	7e 13                	jle    c0034860 <_dtoa_r+0x720>
c003484d:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c0034851:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034855:	89 34 24             	mov    %esi,(%esp)
c0034858:	e8 93 19 00 00       	call   c00361f0 <__pow5mult>
c003485d:	89 45 b0             	mov    %eax,-0x50(%ebp)
c0034860:	83 7d 14 01          	cmpl   $0x1,0x14(%ebp)
c0034864:	c7 45 8c 00 00 00 00 	movl   $0x0,-0x74(%ebp)
c003486b:	0f 8e f7 05 00 00    	jle    c0034e68 <_dtoa_r+0xd28>
c0034871:	8b 45 94             	mov    -0x6c(%ebp),%eax
c0034874:	ba 01 00 00 00       	mov    $0x1,%edx
c0034879:	85 c0                	test   %eax,%eax
c003487b:	0f 85 27 05 00 00    	jne    c0034da8 <_dtoa_r+0xc68>
c0034881:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0034884:	01 d0                	add    %edx,%eax
c0034886:	83 e0 1f             	and    $0x1f,%eax
c0034889:	89 c2                	mov    %eax,%edx
c003488b:	0f 84 57 03 00 00    	je     c0034be8 <_dtoa_r+0xaa8>
c0034891:	b8 20 00 00 00       	mov    $0x20,%eax
c0034896:	29 d0                	sub    %edx,%eax
c0034898:	83 f8 04             	cmp    $0x4,%eax
c003489b:	0f 8e 8c 0a 00 00    	jle    c003532d <_dtoa_r+0x11ed>
c00348a1:	b8 1c 00 00 00       	mov    $0x1c,%eax
c00348a6:	29 d0                	sub    %edx,%eax
c00348a8:	01 45 a0             	add    %eax,-0x60(%ebp)
c00348ab:	01 c3                	add    %eax,%ebx
c00348ad:	01 45 ac             	add    %eax,-0x54(%ebp)
c00348b0:	8b 45 a0             	mov    -0x60(%ebp),%eax
c00348b3:	85 c0                	test   %eax,%eax
c00348b5:	7e 16                	jle    c00348cd <_dtoa_r+0x78d>
c00348b7:	89 44 24 08          	mov    %eax,0x8(%esp)
c00348bb:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c00348be:	89 34 24             	mov    %esi,(%esp)
c00348c1:	89 44 24 04          	mov    %eax,0x4(%esp)
c00348c5:	e8 46 1a 00 00       	call   c0036310 <__lshift>
c00348ca:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c00348cd:	8b 45 ac             	mov    -0x54(%ebp),%eax
c00348d0:	85 c0                	test   %eax,%eax
c00348d2:	7e 16                	jle    c00348ea <_dtoa_r+0x7aa>
c00348d4:	89 44 24 08          	mov    %eax,0x8(%esp)
c00348d8:	8b 45 b0             	mov    -0x50(%ebp),%eax
c00348db:	89 34 24             	mov    %esi,(%esp)
c00348de:	89 44 24 04          	mov    %eax,0x4(%esp)
c00348e2:	e8 29 1a 00 00       	call   c0036310 <__lshift>
c00348e7:	89 45 b0             	mov    %eax,-0x50(%ebp)
c00348ea:	8b 45 9c             	mov    -0x64(%ebp),%eax
c00348ed:	85 c0                	test   %eax,%eax
c00348ef:	0f 85 d3 04 00 00    	jne    c0034dc8 <_dtoa_r+0xc88>
c00348f5:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c00348f9:	0f 8e 11 02 00 00    	jle    c0034b10 <_dtoa_r+0x9d0>
c00348ff:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034902:	85 c0                	test   %eax,%eax
c0034904:	0f 8f 06 02 00 00    	jg     c0034b10 <_dtoa_r+0x9d0>
c003490a:	8b 45 a8             	mov    -0x58(%ebp),%eax
c003490d:	85 c0                	test   %eax,%eax
c003490f:	0f 85 e0 01 00 00    	jne    c0034af5 <_dtoa_r+0x9b5>
c0034915:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034918:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c003491f:	00 
c0034920:	c7 44 24 08 05 00 00 	movl   $0x5,0x8(%esp)
c0034927:	00 
c0034928:	89 34 24             	mov    %esi,(%esp)
c003492b:	89 44 24 04          	mov    %eax,0x4(%esp)
c003492f:	e8 fc 13 00 00       	call   c0035d30 <__multadd>
c0034934:	89 45 b0             	mov    %eax,-0x50(%ebp)
c0034937:	89 44 24 04          	mov    %eax,0x4(%esp)
c003493b:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c003493e:	89 04 24             	mov    %eax,(%esp)
c0034941:	e8 ea 1a 00 00       	call   c0036430 <__mcmp>
c0034946:	85 c0                	test   %eax,%eax
c0034948:	0f 8e a7 01 00 00    	jle    c0034af5 <_dtoa_r+0x9b5>
c003494e:	83 45 b8 01          	addl   $0x1,-0x48(%ebp)
c0034952:	89 fb                	mov    %edi,%ebx
c0034954:	83 c7 01             	add    $0x1,%edi
c0034957:	c6 47 ff 31          	movb   $0x31,-0x1(%edi)
c003495b:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
c0034962:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034965:	89 34 24             	mov    %esi,(%esp)
c0034968:	89 44 24 04          	mov    %eax,0x4(%esp)
c003496c:	e8 9f 13 00 00       	call   c0035d10 <_Bfree>
c0034971:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034974:	85 c0                	test   %eax,%eax
c0034976:	74 18                	je     c0034990 <_dtoa_r+0x850>
c0034978:	39 45 c0             	cmp    %eax,-0x40(%ebp)
c003497b:	0f 85 a7 02 00 00    	jne    c0034c28 <_dtoa_r+0xae8>
c0034981:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034984:	89 34 24             	mov    %esi,(%esp)
c0034987:	89 44 24 04          	mov    %eax,0x4(%esp)
c003498b:	e8 80 13 00 00       	call   c0035d10 <_Bfree>
c0034990:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034993:	89 34 24             	mov    %esi,(%esp)
c0034996:	89 44 24 04          	mov    %eax,0x4(%esp)
c003499a:	e8 71 13 00 00       	call   c0035d10 <_Bfree>
c003499f:	8b 45 b8             	mov    -0x48(%ebp),%eax
c00349a2:	8b 75 1c             	mov    0x1c(%ebp),%esi
c00349a5:	c6 07 00             	movb   $0x0,(%edi)
c00349a8:	83 c0 01             	add    $0x1,%eax
c00349ab:	89 06                	mov    %eax,(%esi)
c00349ad:	8b 45 24             	mov    0x24(%ebp),%eax
c00349b0:	85 c0                	test   %eax,%eax
c00349b2:	0f 84 90 02 00 00    	je     c0034c48 <_dtoa_r+0xb08>
c00349b8:	8b 45 24             	mov    0x24(%ebp),%eax
c00349bb:	89 38                	mov    %edi,(%eax)
c00349bd:	81 c4 8c 00 00 00    	add    $0x8c,%esp
c00349c3:	89 d8                	mov    %ebx,%eax
c00349c5:	5b                   	pop    %ebx
c00349c6:	5e                   	pop    %esi
c00349c7:	5f                   	pop    %edi
c00349c8:	5d                   	pop    %ebp
c00349c9:	c3                   	ret    
c00349ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00349d0:	db 45 b8             	fildl  -0x48(%ebp)
c00349d3:	df e9                	fucomip %st(1),%st
c00349d5:	dd d8                	fstp   %st(0)
c00349d7:	7a 06                	jp     c00349df <_dtoa_r+0x89f>
c00349d9:	0f 84 cc f8 ff ff    	je     c00342ab <_dtoa_r+0x16b>
c00349df:	83 6d b8 01          	subl   $0x1,-0x48(%ebp)
c00349e3:	e9 c3 f8 ff ff       	jmp    c00342ab <_dtoa_r+0x16b>
c00349e8:	8b 45 b8             	mov    -0x48(%ebp),%eax
c00349eb:	29 45 a0             	sub    %eax,-0x60(%ebp)
c00349ee:	c7 45 94 00 00 00 00 	movl   $0x0,-0x6c(%ebp)
c00349f5:	f7 d8                	neg    %eax
c00349f7:	89 45 b0             	mov    %eax,-0x50(%ebp)
c00349fa:	e9 0c f9 ff ff       	jmp    c003430b <_dtoa_r+0x1cb>
c00349ff:	90                   	nop
c0034a00:	f7 d8                	neg    %eax
c0034a02:	89 45 a0             	mov    %eax,-0x60(%ebp)
c0034a05:	c7 45 ac 00 00 00 00 	movl   $0x0,-0x54(%ebp)
c0034a0c:	e9 e2 f8 ff ff       	jmp    c00342f3 <_dtoa_r+0x1b3>
c0034a11:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034a18:	8b 45 c0             	mov    -0x40(%ebp),%eax
c0034a1b:	b9 ee fb ff ff       	mov    $0xfffffbee,%ecx
c0034a20:	29 d9                	sub    %ebx,%ecx
c0034a22:	d3 e0                	shl    %cl,%eax
c0034a24:	e9 1b f8 ff ff       	jmp    c0034244 <_dtoa_r+0x104>
c0034a29:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034a30:	c7 45 9c 00 00 00 00 	movl   $0x0,-0x64(%ebp)
c0034a37:	e9 a0 f8 ff ff       	jmp    c00342dc <_dtoa_r+0x19c>
c0034a3c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034a40:	83 7d 14 01          	cmpl   $0x1,0x14(%ebp)
c0034a44:	0f 8e fe 06 00 00    	jle    c0035148 <_dtoa_r+0x1008>
c0034a4a:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034a4d:	83 e8 01             	sub    $0x1,%eax
c0034a50:	39 45 b0             	cmp    %eax,-0x50(%ebp)
c0034a53:	0f 8c 3b 06 00 00    	jl     c0035094 <_dtoa_r+0xf54>
c0034a59:	8b 55 b0             	mov    -0x50(%ebp),%edx
c0034a5c:	29 c2                	sub    %eax,%edx
c0034a5e:	8b 4d a8             	mov    -0x58(%ebp),%ecx
c0034a61:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c0034a64:	85 c9                	test   %ecx,%ecx
c0034a66:	89 c8                	mov    %ecx,%eax
c0034a68:	0f 88 83 07 00 00    	js     c00351f1 <_dtoa_r+0x10b1>
c0034a6e:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0034a75:	00 
c0034a76:	89 34 24             	mov    %esi,(%esp)
c0034a79:	89 55 8c             	mov    %edx,-0x74(%ebp)
c0034a7c:	01 45 a0             	add    %eax,-0x60(%ebp)
c0034a7f:	01 45 ac             	add    %eax,-0x54(%ebp)
c0034a82:	e8 69 15 00 00       	call   c0035ff0 <__i2b>
c0034a87:	8b 55 8c             	mov    -0x74(%ebp),%edx
c0034a8a:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034a8d:	e9 1e fd ff ff       	jmp    c00347b0 <_dtoa_r+0x670>
c0034a92:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034a98:	d9 c1                	fld    %st(1)
c0034a9a:	b9 02 00 00 00       	mov    $0x2,%ecx
c0034a9f:	e9 37 fa ff ff       	jmp    c00344db <_dtoa_r+0x39b>
c0034aa4:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c0034aa7:	db 45 d4             	fildl  -0x2c(%ebp)
c0034aaa:	d8 c9                	fmul   %st(1),%st
c0034aac:	d8 05 1c 9a 03 c0    	fadds  0xc0039a1c
c0034ab2:	dd 5d c0             	fstpl  -0x40(%ebp)
c0034ab5:	81 6d c4 00 00 40 03 	subl   $0x3400000,-0x3c(%ebp)
c0034abc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034ac0:	d8 25 20 9a 03 c0    	fsubs  0xc0039a20
c0034ac6:	dd 45 c0             	fldl   -0x40(%ebp)
c0034ac9:	d9 c9                	fxch   %st(1)
c0034acb:	db e9                	fucomi %st(1),%st
c0034acd:	0f 87 0d 02 00 00    	ja     c0034ce0 <_dtoa_r+0xba0>
c0034ad3:	d9 c9                	fxch   %st(1)
c0034ad5:	d9 e0                	fchs   
c0034ad7:	df e9                	fucomip %st(1),%st
c0034ad9:	dd d8                	fstp   %st(0)
c0034adb:	0f 86 a7 01 00 00    	jbe    c0034c88 <_dtoa_r+0xb48>
c0034ae1:	dd d8                	fstp   %st(0)
c0034ae3:	eb 02                	jmp    c0034ae7 <_dtoa_r+0x9a7>
c0034ae5:	dd d8                	fstp   %st(0)
c0034ae7:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c0034aee:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c0034af5:	8b 45 18             	mov    0x18(%ebp),%eax
c0034af8:	89 fb                	mov    %edi,%ebx
c0034afa:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
c0034b01:	f7 d0                	not    %eax
c0034b03:	89 45 b8             	mov    %eax,-0x48(%ebp)
c0034b06:	e9 57 fe ff ff       	jmp    c0034962 <_dtoa_r+0x822>
c0034b0b:	90                   	nop
c0034b0c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034b10:	8b 45 98             	mov    -0x68(%ebp),%eax
c0034b13:	85 c0                	test   %eax,%eax
c0034b15:	0f 85 c5 03 00 00    	jne    c0034ee0 <_dtoa_r+0xda0>
c0034b1b:	89 75 08             	mov    %esi,0x8(%ebp)
c0034b1e:	bb 01 00 00 00       	mov    $0x1,%ebx
c0034b23:	8b 75 a4             	mov    -0x5c(%ebp),%esi
c0034b26:	eb 24                	jmp    c0034b4c <_dtoa_r+0xa0c>
c0034b28:	8b 45 08             	mov    0x8(%ebp),%eax
c0034b2b:	83 c3 01             	add    $0x1,%ebx
c0034b2e:	89 74 24 04          	mov    %esi,0x4(%esp)
c0034b32:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034b39:	00 
c0034b3a:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034b41:	00 
c0034b42:	89 04 24             	mov    %eax,(%esp)
c0034b45:	e8 e6 11 00 00       	call   c0035d30 <__multadd>
c0034b4a:	89 c6                	mov    %eax,%esi
c0034b4c:	8b 55 b0             	mov    -0x50(%ebp),%edx
c0034b4f:	89 f0                	mov    %esi,%eax
c0034b51:	e8 1a f4 ff ff       	call   c0033f70 <quorem>
c0034b56:	83 c0 30             	add    $0x30,%eax
c0034b59:	3b 5d a8             	cmp    -0x58(%ebp),%ebx
c0034b5c:	88 44 1f ff          	mov    %al,-0x1(%edi,%ebx,1)
c0034b60:	7c c6                	jl     c0034b28 <_dtoa_r+0x9e8>
c0034b62:	89 45 a0             	mov    %eax,-0x60(%ebp)
c0034b65:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034b68:	ba 01 00 00 00       	mov    $0x1,%edx
c0034b6d:	89 75 a4             	mov    %esi,-0x5c(%ebp)
c0034b70:	8b 75 08             	mov    0x8(%ebp),%esi
c0034b73:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
c0034b7a:	85 c0                	test   %eax,%eax
c0034b7c:	0f 4f d0             	cmovg  %eax,%edx
c0034b7f:	01 fa                	add    %edi,%edx
c0034b81:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034b84:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
c0034b8b:	00 
c0034b8c:	89 34 24             	mov    %esi,(%esp)
c0034b8f:	89 55 ac             	mov    %edx,-0x54(%ebp)
c0034b92:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034b96:	e8 75 17 00 00       	call   c0036310 <__lshift>
c0034b9b:	8b 5d b0             	mov    -0x50(%ebp),%ebx
c0034b9e:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c0034ba2:	89 04 24             	mov    %eax,(%esp)
c0034ba5:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0034ba8:	e8 83 18 00 00       	call   c0036430 <__mcmp>
c0034bad:	8b 55 ac             	mov    -0x54(%ebp),%edx
c0034bb0:	83 f8 00             	cmp    $0x0,%eax
c0034bb3:	0f 8e 41 06 00 00    	jle    c00351fa <_dtoa_r+0x10ba>
c0034bb9:	0f b6 4a ff          	movzbl -0x1(%edx),%ecx
c0034bbd:	eb 0f                	jmp    c0034bce <_dtoa_r+0xa8e>
c0034bbf:	90                   	nop
c0034bc0:	39 c7                	cmp    %eax,%edi
c0034bc2:	0f 84 70 05 00 00    	je     c0035138 <_dtoa_r+0xff8>
c0034bc8:	0f b6 48 ff          	movzbl -0x1(%eax),%ecx
c0034bcc:	89 c2                	mov    %eax,%edx
c0034bce:	80 f9 39             	cmp    $0x39,%cl
c0034bd1:	8d 42 ff             	lea    -0x1(%edx),%eax
c0034bd4:	74 ea                	je     c0034bc0 <_dtoa_r+0xa80>
c0034bd6:	83 c1 01             	add    $0x1,%ecx
c0034bd9:	89 fb                	mov    %edi,%ebx
c0034bdb:	88 08                	mov    %cl,(%eax)
c0034bdd:	89 d7                	mov    %edx,%edi
c0034bdf:	e9 7e fd ff ff       	jmp    c0034962 <_dtoa_r+0x822>
c0034be4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034be8:	b8 1c 00 00 00       	mov    $0x1c,%eax
c0034bed:	01 45 a0             	add    %eax,-0x60(%ebp)
c0034bf0:	01 c3                	add    %eax,%ebx
c0034bf2:	01 45 ac             	add    %eax,-0x54(%ebp)
c0034bf5:	e9 b6 fc ff ff       	jmp    c00348b0 <_dtoa_r+0x770>
c0034bfa:	ba 01 00 00 00       	mov    $0x1,%edx
c0034bff:	c7 45 90 01 00 00 00 	movl   $0x1,-0x70(%ebp)
c0034c06:	c7 45 a8 01 00 00 00 	movl   $0x1,-0x58(%ebp)
c0034c0d:	c7 45 18 01 00 00 00 	movl   $0x1,0x18(%ebp)
c0034c14:	21 c2                	and    %eax,%edx
c0034c16:	88 55 b4             	mov    %dl,-0x4c(%ebp)
c0034c19:	31 d2                	xor    %edx,%edx
c0034c1b:	c7 46 44 00 00 00 00 	movl   $0x0,0x44(%esi)
c0034c22:	e9 62 f8 ff ff       	jmp    c0034489 <_dtoa_r+0x349>
c0034c27:	90                   	nop
c0034c28:	8b 55 c0             	mov    -0x40(%ebp),%edx
c0034c2b:	85 d2                	test   %edx,%edx
c0034c2d:	0f 84 4e fd ff ff    	je     c0034981 <_dtoa_r+0x841>
c0034c33:	8b 45 c0             	mov    -0x40(%ebp),%eax
c0034c36:	89 34 24             	mov    %esi,(%esp)
c0034c39:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034c3d:	e8 ce 10 00 00       	call   c0035d10 <_Bfree>
c0034c42:	e9 3a fd ff ff       	jmp    c0034981 <_dtoa_r+0x841>
c0034c47:	90                   	nop
c0034c48:	89 d8                	mov    %ebx,%eax
c0034c4a:	e9 89 f5 ff ff       	jmp    c00341d8 <_dtoa_r+0x98>
c0034c4f:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034c52:	89 44 24 08          	mov    %eax,0x8(%esp)
c0034c56:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034c59:	89 34 24             	mov    %esi,(%esp)
c0034c5c:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034c60:	e8 8b 15 00 00       	call   c00361f0 <__pow5mult>
c0034c65:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0034c68:	e9 c6 fb ff ff       	jmp    c0034833 <_dtoa_r+0x6f3>
c0034c6d:	dd d8                	fstp   %st(0)
c0034c6f:	dd d8                	fstp   %st(0)
c0034c71:	eb 15                	jmp    c0034c88 <_dtoa_r+0xb48>
c0034c73:	90                   	nop
c0034c74:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034c78:	dd d8                	fstp   %st(0)
c0034c7a:	dd d8                	fstp   %st(0)
c0034c7c:	dd d8                	fstp   %st(0)
c0034c7e:	eb 08                	jmp    c0034c88 <_dtoa_r+0xb48>
c0034c80:	dd d8                	fstp   %st(0)
c0034c82:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034c88:	dd 5d c0             	fstpl  -0x40(%ebp)
c0034c8b:	e9 cf f9 ff ff       	jmp    c003465f <_dtoa_r+0x51f>
c0034c90:	8b 45 b8             	mov    -0x48(%ebp),%eax
c0034c93:	f7 d8                	neg    %eax
c0034c95:	0f 84 6a 04 00 00    	je     c0035105 <_dtoa_r+0xfc5>
c0034c9b:	89 c2                	mov    %eax,%edx
c0034c9d:	b9 02 00 00 00       	mov    $0x2,%ecx
c0034ca2:	83 e2 0f             	and    $0xf,%edx
c0034ca5:	c1 f8 04             	sar    $0x4,%eax
c0034ca8:	dd 04 d5 00 9b 03 c0 	fldl   -0x3ffc6500(,%edx,8)
c0034caf:	85 c0                	test   %eax,%eax
c0034cb1:	d8 c9                	fmul   %st(1),%st
c0034cb3:	0f 84 4a f8 ff ff    	je     c0034503 <_dtoa_r+0x3c3>
c0034cb9:	31 d2                	xor    %edx,%edx
c0034cbb:	90                   	nop
c0034cbc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034cc0:	a8 01                	test   $0x1,%al
c0034cc2:	74 0a                	je     c0034cce <_dtoa_r+0xb8e>
c0034cc4:	dc 0c d5 c0 9a 03 c0 	fmull  -0x3ffc6540(,%edx,8)
c0034ccb:	83 c1 01             	add    $0x1,%ecx
c0034cce:	83 c2 01             	add    $0x1,%edx
c0034cd1:	d1 f8                	sar    %eax
c0034cd3:	75 eb                	jne    c0034cc0 <_dtoa_r+0xb80>
c0034cd5:	e9 29 f8 ff ff       	jmp    c0034503 <_dtoa_r+0x3c3>
c0034cda:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034ce0:	dd d8                	fstp   %st(0)
c0034ce2:	dd d8                	fstp   %st(0)
c0034ce4:	dd d8                	fstp   %st(0)
c0034ce6:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c0034ced:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c0034cf4:	e9 55 fc ff ff       	jmp    c003494e <_dtoa_r+0x80e>
c0034cf9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034d00:	d9 7d d2             	fnstcw -0x2e(%ebp)
c0034d03:	8d 41 ff             	lea    -0x1(%ecx),%eax
c0034d06:	dd 45 c0             	fldl   -0x40(%ebp)
c0034d09:	dc 0c c5 00 9b 03 c0 	fmull  -0x3ffc6500(,%eax,8)
c0034d10:	d9 c9                	fxch   %st(1)
c0034d12:	89 45 88             	mov    %eax,-0x78(%ebp)
c0034d15:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c0034d19:	8d 57 01             	lea    0x1(%edi),%edx
c0034d1c:	8d 1c 0f             	lea    (%edi,%ecx,1),%ebx
c0034d1f:	b4 0c                	mov    $0xc,%ah
c0034d21:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c0034d25:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034d28:	db 55 d4             	fistl  -0x2c(%ebp)
c0034d2b:	d9 6d d2             	fldcw  -0x2e(%ebp)
c0034d2e:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c0034d31:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0034d34:	83 c0 30             	add    $0x30,%eax
c0034d37:	83 f9 01             	cmp    $0x1,%ecx
c0034d3a:	db 45 d4             	fildl  -0x2c(%ebp)
c0034d3d:	de e9                	fsubrp %st,%st(1)
c0034d3f:	88 07                	mov    %al,(%edi)
c0034d41:	89 d0                	mov    %edx,%eax
c0034d43:	74 37                	je     c0034d7c <_dtoa_r+0xc3c>
c0034d45:	d9 05 18 9a 03 c0    	flds   0xc0039a18
c0034d4b:	eb 05                	jmp    c0034d52 <_dtoa_r+0xc12>
c0034d4d:	8d 76 00             	lea    0x0(%esi),%esi
c0034d50:	d9 c9                	fxch   %st(1)
c0034d52:	dc c9                	fmul   %st,%st(1)
c0034d54:	d9 c9                	fxch   %st(1)
c0034d56:	83 c0 01             	add    $0x1,%eax
c0034d59:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034d5c:	db 55 d4             	fistl  -0x2c(%ebp)
c0034d5f:	d9 6d d2             	fldcw  -0x2e(%ebp)
c0034d62:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
c0034d65:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c0034d68:	83 c1 30             	add    $0x30,%ecx
c0034d6b:	39 d8                	cmp    %ebx,%eax
c0034d6d:	db 45 d4             	fildl  -0x2c(%ebp)
c0034d70:	de e9                	fsubrp %st,%st(1)
c0034d72:	88 48 ff             	mov    %cl,-0x1(%eax)
c0034d75:	75 d9                	jne    c0034d50 <_dtoa_r+0xc10>
c0034d77:	dd d9                	fstp   %st(1)
c0034d79:	03 55 88             	add    -0x78(%ebp),%edx
c0034d7c:	d9 05 24 9a 03 c0    	flds   0xc0039a24
c0034d82:	d9 c2                	fld    %st(2)
c0034d84:	d8 c1                	fadd   %st(1),%st
c0034d86:	d9 ca                	fxch   %st(2)
c0034d88:	db ea                	fucomi %st(2),%st
c0034d8a:	dd da                	fstp   %st(2)
c0034d8c:	0f 86 7f 03 00 00    	jbe    c0035111 <_dtoa_r+0xfd1>
c0034d92:	dd d8                	fstp   %st(0)
c0034d94:	dd d8                	fstp   %st(0)
c0034d96:	dd d8                	fstp   %st(0)
c0034d98:	dd d8                	fstp   %st(0)
c0034d9a:	89 fb                	mov    %edi,%ebx
c0034d9c:	0f b6 42 ff          	movzbl -0x1(%edx),%eax
c0034da0:	89 d7                	mov    %edx,%edi
c0034da2:	e9 d7 f9 ff ff       	jmp    c003477e <_dtoa_r+0x63e>
c0034da7:	90                   	nop
c0034da8:	8b 4d b0             	mov    -0x50(%ebp),%ecx
c0034dab:	8b 41 10             	mov    0x10(%ecx),%eax
c0034dae:	8b 44 81 10          	mov    0x10(%ecx,%eax,4),%eax
c0034db2:	89 04 24             	mov    %eax,(%esp)
c0034db5:	e8 56 11 00 00       	call   c0035f10 <__hi0bits>
c0034dba:	ba 20 00 00 00       	mov    $0x20,%edx
c0034dbf:	29 c2                	sub    %eax,%edx
c0034dc1:	e9 bb fa ff ff       	jmp    c0034881 <_dtoa_r+0x741>
c0034dc6:	66 90                	xchg   %ax,%ax
c0034dc8:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034dcb:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034dcf:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034dd2:	89 04 24             	mov    %eax,(%esp)
c0034dd5:	e8 56 16 00 00       	call   c0036430 <__mcmp>
c0034dda:	85 c0                	test   %eax,%eax
c0034ddc:	0f 89 13 fb ff ff    	jns    c00348f5 <_dtoa_r+0x7b5>
c0034de2:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034de5:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034dec:	00 
c0034ded:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034df4:	00 
c0034df5:	89 34 24             	mov    %esi,(%esp)
c0034df8:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034dfc:	83 6d b8 01          	subl   $0x1,-0x48(%ebp)
c0034e00:	e8 2b 0f 00 00       	call   c0035d30 <__multadd>
c0034e05:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c0034e08:	85 c9                	test   %ecx,%ecx
c0034e0a:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0034e0d:	0f 85 8d 00 00 00    	jne    c0034ea0 <_dtoa_r+0xd60>
c0034e13:	83 7d 90 00          	cmpl   $0x0,-0x70(%ebp)
c0034e17:	8b 45 90             	mov    -0x70(%ebp),%eax
c0034e1a:	7f 0a                	jg     c0034e26 <_dtoa_r+0xce6>
c0034e1c:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c0034e20:	0f 8f ff 04 00 00    	jg     c0035325 <_dtoa_r+0x11e5>
c0034e26:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0034e29:	e9 ed fc ff ff       	jmp    c0034b1b <_dtoa_r+0x9db>
c0034e2e:	66 90                	xchg   %ax,%ax
c0034e30:	8b 5d a8             	mov    -0x58(%ebp),%ebx
c0034e33:	85 db                	test   %ebx,%ebx
c0034e35:	0f 85 aa fc ff ff    	jne    c0034ae5 <_dtoa_r+0x9a5>
c0034e3b:	d8 0d 20 9a 03 c0    	fmuls  0xc0039a20
c0034e41:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c0034e48:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c0034e4f:	dd 45 c0             	fldl   -0x40(%ebp)
c0034e52:	d9 c9                	fxch   %st(1)
c0034e54:	df e9                	fucomip %st(1),%st
c0034e56:	dd d8                	fstp   %st(0)
c0034e58:	0f 83 97 fc ff ff    	jae    c0034af5 <_dtoa_r+0x9b5>
c0034e5e:	e9 eb fa ff ff       	jmp    c003494e <_dtoa_r+0x80e>
c0034e63:	90                   	nop
c0034e64:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034e68:	8b 45 c0             	mov    -0x40(%ebp),%eax
c0034e6b:	85 c0                	test   %eax,%eax
c0034e6d:	0f 85 fe f9 ff ff    	jne    c0034871 <_dtoa_r+0x731>
c0034e73:	8b 45 c4             	mov    -0x3c(%ebp),%eax
c0034e76:	a9 ff ff 0f 00       	test   $0xfffff,%eax
c0034e7b:	0f 85 f0 f9 ff ff    	jne    c0034871 <_dtoa_r+0x731>
c0034e81:	a9 00 00 f0 7f       	test   $0x7ff00000,%eax
c0034e86:	0f 84 e5 f9 ff ff    	je     c0034871 <_dtoa_r+0x731>
c0034e8c:	83 45 a0 01          	addl   $0x1,-0x60(%ebp)
c0034e90:	83 45 ac 01          	addl   $0x1,-0x54(%ebp)
c0034e94:	c7 45 8c 01 00 00 00 	movl   $0x1,-0x74(%ebp)
c0034e9b:	e9 d1 f9 ff ff       	jmp    c0034871 <_dtoa_r+0x731>
c0034ea0:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034ea3:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034eaa:	00 
c0034eab:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034eb2:	00 
c0034eb3:	89 34 24             	mov    %esi,(%esp)
c0034eb6:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034eba:	e8 71 0e 00 00       	call   c0035d30 <__multadd>
c0034ebf:	8b 55 90             	mov    -0x70(%ebp),%edx
c0034ec2:	85 d2                	test   %edx,%edx
c0034ec4:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034ec7:	8b 45 90             	mov    -0x70(%ebp),%eax
c0034eca:	7f 0a                	jg     c0034ed6 <_dtoa_r+0xd96>
c0034ecc:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c0034ed0:	0f 8f 4f 04 00 00    	jg     c0035325 <_dtoa_r+0x11e5>
c0034ed6:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0034ed9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034ee0:	85 db                	test   %ebx,%ebx
c0034ee2:	7e 16                	jle    c0034efa <_dtoa_r+0xdba>
c0034ee4:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034ee7:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0034eeb:	89 34 24             	mov    %esi,(%esp)
c0034eee:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034ef2:	e8 19 14 00 00       	call   c0036310 <__lshift>
c0034ef7:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034efa:	8b 5d 8c             	mov    -0x74(%ebp),%ebx
c0034efd:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034f00:	85 db                	test   %ebx,%ebx
c0034f02:	89 45 ac             	mov    %eax,-0x54(%ebp)
c0034f05:	0f 85 11 03 00 00    	jne    c003521c <_dtoa_r+0x10dc>
c0034f0b:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034f0e:	8d 5f 01             	lea    0x1(%edi),%ebx
c0034f11:	89 7d 8c             	mov    %edi,-0x74(%ebp)
c0034f14:	01 f8                	add    %edi,%eax
c0034f16:	8b 7d a4             	mov    -0x5c(%ebp),%edi
c0034f19:	89 45 90             	mov    %eax,-0x70(%ebp)
c0034f1c:	8b 45 c0             	mov    -0x40(%ebp),%eax
c0034f1f:	83 e0 01             	and    $0x1,%eax
c0034f22:	89 45 9c             	mov    %eax,-0x64(%ebp)
c0034f25:	eb 2e                	jmp    c0034f55 <_dtoa_r+0xe15>
c0034f27:	90                   	nop
c0034f28:	e8 03 0e 00 00       	call   c0035d30 <__multadd>
c0034f2d:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034f34:	00 
c0034f35:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034f3c:	00 
c0034f3d:	89 34 24             	mov    %esi,(%esp)
c0034f40:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034f43:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0034f46:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034f4a:	e8 e1 0d 00 00       	call   c0035d30 <__multadd>
c0034f4f:	89 45 ac             	mov    %eax,-0x54(%ebp)
c0034f52:	83 c3 01             	add    $0x1,%ebx
c0034f55:	8b 55 b0             	mov    -0x50(%ebp),%edx
c0034f58:	8d 43 ff             	lea    -0x1(%ebx),%eax
c0034f5b:	89 45 98             	mov    %eax,-0x68(%ebp)
c0034f5e:	89 f8                	mov    %edi,%eax
c0034f60:	e8 0b f0 ff ff       	call   c0033f70 <quorem>
c0034f65:	89 3c 24             	mov    %edi,(%esp)
c0034f68:	8d 48 30             	lea    0x30(%eax),%ecx
c0034f6b:	89 4d a0             	mov    %ecx,-0x60(%ebp)
c0034f6e:	8b 4d b4             	mov    -0x4c(%ebp),%ecx
c0034f71:	89 45 94             	mov    %eax,-0x6c(%ebp)
c0034f74:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c0034f78:	e8 b3 14 00 00       	call   c0036430 <__mcmp>
c0034f7d:	8b 4d ac             	mov    -0x54(%ebp),%ecx
c0034f80:	89 34 24             	mov    %esi,(%esp)
c0034f83:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c0034f87:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0034f8a:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034f8d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034f91:	e8 ea 14 00 00       	call   c0036480 <__mdiff>
c0034f96:	8b 48 0c             	mov    0xc(%eax),%ecx
c0034f99:	89 c2                	mov    %eax,%edx
c0034f9b:	85 c9                	test   %ecx,%ecx
c0034f9d:	0f 85 c5 00 00 00    	jne    c0035068 <_dtoa_r+0xf28>
c0034fa3:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034fa7:	89 3c 24             	mov    %edi,(%esp)
c0034faa:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0034fad:	e8 7e 14 00 00       	call   c0036430 <__mcmp>
c0034fb2:	8b 55 a8             	mov    -0x58(%ebp),%edx
c0034fb5:	89 54 24 04          	mov    %edx,0x4(%esp)
c0034fb9:	89 34 24             	mov    %esi,(%esp)
c0034fbc:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0034fbf:	e8 4c 0d 00 00       	call   c0035d10 <_Bfree>
c0034fc4:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034fc7:	89 c1                	mov    %eax,%ecx
c0034fc9:	0b 4d 14             	or     0x14(%ebp),%ecx
c0034fcc:	75 0b                	jne    c0034fd9 <_dtoa_r+0xe99>
c0034fce:	8b 55 9c             	mov    -0x64(%ebp),%edx
c0034fd1:	85 d2                	test   %edx,%edx
c0034fd3:	0f 84 fb 02 00 00    	je     c00352d4 <_dtoa_r+0x1194>
c0034fd9:	8b 55 c0             	mov    -0x40(%ebp),%edx
c0034fdc:	85 d2                	test   %edx,%edx
c0034fde:	0f 88 7f 01 00 00    	js     c0035163 <_dtoa_r+0x1023>
c0034fe4:	8b 4d c0             	mov    -0x40(%ebp),%ecx
c0034fe7:	0b 4d 14             	or     0x14(%ebp),%ecx
c0034fea:	75 0b                	jne    c0034ff7 <_dtoa_r+0xeb7>
c0034fec:	8b 4d 9c             	mov    -0x64(%ebp),%ecx
c0034fef:	85 c9                	test   %ecx,%ecx
c0034ff1:	0f 84 6c 01 00 00    	je     c0035163 <_dtoa_r+0x1023>
c0034ff7:	85 c0                	test   %eax,%eax
c0034ff9:	0f 8f 82 02 00 00    	jg     c0035281 <_dtoa_r+0x1141>
c0034fff:	0f b6 45 a0          	movzbl -0x60(%ebp),%eax
c0035003:	89 da                	mov    %ebx,%edx
c0035005:	3b 5d 90             	cmp    -0x70(%ebp),%ebx
c0035008:	88 43 ff             	mov    %al,-0x1(%ebx)
c003500b:	0f 84 8d 02 00 00    	je     c003529e <_dtoa_r+0x115e>
c0035011:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0035015:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c003501c:	00 
c003501d:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0035024:	00 
c0035025:	89 34 24             	mov    %esi,(%esp)
c0035028:	e8 03 0d 00 00       	call   c0035d30 <__multadd>
c003502d:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0035034:	00 
c0035035:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c003503c:	00 
c003503d:	89 34 24             	mov    %esi,(%esp)
c0035040:	89 c7                	mov    %eax,%edi
c0035042:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0035045:	39 45 b4             	cmp    %eax,-0x4c(%ebp)
c0035048:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c003504b:	89 44 24 04          	mov    %eax,0x4(%esp)
c003504f:	0f 85 d3 fe ff ff    	jne    c0034f28 <_dtoa_r+0xde8>
c0035055:	e8 d6 0c 00 00       	call   c0035d30 <__multadd>
c003505a:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c003505d:	89 45 ac             	mov    %eax,-0x54(%ebp)
c0035060:	e9 ed fe ff ff       	jmp    c0034f52 <_dtoa_r+0xe12>
c0035065:	8d 76 00             	lea    0x0(%esi),%esi
c0035068:	b8 01 00 00 00       	mov    $0x1,%eax
c003506d:	e9 43 ff ff ff       	jmp    c0034fb5 <_dtoa_r+0xe75>
c0035072:	c7 45 98 00 00 00 00 	movl   $0x0,-0x68(%ebp)
c0035079:	e9 d2 f2 ff ff       	jmp    c0034350 <_dtoa_r+0x210>
c003507e:	0f 85 87 f6 ff ff    	jne    c003470b <_dtoa_r+0x5cb>
c0035084:	dd d8                	fstp   %st(0)
c0035086:	dd d8                	fstp   %st(0)
c0035088:	dd d8                	fstp   %st(0)
c003508a:	89 fb                	mov    %edi,%ebx
c003508c:	8b 7d c0             	mov    -0x40(%ebp),%edi
c003508f:	e9 fc f8 ff ff       	jmp    c0034990 <_dtoa_r+0x850>
c0035094:	89 c2                	mov    %eax,%edx
c0035096:	2b 55 b0             	sub    -0x50(%ebp),%edx
c0035099:	89 45 b0             	mov    %eax,-0x50(%ebp)
c003509c:	01 55 94             	add    %edx,-0x6c(%ebp)
c003509f:	31 d2                	xor    %edx,%edx
c00350a1:	e9 b8 f9 ff ff       	jmp    c0034a5e <_dtoa_r+0x91e>
c00350a6:	8b 45 a8             	mov    -0x58(%ebp),%eax
c00350a9:	85 c0                	test   %eax,%eax
c00350ab:	0f 84 f3 f9 ff ff    	je     c0034aa4 <_dtoa_r+0x964>
c00350b1:	8b 45 90             	mov    -0x70(%ebp),%eax
c00350b4:	85 c0                	test   %eax,%eax
c00350b6:	0f 8e c4 fb ff ff    	jle    c0034c80 <_dtoa_r+0xb40>
c00350bc:	d8 0d 18 9a 03 c0    	fmuls  0xc0039a18
c00350c2:	83 c1 01             	add    $0x1,%ecx
c00350c5:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c00350c8:	8b 5d b8             	mov    -0x48(%ebp),%ebx
c00350cb:	89 c1                	mov    %eax,%ecx
c00350cd:	83 eb 01             	sub    $0x1,%ebx
c00350d0:	db 45 d4             	fildl  -0x2c(%ebp)
c00350d3:	d8 c9                	fmul   %st(1),%st
c00350d5:	89 5d b4             	mov    %ebx,-0x4c(%ebp)
c00350d8:	d8 05 1c 9a 03 c0    	fadds  0xc0039a1c
c00350de:	dd 5d c0             	fstpl  -0x40(%ebp)
c00350e1:	81 6d c4 00 00 40 03 	subl   $0x3400000,-0x3c(%ebp)
c00350e8:	e9 53 f4 ff ff       	jmp    c0034540 <_dtoa_r+0x400>
c00350ed:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c00350f0:	c6 03 30             	movb   $0x30,(%ebx)
c00350f3:	83 c0 01             	add    $0x1,%eax
c00350f6:	89 45 b8             	mov    %eax,-0x48(%ebp)
c00350f9:	b8 31 00 00 00       	mov    $0x31,%eax
c00350fe:	88 02                	mov    %al,(%edx)
c0035100:	e9 8b f8 ff ff       	jmp    c0034990 <_dtoa_r+0x850>
c0035105:	d9 c0                	fld    %st(0)
c0035107:	b9 02 00 00 00       	mov    $0x2,%ecx
c003510c:	e9 f2 f3 ff ff       	jmp    c0034503 <_dtoa_r+0x3c3>
c0035111:	de e2                	fsubp  %st,%st(2)
c0035113:	d9 c9                	fxch   %st(1)
c0035115:	df e9                	fucomip %st(1),%st
c0035117:	dd d8                	fstp   %st(0)
c0035119:	0f 86 69 fb ff ff    	jbe    c0034c88 <_dtoa_r+0xb48>
c003511f:	dd d8                	fstp   %st(0)
c0035121:	eb 07                	jmp    c003512a <_dtoa_r+0xfea>
c0035123:	90                   	nop
c0035124:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035128:	89 c2                	mov    %eax,%edx
c003512a:	80 7a ff 30          	cmpb   $0x30,-0x1(%edx)
c003512e:	8d 42 ff             	lea    -0x1(%edx),%eax
c0035131:	74 f5                	je     c0035128 <_dtoa_r+0xfe8>
c0035133:	e9 d9 f4 ff ff       	jmp    c0034611 <_dtoa_r+0x4d1>
c0035138:	c6 07 31             	movb   $0x31,(%edi)
c003513b:	89 fb                	mov    %edi,%ebx
c003513d:	89 d7                	mov    %edx,%edi
c003513f:	83 45 b8 01          	addl   $0x1,-0x48(%ebp)
c0035143:	e9 1a f8 ff ff       	jmp    c0034962 <_dtoa_r+0x822>
c0035148:	8b 55 8c             	mov    -0x74(%ebp),%edx
c003514b:	85 d2                	test   %edx,%edx
c003514d:	0f 84 1b 01 00 00    	je     c003526e <_dtoa_r+0x112e>
c0035153:	05 33 04 00 00       	add    $0x433,%eax
c0035158:	8b 55 b0             	mov    -0x50(%ebp),%edx
c003515b:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c003515e:	e9 0b f9 ff ff       	jmp    c0034a6e <_dtoa_r+0x92e>
c0035163:	85 c0                	test   %eax,%eax
c0035165:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c0035168:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c003516b:	7e 45                	jle    c00351b2 <_dtoa_r+0x1072>
c003516d:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0035170:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
c0035177:	00 
c0035178:	89 34 24             	mov    %esi,(%esp)
c003517b:	89 44 24 04          	mov    %eax,0x4(%esp)
c003517f:	e8 8c 11 00 00       	call   c0036310 <__lshift>
c0035184:	8b 5d b0             	mov    -0x50(%ebp),%ebx
c0035187:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c003518b:	89 04 24             	mov    %eax,(%esp)
c003518e:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0035191:	e8 9a 12 00 00       	call   c0036430 <__mcmp>
c0035196:	83 f8 00             	cmp    $0x0,%eax
c0035199:	0f 8e 5b 01 00 00    	jle    c00352fa <_dtoa_r+0x11ba>
c003519f:	83 7d a0 39          	cmpl   $0x39,-0x60(%ebp)
c00351a3:	0f 84 0c 01 00 00    	je     c00352b5 <_dtoa_r+0x1175>
c00351a9:	8b 45 94             	mov    -0x6c(%ebp),%eax
c00351ac:	83 c0 31             	add    $0x31,%eax
c00351af:	89 45 a0             	mov    %eax,-0x60(%ebp)
c00351b2:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c00351b5:	0f b6 45 a0          	movzbl -0x60(%ebp),%eax
c00351b9:	89 cb                	mov    %ecx,%ebx
c00351bb:	88 03                	mov    %al,(%ebx)
c00351bd:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c00351c0:	89 fb                	mov    %edi,%ebx
c00351c2:	8d 79 01             	lea    0x1(%ecx),%edi
c00351c5:	89 45 c0             	mov    %eax,-0x40(%ebp)
c00351c8:	8b 45 ac             	mov    -0x54(%ebp),%eax
c00351cb:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c00351ce:	e9 8f f7 ff ff       	jmp    c0034962 <_dtoa_r+0x822>
c00351d3:	dd d8                	fstp   %st(0)
c00351d5:	dd d8                	fstp   %st(0)
c00351d7:	dd d8                	fstp   %st(0)
c00351d9:	eb 0d                	jmp    c00351e8 <_dtoa_r+0x10a8>
c00351db:	90                   	nop
c00351dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00351e0:	dd d8                	fstp   %st(0)
c00351e2:	dd d8                	fstp   %st(0)
c00351e4:	dd d8                	fstp   %st(0)
c00351e6:	dd d8                	fstp   %st(0)
c00351e8:	89 fb                	mov    %edi,%ebx
c00351ea:	89 d7                	mov    %edx,%edi
c00351ec:	e9 8d f5 ff ff       	jmp    c003477e <_dtoa_r+0x63e>
c00351f1:	29 cb                	sub    %ecx,%ebx
c00351f3:	31 c0                	xor    %eax,%eax
c00351f5:	e9 74 f8 ff ff       	jmp    c0034a6e <_dtoa_r+0x92e>
c00351fa:	75 0e                	jne    c003520a <_dtoa_r+0x10ca>
c00351fc:	f6 45 a0 01          	testb  $0x1,-0x60(%ebp)
c0035200:	74 08                	je     c003520a <_dtoa_r+0x10ca>
c0035202:	e9 b2 f9 ff ff       	jmp    c0034bb9 <_dtoa_r+0xa79>
c0035207:	90                   	nop
c0035208:	89 c2                	mov    %eax,%edx
c003520a:	80 7a ff 30          	cmpb   $0x30,-0x1(%edx)
c003520e:	8d 42 ff             	lea    -0x1(%edx),%eax
c0035211:	74 f5                	je     c0035208 <_dtoa_r+0x10c8>
c0035213:	89 fb                	mov    %edi,%ebx
c0035215:	89 d7                	mov    %edx,%edi
c0035217:	e9 46 f7 ff ff       	jmp    c0034962 <_dtoa_r+0x822>
c003521c:	8b 40 04             	mov    0x4(%eax),%eax
c003521f:	89 34 24             	mov    %esi,(%esp)
c0035222:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035226:	e8 45 0a 00 00       	call   c0035c70 <_Balloc>
c003522b:	8b 4d b4             	mov    -0x4c(%ebp),%ecx
c003522e:	89 c3                	mov    %eax,%ebx
c0035230:	8b 41 10             	mov    0x10(%ecx),%eax
c0035233:	8d 04 85 08 00 00 00 	lea    0x8(,%eax,4),%eax
c003523a:	89 44 24 08          	mov    %eax,0x8(%esp)
c003523e:	89 c8                	mov    %ecx,%eax
c0035240:	83 c0 0c             	add    $0xc,%eax
c0035243:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035247:	8d 43 0c             	lea    0xc(%ebx),%eax
c003524a:	89 04 24             	mov    %eax,(%esp)
c003524d:	e8 62 cc ff ff       	call   c0031eb4 <memcpy>
c0035252:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
c0035259:	00 
c003525a:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c003525e:	89 34 24             	mov    %esi,(%esp)
c0035261:	e8 aa 10 00 00       	call   c0036310 <__lshift>
c0035266:	89 45 ac             	mov    %eax,-0x54(%ebp)
c0035269:	e9 9d fc ff ff       	jmp    c0034f0b <_dtoa_r+0xdcb>
c003526e:	b8 36 00 00 00       	mov    $0x36,%eax
c0035273:	8b 55 b0             	mov    -0x50(%ebp),%edx
c0035276:	2b 45 e0             	sub    -0x20(%ebp),%eax
c0035279:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c003527c:	e9 ed f7 ff ff       	jmp    c0034a6e <_dtoa_r+0x92e>
c0035281:	83 7d a0 39          	cmpl   $0x39,-0x60(%ebp)
c0035285:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c0035288:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c003528b:	74 28                	je     c00352b5 <_dtoa_r+0x1175>
c003528d:	0f b6 45 a0          	movzbl -0x60(%ebp),%eax
c0035291:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c0035294:	83 c0 01             	add    $0x1,%eax
c0035297:	89 cb                	mov    %ecx,%ebx
c0035299:	e9 1d ff ff ff       	jmp    c00351bb <_dtoa_r+0x107b>
c003529e:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c00352a1:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c00352a4:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c00352a7:	89 45 c0             	mov    %eax,-0x40(%ebp)
c00352aa:	8b 45 ac             	mov    -0x54(%ebp),%eax
c00352ad:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c00352b0:	e9 cc f8 ff ff       	jmp    c0034b81 <_dtoa_r+0xa41>
c00352b5:	8b 45 98             	mov    -0x68(%ebp),%eax
c00352b8:	b9 39 00 00 00       	mov    $0x39,%ecx
c00352bd:	8d 50 01             	lea    0x1(%eax),%edx
c00352c0:	c6 00 39             	movb   $0x39,(%eax)
c00352c3:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c00352c6:	89 45 c0             	mov    %eax,-0x40(%ebp)
c00352c9:	8b 45 ac             	mov    -0x54(%ebp),%eax
c00352cc:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c00352cf:	e9 fa f8 ff ff       	jmp    c0034bce <_dtoa_r+0xa8e>
c00352d4:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c00352d7:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c00352da:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c00352dd:	83 fb 39             	cmp    $0x39,%ebx
c00352e0:	74 d3                	je     c00352b5 <_dtoa_r+0x1175>
c00352e2:	8b 4d c0             	mov    -0x40(%ebp),%ecx
c00352e5:	8b 45 94             	mov    -0x6c(%ebp),%eax
c00352e8:	83 c0 31             	add    $0x31,%eax
c00352eb:	85 c9                	test   %ecx,%ecx
c00352ed:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c00352f0:	0f 4e c3             	cmovle %ebx,%eax
c00352f3:	89 cb                	mov    %ecx,%ebx
c00352f5:	e9 c1 fe ff ff       	jmp    c00351bb <_dtoa_r+0x107b>
c00352fa:	0f 85 b2 fe ff ff    	jne    c00351b2 <_dtoa_r+0x1072>
c0035300:	f6 45 a0 01          	testb  $0x1,-0x60(%ebp)
c0035304:	0f 84 a8 fe ff ff    	je     c00351b2 <_dtoa_r+0x1072>
c003530a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035310:	e9 8a fe ff ff       	jmp    c003519f <_dtoa_r+0x105f>
c0035315:	0f 85 c7 f3 ff ff    	jne    c00346e2 <_dtoa_r+0x5a2>
c003531b:	dd d8                	fstp   %st(0)
c003531d:	dd d8                	fstp   %st(0)
c003531f:	90                   	nop
c0035320:	e9 65 fd ff ff       	jmp    c003508a <_dtoa_r+0xf4a>
c0035325:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0035328:	e9 dd f5 ff ff       	jmp    c003490a <_dtoa_r+0x7ca>
c003532d:	8d 76 00             	lea    0x0(%esi),%esi
c0035330:	0f 84 7a f5 ff ff    	je     c00348b0 <_dtoa_r+0x770>
c0035336:	b8 3c 00 00 00       	mov    $0x3c,%eax
c003533b:	29 d0                	sub    %edx,%eax
c003533d:	e9 ab f8 ff ff       	jmp    c0034bed <_dtoa_r+0xaad>
c0035342:	b8 01 00 00 00       	mov    $0x1,%eax
c0035347:	e9 d9 ef ff ff       	jmp    c0034325 <_dtoa_r+0x1e5>
c003534c:	31 d2                	xor    %edx,%edx
c003534e:	e9 36 f1 ff ff       	jmp    c0034489 <_dtoa_r+0x349>
c0035353:	66 90                	xchg   %ax,%ax
c0035355:	66 90                	xchg   %ax,%ax
c0035357:	66 90                	xchg   %ax,%ax
c0035359:	66 90                	xchg   %ax,%ax
c003535b:	66 90                	xchg   %ax,%ax
c003535d:	66 90                	xchg   %ax,%ax
c003535f:	90                   	nop

c0035360 <_setlocale_r>:
c0035360:	55                   	push   %ebp
c0035361:	89 e5                	mov    %esp,%ebp
c0035363:	53                   	push   %ebx
c0035364:	83 ec 14             	sub    $0x14,%esp
c0035367:	8b 5d 10             	mov    0x10(%ebp),%ebx
c003536a:	85 db                	test   %ebx,%ebx
c003536c:	74 14                	je     c0035382 <_setlocale_r+0x22>
c003536e:	c7 44 24 04 40 9a 03 	movl   $0xc0039a40,0x4(%esp)
c0035375:	c0 
c0035376:	89 1c 24             	mov    %ebx,(%esp)
c0035379:	e8 82 17 00 00       	call   c0036b00 <strcmp>
c003537e:	85 c0                	test   %eax,%eax
c0035380:	75 0e                	jne    c0035390 <_setlocale_r+0x30>
c0035382:	83 c4 14             	add    $0x14,%esp
c0035385:	b8 3c 98 03 c0       	mov    $0xc003983c,%eax
c003538a:	5b                   	pop    %ebx
c003538b:	5d                   	pop    %ebp
c003538c:	c3                   	ret    
c003538d:	8d 76 00             	lea    0x0(%esi),%esi
c0035390:	c7 44 24 04 3c 98 03 	movl   $0xc003983c,0x4(%esp)
c0035397:	c0 
c0035398:	89 1c 24             	mov    %ebx,(%esp)
c003539b:	e8 60 17 00 00       	call   c0036b00 <strcmp>
c00353a0:	85 c0                	test   %eax,%eax
c00353a2:	74 de                	je     c0035382 <_setlocale_r+0x22>
c00353a4:	89 1c 24             	mov    %ebx,(%esp)
c00353a7:	c7 44 24 04 76 98 03 	movl   $0xc0039876,0x4(%esp)
c00353ae:	c0 
c00353af:	e8 4c 17 00 00       	call   c0036b00 <strcmp>
c00353b4:	89 c2                	mov    %eax,%edx
c00353b6:	31 c0                	xor    %eax,%eax
c00353b8:	85 d2                	test   %edx,%edx
c00353ba:	ba 3c 98 03 c0       	mov    $0xc003983c,%edx
c00353bf:	0f 44 c2             	cmove  %edx,%eax
c00353c2:	83 c4 14             	add    $0x14,%esp
c00353c5:	5b                   	pop    %ebx
c00353c6:	5d                   	pop    %ebp
c00353c7:	c3                   	ret    
c00353c8:	90                   	nop
c00353c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c00353d0 <__locale_charset>:
c00353d0:	55                   	push   %ebp
c00353d1:	b8 c0 d4 03 c0       	mov    $0xc003d4c0,%eax
c00353d6:	89 e5                	mov    %esp,%ebp
c00353d8:	5d                   	pop    %ebp
c00353d9:	c3                   	ret    
c00353da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c00353e0 <__locale_mb_cur_max>:
c00353e0:	55                   	push   %ebp
c00353e1:	a1 18 d5 03 c0       	mov    0xc003d518,%eax
c00353e6:	89 e5                	mov    %esp,%ebp
c00353e8:	5d                   	pop    %ebp
c00353e9:	c3                   	ret    
c00353ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c00353f0 <__locale_msgcharset>:
c00353f0:	55                   	push   %ebp
c00353f1:	b8 a0 d4 03 c0       	mov    $0xc003d4a0,%eax
c00353f6:	89 e5                	mov    %esp,%ebp
c00353f8:	5d                   	pop    %ebp
c00353f9:	c3                   	ret    
c00353fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0035400 <__locale_cjk_lang>:
c0035400:	55                   	push   %ebp
c0035401:	31 c0                	xor    %eax,%eax
c0035403:	89 e5                	mov    %esp,%ebp
c0035405:	5d                   	pop    %ebp
c0035406:	c3                   	ret    
c0035407:	89 f6                	mov    %esi,%esi
c0035409:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0035410 <_localeconv_r>:
c0035410:	55                   	push   %ebp
c0035411:	b8 e0 d4 03 c0       	mov    $0xc003d4e0,%eax
c0035416:	89 e5                	mov    %esp,%ebp
c0035418:	5d                   	pop    %ebp
c0035419:	c3                   	ret    
c003541a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0035420 <setlocale>:
c0035420:	55                   	push   %ebp
c0035421:	89 e5                	mov    %esp,%ebp
c0035423:	83 ec 18             	sub    $0x18,%esp
c0035426:	e8 35 cc ff ff       	call   c0032060 <__getreent>
c003542b:	8b 55 0c             	mov    0xc(%ebp),%edx
c003542e:	89 54 24 08          	mov    %edx,0x8(%esp)
c0035432:	8b 55 08             	mov    0x8(%ebp),%edx
c0035435:	89 04 24             	mov    %eax,(%esp)
c0035438:	89 54 24 04          	mov    %edx,0x4(%esp)
c003543c:	e8 1f ff ff ff       	call   c0035360 <_setlocale_r>
c0035441:	c9                   	leave  
c0035442:	c3                   	ret    
c0035443:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035449:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0035450 <localeconv>:
c0035450:	55                   	push   %ebp
c0035451:	89 e5                	mov    %esp,%ebp
c0035453:	83 ec 08             	sub    $0x8,%esp
c0035456:	e8 05 cc ff ff       	call   c0032060 <__getreent>
c003545b:	b8 e0 d4 03 c0       	mov    $0xc003d4e0,%eax
c0035460:	c9                   	leave  
c0035461:	c3                   	ret    
c0035462:	66 90                	xchg   %ax,%ax
c0035464:	66 90                	xchg   %ax,%ax
c0035466:	66 90                	xchg   %ax,%ax
c0035468:	66 90                	xchg   %ax,%ax
c003546a:	66 90                	xchg   %ax,%ax
c003546c:	66 90                	xchg   %ax,%ax
c003546e:	66 90                	xchg   %ax,%ax

c0035470 <_malloc_r>:
c0035470:	55                   	push   %ebp
c0035471:	89 e5                	mov    %esp,%ebp
c0035473:	57                   	push   %edi
c0035474:	56                   	push   %esi
c0035475:	53                   	push   %ebx
c0035476:	83 ec 2c             	sub    $0x2c,%esp
c0035479:	8b 45 0c             	mov    0xc(%ebp),%eax
c003547c:	8d 50 0b             	lea    0xb(%eax),%edx
c003547f:	83 fa 16             	cmp    $0x16,%edx
c0035482:	76 6c                	jbe    c00354f0 <_malloc_r+0x80>
c0035484:	89 d7                	mov    %edx,%edi
c0035486:	83 e7 f8             	and    $0xfffffff8,%edi
c0035489:	89 fe                	mov    %edi,%esi
c003548b:	c1 ee 1f             	shr    $0x1f,%esi
c003548e:	39 c7                	cmp    %eax,%edi
c0035490:	8b 45 08             	mov    0x8(%ebp),%eax
c0035493:	89 f2                	mov    %esi,%edx
c0035495:	72 67                	jb     c00354fe <_malloc_r+0x8e>
c0035497:	84 d2                	test   %dl,%dl
c0035499:	75 63                	jne    c00354fe <_malloc_r+0x8e>
c003549b:	89 04 24             	mov    %eax,(%esp)
c003549e:	e8 ad 07 00 00       	call   c0035c50 <__malloc_lock>
c00354a3:	81 ff f7 01 00 00    	cmp    $0x1f7,%edi
c00354a9:	77 65                	ja     c0035510 <_malloc_r+0xa0>
c00354ab:	89 fa                	mov    %edi,%edx
c00354ad:	c1 ea 03             	shr    $0x3,%edx
c00354b0:	8d 04 d5 40 d5 03 c0 	lea    -0x3ffc2ac0(,%edx,8),%eax
c00354b7:	8b 58 0c             	mov    0xc(%eax),%ebx
c00354ba:	39 c3                	cmp    %eax,%ebx
c00354bc:	0f 84 3e 05 00 00    	je     c0035a00 <_malloc_r+0x590>
c00354c2:	8b 43 04             	mov    0x4(%ebx),%eax
c00354c5:	83 e0 fc             	and    $0xfffffffc,%eax
c00354c8:	8b 53 0c             	mov    0xc(%ebx),%edx
c00354cb:	8b 4b 08             	mov    0x8(%ebx),%ecx
c00354ce:	89 51 0c             	mov    %edx,0xc(%ecx)
c00354d1:	89 4a 08             	mov    %ecx,0x8(%edx)
c00354d4:	83 4c 03 04 01       	orl    $0x1,0x4(%ebx,%eax,1)
c00354d9:	8b 45 08             	mov    0x8(%ebp),%eax
c00354dc:	89 04 24             	mov    %eax,(%esp)
c00354df:	e8 7c 07 00 00       	call   c0035c60 <__malloc_unlock>
c00354e4:	8d 43 08             	lea    0x8(%ebx),%eax
c00354e7:	83 c4 2c             	add    $0x2c,%esp
c00354ea:	5b                   	pop    %ebx
c00354eb:	5e                   	pop    %esi
c00354ec:	5f                   	pop    %edi
c00354ed:	5d                   	pop    %ebp
c00354ee:	c3                   	ret    
c00354ef:	90                   	nop
c00354f0:	bf 10 00 00 00       	mov    $0x10,%edi
c00354f5:	31 d2                	xor    %edx,%edx
c00354f7:	39 c7                	cmp    %eax,%edi
c00354f9:	8b 45 08             	mov    0x8(%ebp),%eax
c00354fc:	73 99                	jae    c0035497 <_malloc_r+0x27>
c00354fe:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0035504:	83 c4 2c             	add    $0x2c,%esp
c0035507:	31 c0                	xor    %eax,%eax
c0035509:	5b                   	pop    %ebx
c003550a:	5e                   	pop    %esi
c003550b:	5f                   	pop    %edi
c003550c:	5d                   	pop    %ebp
c003550d:	c3                   	ret    
c003550e:	66 90                	xchg   %ax,%ax
c0035510:	89 fe                	mov    %edi,%esi
c0035512:	c1 ee 09             	shr    $0x9,%esi
c0035515:	85 f6                	test   %esi,%esi
c0035517:	0f 84 ab 01 00 00    	je     c00356c8 <_malloc_r+0x258>
c003551d:	83 fe 04             	cmp    $0x4,%esi
c0035520:	0f 87 8a 03 00 00    	ja     c00358b0 <_malloc_r+0x440>
c0035526:	89 fe                	mov    %edi,%esi
c0035528:	c1 ee 06             	shr    $0x6,%esi
c003552b:	83 c6 38             	add    $0x38,%esi
c003552e:	8d 04 36             	lea    (%esi,%esi,1),%eax
c0035531:	8d 0c 85 40 d5 03 c0 	lea    -0x3ffc2ac0(,%eax,4),%ecx
c0035538:	8b 59 0c             	mov    0xc(%ecx),%ebx
c003553b:	39 d9                	cmp    %ebx,%ecx
c003553d:	75 18                	jne    c0035557 <_malloc_r+0xe7>
c003553f:	eb 28                	jmp    c0035569 <_malloc_r+0xf9>
c0035541:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0035548:	85 d2                	test   %edx,%edx
c003554a:	0f 89 78 ff ff ff    	jns    c00354c8 <_malloc_r+0x58>
c0035550:	8b 5b 0c             	mov    0xc(%ebx),%ebx
c0035553:	39 d9                	cmp    %ebx,%ecx
c0035555:	74 12                	je     c0035569 <_malloc_r+0xf9>
c0035557:	8b 43 04             	mov    0x4(%ebx),%eax
c003555a:	83 e0 fc             	and    $0xfffffffc,%eax
c003555d:	89 c2                	mov    %eax,%edx
c003555f:	29 fa                	sub    %edi,%edx
c0035561:	83 fa 0f             	cmp    $0xf,%edx
c0035564:	7e e2                	jle    c0035548 <_malloc_r+0xd8>
c0035566:	83 ee 01             	sub    $0x1,%esi
c0035569:	8d 46 01             	lea    0x1(%esi),%eax
c003556c:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c003556f:	8b 1d 50 d5 03 c0    	mov    0xc003d550,%ebx
c0035575:	a1 44 d5 03 c0       	mov    0xc003d544,%eax
c003557a:	81 fb 48 d5 03 c0    	cmp    $0xc003d548,%ebx
c0035580:	74 6b                	je     c00355ed <_malloc_r+0x17d>
c0035582:	8b 73 04             	mov    0x4(%ebx),%esi
c0035585:	83 e6 fc             	and    $0xfffffffc,%esi
c0035588:	89 f0                	mov    %esi,%eax
c003558a:	29 f8                	sub    %edi,%eax
c003558c:	83 f8 0f             	cmp    $0xf,%eax
c003558f:	0f 8f a3 03 00 00    	jg     c0035938 <_malloc_r+0x4c8>
c0035595:	85 c0                	test   %eax,%eax
c0035597:	c7 05 54 d5 03 c0 48 	movl   $0xc003d548,0xc003d554
c003559e:	d5 03 c0 
c00355a1:	c7 05 50 d5 03 c0 48 	movl   $0xc003d548,0xc003d550
c00355a8:	d5 03 c0 
c00355ab:	0f 89 27 01 00 00    	jns    c00356d8 <_malloc_r+0x268>
c00355b1:	81 fe ff 01 00 00    	cmp    $0x1ff,%esi
c00355b7:	0f 87 1b 03 00 00    	ja     c00358d8 <_malloc_r+0x468>
c00355bd:	c1 ee 03             	shr    $0x3,%esi
c00355c0:	b8 01 00 00 00       	mov    $0x1,%eax
c00355c5:	89 f1                	mov    %esi,%ecx
c00355c7:	8d 14 f5 40 d5 03 c0 	lea    -0x3ffc2ac0(,%esi,8),%edx
c00355ce:	c1 f9 02             	sar    $0x2,%ecx
c00355d1:	d3 e0                	shl    %cl,%eax
c00355d3:	8b 4a 08             	mov    0x8(%edx),%ecx
c00355d6:	0b 05 44 d5 03 c0    	or     0xc003d544,%eax
c00355dc:	89 53 0c             	mov    %edx,0xc(%ebx)
c00355df:	89 4b 08             	mov    %ecx,0x8(%ebx)
c00355e2:	a3 44 d5 03 c0       	mov    %eax,0xc003d544
c00355e7:	89 5a 08             	mov    %ebx,0x8(%edx)
c00355ea:	89 59 0c             	mov    %ebx,0xc(%ecx)
c00355ed:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c00355f0:	be 01 00 00 00       	mov    $0x1,%esi
c00355f5:	c1 f9 02             	sar    $0x2,%ecx
c00355f8:	d3 e6                	shl    %cl,%esi
c00355fa:	39 c6                	cmp    %eax,%esi
c00355fc:	0f 87 f6 00 00 00    	ja     c00356f8 <_malloc_r+0x288>
c0035602:	85 f0                	test   %esi,%eax
c0035604:	0f 85 76 03 00 00    	jne    c0035980 <_malloc_r+0x510>
c003560a:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c003560d:	01 f6                	add    %esi,%esi
c003560f:	83 e2 fc             	and    $0xfffffffc,%edx
c0035612:	85 f0                	test   %esi,%eax
c0035614:	8d 4a 04             	lea    0x4(%edx),%ecx
c0035617:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c003561a:	0f 85 60 03 00 00    	jne    c0035980 <_malloc_r+0x510>
c0035620:	89 ca                	mov    %ecx,%edx
c0035622:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035628:	01 f6                	add    %esi,%esi
c003562a:	83 c2 04             	add    $0x4,%edx
c003562d:	85 f0                	test   %esi,%eax
c003562f:	74 f7                	je     c0035628 <_malloc_r+0x1b8>
c0035631:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c0035634:	89 75 dc             	mov    %esi,-0x24(%ebp)
c0035637:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c003563a:	8d 34 c5 40 d5 03 c0 	lea    -0x3ffc2ac0(,%eax,8),%esi
c0035641:	89 f1                	mov    %esi,%ecx
c0035643:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0035646:	8b 59 0c             	mov    0xc(%ecx),%ebx
c0035649:	39 d9                	cmp    %ebx,%ecx
c003564b:	75 1e                	jne    c003566b <_malloc_r+0x1fb>
c003564d:	e9 36 03 00 00       	jmp    c0035988 <_malloc_r+0x518>
c0035652:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035658:	85 d2                	test   %edx,%edx
c003565a:	0f 89 c0 03 00 00    	jns    c0035a20 <_malloc_r+0x5b0>
c0035660:	8b 5b 0c             	mov    0xc(%ebx),%ebx
c0035663:	39 d9                	cmp    %ebx,%ecx
c0035665:	0f 84 1d 03 00 00    	je     c0035988 <_malloc_r+0x518>
c003566b:	8b 43 04             	mov    0x4(%ebx),%eax
c003566e:	83 e0 fc             	and    $0xfffffffc,%eax
c0035671:	89 c2                	mov    %eax,%edx
c0035673:	29 fa                	sub    %edi,%edx
c0035675:	83 fa 0f             	cmp    $0xf,%edx
c0035678:	7e de                	jle    c0035658 <_malloc_r+0x1e8>
c003567a:	8b 4b 0c             	mov    0xc(%ebx),%ecx
c003567d:	8d 04 3b             	lea    (%ebx,%edi,1),%eax
c0035680:	83 cf 01             	or     $0x1,%edi
c0035683:	8b 73 08             	mov    0x8(%ebx),%esi
c0035686:	89 7b 04             	mov    %edi,0x4(%ebx)
c0035689:	89 4e 0c             	mov    %ecx,0xc(%esi)
c003568c:	89 71 08             	mov    %esi,0x8(%ecx)
c003568f:	89 d1                	mov    %edx,%ecx
c0035691:	83 c9 01             	or     $0x1,%ecx
c0035694:	a3 54 d5 03 c0       	mov    %eax,0xc003d554
c0035699:	a3 50 d5 03 c0       	mov    %eax,0xc003d550
c003569e:	c7 40 0c 48 d5 03 c0 	movl   $0xc003d548,0xc(%eax)
c00356a5:	c7 40 08 48 d5 03 c0 	movl   $0xc003d548,0x8(%eax)
c00356ac:	89 48 04             	mov    %ecx,0x4(%eax)
c00356af:	89 14 10             	mov    %edx,(%eax,%edx,1)
c00356b2:	8b 45 08             	mov    0x8(%ebp),%eax
c00356b5:	89 04 24             	mov    %eax,(%esp)
c00356b8:	e8 a3 05 00 00       	call   c0035c60 <__malloc_unlock>
c00356bd:	8d 43 08             	lea    0x8(%ebx),%eax
c00356c0:	e9 22 fe ff ff       	jmp    c00354e7 <_malloc_r+0x77>
c00356c5:	8d 76 00             	lea    0x0(%esi),%esi
c00356c8:	b8 7e 00 00 00       	mov    $0x7e,%eax
c00356cd:	be 3f 00 00 00       	mov    $0x3f,%esi
c00356d2:	e9 5a fe ff ff       	jmp    c0035531 <_malloc_r+0xc1>
c00356d7:	90                   	nop
c00356d8:	8b 45 08             	mov    0x8(%ebp),%eax
c00356db:	83 4c 33 04 01       	orl    $0x1,0x4(%ebx,%esi,1)
c00356e0:	89 04 24             	mov    %eax,(%esp)
c00356e3:	e8 78 05 00 00       	call   c0035c60 <__malloc_unlock>
c00356e8:	83 c4 2c             	add    $0x2c,%esp
c00356eb:	8d 43 08             	lea    0x8(%ebx),%eax
c00356ee:	5b                   	pop    %ebx
c00356ef:	5e                   	pop    %esi
c00356f0:	5f                   	pop    %edi
c00356f1:	5d                   	pop    %ebp
c00356f2:	c3                   	ret    
c00356f3:	90                   	nop
c00356f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00356f8:	8b 1d 48 d5 03 c0    	mov    0xc003d548,%ebx
c00356fe:	8b 73 04             	mov    0x4(%ebx),%esi
c0035701:	83 e6 fc             	and    $0xfffffffc,%esi
c0035704:	39 f7                	cmp    %esi,%edi
c0035706:	77 0d                	ja     c0035715 <_malloc_r+0x2a5>
c0035708:	89 f0                	mov    %esi,%eax
c003570a:	29 f8                	sub    %edi,%eax
c003570c:	83 f8 0f             	cmp    $0xf,%eax
c003570f:	0f 8f 6b 01 00 00    	jg     c0035880 <_malloc_r+0x410>
c0035715:	8b 0d 50 00 07 c0    	mov    0xc0070050,%ecx
c003571b:	8d 04 33             	lea    (%ebx,%esi,1),%eax
c003571e:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0035721:	01 f9                	add    %edi,%ecx
c0035723:	8d 81 0f 10 00 00    	lea    0x100f(%ecx),%eax
c0035729:	83 c1 10             	add    $0x10,%ecx
c003572c:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0035731:	83 3d 20 d5 03 c0 ff 	cmpl   $0xffffffff,0xc003d520
c0035738:	0f 44 c1             	cmove  %ecx,%eax
c003573b:	89 45 e0             	mov    %eax,-0x20(%ebp)
c003573e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035742:	8b 45 08             	mov    0x8(%ebp),%eax
c0035745:	89 04 24             	mov    %eax,(%esp)
c0035748:	e8 03 13 00 00       	call   c0036a50 <_sbrk_r>
c003574d:	83 f8 ff             	cmp    $0xffffffff,%eax
c0035750:	89 c1                	mov    %eax,%ecx
c0035752:	0f 84 17 03 00 00    	je     c0035a6f <_malloc_r+0x5ff>
c0035758:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
c003575b:	0f 87 02 03 00 00    	ja     c0035a63 <_malloc_r+0x5f3>
c0035761:	8b 55 e0             	mov    -0x20(%ebp),%edx
c0035764:	03 15 20 00 07 c0    	add    0xc0070020,%edx
c003576a:	39 4d e4             	cmp    %ecx,-0x1c(%ebp)
c003576d:	89 15 20 00 07 c0    	mov    %edx,0xc0070020
c0035773:	0f 84 a9 03 00 00    	je     c0035b22 <_malloc_r+0x6b2>
c0035779:	83 3d 20 d5 03 c0 ff 	cmpl   $0xffffffff,0xc003d520
c0035780:	0f 84 ca 03 00 00    	je     c0035b50 <_malloc_r+0x6e0>
c0035786:	89 c8                	mov    %ecx,%eax
c0035788:	2b 45 e4             	sub    -0x1c(%ebp),%eax
c003578b:	01 d0                	add    %edx,%eax
c003578d:	a3 20 00 07 c0       	mov    %eax,0xc0070020
c0035792:	89 c8                	mov    %ecx,%eax
c0035794:	ba 00 10 00 00       	mov    $0x1000,%edx
c0035799:	83 e0 07             	and    $0x7,%eax
c003579c:	74 0c                	je     c00357aa <_malloc_r+0x33a>
c003579e:	29 c1                	sub    %eax,%ecx
c00357a0:	ba 08 10 00 00       	mov    $0x1008,%edx
c00357a5:	8d 49 08             	lea    0x8(%ecx),%ecx
c00357a8:	29 c2                	sub    %eax,%edx
c00357aa:	8b 45 e0             	mov    -0x20(%ebp),%eax
c00357ad:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c00357b0:	01 c8                	add    %ecx,%eax
c00357b2:	25 ff 0f 00 00       	and    $0xfff,%eax
c00357b7:	29 c2                	sub    %eax,%edx
c00357b9:	8b 45 08             	mov    0x8(%ebp),%eax
c00357bc:	89 54 24 04          	mov    %edx,0x4(%esp)
c00357c0:	89 55 e0             	mov    %edx,-0x20(%ebp)
c00357c3:	89 04 24             	mov    %eax,(%esp)
c00357c6:	e8 85 12 00 00       	call   c0036a50 <_sbrk_r>
c00357cb:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c00357ce:	83 f8 ff             	cmp    $0xffffffff,%eax
c00357d1:	0f 84 6d 03 00 00    	je     c0035b44 <_malloc_r+0x6d4>
c00357d7:	8b 55 e0             	mov    -0x20(%ebp),%edx
c00357da:	29 c8                	sub    %ecx,%eax
c00357dc:	01 d0                	add    %edx,%eax
c00357de:	83 c8 01             	or     $0x1,%eax
c00357e1:	03 15 20 00 07 c0    	add    0xc0070020,%edx
c00357e7:	81 fb 40 d5 03 c0    	cmp    $0xc003d540,%ebx
c00357ed:	89 0d 48 d5 03 c0    	mov    %ecx,0xc003d548
c00357f3:	89 41 04             	mov    %eax,0x4(%ecx)
c00357f6:	89 15 20 00 07 c0    	mov    %edx,0xc0070020
c00357fc:	0f 84 f2 02 00 00    	je     c0035af4 <_malloc_r+0x684>
c0035802:	83 fe 0f             	cmp    $0xf,%esi
c0035805:	0f 86 8d 02 00 00    	jbe    c0035a98 <_malloc_r+0x628>
c003580b:	8b 43 04             	mov    0x4(%ebx),%eax
c003580e:	83 ee 0c             	sub    $0xc,%esi
c0035811:	83 e6 f8             	and    $0xfffffff8,%esi
c0035814:	83 e0 01             	and    $0x1,%eax
c0035817:	09 f0                	or     %esi,%eax
c0035819:	83 fe 0f             	cmp    $0xf,%esi
c003581c:	89 43 04             	mov    %eax,0x4(%ebx)
c003581f:	a1 48 d5 03 c0       	mov    0xc003d548,%eax
c0035824:	c7 44 33 04 05 00 00 	movl   $0x5,0x4(%ebx,%esi,1)
c003582b:	00 
c003582c:	c7 44 33 08 05 00 00 	movl   $0x5,0x8(%ebx,%esi,1)
c0035833:	00 
c0035834:	0f 87 a2 02 00 00    	ja     c0035adc <_malloc_r+0x66c>
c003583a:	3b 15 4c 00 07 c0    	cmp    0xc007004c,%edx
c0035840:	76 06                	jbe    c0035848 <_malloc_r+0x3d8>
c0035842:	89 15 4c 00 07 c0    	mov    %edx,0xc007004c
c0035848:	3b 15 48 00 07 c0    	cmp    0xc0070048,%edx
c003584e:	76 06                	jbe    c0035856 <_malloc_r+0x3e6>
c0035850:	89 15 48 00 07 c0    	mov    %edx,0xc0070048
c0035856:	8b 50 04             	mov    0x4(%eax),%edx
c0035859:	89 c3                	mov    %eax,%ebx
c003585b:	83 e2 fc             	and    $0xfffffffc,%edx
c003585e:	89 d0                	mov    %edx,%eax
c0035860:	29 f8                	sub    %edi,%eax
c0035862:	39 d7                	cmp    %edx,%edi
c0035864:	77 05                	ja     c003586b <_malloc_r+0x3fb>
c0035866:	83 f8 0f             	cmp    $0xf,%eax
c0035869:	7f 15                	jg     c0035880 <_malloc_r+0x410>
c003586b:	8b 45 08             	mov    0x8(%ebp),%eax
c003586e:	89 04 24             	mov    %eax,(%esp)
c0035871:	e8 ea 03 00 00       	call   c0035c60 <__malloc_unlock>
c0035876:	31 c0                	xor    %eax,%eax
c0035878:	e9 6a fc ff ff       	jmp    c00354e7 <_malloc_r+0x77>
c003587d:	8d 76 00             	lea    0x0(%esi),%esi
c0035880:	89 fa                	mov    %edi,%edx
c0035882:	83 c8 01             	or     $0x1,%eax
c0035885:	83 ca 01             	or     $0x1,%edx
c0035888:	89 53 04             	mov    %edx,0x4(%ebx)
c003588b:	8d 14 3b             	lea    (%ebx,%edi,1),%edx
c003588e:	89 15 48 d5 03 c0    	mov    %edx,0xc003d548
c0035894:	89 42 04             	mov    %eax,0x4(%edx)
c0035897:	8b 45 08             	mov    0x8(%ebp),%eax
c003589a:	89 04 24             	mov    %eax,(%esp)
c003589d:	e8 be 03 00 00       	call   c0035c60 <__malloc_unlock>
c00358a2:	83 c4 2c             	add    $0x2c,%esp
c00358a5:	8d 43 08             	lea    0x8(%ebx),%eax
c00358a8:	5b                   	pop    %ebx
c00358a9:	5e                   	pop    %esi
c00358aa:	5f                   	pop    %edi
c00358ab:	5d                   	pop    %ebp
c00358ac:	c3                   	ret    
c00358ad:	8d 76 00             	lea    0x0(%esi),%esi
c00358b0:	83 fe 14             	cmp    $0x14,%esi
c00358b3:	0f 86 8f 01 00 00    	jbe    c0035a48 <_malloc_r+0x5d8>
c00358b9:	83 fe 54             	cmp    $0x54,%esi
c00358bc:	0f 87 be 01 00 00    	ja     c0035a80 <_malloc_r+0x610>
c00358c2:	89 fe                	mov    %edi,%esi
c00358c4:	c1 ee 0c             	shr    $0xc,%esi
c00358c7:	83 c6 6e             	add    $0x6e,%esi
c00358ca:	8d 04 36             	lea    (%esi,%esi,1),%eax
c00358cd:	e9 5f fc ff ff       	jmp    c0035531 <_malloc_r+0xc1>
c00358d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00358d8:	89 f1                	mov    %esi,%ecx
c00358da:	c1 e9 09             	shr    $0x9,%ecx
c00358dd:	83 f9 04             	cmp    $0x4,%ecx
c00358e0:	0f 86 6d 01 00 00    	jbe    c0035a53 <_malloc_r+0x5e3>
c00358e6:	83 f9 14             	cmp    $0x14,%ecx
c00358e9:	0f 87 0f 02 00 00    	ja     c0035afe <_malloc_r+0x68e>
c00358ef:	83 c1 5b             	add    $0x5b,%ecx
c00358f2:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c00358f5:	8d 04 85 40 d5 03 c0 	lea    -0x3ffc2ac0(,%eax,4),%eax
c00358fc:	8b 50 08             	mov    0x8(%eax),%edx
c00358ff:	39 c2                	cmp    %eax,%edx
c0035901:	0f 84 a1 01 00 00    	je     c0035aa8 <_malloc_r+0x638>
c0035907:	90                   	nop
c0035908:	8b 4a 04             	mov    0x4(%edx),%ecx
c003590b:	83 e1 fc             	and    $0xfffffffc,%ecx
c003590e:	39 ce                	cmp    %ecx,%esi
c0035910:	73 07                	jae    c0035919 <_malloc_r+0x4a9>
c0035912:	8b 52 08             	mov    0x8(%edx),%edx
c0035915:	39 d0                	cmp    %edx,%eax
c0035917:	75 ef                	jne    c0035908 <_malloc_r+0x498>
c0035919:	8b 4a 0c             	mov    0xc(%edx),%ecx
c003591c:	a1 44 d5 03 c0       	mov    0xc003d544,%eax
c0035921:	89 4b 0c             	mov    %ecx,0xc(%ebx)
c0035924:	89 53 08             	mov    %edx,0x8(%ebx)
c0035927:	89 59 08             	mov    %ebx,0x8(%ecx)
c003592a:	89 5a 0c             	mov    %ebx,0xc(%edx)
c003592d:	e9 bb fc ff ff       	jmp    c00355ed <_malloc_r+0x17d>
c0035932:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035938:	89 c1                	mov    %eax,%ecx
c003593a:	8d 14 3b             	lea    (%ebx,%edi,1),%edx
c003593d:	83 c9 01             	or     $0x1,%ecx
c0035940:	83 cf 01             	or     $0x1,%edi
c0035943:	89 7b 04             	mov    %edi,0x4(%ebx)
c0035946:	89 15 54 d5 03 c0    	mov    %edx,0xc003d554
c003594c:	89 15 50 d5 03 c0    	mov    %edx,0xc003d550
c0035952:	c7 42 0c 48 d5 03 c0 	movl   $0xc003d548,0xc(%edx)
c0035959:	c7 42 08 48 d5 03 c0 	movl   $0xc003d548,0x8(%edx)
c0035960:	89 4a 04             	mov    %ecx,0x4(%edx)
c0035963:	89 04 02             	mov    %eax,(%edx,%eax,1)
c0035966:	8b 45 08             	mov    0x8(%ebp),%eax
c0035969:	89 04 24             	mov    %eax,(%esp)
c003596c:	e8 ef 02 00 00       	call   c0035c60 <__malloc_unlock>
c0035971:	8d 43 08             	lea    0x8(%ebx),%eax
c0035974:	e9 6e fb ff ff       	jmp    c00354e7 <_malloc_r+0x77>
c0035979:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0035980:	89 75 dc             	mov    %esi,-0x24(%ebp)
c0035983:	e9 af fc ff ff       	jmp    c0035637 <_malloc_r+0x1c7>
c0035988:	83 45 e0 01          	addl   $0x1,-0x20(%ebp)
c003598c:	83 c1 08             	add    $0x8,%ecx
c003598f:	f6 45 e0 03          	testb  $0x3,-0x20(%ebp)
c0035993:	0f 85 ad fc ff ff    	jne    c0035646 <_malloc_r+0x1d6>
c0035999:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c003599c:	eb 12                	jmp    c00359b0 <_malloc_r+0x540>
c003599e:	66 90                	xchg   %ax,%ax
c00359a0:	8d 56 f8             	lea    -0x8(%esi),%edx
c00359a3:	8b 36                	mov    (%esi),%esi
c00359a5:	83 e8 01             	sub    $0x1,%eax
c00359a8:	39 d6                	cmp    %edx,%esi
c00359aa:	0f 85 ea 01 00 00    	jne    c0035b9a <_malloc_r+0x72a>
c00359b0:	a8 03                	test   $0x3,%al
c00359b2:	75 ec                	jne    c00359a0 <_malloc_r+0x530>
c00359b4:	8b 45 dc             	mov    -0x24(%ebp),%eax
c00359b7:	f7 d0                	not    %eax
c00359b9:	23 05 44 d5 03 c0    	and    0xc003d544,%eax
c00359bf:	a3 44 d5 03 c0       	mov    %eax,0xc003d544
c00359c4:	d1 65 dc             	shll   -0x24(%ebp)
c00359c7:	8b 55 dc             	mov    -0x24(%ebp),%edx
c00359ca:	39 c2                	cmp    %eax,%edx
c00359cc:	0f 87 26 fd ff ff    	ja     c00356f8 <_malloc_r+0x288>
c00359d2:	85 d2                	test   %edx,%edx
c00359d4:	0f 84 1e fd ff ff    	je     c00356f8 <_malloc_r+0x288>
c00359da:	85 c2                	test   %eax,%edx
c00359dc:	0f 85 c2 01 00 00    	jne    c0035ba4 <_malloc_r+0x734>
c00359e2:	8b 75 e0             	mov    -0x20(%ebp),%esi
c00359e5:	89 f1                	mov    %esi,%ecx
c00359e7:	01 d2                	add    %edx,%edx
c00359e9:	83 c1 04             	add    $0x4,%ecx
c00359ec:	85 d0                	test   %edx,%eax
c00359ee:	74 f7                	je     c00359e7 <_malloc_r+0x577>
c00359f0:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c00359f3:	89 55 dc             	mov    %edx,-0x24(%ebp)
c00359f6:	e9 3c fc ff ff       	jmp    c0035637 <_malloc_r+0x1c7>
c00359fb:	90                   	nop
c00359fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035a00:	8d 43 08             	lea    0x8(%ebx),%eax
c0035a03:	8b 5b 14             	mov    0x14(%ebx),%ebx
c0035a06:	39 d8                	cmp    %ebx,%eax
c0035a08:	0f 85 b4 fa ff ff    	jne    c00354c2 <_malloc_r+0x52>
c0035a0e:	8d 42 02             	lea    0x2(%edx),%eax
c0035a11:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0035a14:	e9 56 fb ff ff       	jmp    c003556f <_malloc_r+0xff>
c0035a19:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0035a20:	83 4c 03 04 01       	orl    $0x1,0x4(%ebx,%eax,1)
c0035a25:	8b 53 08             	mov    0x8(%ebx),%edx
c0035a28:	8b 43 0c             	mov    0xc(%ebx),%eax
c0035a2b:	89 42 0c             	mov    %eax,0xc(%edx)
c0035a2e:	89 50 08             	mov    %edx,0x8(%eax)
c0035a31:	8b 45 08             	mov    0x8(%ebp),%eax
c0035a34:	89 04 24             	mov    %eax,(%esp)
c0035a37:	e8 24 02 00 00       	call   c0035c60 <__malloc_unlock>
c0035a3c:	8d 43 08             	lea    0x8(%ebx),%eax
c0035a3f:	e9 a3 fa ff ff       	jmp    c00354e7 <_malloc_r+0x77>
c0035a44:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035a48:	83 c6 5b             	add    $0x5b,%esi
c0035a4b:	8d 04 36             	lea    (%esi,%esi,1),%eax
c0035a4e:	e9 de fa ff ff       	jmp    c0035531 <_malloc_r+0xc1>
c0035a53:	89 f1                	mov    %esi,%ecx
c0035a55:	c1 e9 06             	shr    $0x6,%ecx
c0035a58:	83 c1 38             	add    $0x38,%ecx
c0035a5b:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c0035a5e:	e9 92 fe ff ff       	jmp    c00358f5 <_malloc_r+0x485>
c0035a63:	81 fb 40 d5 03 c0    	cmp    $0xc003d540,%ebx
c0035a69:	0f 84 f2 fc ff ff    	je     c0035761 <_malloc_r+0x2f1>
c0035a6f:	8b 1d 48 d5 03 c0    	mov    0xc003d548,%ebx
c0035a75:	8b 53 04             	mov    0x4(%ebx),%edx
c0035a78:	83 e2 fc             	and    $0xfffffffc,%edx
c0035a7b:	e9 de fd ff ff       	jmp    c003585e <_malloc_r+0x3ee>
c0035a80:	81 fe 54 01 00 00    	cmp    $0x154,%esi
c0035a86:	77 3c                	ja     c0035ac4 <_malloc_r+0x654>
c0035a88:	89 fe                	mov    %edi,%esi
c0035a8a:	c1 ee 0f             	shr    $0xf,%esi
c0035a8d:	83 c6 77             	add    $0x77,%esi
c0035a90:	8d 04 36             	lea    (%esi,%esi,1),%eax
c0035a93:	e9 99 fa ff ff       	jmp    c0035531 <_malloc_r+0xc1>
c0035a98:	c7 41 04 01 00 00 00 	movl   $0x1,0x4(%ecx)
c0035a9f:	89 cb                	mov    %ecx,%ebx
c0035aa1:	31 d2                	xor    %edx,%edx
c0035aa3:	e9 b6 fd ff ff       	jmp    c003585e <_malloc_r+0x3ee>
c0035aa8:	c1 f9 02             	sar    $0x2,%ecx
c0035aab:	b8 01 00 00 00       	mov    $0x1,%eax
c0035ab0:	d3 e0                	shl    %cl,%eax
c0035ab2:	89 d1                	mov    %edx,%ecx
c0035ab4:	0b 05 44 d5 03 c0    	or     0xc003d544,%eax
c0035aba:	a3 44 d5 03 c0       	mov    %eax,0xc003d544
c0035abf:	e9 5d fe ff ff       	jmp    c0035921 <_malloc_r+0x4b1>
c0035ac4:	81 fe 54 05 00 00    	cmp    $0x554,%esi
c0035aca:	77 47                	ja     c0035b13 <_malloc_r+0x6a3>
c0035acc:	89 fe                	mov    %edi,%esi
c0035ace:	c1 ee 12             	shr    $0x12,%esi
c0035ad1:	83 c6 7c             	add    $0x7c,%esi
c0035ad4:	8d 04 36             	lea    (%esi,%esi,1),%eax
c0035ad7:	e9 55 fa ff ff       	jmp    c0035531 <_malloc_r+0xc1>
c0035adc:	8b 45 08             	mov    0x8(%ebp),%eax
c0035adf:	83 c3 08             	add    $0x8,%ebx
c0035ae2:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c0035ae6:	89 04 24             	mov    %eax,(%esp)
c0035ae9:	e8 c2 22 00 00       	call   c0037db0 <_free_r>
c0035aee:	8b 15 20 00 07 c0    	mov    0xc0070020,%edx
c0035af4:	a1 48 d5 03 c0       	mov    0xc003d548,%eax
c0035af9:	e9 3c fd ff ff       	jmp    c003583a <_malloc_r+0x3ca>
c0035afe:	83 f9 54             	cmp    $0x54,%ecx
c0035b01:	77 58                	ja     c0035b5b <_malloc_r+0x6eb>
c0035b03:	89 f1                	mov    %esi,%ecx
c0035b05:	c1 e9 0c             	shr    $0xc,%ecx
c0035b08:	83 c1 6e             	add    $0x6e,%ecx
c0035b0b:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c0035b0e:	e9 e2 fd ff ff       	jmp    c00358f5 <_malloc_r+0x485>
c0035b13:	b8 fc 00 00 00       	mov    $0xfc,%eax
c0035b18:	be 7e 00 00 00       	mov    $0x7e,%esi
c0035b1d:	e9 0f fa ff ff       	jmp    c0035531 <_malloc_r+0xc1>
c0035b22:	f7 45 e4 ff 0f 00 00 	testl  $0xfff,-0x1c(%ebp)
c0035b29:	0f 85 4a fc ff ff    	jne    c0035779 <_malloc_r+0x309>
c0035b2f:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0035b32:	a1 48 d5 03 c0       	mov    0xc003d548,%eax
c0035b37:	01 f1                	add    %esi,%ecx
c0035b39:	83 c9 01             	or     $0x1,%ecx
c0035b3c:	89 48 04             	mov    %ecx,0x4(%eax)
c0035b3f:	e9 f6 fc ff ff       	jmp    c003583a <_malloc_r+0x3ca>
c0035b44:	b8 01 00 00 00       	mov    $0x1,%eax
c0035b49:	31 d2                	xor    %edx,%edx
c0035b4b:	e9 91 fc ff ff       	jmp    c00357e1 <_malloc_r+0x371>
c0035b50:	89 0d 20 d5 03 c0    	mov    %ecx,0xc003d520
c0035b56:	e9 37 fc ff ff       	jmp    c0035792 <_malloc_r+0x322>
c0035b5b:	81 f9 54 01 00 00    	cmp    $0x154,%ecx
c0035b61:	77 10                	ja     c0035b73 <_malloc_r+0x703>
c0035b63:	89 f1                	mov    %esi,%ecx
c0035b65:	c1 e9 0f             	shr    $0xf,%ecx
c0035b68:	83 c1 77             	add    $0x77,%ecx
c0035b6b:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c0035b6e:	e9 82 fd ff ff       	jmp    c00358f5 <_malloc_r+0x485>
c0035b73:	81 f9 54 05 00 00    	cmp    $0x554,%ecx
c0035b79:	77 10                	ja     c0035b8b <_malloc_r+0x71b>
c0035b7b:	89 f1                	mov    %esi,%ecx
c0035b7d:	c1 e9 12             	shr    $0x12,%ecx
c0035b80:	83 c1 7c             	add    $0x7c,%ecx
c0035b83:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c0035b86:	e9 6a fd ff ff       	jmp    c00358f5 <_malloc_r+0x485>
c0035b8b:	b8 fc 00 00 00       	mov    $0xfc,%eax
c0035b90:	b9 7e 00 00 00       	mov    $0x7e,%ecx
c0035b95:	e9 5b fd ff ff       	jmp    c00358f5 <_malloc_r+0x485>
c0035b9a:	a1 44 d5 03 c0       	mov    0xc003d544,%eax
c0035b9f:	e9 20 fe ff ff       	jmp    c00359c4 <_malloc_r+0x554>
c0035ba4:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0035ba7:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0035baa:	e9 88 fa ff ff       	jmp    c0035637 <_malloc_r+0x1c7>
c0035baf:	90                   	nop

c0035bb0 <memchr>:
c0035bb0:	55                   	push   %ebp
c0035bb1:	89 e5                	mov    %esp,%ebp
c0035bb3:	57                   	push   %edi
c0035bb4:	0f b6 45 0c          	movzbl 0xc(%ebp),%eax
c0035bb8:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0035bbb:	8b 7d 08             	mov    0x8(%ebp),%edi
c0035bbe:	31 d2                	xor    %edx,%edx
c0035bc0:	85 c9                	test   %ecx,%ecx
c0035bc2:	74 79                	je     c0035c3d <L20>
c0035bc4:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0035bca:	74 28                	je     c0035bf4 <L5>
c0035bcc:	3a 07                	cmp    (%edi),%al
c0035bce:	74 6a                	je     c0035c3a <L15>
c0035bd0:	47                   	inc    %edi
c0035bd1:	49                   	dec    %ecx
c0035bd2:	74 69                	je     c0035c3d <L20>
c0035bd4:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0035bda:	74 18                	je     c0035bf4 <L5>
c0035bdc:	3a 07                	cmp    (%edi),%al
c0035bde:	74 5a                	je     c0035c3a <L15>
c0035be0:	47                   	inc    %edi
c0035be1:	49                   	dec    %ecx
c0035be2:	74 59                	je     c0035c3d <L20>
c0035be4:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0035bea:	74 08                	je     c0035bf4 <L5>
c0035bec:	3a 07                	cmp    (%edi),%al
c0035bee:	74 4a                	je     c0035c3a <L15>
c0035bf0:	47                   	inc    %edi
c0035bf1:	49                   	dec    %ecx
c0035bf2:	74 49                	je     c0035c3d <L20>

c0035bf4 <L5>:
c0035bf4:	88 c4                	mov    %al,%ah
c0035bf6:	89 c2                	mov    %eax,%edx
c0035bf8:	c1 e2 10             	shl    $0x10,%edx
c0035bfb:	09 d0                	or     %edx,%eax
c0035bfd:	53                   	push   %ebx
c0035bfe:	66 90                	xchg   %ax,%ax

c0035c00 <L8>:
c0035c00:	83 e9 04             	sub    $0x4,%ecx
c0035c03:	72 1c                	jb     c0035c21 <L9>
c0035c05:	8b 17                	mov    (%edi),%edx
c0035c07:	83 c7 04             	add    $0x4,%edi
c0035c0a:	31 c2                	xor    %eax,%edx
c0035c0c:	8d 9a ff fe fe fe    	lea    -0x1010101(%edx),%ebx
c0035c12:	f7 d2                	not    %edx
c0035c14:	21 d3                	and    %edx,%ebx
c0035c16:	f7 c3 80 80 80 80    	test   $0x80808080,%ebx
c0035c1c:	74 e2                	je     c0035c00 <L8>
c0035c1e:	83 ef 04             	sub    $0x4,%edi

c0035c21 <L9>:
c0035c21:	5b                   	pop    %ebx
c0035c22:	31 d2                	xor    %edx,%edx
c0035c24:	83 c1 04             	add    $0x4,%ecx
c0035c27:	74 14                	je     c0035c3d <L20>
c0035c29:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0035c30 <L10>:
c0035c30:	3a 07                	cmp    (%edi),%al
c0035c32:	74 06                	je     c0035c3a <L15>
c0035c34:	47                   	inc    %edi
c0035c35:	49                   	dec    %ecx
c0035c36:	75 f8                	jne    c0035c30 <L10>
c0035c38:	31 ff                	xor    %edi,%edi

c0035c3a <L15>:
c0035c3a:	4a                   	dec    %edx
c0035c3b:	21 fa                	and    %edi,%edx

c0035c3d <L20>:
c0035c3d:	89 d0                	mov    %edx,%eax
c0035c3f:	8d 65 fc             	lea    -0x4(%ebp),%esp
c0035c42:	5f                   	pop    %edi
c0035c43:	c9                   	leave  
c0035c44:	c3                   	ret    
c0035c45:	66 90                	xchg   %ax,%ax
c0035c47:	66 90                	xchg   %ax,%ax
c0035c49:	66 90                	xchg   %ax,%ax
c0035c4b:	66 90                	xchg   %ax,%ax
c0035c4d:	66 90                	xchg   %ax,%ax
c0035c4f:	90                   	nop

c0035c50 <__malloc_lock>:
c0035c50:	55                   	push   %ebp
c0035c51:	89 e5                	mov    %esp,%ebp
c0035c53:	5d                   	pop    %ebp
c0035c54:	c3                   	ret    
c0035c55:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035c59:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0035c60 <__malloc_unlock>:
c0035c60:	55                   	push   %ebp
c0035c61:	89 e5                	mov    %esp,%ebp
c0035c63:	5d                   	pop    %ebp
c0035c64:	c3                   	ret    
c0035c65:	66 90                	xchg   %ax,%ax
c0035c67:	66 90                	xchg   %ax,%ax
c0035c69:	66 90                	xchg   %ax,%ax
c0035c6b:	66 90                	xchg   %ax,%ax
c0035c6d:	66 90                	xchg   %ax,%ax
c0035c6f:	90                   	nop

c0035c70 <_Balloc>:
c0035c70:	55                   	push   %ebp
c0035c71:	89 e5                	mov    %esp,%ebp
c0035c73:	57                   	push   %edi
c0035c74:	56                   	push   %esi
c0035c75:	53                   	push   %ebx
c0035c76:	83 ec 1c             	sub    $0x1c,%esp
c0035c79:	8b 75 08             	mov    0x8(%ebp),%esi
c0035c7c:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c0035c7f:	8b 46 4c             	mov    0x4c(%esi),%eax
c0035c82:	85 c0                	test   %eax,%eax
c0035c84:	74 2a                	je     c0035cb0 <_Balloc+0x40>
c0035c86:	8d 14 98             	lea    (%eax,%ebx,4),%edx
c0035c89:	8b 02                	mov    (%edx),%eax
c0035c8b:	85 c0                	test   %eax,%eax
c0035c8d:	74 49                	je     c0035cd8 <_Balloc+0x68>
c0035c8f:	8b 08                	mov    (%eax),%ecx
c0035c91:	89 0a                	mov    %ecx,(%edx)
c0035c93:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%eax)
c0035c9a:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c0035ca1:	83 c4 1c             	add    $0x1c,%esp
c0035ca4:	5b                   	pop    %ebx
c0035ca5:	5e                   	pop    %esi
c0035ca6:	5f                   	pop    %edi
c0035ca7:	5d                   	pop    %ebp
c0035ca8:	c3                   	ret    
c0035ca9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0035cb0:	c7 44 24 08 21 00 00 	movl   $0x21,0x8(%esp)
c0035cb7:	00 
c0035cb8:	c7 44 24 04 04 00 00 	movl   $0x4,0x4(%esp)
c0035cbf:	00 
c0035cc0:	89 34 24             	mov    %esi,(%esp)
c0035cc3:	e8 38 1f 00 00       	call   c0037c00 <_calloc_r>
c0035cc8:	85 c0                	test   %eax,%eax
c0035cca:	89 46 4c             	mov    %eax,0x4c(%esi)
c0035ccd:	75 b7                	jne    c0035c86 <_Balloc+0x16>
c0035ccf:	31 c0                	xor    %eax,%eax
c0035cd1:	eb ce                	jmp    c0035ca1 <_Balloc+0x31>
c0035cd3:	90                   	nop
c0035cd4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035cd8:	89 d9                	mov    %ebx,%ecx
c0035cda:	bf 01 00 00 00       	mov    $0x1,%edi
c0035cdf:	d3 e7                	shl    %cl,%edi
c0035ce1:	8d 04 bd 14 00 00 00 	lea    0x14(,%edi,4),%eax
c0035ce8:	89 44 24 08          	mov    %eax,0x8(%esp)
c0035cec:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0035cf3:	00 
c0035cf4:	89 34 24             	mov    %esi,(%esp)
c0035cf7:	e8 04 1f 00 00       	call   c0037c00 <_calloc_r>
c0035cfc:	85 c0                	test   %eax,%eax
c0035cfe:	74 cf                	je     c0035ccf <_Balloc+0x5f>
c0035d00:	89 58 04             	mov    %ebx,0x4(%eax)
c0035d03:	89 78 08             	mov    %edi,0x8(%eax)
c0035d06:	eb 8b                	jmp    c0035c93 <_Balloc+0x23>
c0035d08:	90                   	nop
c0035d09:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0035d10 <_Bfree>:
c0035d10:	55                   	push   %ebp
c0035d11:	89 e5                	mov    %esp,%ebp
c0035d13:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035d16:	85 c0                	test   %eax,%eax
c0035d18:	74 12                	je     c0035d2c <_Bfree+0x1c>
c0035d1a:	8b 55 08             	mov    0x8(%ebp),%edx
c0035d1d:	8b 48 04             	mov    0x4(%eax),%ecx
c0035d20:	8b 52 4c             	mov    0x4c(%edx),%edx
c0035d23:	8d 14 8a             	lea    (%edx,%ecx,4),%edx
c0035d26:	8b 0a                	mov    (%edx),%ecx
c0035d28:	89 08                	mov    %ecx,(%eax)
c0035d2a:	89 02                	mov    %eax,(%edx)
c0035d2c:	5d                   	pop    %ebp
c0035d2d:	c3                   	ret    
c0035d2e:	66 90                	xchg   %ax,%ax

c0035d30 <__multadd>:
c0035d30:	55                   	push   %ebp
c0035d31:	89 e5                	mov    %esp,%ebp
c0035d33:	57                   	push   %edi
c0035d34:	56                   	push   %esi
c0035d35:	53                   	push   %ebx
c0035d36:	83 ec 2c             	sub    $0x2c,%esp
c0035d39:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035d3c:	8b 5d 14             	mov    0x14(%ebp),%ebx
c0035d3f:	8b 40 10             	mov    0x10(%eax),%eax
c0035d42:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0035d45:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035d48:	8d 78 14             	lea    0x14(%eax),%edi
c0035d4b:	31 c0                	xor    %eax,%eax
c0035d4d:	8d 76 00             	lea    0x0(%esi),%esi
c0035d50:	8b 0c 87             	mov    (%edi,%eax,4),%ecx
c0035d53:	0f b7 d1             	movzwl %cx,%edx
c0035d56:	0f af 55 10          	imul   0x10(%ebp),%edx
c0035d5a:	c1 e9 10             	shr    $0x10,%ecx
c0035d5d:	0f af 4d 10          	imul   0x10(%ebp),%ecx
c0035d61:	01 da                	add    %ebx,%edx
c0035d63:	89 d3                	mov    %edx,%ebx
c0035d65:	0f b7 d2             	movzwl %dx,%edx
c0035d68:	c1 eb 10             	shr    $0x10,%ebx
c0035d6b:	01 d9                	add    %ebx,%ecx
c0035d6d:	89 ce                	mov    %ecx,%esi
c0035d6f:	c1 e1 10             	shl    $0x10,%ecx
c0035d72:	01 d1                	add    %edx,%ecx
c0035d74:	c1 ee 10             	shr    $0x10,%esi
c0035d77:	89 0c 87             	mov    %ecx,(%edi,%eax,4)
c0035d7a:	83 c0 01             	add    $0x1,%eax
c0035d7d:	89 f3                	mov    %esi,%ebx
c0035d7f:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
c0035d82:	7f cc                	jg     c0035d50 <__multadd+0x20>
c0035d84:	85 f6                	test   %esi,%esi
c0035d86:	74 1b                	je     c0035da3 <__multadd+0x73>
c0035d88:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035d8b:	8b 7d e4             	mov    -0x1c(%ebp),%edi
c0035d8e:	3b 78 08             	cmp    0x8(%eax),%edi
c0035d91:	7d 1d                	jge    c0035db0 <__multadd+0x80>
c0035d93:	8b 7d 0c             	mov    0xc(%ebp),%edi
c0035d96:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0035d99:	89 74 87 14          	mov    %esi,0x14(%edi,%eax,4)
c0035d9d:	83 c0 01             	add    $0x1,%eax
c0035da0:	89 47 10             	mov    %eax,0x10(%edi)
c0035da3:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035da6:	83 c4 2c             	add    $0x2c,%esp
c0035da9:	5b                   	pop    %ebx
c0035daa:	5e                   	pop    %esi
c0035dab:	5f                   	pop    %edi
c0035dac:	5d                   	pop    %ebp
c0035dad:	c3                   	ret    
c0035dae:	66 90                	xchg   %ax,%ax
c0035db0:	8b 40 04             	mov    0x4(%eax),%eax
c0035db3:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0035db6:	83 c0 01             	add    $0x1,%eax
c0035db9:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035dbd:	8b 45 08             	mov    0x8(%ebp),%eax
c0035dc0:	89 04 24             	mov    %eax,(%esp)
c0035dc3:	e8 a8 fe ff ff       	call   c0035c70 <_Balloc>
c0035dc8:	89 c3                	mov    %eax,%ebx
c0035dca:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035dcd:	8b 40 10             	mov    0x10(%eax),%eax
c0035dd0:	8d 04 85 08 00 00 00 	lea    0x8(,%eax,4),%eax
c0035dd7:	89 44 24 08          	mov    %eax,0x8(%esp)
c0035ddb:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035dde:	83 c0 0c             	add    $0xc,%eax
c0035de1:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035de5:	8d 43 0c             	lea    0xc(%ebx),%eax
c0035de8:	89 04 24             	mov    %eax,(%esp)
c0035deb:	e8 c4 c0 ff ff       	call   c0031eb4 <memcpy>
c0035df0:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035df3:	8b 7d 0c             	mov    0xc(%ebp),%edi
c0035df6:	89 5d 0c             	mov    %ebx,0xc(%ebp)
c0035df9:	8b 50 04             	mov    0x4(%eax),%edx
c0035dfc:	8b 45 08             	mov    0x8(%ebp),%eax
c0035dff:	8b 40 4c             	mov    0x4c(%eax),%eax
c0035e02:	8d 04 90             	lea    (%eax,%edx,4),%eax
c0035e05:	8b 10                	mov    (%eax),%edx
c0035e07:	89 17                	mov    %edx,(%edi)
c0035e09:	89 38                	mov    %edi,(%eax)
c0035e0b:	eb 86                	jmp    c0035d93 <__multadd+0x63>
c0035e0d:	8d 76 00             	lea    0x0(%esi),%esi

c0035e10 <__s2b>:
c0035e10:	55                   	push   %ebp
c0035e11:	ba 39 8e e3 38       	mov    $0x38e38e39,%edx
c0035e16:	89 e5                	mov    %esp,%ebp
c0035e18:	57                   	push   %edi
c0035e19:	56                   	push   %esi
c0035e1a:	53                   	push   %ebx
c0035e1b:	83 ec 2c             	sub    $0x2c,%esp
c0035e1e:	8b 45 14             	mov    0x14(%ebp),%eax
c0035e21:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0035e24:	8b 75 0c             	mov    0xc(%ebp),%esi
c0035e27:	8d 48 08             	lea    0x8(%eax),%ecx
c0035e2a:	89 c8                	mov    %ecx,%eax
c0035e2c:	f7 ea                	imul   %edx
c0035e2e:	c1 f9 1f             	sar    $0x1f,%ecx
c0035e31:	d1 fa                	sar    %edx
c0035e33:	29 ca                	sub    %ecx,%edx
c0035e35:	83 fa 01             	cmp    $0x1,%edx
c0035e38:	0f 8e be 00 00 00    	jle    c0035efc <__s2b+0xec>
c0035e3e:	b8 01 00 00 00       	mov    $0x1,%eax
c0035e43:	31 c9                	xor    %ecx,%ecx
c0035e45:	8d 76 00             	lea    0x0(%esi),%esi
c0035e48:	01 c0                	add    %eax,%eax
c0035e4a:	83 c1 01             	add    $0x1,%ecx
c0035e4d:	39 c2                	cmp    %eax,%edx
c0035e4f:	7f f7                	jg     c0035e48 <__s2b+0x38>
c0035e51:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c0035e55:	89 1c 24             	mov    %ebx,(%esp)
c0035e58:	e8 13 fe ff ff       	call   c0035c70 <_Balloc>
c0035e5d:	8b 55 18             	mov    0x18(%ebp),%edx
c0035e60:	83 7d 10 09          	cmpl   $0x9,0x10(%ebp)
c0035e64:	89 50 14             	mov    %edx,0x14(%eax)
c0035e67:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c0035e6e:	0f 8e 7c 00 00 00    	jle    c0035ef0 <__s2b+0xe0>
c0035e74:	8d 4e 09             	lea    0x9(%esi),%ecx
c0035e77:	03 75 10             	add    0x10(%ebp),%esi
c0035e7a:	89 cf                	mov    %ecx,%edi
c0035e7c:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0035e7f:	90                   	nop
c0035e80:	83 c7 01             	add    $0x1,%edi
c0035e83:	0f be 57 ff          	movsbl -0x1(%edi),%edx
c0035e87:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0035e8e:	00 
c0035e8f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035e93:	89 1c 24             	mov    %ebx,(%esp)
c0035e96:	83 ea 30             	sub    $0x30,%edx
c0035e99:	89 54 24 0c          	mov    %edx,0xc(%esp)
c0035e9d:	e8 8e fe ff ff       	call   c0035d30 <__multadd>
c0035ea2:	39 f7                	cmp    %esi,%edi
c0035ea4:	75 da                	jne    c0035e80 <__s2b+0x70>
c0035ea6:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0035ea9:	8b 7d 10             	mov    0x10(%ebp),%edi
c0035eac:	8d 74 39 f8          	lea    -0x8(%ecx,%edi,1),%esi
c0035eb0:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0035eb3:	39 4d 14             	cmp    %ecx,0x14(%ebp)
c0035eb6:	7e 2e                	jle    c0035ee6 <__s2b+0xd6>
c0035eb8:	8b 7d 14             	mov    0x14(%ebp),%edi
c0035ebb:	29 cf                	sub    %ecx,%edi
c0035ebd:	01 f7                	add    %esi,%edi
c0035ebf:	90                   	nop
c0035ec0:	83 c6 01             	add    $0x1,%esi
c0035ec3:	0f be 56 ff          	movsbl -0x1(%esi),%edx
c0035ec7:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0035ece:	00 
c0035ecf:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035ed3:	89 1c 24             	mov    %ebx,(%esp)
c0035ed6:	83 ea 30             	sub    $0x30,%edx
c0035ed9:	89 54 24 0c          	mov    %edx,0xc(%esp)
c0035edd:	e8 4e fe ff ff       	call   c0035d30 <__multadd>
c0035ee2:	39 fe                	cmp    %edi,%esi
c0035ee4:	75 da                	jne    c0035ec0 <__s2b+0xb0>
c0035ee6:	83 c4 2c             	add    $0x2c,%esp
c0035ee9:	5b                   	pop    %ebx
c0035eea:	5e                   	pop    %esi
c0035eeb:	5f                   	pop    %edi
c0035eec:	5d                   	pop    %ebp
c0035eed:	c3                   	ret    
c0035eee:	66 90                	xchg   %ax,%ax
c0035ef0:	83 c6 0a             	add    $0xa,%esi
c0035ef3:	c7 45 10 09 00 00 00 	movl   $0x9,0x10(%ebp)
c0035efa:	eb b4                	jmp    c0035eb0 <__s2b+0xa0>
c0035efc:	31 c9                	xor    %ecx,%ecx
c0035efe:	e9 4e ff ff ff       	jmp    c0035e51 <__s2b+0x41>
c0035f03:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035f09:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0035f10 <__hi0bits>:
c0035f10:	55                   	push   %ebp
c0035f11:	31 c9                	xor    %ecx,%ecx
c0035f13:	89 e5                	mov    %esp,%ebp
c0035f15:	8b 55 08             	mov    0x8(%ebp),%edx
c0035f18:	f7 c2 00 00 ff ff    	test   $0xffff0000,%edx
c0035f1e:	75 05                	jne    c0035f25 <__hi0bits+0x15>
c0035f20:	c1 e2 10             	shl    $0x10,%edx
c0035f23:	b1 10                	mov    $0x10,%cl
c0035f25:	f7 c2 00 00 00 ff    	test   $0xff000000,%edx
c0035f2b:	75 06                	jne    c0035f33 <__hi0bits+0x23>
c0035f2d:	83 c1 08             	add    $0x8,%ecx
c0035f30:	c1 e2 08             	shl    $0x8,%edx
c0035f33:	f7 c2 00 00 00 f0    	test   $0xf0000000,%edx
c0035f39:	75 06                	jne    c0035f41 <__hi0bits+0x31>
c0035f3b:	83 c1 04             	add    $0x4,%ecx
c0035f3e:	c1 e2 04             	shl    $0x4,%edx
c0035f41:	f7 c2 00 00 00 c0    	test   $0xc0000000,%edx
c0035f47:	75 06                	jne    c0035f4f <__hi0bits+0x3f>
c0035f49:	83 c1 02             	add    $0x2,%ecx
c0035f4c:	c1 e2 02             	shl    $0x2,%edx
c0035f4f:	85 d2                	test   %edx,%edx
c0035f51:	89 c8                	mov    %ecx,%eax
c0035f53:	78 0d                	js     c0035f62 <__hi0bits+0x52>
c0035f55:	81 e2 00 00 00 40    	and    $0x40000000,%edx
c0035f5b:	b8 20 00 00 00       	mov    $0x20,%eax
c0035f60:	75 06                	jne    c0035f68 <__hi0bits+0x58>
c0035f62:	5d                   	pop    %ebp
c0035f63:	c3                   	ret    
c0035f64:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035f68:	8d 41 01             	lea    0x1(%ecx),%eax
c0035f6b:	5d                   	pop    %ebp
c0035f6c:	c3                   	ret    
c0035f6d:	8d 76 00             	lea    0x0(%esi),%esi

c0035f70 <__lo0bits>:
c0035f70:	55                   	push   %ebp
c0035f71:	89 e5                	mov    %esp,%ebp
c0035f73:	53                   	push   %ebx
c0035f74:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0035f77:	8b 13                	mov    (%ebx),%edx
c0035f79:	f6 c2 07             	test   $0x7,%dl
c0035f7c:	74 1a                	je     c0035f98 <__lo0bits+0x28>
c0035f7e:	31 c0                	xor    %eax,%eax
c0035f80:	f6 c2 01             	test   $0x1,%dl
c0035f83:	75 0f                	jne    c0035f94 <__lo0bits+0x24>
c0035f85:	f6 c2 02             	test   $0x2,%dl
c0035f88:	75 56                	jne    c0035fe0 <__lo0bits+0x70>
c0035f8a:	c1 ea 02             	shr    $0x2,%edx
c0035f8d:	b8 02 00 00 00       	mov    $0x2,%eax
c0035f92:	89 13                	mov    %edx,(%ebx)
c0035f94:	5b                   	pop    %ebx
c0035f95:	5d                   	pop    %ebp
c0035f96:	c3                   	ret    
c0035f97:	90                   	nop
c0035f98:	31 c9                	xor    %ecx,%ecx
c0035f9a:	66 85 d2             	test   %dx,%dx
c0035f9d:	75 05                	jne    c0035fa4 <__lo0bits+0x34>
c0035f9f:	c1 ea 10             	shr    $0x10,%edx
c0035fa2:	b1 10                	mov    $0x10,%cl
c0035fa4:	84 d2                	test   %dl,%dl
c0035fa6:	75 06                	jne    c0035fae <__lo0bits+0x3e>
c0035fa8:	83 c1 08             	add    $0x8,%ecx
c0035fab:	c1 ea 08             	shr    $0x8,%edx
c0035fae:	f6 c2 0f             	test   $0xf,%dl
c0035fb1:	75 06                	jne    c0035fb9 <__lo0bits+0x49>
c0035fb3:	83 c1 04             	add    $0x4,%ecx
c0035fb6:	c1 ea 04             	shr    $0x4,%edx
c0035fb9:	f6 c2 03             	test   $0x3,%dl
c0035fbc:	75 06                	jne    c0035fc4 <__lo0bits+0x54>
c0035fbe:	83 c1 02             	add    $0x2,%ecx
c0035fc1:	c1 ea 02             	shr    $0x2,%edx
c0035fc4:	f6 c2 01             	test   $0x1,%dl
c0035fc7:	75 0c                	jne    c0035fd5 <__lo0bits+0x65>
c0035fc9:	d1 ea                	shr    %edx
c0035fcb:	b8 20 00 00 00       	mov    $0x20,%eax
c0035fd0:	74 c2                	je     c0035f94 <__lo0bits+0x24>
c0035fd2:	83 c1 01             	add    $0x1,%ecx
c0035fd5:	89 13                	mov    %edx,(%ebx)
c0035fd7:	89 c8                	mov    %ecx,%eax
c0035fd9:	5b                   	pop    %ebx
c0035fda:	5d                   	pop    %ebp
c0035fdb:	c3                   	ret    
c0035fdc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035fe0:	d1 ea                	shr    %edx
c0035fe2:	b0 01                	mov    $0x1,%al
c0035fe4:	89 13                	mov    %edx,(%ebx)
c0035fe6:	5b                   	pop    %ebx
c0035fe7:	5d                   	pop    %ebp
c0035fe8:	c3                   	ret    
c0035fe9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0035ff0 <__i2b>:
c0035ff0:	55                   	push   %ebp
c0035ff1:	89 e5                	mov    %esp,%ebp
c0035ff3:	83 ec 18             	sub    $0x18,%esp
c0035ff6:	8b 45 08             	mov    0x8(%ebp),%eax
c0035ff9:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0036000:	00 
c0036001:	89 04 24             	mov    %eax,(%esp)
c0036004:	e8 67 fc ff ff       	call   c0035c70 <_Balloc>
c0036009:	8b 55 0c             	mov    0xc(%ebp),%edx
c003600c:	89 50 14             	mov    %edx,0x14(%eax)
c003600f:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c0036016:	c9                   	leave  
c0036017:	c3                   	ret    
c0036018:	90                   	nop
c0036019:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0036020 <__multiply>:
c0036020:	55                   	push   %ebp
c0036021:	89 e5                	mov    %esp,%ebp
c0036023:	57                   	push   %edi
c0036024:	56                   	push   %esi
c0036025:	53                   	push   %ebx
c0036026:	83 ec 3c             	sub    $0x3c,%esp
c0036029:	8b 75 0c             	mov    0xc(%ebp),%esi
c003602c:	8b 45 10             	mov    0x10(%ebp),%eax
c003602f:	8b 7e 10             	mov    0x10(%esi),%edi
c0036032:	8b 58 10             	mov    0x10(%eax),%ebx
c0036035:	39 df                	cmp    %ebx,%edi
c0036037:	7d 0e                	jge    c0036047 <__multiply+0x27>
c0036039:	89 f8                	mov    %edi,%eax
c003603b:	89 df                	mov    %ebx,%edi
c003603d:	89 c3                	mov    %eax,%ebx
c003603f:	89 f0                	mov    %esi,%eax
c0036041:	8b 75 10             	mov    0x10(%ebp),%esi
c0036044:	89 45 10             	mov    %eax,0x10(%ebp)
c0036047:	8d 04 1f             	lea    (%edi,%ebx,1),%eax
c003604a:	3b 46 08             	cmp    0x8(%esi),%eax
c003604d:	89 45 c8             	mov    %eax,-0x38(%ebp)
c0036050:	0f 9f c0             	setg   %al
c0036053:	0f b6 c0             	movzbl %al,%eax
c0036056:	03 46 04             	add    0x4(%esi),%eax
c0036059:	89 44 24 04          	mov    %eax,0x4(%esp)
c003605d:	8b 45 08             	mov    0x8(%ebp),%eax
c0036060:	89 04 24             	mov    %eax,(%esp)
c0036063:	e8 08 fc ff ff       	call   c0035c70 <_Balloc>
c0036068:	8b 55 c8             	mov    -0x38(%ebp),%edx
c003606b:	89 45 c0             	mov    %eax,-0x40(%ebp)
c003606e:	8d 40 14             	lea    0x14(%eax),%eax
c0036071:	8d 14 90             	lea    (%eax,%edx,4),%edx
c0036074:	89 d1                	mov    %edx,%ecx
c0036076:	39 c8                	cmp    %ecx,%eax
c0036078:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c003607b:	89 55 c4             	mov    %edx,-0x3c(%ebp)
c003607e:	73 15                	jae    c0036095 <__multiply+0x75>
c0036080:	8b 55 c4             	mov    -0x3c(%ebp),%edx
c0036083:	90                   	nop
c0036084:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036088:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c003608e:	83 c0 04             	add    $0x4,%eax
c0036091:	39 c2                	cmp    %eax,%edx
c0036093:	77 f3                	ja     c0036088 <__multiply+0x68>
c0036095:	8d 46 14             	lea    0x14(%esi),%eax
c0036098:	89 45 d0             	mov    %eax,-0x30(%ebp)
c003609b:	8d 04 b8             	lea    (%eax,%edi,4),%eax
c003609e:	89 45 dc             	mov    %eax,-0x24(%ebp)
c00360a1:	8b 45 10             	mov    0x10(%ebp),%eax
c00360a4:	83 c0 14             	add    $0x14,%eax
c00360a7:	8d 3c 98             	lea    (%eax,%ebx,4),%edi
c00360aa:	39 f8                	cmp    %edi,%eax
c00360ac:	89 45 d8             	mov    %eax,-0x28(%ebp)
c00360af:	89 7d cc             	mov    %edi,-0x34(%ebp)
c00360b2:	0f 83 e8 00 00 00    	jae    c00361a0 <__multiply+0x180>
c00360b8:	8b 45 d8             	mov    -0x28(%ebp),%eax
c00360bb:	8b 00                	mov    (%eax),%eax
c00360bd:	0f b7 f8             	movzwl %ax,%edi
c00360c0:	85 ff                	test   %edi,%edi
c00360c2:	89 7d e4             	mov    %edi,-0x1c(%ebp)
c00360c5:	74 5a                	je     c0036121 <__multiply+0x101>
c00360c7:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c00360ca:	31 db                	xor    %ebx,%ebx
c00360cc:	8b 75 d0             	mov    -0x30(%ebp),%esi
c00360cf:	eb 09                	jmp    c00360da <__multiply+0xba>
c00360d1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00360d8:	89 fa                	mov    %edi,%edx
c00360da:	8b 0e                	mov    (%esi),%ecx
c00360dc:	83 c6 04             	add    $0x4,%esi
c00360df:	0f b7 3a             	movzwl (%edx),%edi
c00360e2:	0f b7 c1             	movzwl %cx,%eax
c00360e5:	0f af 45 e4          	imul   -0x1c(%ebp),%eax
c00360e9:	c1 e9 10             	shr    $0x10,%ecx
c00360ec:	0f af 4d e4          	imul   -0x1c(%ebp),%ecx
c00360f0:	01 f8                	add    %edi,%eax
c00360f2:	01 d8                	add    %ebx,%eax
c00360f4:	8b 1a                	mov    (%edx),%ebx
c00360f6:	8d 7a 04             	lea    0x4(%edx),%edi
c00360f9:	c1 eb 10             	shr    $0x10,%ebx
c00360fc:	01 d9                	add    %ebx,%ecx
c00360fe:	89 c3                	mov    %eax,%ebx
c0036100:	c1 eb 10             	shr    $0x10,%ebx
c0036103:	0f b7 c0             	movzwl %ax,%eax
c0036106:	01 d9                	add    %ebx,%ecx
c0036108:	89 cb                	mov    %ecx,%ebx
c003610a:	c1 e1 10             	shl    $0x10,%ecx
c003610d:	09 c1                	or     %eax,%ecx
c003610f:	c1 eb 10             	shr    $0x10,%ebx
c0036112:	39 75 dc             	cmp    %esi,-0x24(%ebp)
c0036115:	89 0a                	mov    %ecx,(%edx)
c0036117:	77 bf                	ja     c00360d8 <__multiply+0xb8>
c0036119:	8b 45 d8             	mov    -0x28(%ebp),%eax
c003611c:	89 5a 04             	mov    %ebx,0x4(%edx)
c003611f:	8b 00                	mov    (%eax),%eax
c0036121:	c1 e8 10             	shr    $0x10,%eax
c0036124:	85 c0                	test   %eax,%eax
c0036126:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0036129:	74 61                	je     c003618c <__multiply+0x16c>
c003612b:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c003612e:	31 ff                	xor    %edi,%edi
c0036130:	89 fe                	mov    %edi,%esi
c0036132:	8b 10                	mov    (%eax),%edx
c0036134:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0036137:	8b 45 d0             	mov    -0x30(%ebp),%eax
c003613a:	89 d3                	mov    %edx,%ebx
c003613c:	eb 05                	jmp    c0036143 <__multiply+0x123>
c003613e:	66 90                	xchg   %ax,%ax
c0036140:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0036143:	0f b7 08             	movzwl (%eax),%ecx
c0036146:	c1 eb 10             	shr    $0x10,%ebx
c0036149:	0f b7 d2             	movzwl %dx,%edx
c003614c:	0f af 4d e4          	imul   -0x1c(%ebp),%ecx
c0036150:	83 c0 04             	add    $0x4,%eax
c0036153:	8d 3c 19             	lea    (%ecx,%ebx,1),%edi
c0036156:	01 f7                	add    %esi,%edi
c0036158:	8b 75 e0             	mov    -0x20(%ebp),%esi
c003615b:	89 fb                	mov    %edi,%ebx
c003615d:	c1 e3 10             	shl    $0x10,%ebx
c0036160:	09 d3                	or     %edx,%ebx
c0036162:	89 1e                	mov    %ebx,(%esi)
c0036164:	8b 5e 04             	mov    0x4(%esi),%ebx
c0036167:	8d 4e 04             	lea    0x4(%esi),%ecx
c003616a:	0f b7 50 fe          	movzwl -0x2(%eax),%edx
c003616e:	c1 ef 10             	shr    $0x10,%edi
c0036171:	0f af 55 e4          	imul   -0x1c(%ebp),%edx
c0036175:	0f b7 f3             	movzwl %bx,%esi
c0036178:	01 f2                	add    %esi,%edx
c003617a:	01 fa                	add    %edi,%edx
c003617c:	89 d6                	mov    %edx,%esi
c003617e:	c1 ee 10             	shr    $0x10,%esi
c0036181:	39 45 dc             	cmp    %eax,-0x24(%ebp)
c0036184:	77 ba                	ja     c0036140 <__multiply+0x120>
c0036186:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0036189:	89 50 04             	mov    %edx,0x4(%eax)
c003618c:	83 45 d8 04          	addl   $0x4,-0x28(%ebp)
c0036190:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0036193:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
c0036197:	39 45 cc             	cmp    %eax,-0x34(%ebp)
c003619a:	0f 87 18 ff ff ff    	ja     c00360b8 <__multiply+0x98>
c00361a0:	8b 75 c8             	mov    -0x38(%ebp),%esi
c00361a3:	85 f6                	test   %esi,%esi
c00361a5:	7e 29                	jle    c00361d0 <__multiply+0x1b0>
c00361a7:	8b 7d c4             	mov    -0x3c(%ebp),%edi
c00361aa:	8b 5f fc             	mov    -0x4(%edi),%ebx
c00361ad:	85 db                	test   %ebx,%ebx
c00361af:	75 1f                	jne    c00361d0 <__multiply+0x1b0>
c00361b1:	8b 55 c8             	mov    -0x38(%ebp),%edx
c00361b4:	89 d0                	mov    %edx,%eax
c00361b6:	c1 e0 02             	shl    $0x2,%eax
c00361b9:	29 c7                	sub    %eax,%edi
c00361bb:	89 f8                	mov    %edi,%eax
c00361bd:	eb 09                	jmp    c00361c8 <__multiply+0x1a8>
c00361bf:	90                   	nop
c00361c0:	8b 4c 90 fc          	mov    -0x4(%eax,%edx,4),%ecx
c00361c4:	85 c9                	test   %ecx,%ecx
c00361c6:	75 05                	jne    c00361cd <__multiply+0x1ad>
c00361c8:	83 ea 01             	sub    $0x1,%edx
c00361cb:	75 f3                	jne    c00361c0 <__multiply+0x1a0>
c00361cd:	89 55 c8             	mov    %edx,-0x38(%ebp)
c00361d0:	8b 45 c0             	mov    -0x40(%ebp),%eax
c00361d3:	8b 7d c8             	mov    -0x38(%ebp),%edi
c00361d6:	89 78 10             	mov    %edi,0x10(%eax)
c00361d9:	83 c4 3c             	add    $0x3c,%esp
c00361dc:	5b                   	pop    %ebx
c00361dd:	5e                   	pop    %esi
c00361de:	5f                   	pop    %edi
c00361df:	5d                   	pop    %ebp
c00361e0:	c3                   	ret    
c00361e1:	eb 0d                	jmp    c00361f0 <__pow5mult>
c00361e3:	90                   	nop
c00361e4:	90                   	nop
c00361e5:	90                   	nop
c00361e6:	90                   	nop
c00361e7:	90                   	nop
c00361e8:	90                   	nop
c00361e9:	90                   	nop
c00361ea:	90                   	nop
c00361eb:	90                   	nop
c00361ec:	90                   	nop
c00361ed:	90                   	nop
c00361ee:	90                   	nop
c00361ef:	90                   	nop

c00361f0 <__pow5mult>:
c00361f0:	55                   	push   %ebp
c00361f1:	89 e5                	mov    %esp,%ebp
c00361f3:	57                   	push   %edi
c00361f4:	56                   	push   %esi
c00361f5:	53                   	push   %ebx
c00361f6:	83 ec 2c             	sub    $0x2c,%esp
c00361f9:	8b 5d 10             	mov    0x10(%ebp),%ebx
c00361fc:	8b 4d 08             	mov    0x8(%ebp),%ecx
c00361ff:	8b 7d 0c             	mov    0xc(%ebp),%edi
c0036202:	89 d8                	mov    %ebx,%eax
c0036204:	83 e0 03             	and    $0x3,%eax
c0036207:	0f 85 a3 00 00 00    	jne    c00362b0 <__pow5mult+0xc0>
c003620d:	c1 fb 02             	sar    $0x2,%ebx
c0036210:	85 db                	test   %ebx,%ebx
c0036212:	74 5c                	je     c0036270 <__pow5mult+0x80>
c0036214:	8b 71 48             	mov    0x48(%ecx),%esi
c0036217:	85 f6                	test   %esi,%esi
c0036219:	0f 84 bd 00 00 00    	je     c00362dc <__pow5mult+0xec>
c003621f:	f6 c3 01             	test   $0x1,%bl
c0036222:	75 15                	jne    c0036239 <__pow5mult+0x49>
c0036224:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036228:	d1 fb                	sar    %ebx
c003622a:	74 44                	je     c0036270 <__pow5mult+0x80>
c003622c:	8b 06                	mov    (%esi),%eax
c003622e:	85 c0                	test   %eax,%eax
c0036230:	74 4e                	je     c0036280 <__pow5mult+0x90>
c0036232:	89 c6                	mov    %eax,%esi
c0036234:	f6 c3 01             	test   $0x1,%bl
c0036237:	74 ef                	je     c0036228 <__pow5mult+0x38>
c0036239:	89 0c 24             	mov    %ecx,(%esp)
c003623c:	89 74 24 08          	mov    %esi,0x8(%esp)
c0036240:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0036244:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0036247:	e8 d4 fd ff ff       	call   c0036020 <__multiply>
c003624c:	85 ff                	test   %edi,%edi
c003624e:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0036251:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0036254:	74 52                	je     c00362a8 <__pow5mult+0xb8>
c0036256:	8b 57 04             	mov    0x4(%edi),%edx
c0036259:	d1 fb                	sar    %ebx
c003625b:	8b 41 4c             	mov    0x4c(%ecx),%eax
c003625e:	8d 04 90             	lea    (%eax,%edx,4),%eax
c0036261:	8b 10                	mov    (%eax),%edx
c0036263:	89 17                	mov    %edx,(%edi)
c0036265:	89 38                	mov    %edi,(%eax)
c0036267:	8b 7d e0             	mov    -0x20(%ebp),%edi
c003626a:	75 c0                	jne    c003622c <__pow5mult+0x3c>
c003626c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036270:	83 c4 2c             	add    $0x2c,%esp
c0036273:	89 f8                	mov    %edi,%eax
c0036275:	5b                   	pop    %ebx
c0036276:	5e                   	pop    %esi
c0036277:	5f                   	pop    %edi
c0036278:	5d                   	pop    %ebp
c0036279:	c3                   	ret    
c003627a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036280:	89 74 24 08          	mov    %esi,0x8(%esp)
c0036284:	89 74 24 04          	mov    %esi,0x4(%esp)
c0036288:	89 0c 24             	mov    %ecx,(%esp)
c003628b:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c003628e:	e8 8d fd ff ff       	call   c0036020 <__multiply>
c0036293:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0036296:	89 06                	mov    %eax,(%esi)
c0036298:	89 c6                	mov    %eax,%esi
c003629a:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c00362a0:	eb 92                	jmp    c0036234 <__pow5mult+0x44>
c00362a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00362a8:	8b 7d e0             	mov    -0x20(%ebp),%edi
c00362ab:	e9 78 ff ff ff       	jmp    c0036228 <__pow5mult+0x38>
c00362b0:	8b 04 85 5c 9a 03 c0 	mov    -0x3ffc65a4(,%eax,4),%eax
c00362b7:	89 7c 24 04          	mov    %edi,0x4(%esp)
c00362bb:	89 0c 24             	mov    %ecx,(%esp)
c00362be:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c00362c5:	00 
c00362c6:	89 44 24 08          	mov    %eax,0x8(%esp)
c00362ca:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c00362cd:	e8 5e fa ff ff       	call   c0035d30 <__multadd>
c00362d2:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c00362d5:	89 c7                	mov    %eax,%edi
c00362d7:	e9 31 ff ff ff       	jmp    c003620d <__pow5mult+0x1d>
c00362dc:	89 0c 24             	mov    %ecx,(%esp)
c00362df:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c00362e6:	00 
c00362e7:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c00362ea:	e8 81 f9 ff ff       	call   c0035c70 <_Balloc>
c00362ef:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c00362f2:	c7 40 14 71 02 00 00 	movl   $0x271,0x14(%eax)
c00362f9:	89 c6                	mov    %eax,%esi
c00362fb:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c0036302:	89 41 48             	mov    %eax,0x48(%ecx)
c0036305:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c003630b:	e9 0f ff ff ff       	jmp    c003621f <__pow5mult+0x2f>

c0036310 <__lshift>:
c0036310:	55                   	push   %ebp
c0036311:	89 e5                	mov    %esp,%ebp
c0036313:	57                   	push   %edi
c0036314:	56                   	push   %esi
c0036315:	53                   	push   %ebx
c0036316:	83 ec 2c             	sub    $0x2c,%esp
c0036319:	8b 45 0c             	mov    0xc(%ebp),%eax
c003631c:	8b 75 10             	mov    0x10(%ebp),%esi
c003631f:	89 c7                	mov    %eax,%edi
c0036321:	8b 50 04             	mov    0x4(%eax),%edx
c0036324:	8b 40 10             	mov    0x10(%eax),%eax
c0036327:	89 f3                	mov    %esi,%ebx
c0036329:	c1 fb 05             	sar    $0x5,%ebx
c003632c:	01 d8                	add    %ebx,%eax
c003632e:	89 45 d0             	mov    %eax,-0x30(%ebp)
c0036331:	83 c0 01             	add    $0x1,%eax
c0036334:	89 c1                	mov    %eax,%ecx
c0036336:	89 45 d8             	mov    %eax,-0x28(%ebp)
c0036339:	8b 47 08             	mov    0x8(%edi),%eax
c003633c:	39 c1                	cmp    %eax,%ecx
c003633e:	7e 09                	jle    c0036349 <__lshift+0x39>
c0036340:	01 c0                	add    %eax,%eax
c0036342:	83 c2 01             	add    $0x1,%edx
c0036345:	39 c1                	cmp    %eax,%ecx
c0036347:	7f f7                	jg     c0036340 <__lshift+0x30>
c0036349:	8b 45 08             	mov    0x8(%ebp),%eax
c003634c:	89 54 24 04          	mov    %edx,0x4(%esp)
c0036350:	89 04 24             	mov    %eax,(%esp)
c0036353:	e8 18 f9 ff ff       	call   c0035c70 <_Balloc>
c0036358:	85 db                	test   %ebx,%ebx
c003635a:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c003635d:	8d 50 14             	lea    0x14(%eax),%edx
c0036360:	7e 17                	jle    c0036379 <__lshift+0x69>
c0036362:	31 c0                	xor    %eax,%eax
c0036364:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036368:	c7 04 82 00 00 00 00 	movl   $0x0,(%edx,%eax,4)
c003636f:	83 c0 01             	add    $0x1,%eax
c0036372:	39 d8                	cmp    %ebx,%eax
c0036374:	75 f2                	jne    c0036368 <__lshift+0x58>
c0036376:	8d 14 82             	lea    (%edx,%eax,4),%edx
c0036379:	8b 7d 0c             	mov    0xc(%ebp),%edi
c003637c:	8b 45 0c             	mov    0xc(%ebp),%eax
c003637f:	8b 4f 10             	mov    0x10(%edi),%ecx
c0036382:	83 c0 14             	add    $0x14,%eax
c0036385:	83 e6 1f             	and    $0x1f,%esi
c0036388:	89 75 e0             	mov    %esi,-0x20(%ebp)
c003638b:	8d 3c 88             	lea    (%eax,%ecx,4),%edi
c003638e:	89 7d e4             	mov    %edi,-0x1c(%ebp)
c0036391:	74 7d                	je     c0036410 <__lshift+0x100>
c0036393:	c7 45 dc 20 00 00 00 	movl   $0x20,-0x24(%ebp)
c003639a:	29 75 dc             	sub    %esi,-0x24(%ebp)
c003639d:	31 f6                	xor    %esi,%esi
c003639f:	eb 09                	jmp    c00363aa <__lshift+0x9a>
c00363a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00363a8:	89 fa                	mov    %edi,%edx
c00363aa:	8b 18                	mov    (%eax),%ebx
c00363ac:	83 c0 04             	add    $0x4,%eax
c00363af:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
c00363b3:	8d 7a 04             	lea    0x4(%edx),%edi
c00363b6:	d3 e3                	shl    %cl,%ebx
c00363b8:	0f b6 4d dc          	movzbl -0x24(%ebp),%ecx
c00363bc:	09 f3                	or     %esi,%ebx
c00363be:	89 1a                	mov    %ebx,(%edx)
c00363c0:	8b 70 fc             	mov    -0x4(%eax),%esi
c00363c3:	d3 ee                	shr    %cl,%esi
c00363c5:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
c00363c8:	77 de                	ja     c00363a8 <__lshift+0x98>
c00363ca:	8b 45 d0             	mov    -0x30(%ebp),%eax
c00363cd:	89 72 04             	mov    %esi,0x4(%edx)
c00363d0:	83 c0 02             	add    $0x2,%eax
c00363d3:	85 f6                	test   %esi,%esi
c00363d5:	0f 44 45 d8          	cmove  -0x28(%ebp),%eax
c00363d9:	89 45 d8             	mov    %eax,-0x28(%ebp)
c00363dc:	8b 45 d8             	mov    -0x28(%ebp),%eax
c00363df:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c00363e2:	8b 75 0c             	mov    0xc(%ebp),%esi
c00363e5:	83 e8 01             	sub    $0x1,%eax
c00363e8:	89 47 10             	mov    %eax,0x10(%edi)
c00363eb:	8b 45 0c             	mov    0xc(%ebp),%eax
c00363ee:	8b 50 04             	mov    0x4(%eax),%edx
c00363f1:	8b 45 08             	mov    0x8(%ebp),%eax
c00363f4:	8b 40 4c             	mov    0x4c(%eax),%eax
c00363f7:	8d 04 90             	lea    (%eax,%edx,4),%eax
c00363fa:	8b 10                	mov    (%eax),%edx
c00363fc:	89 16                	mov    %edx,(%esi)
c00363fe:	89 30                	mov    %esi,(%eax)
c0036400:	83 c4 2c             	add    $0x2c,%esp
c0036403:	89 f8                	mov    %edi,%eax
c0036405:	5b                   	pop    %ebx
c0036406:	5e                   	pop    %esi
c0036407:	5f                   	pop    %edi
c0036408:	5d                   	pop    %ebp
c0036409:	c3                   	ret    
c003640a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036410:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
c0036413:	90                   	nop
c0036414:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036418:	83 c0 04             	add    $0x4,%eax
c003641b:	8b 48 fc             	mov    -0x4(%eax),%ecx
c003641e:	83 c2 04             	add    $0x4,%edx
c0036421:	39 c3                	cmp    %eax,%ebx
c0036423:	89 4a fc             	mov    %ecx,-0x4(%edx)
c0036426:	77 f0                	ja     c0036418 <__lshift+0x108>
c0036428:	eb b2                	jmp    c00363dc <__lshift+0xcc>
c003642a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0036430 <__mcmp>:
c0036430:	55                   	push   %ebp
c0036431:	89 e5                	mov    %esp,%ebp
c0036433:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0036436:	8b 55 0c             	mov    0xc(%ebp),%edx
c0036439:	53                   	push   %ebx
c003643a:	8b 41 10             	mov    0x10(%ecx),%eax
c003643d:	8b 5a 10             	mov    0x10(%edx),%ebx
c0036440:	29 d8                	sub    %ebx,%eax
c0036442:	85 c0                	test   %eax,%eax
c0036444:	75 27                	jne    c003646d <__mcmp+0x3d>
c0036446:	c1 e3 02             	shl    $0x2,%ebx
c0036449:	83 c1 14             	add    $0x14,%ecx
c003644c:	8d 04 19             	lea    (%ecx,%ebx,1),%eax
c003644f:	8d 54 1a 14          	lea    0x14(%edx,%ebx,1),%edx
c0036453:	eb 07                	jmp    c003645c <__mcmp+0x2c>
c0036455:	8d 76 00             	lea    0x0(%esi),%esi
c0036458:	39 c1                	cmp    %eax,%ecx
c003645a:	73 14                	jae    c0036470 <__mcmp+0x40>
c003645c:	83 ea 04             	sub    $0x4,%edx
c003645f:	83 e8 04             	sub    $0x4,%eax
c0036462:	8b 1a                	mov    (%edx),%ebx
c0036464:	39 18                	cmp    %ebx,(%eax)
c0036466:	74 f0                	je     c0036458 <__mcmp+0x28>
c0036468:	19 c0                	sbb    %eax,%eax
c003646a:	83 c8 01             	or     $0x1,%eax
c003646d:	5b                   	pop    %ebx
c003646e:	5d                   	pop    %ebp
c003646f:	c3                   	ret    
c0036470:	31 c0                	xor    %eax,%eax
c0036472:	5b                   	pop    %ebx
c0036473:	5d                   	pop    %ebp
c0036474:	c3                   	ret    
c0036475:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036479:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0036480 <__mdiff>:
c0036480:	55                   	push   %ebp
c0036481:	89 e5                	mov    %esp,%ebp
c0036483:	57                   	push   %edi
c0036484:	56                   	push   %esi
c0036485:	53                   	push   %ebx
c0036486:	83 ec 2c             	sub    $0x2c,%esp
c0036489:	8b 75 0c             	mov    0xc(%ebp),%esi
c003648c:	8b 5d 10             	mov    0x10(%ebp),%ebx
c003648f:	89 34 24             	mov    %esi,(%esp)
c0036492:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c0036496:	e8 95 ff ff ff       	call   c0036430 <__mcmp>
c003649b:	85 c0                	test   %eax,%eax
c003649d:	0f 84 25 01 00 00    	je     c00365c8 <__mdiff+0x148>
c00364a3:	0f 88 0f 01 00 00    	js     c00365b8 <__mdiff+0x138>
c00364a9:	31 ff                	xor    %edi,%edi
c00364ab:	8b 46 04             	mov    0x4(%esi),%eax
c00364ae:	83 c6 14             	add    $0x14,%esi
c00364b1:	89 44 24 04          	mov    %eax,0x4(%esp)
c00364b5:	8b 45 08             	mov    0x8(%ebp),%eax
c00364b8:	89 04 24             	mov    %eax,(%esp)
c00364bb:	e8 b0 f7 ff ff       	call   c0035c70 <_Balloc>
c00364c0:	8d 4b 14             	lea    0x14(%ebx),%ecx
c00364c3:	89 c2                	mov    %eax,%edx
c00364c5:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c00364c8:	89 78 0c             	mov    %edi,0xc(%eax)
c00364cb:	8b 46 fc             	mov    -0x4(%esi),%eax
c00364ce:	89 75 e4             	mov    %esi,-0x1c(%ebp)
c00364d1:	89 45 dc             	mov    %eax,-0x24(%ebp)
c00364d4:	8d 04 86             	lea    (%esi,%eax,4),%eax
c00364d7:	89 45 d8             	mov    %eax,-0x28(%ebp)
c00364da:	8b 43 10             	mov    0x10(%ebx),%eax
c00364dd:	31 db                	xor    %ebx,%ebx
c00364df:	8d 04 81             	lea    (%ecx,%eax,4),%eax
c00364e2:	89 45 e0             	mov    %eax,-0x20(%ebp)
c00364e5:	89 d0                	mov    %edx,%eax
c00364e7:	83 c0 14             	add    $0x14,%eax
c00364ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00364f0:	8b 75 e4             	mov    -0x1c(%ebp),%esi
c00364f3:	83 c0 04             	add    $0x4,%eax
c00364f6:	83 c1 04             	add    $0x4,%ecx
c00364f9:	83 45 e4 04          	addl   $0x4,-0x1c(%ebp)
c00364fd:	8b 3e                	mov    (%esi),%edi
c00364ff:	8b 71 fc             	mov    -0x4(%ecx),%esi
c0036502:	0f b7 d7             	movzwl %di,%edx
c0036505:	01 da                	add    %ebx,%edx
c0036507:	0f b7 de             	movzwl %si,%ebx
c003650a:	29 da                	sub    %ebx,%edx
c003650c:	c1 ef 10             	shr    $0x10,%edi
c003650f:	89 d3                	mov    %edx,%ebx
c0036511:	c1 ee 10             	shr    $0x10,%esi
c0036514:	0f b7 d2             	movzwl %dx,%edx
c0036517:	c1 fb 10             	sar    $0x10,%ebx
c003651a:	29 f7                	sub    %esi,%edi
c003651c:	01 df                	add    %ebx,%edi
c003651e:	89 fb                	mov    %edi,%ebx
c0036520:	c1 e7 10             	shl    $0x10,%edi
c0036523:	09 d7                	or     %edx,%edi
c0036525:	c1 fb 10             	sar    $0x10,%ebx
c0036528:	39 4d e0             	cmp    %ecx,-0x20(%ebp)
c003652b:	89 78 fc             	mov    %edi,-0x4(%eax)
c003652e:	77 c0                	ja     c00364f0 <__mdiff+0x70>
c0036530:	8b 75 e4             	mov    -0x1c(%ebp),%esi
c0036533:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c0036536:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0036539:	89 75 e0             	mov    %esi,-0x20(%ebp)
c003653c:	39 f1                	cmp    %esi,%ecx
c003653e:	76 3f                	jbe    c003657f <__mdiff+0xff>
c0036540:	8b 3e                	mov    (%esi),%edi
c0036542:	83 c6 04             	add    $0x4,%esi
c0036545:	83 c0 04             	add    $0x4,%eax
c0036548:	0f b7 d7             	movzwl %di,%edx
c003654b:	01 da                	add    %ebx,%edx
c003654d:	89 d3                	mov    %edx,%ebx
c003654f:	0f b7 d2             	movzwl %dx,%edx
c0036552:	c1 fb 10             	sar    $0x10,%ebx
c0036555:	c1 ef 10             	shr    $0x10,%edi
c0036558:	01 df                	add    %ebx,%edi
c003655a:	89 fb                	mov    %edi,%ebx
c003655c:	c1 e7 10             	shl    $0x10,%edi
c003655f:	09 d7                	or     %edx,%edi
c0036561:	c1 fb 10             	sar    $0x10,%ebx
c0036564:	39 f1                	cmp    %esi,%ecx
c0036566:	89 78 fc             	mov    %edi,-0x4(%eax)
c0036569:	77 d5                	ja     c0036540 <__mdiff+0xc0>
c003656b:	8b 45 e0             	mov    -0x20(%ebp),%eax
c003656e:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c0036571:	f7 d0                	not    %eax
c0036573:	01 c8                	add    %ecx,%eax
c0036575:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0036578:	c1 e8 02             	shr    $0x2,%eax
c003657b:	8d 44 81 04          	lea    0x4(%ecx,%eax,4),%eax
c003657f:	85 ff                	test   %edi,%edi
c0036581:	75 23                	jne    c00365a6 <__mdiff+0x126>
c0036583:	8b 4d dc             	mov    -0x24(%ebp),%ecx
c0036586:	8d 14 8d 00 00 00 00 	lea    0x0(,%ecx,4),%edx
c003658d:	29 d0                	sub    %edx,%eax
c003658f:	89 ca                	mov    %ecx,%edx
c0036591:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036598:	83 ea 01             	sub    $0x1,%edx
c003659b:	8b 4c 90 fc          	mov    -0x4(%eax,%edx,4),%ecx
c003659f:	85 c9                	test   %ecx,%ecx
c00365a1:	74 f5                	je     c0036598 <__mdiff+0x118>
c00365a3:	89 55 dc             	mov    %edx,-0x24(%ebp)
c00365a6:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c00365a9:	8b 4d dc             	mov    -0x24(%ebp),%ecx
c00365ac:	89 48 10             	mov    %ecx,0x10(%eax)
c00365af:	83 c4 2c             	add    $0x2c,%esp
c00365b2:	5b                   	pop    %ebx
c00365b3:	5e                   	pop    %esi
c00365b4:	5f                   	pop    %edi
c00365b5:	5d                   	pop    %ebp
c00365b6:	c3                   	ret    
c00365b7:	90                   	nop
c00365b8:	89 f0                	mov    %esi,%eax
c00365ba:	bf 01 00 00 00       	mov    $0x1,%edi
c00365bf:	89 de                	mov    %ebx,%esi
c00365c1:	89 c3                	mov    %eax,%ebx
c00365c3:	e9 e3 fe ff ff       	jmp    c00364ab <__mdiff+0x2b>
c00365c8:	8b 45 08             	mov    0x8(%ebp),%eax
c00365cb:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c00365d2:	00 
c00365d3:	89 04 24             	mov    %eax,(%esp)
c00365d6:	e8 95 f6 ff ff       	call   c0035c70 <_Balloc>
c00365db:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c00365e2:	c7 40 14 00 00 00 00 	movl   $0x0,0x14(%eax)
c00365e9:	83 c4 2c             	add    $0x2c,%esp
c00365ec:	5b                   	pop    %ebx
c00365ed:	5e                   	pop    %esi
c00365ee:	5f                   	pop    %edi
c00365ef:	5d                   	pop    %ebp
c00365f0:	c3                   	ret    
c00365f1:	eb 0d                	jmp    c0036600 <__ulp>
c00365f3:	90                   	nop
c00365f4:	90                   	nop
c00365f5:	90                   	nop
c00365f6:	90                   	nop
c00365f7:	90                   	nop
c00365f8:	90                   	nop
c00365f9:	90                   	nop
c00365fa:	90                   	nop
c00365fb:	90                   	nop
c00365fc:	90                   	nop
c00365fd:	90                   	nop
c00365fe:	90                   	nop
c00365ff:	90                   	nop

c0036600 <__ulp>:
c0036600:	55                   	push   %ebp
c0036601:	89 e5                	mov    %esp,%ebp
c0036603:	83 ec 08             	sub    $0x8,%esp
c0036606:	dd 45 08             	fldl   0x8(%ebp)
c0036609:	dd 5d f8             	fstpl  -0x8(%ebp)
c003660c:	8b 4d fc             	mov    -0x4(%ebp),%ecx
c003660f:	81 e1 00 00 f0 7f    	and    $0x7ff00000,%ecx
c0036615:	81 e9 00 00 40 03    	sub    $0x3400000,%ecx
c003661b:	85 c9                	test   %ecx,%ecx
c003661d:	7e 11                	jle    c0036630 <__ulp+0x30>
c003661f:	89 4d fc             	mov    %ecx,-0x4(%ebp)
c0036622:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0036629:	dd 45 f8             	fldl   -0x8(%ebp)
c003662c:	c9                   	leave  
c003662d:	c3                   	ret    
c003662e:	66 90                	xchg   %ax,%ax
c0036630:	f7 d9                	neg    %ecx
c0036632:	c1 f9 14             	sar    $0x14,%ecx
c0036635:	83 f9 13             	cmp    $0x13,%ecx
c0036638:	7e 26                	jle    c0036660 <__ulp+0x60>
c003663a:	83 f9 32             	cmp    $0x32,%ecx
c003663d:	b8 01 00 00 00       	mov    $0x1,%eax
c0036642:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0036649:	7f 0b                	jg     c0036656 <__ulp+0x56>
c003664b:	ba 33 00 00 00       	mov    $0x33,%edx
c0036650:	29 ca                	sub    %ecx,%edx
c0036652:	89 d1                	mov    %edx,%ecx
c0036654:	d3 e0                	shl    %cl,%eax
c0036656:	89 45 f8             	mov    %eax,-0x8(%ebp)
c0036659:	dd 45 f8             	fldl   -0x8(%ebp)
c003665c:	c9                   	leave  
c003665d:	c3                   	ret    
c003665e:	66 90                	xchg   %ax,%ax
c0036660:	b8 00 00 08 00       	mov    $0x80000,%eax
c0036665:	d3 f8                	sar    %cl,%eax
c0036667:	89 45 fc             	mov    %eax,-0x4(%ebp)
c003666a:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0036671:	dd 45 f8             	fldl   -0x8(%ebp)
c0036674:	c9                   	leave  
c0036675:	c3                   	ret    
c0036676:	8d 76 00             	lea    0x0(%esi),%esi
c0036679:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0036680 <__b2d>:
c0036680:	55                   	push   %ebp
c0036681:	89 e5                	mov    %esp,%ebp
c0036683:	57                   	push   %edi
c0036684:	56                   	push   %esi
c0036685:	53                   	push   %ebx
c0036686:	83 ec 18             	sub    $0x18,%esp
c0036689:	8b 45 08             	mov    0x8(%ebp),%eax
c003668c:	8d 78 14             	lea    0x14(%eax),%edi
c003668f:	8b 40 10             	mov    0x10(%eax),%eax
c0036692:	8d 1c 87             	lea    (%edi,%eax,4),%ebx
c0036695:	8b 73 fc             	mov    -0x4(%ebx),%esi
c0036698:	8d 43 fc             	lea    -0x4(%ebx),%eax
c003669b:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c003669e:	89 34 24             	mov    %esi,(%esp)
c00366a1:	e8 6a f8 ff ff       	call   c0035f10 <__hi0bits>
c00366a6:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c00366a9:	ba 20 00 00 00       	mov    $0x20,%edx
c00366ae:	29 c2                	sub    %eax,%edx
c00366b0:	83 f8 0a             	cmp    $0xa,%eax
c00366b3:	89 11                	mov    %edx,(%ecx)
c00366b5:	7f 41                	jg     c00366f8 <__b2d+0x78>
c00366b7:	b9 0b 00 00 00       	mov    $0xb,%ecx
c00366bc:	89 f2                	mov    %esi,%edx
c00366be:	29 c1                	sub    %eax,%ecx
c00366c0:	d3 ea                	shr    %cl,%edx
c00366c2:	81 ca 00 00 f0 3f    	or     $0x3ff00000,%edx
c00366c8:	89 55 ec             	mov    %edx,-0x14(%ebp)
c00366cb:	31 d2                	xor    %edx,%edx
c00366cd:	3b 7d e4             	cmp    -0x1c(%ebp),%edi
c00366d0:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
c00366d7:	73 05                	jae    c00366de <__b2d+0x5e>
c00366d9:	8b 53 f8             	mov    -0x8(%ebx),%edx
c00366dc:	d3 ea                	shr    %cl,%edx
c00366de:	8d 48 15             	lea    0x15(%eax),%ecx
c00366e1:	d3 e6                	shl    %cl,%esi
c00366e3:	09 f2                	or     %esi,%edx
c00366e5:	89 55 e8             	mov    %edx,-0x18(%ebp)
c00366e8:	dd 45 e8             	fldl   -0x18(%ebp)
c00366eb:	83 c4 18             	add    $0x18,%esp
c00366ee:	5b                   	pop    %ebx
c00366ef:	5e                   	pop    %esi
c00366f0:	5f                   	pop    %edi
c00366f1:	5d                   	pop    %ebp
c00366f2:	c3                   	ret    
c00366f3:	90                   	nop
c00366f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00366f8:	31 d2                	xor    %edx,%edx
c00366fa:	3b 7d e4             	cmp    -0x1c(%ebp),%edi
c00366fd:	73 09                	jae    c0036708 <__b2d+0x88>
c00366ff:	8b 53 f8             	mov    -0x8(%ebx),%edx
c0036702:	8d 4b f8             	lea    -0x8(%ebx),%ecx
c0036705:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0036708:	89 c3                	mov    %eax,%ebx
c003670a:	83 eb 0b             	sub    $0xb,%ebx
c003670d:	89 5d e0             	mov    %ebx,-0x20(%ebp)
c0036710:	74 4e                	je     c0036760 <__b2d+0xe0>
c0036712:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
c0036716:	bb 2b 00 00 00       	mov    $0x2b,%ebx
c003671b:	29 c3                	sub    %eax,%ebx
c003671d:	89 d0                	mov    %edx,%eax
c003671f:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
c0036726:	d3 e6                	shl    %cl,%esi
c0036728:	89 d9                	mov    %ebx,%ecx
c003672a:	d3 e8                	shr    %cl,%eax
c003672c:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c003672f:	81 ce 00 00 f0 3f    	or     $0x3ff00000,%esi
c0036735:	09 c6                	or     %eax,%esi
c0036737:	31 c0                	xor    %eax,%eax
c0036739:	89 75 ec             	mov    %esi,-0x14(%ebp)
c003673c:	39 f9                	cmp    %edi,%ecx
c003673e:	76 07                	jbe    c0036747 <__b2d+0xc7>
c0036740:	8b 41 fc             	mov    -0x4(%ecx),%eax
c0036743:	89 d9                	mov    %ebx,%ecx
c0036745:	d3 e8                	shr    %cl,%eax
c0036747:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
c003674b:	d3 e2                	shl    %cl,%edx
c003674d:	09 d0                	or     %edx,%eax
c003674f:	89 45 e8             	mov    %eax,-0x18(%ebp)
c0036752:	dd 45 e8             	fldl   -0x18(%ebp)
c0036755:	83 c4 18             	add    $0x18,%esp
c0036758:	5b                   	pop    %ebx
c0036759:	5e                   	pop    %esi
c003675a:	5f                   	pop    %edi
c003675b:	5d                   	pop    %ebp
c003675c:	c3                   	ret    
c003675d:	8d 76 00             	lea    0x0(%esi),%esi
c0036760:	81 ce 00 00 f0 3f    	or     $0x3ff00000,%esi
c0036766:	89 75 ec             	mov    %esi,-0x14(%ebp)
c0036769:	89 55 e8             	mov    %edx,-0x18(%ebp)
c003676c:	dd 45 e8             	fldl   -0x18(%ebp)
c003676f:	83 c4 18             	add    $0x18,%esp
c0036772:	5b                   	pop    %ebx
c0036773:	5e                   	pop    %esi
c0036774:	5f                   	pop    %edi
c0036775:	5d                   	pop    %ebp
c0036776:	c3                   	ret    
c0036777:	89 f6                	mov    %esi,%esi
c0036779:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0036780 <__d2b>:
c0036780:	55                   	push   %ebp
c0036781:	89 e5                	mov    %esp,%ebp
c0036783:	57                   	push   %edi
c0036784:	56                   	push   %esi
c0036785:	53                   	push   %ebx
c0036786:	83 ec 2c             	sub    $0x2c,%esp
c0036789:	8b 45 08             	mov    0x8(%ebp),%eax
c003678c:	dd 45 0c             	fldl   0xc(%ebp)
c003678f:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0036796:	00 
c0036797:	dd 5d d0             	fstpl  -0x30(%ebp)
c003679a:	89 04 24             	mov    %eax,(%esp)
c003679d:	e8 ce f4 ff ff       	call   c0035c70 <_Balloc>
c00367a2:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
c00367a5:	89 c6                	mov    %eax,%esi
c00367a7:	89 d8                	mov    %ebx,%eax
c00367a9:	81 e3 ff ff ff 7f    	and    $0x7fffffff,%ebx
c00367af:	25 ff ff 0f 00       	and    $0xfffff,%eax
c00367b4:	c1 eb 14             	shr    $0x14,%ebx
c00367b7:	85 db                	test   %ebx,%ebx
c00367b9:	74 05                	je     c00367c0 <__d2b+0x40>
c00367bb:	0d 00 00 10 00       	or     $0x100000,%eax
c00367c0:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c00367c3:	8b 45 d0             	mov    -0x30(%ebp),%eax
c00367c6:	85 c0                	test   %eax,%eax
c00367c8:	74 56                	je     c0036820 <__d2b+0xa0>
c00367ca:	89 45 e0             	mov    %eax,-0x20(%ebp)
c00367cd:	8d 45 e0             	lea    -0x20(%ebp),%eax
c00367d0:	89 04 24             	mov    %eax,(%esp)
c00367d3:	e8 98 f7 ff ff       	call   c0035f70 <__lo0bits>
c00367d8:	85 c0                	test   %eax,%eax
c00367da:	0f 85 90 00 00 00    	jne    c0036870 <__d2b+0xf0>
c00367e0:	8b 55 e0             	mov    -0x20(%ebp),%edx
c00367e3:	89 56 14             	mov    %edx,0x14(%esi)
c00367e6:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c00367e9:	83 fa 01             	cmp    $0x1,%edx
c00367ec:	19 ff                	sbb    %edi,%edi
c00367ee:	83 c7 02             	add    $0x2,%edi
c00367f1:	85 db                	test   %ebx,%ebx
c00367f3:	89 56 18             	mov    %edx,0x18(%esi)
c00367f6:	89 7e 10             	mov    %edi,0x10(%esi)
c00367f9:	74 49                	je     c0036844 <__d2b+0xc4>
c00367fb:	8b 4d 14             	mov    0x14(%ebp),%ecx
c00367fe:	8d 94 18 cd fb ff ff 	lea    -0x433(%eax,%ebx,1),%edx
c0036805:	89 11                	mov    %edx,(%ecx)
c0036807:	ba 35 00 00 00       	mov    $0x35,%edx
c003680c:	29 c2                	sub    %eax,%edx
c003680e:	8b 45 18             	mov    0x18(%ebp),%eax
c0036811:	89 10                	mov    %edx,(%eax)
c0036813:	83 c4 2c             	add    $0x2c,%esp
c0036816:	89 f0                	mov    %esi,%eax
c0036818:	5b                   	pop    %ebx
c0036819:	5e                   	pop    %esi
c003681a:	5f                   	pop    %edi
c003681b:	5d                   	pop    %ebp
c003681c:	c3                   	ret    
c003681d:	8d 76 00             	lea    0x0(%esi),%esi
c0036820:	8d 45 e4             	lea    -0x1c(%ebp),%eax
c0036823:	bf 01 00 00 00       	mov    $0x1,%edi
c0036828:	89 04 24             	mov    %eax,(%esp)
c003682b:	e8 40 f7 ff ff       	call   c0035f70 <__lo0bits>
c0036830:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c0036833:	c7 46 10 01 00 00 00 	movl   $0x1,0x10(%esi)
c003683a:	89 56 14             	mov    %edx,0x14(%esi)
c003683d:	83 c0 20             	add    $0x20,%eax
c0036840:	85 db                	test   %ebx,%ebx
c0036842:	75 b7                	jne    c00367fb <__d2b+0x7b>
c0036844:	8b 4d 14             	mov    0x14(%ebp),%ecx
c0036847:	2d 32 04 00 00       	sub    $0x432,%eax
c003684c:	89 01                	mov    %eax,(%ecx)
c003684e:	8b 44 be 10          	mov    0x10(%esi,%edi,4),%eax
c0036852:	c1 e7 05             	shl    $0x5,%edi
c0036855:	89 04 24             	mov    %eax,(%esp)
c0036858:	e8 b3 f6 ff ff       	call   c0035f10 <__hi0bits>
c003685d:	29 c7                	sub    %eax,%edi
c003685f:	8b 45 18             	mov    0x18(%ebp),%eax
c0036862:	89 38                	mov    %edi,(%eax)
c0036864:	83 c4 2c             	add    $0x2c,%esp
c0036867:	89 f0                	mov    %esi,%eax
c0036869:	5b                   	pop    %ebx
c003686a:	5e                   	pop    %esi
c003686b:	5f                   	pop    %edi
c003686c:	5d                   	pop    %ebp
c003686d:	c3                   	ret    
c003686e:	66 90                	xchg   %ax,%ax
c0036870:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c0036873:	b9 20 00 00 00       	mov    $0x20,%ecx
c0036878:	29 c1                	sub    %eax,%ecx
c003687a:	89 d7                	mov    %edx,%edi
c003687c:	d3 e7                	shl    %cl,%edi
c003687e:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0036881:	09 f9                	or     %edi,%ecx
c0036883:	89 4e 14             	mov    %ecx,0x14(%esi)
c0036886:	89 c1                	mov    %eax,%ecx
c0036888:	d3 ea                	shr    %cl,%edx
c003688a:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c003688d:	e9 57 ff ff ff       	jmp    c00367e9 <__d2b+0x69>
c0036892:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036899:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c00368a0 <__ratio>:
c00368a0:	55                   	push   %ebp
c00368a1:	89 e5                	mov    %esp,%ebp
c00368a3:	56                   	push   %esi
c00368a4:	53                   	push   %ebx
c00368a5:	83 ec 30             	sub    $0x30,%esp
c00368a8:	8b 75 08             	mov    0x8(%ebp),%esi
c00368ab:	8d 45 f0             	lea    -0x10(%ebp),%eax
c00368ae:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c00368b1:	89 44 24 04          	mov    %eax,0x4(%esp)
c00368b5:	89 34 24             	mov    %esi,(%esp)
c00368b8:	e8 c3 fd ff ff       	call   c0036680 <__b2d>
c00368bd:	8d 45 f4             	lea    -0xc(%ebp),%eax
c00368c0:	89 44 24 04          	mov    %eax,0x4(%esp)
c00368c4:	89 1c 24             	mov    %ebx,(%esp)
c00368c7:	dd 55 e0             	fstl   -0x20(%ebp)
c00368ca:	dd 5d d8             	fstpl  -0x28(%ebp)
c00368cd:	e8 ae fd ff ff       	call   c0036680 <__b2d>
c00368d2:	8b 46 10             	mov    0x10(%esi),%eax
c00368d5:	2b 43 10             	sub    0x10(%ebx),%eax
c00368d8:	8b 55 f0             	mov    -0x10(%ebp),%edx
c00368db:	2b 55 f4             	sub    -0xc(%ebp),%edx
c00368de:	c1 e0 05             	shl    $0x5,%eax
c00368e1:	01 d0                	add    %edx,%eax
c00368e3:	dd 55 d0             	fstl   -0x30(%ebp)
c00368e6:	85 c0                	test   %eax,%eax
c00368e8:	dd 45 d8             	fldl   -0x28(%ebp)
c00368eb:	7e 1b                	jle    c0036908 <__ratio+0x68>
c00368ed:	dd d8                	fstp   %st(0)
c00368ef:	c1 e0 14             	shl    $0x14,%eax
c00368f2:	01 45 e4             	add    %eax,-0x1c(%ebp)
c00368f5:	dd 45 e0             	fldl   -0x20(%ebp)
c00368f8:	83 c4 30             	add    $0x30,%esp
c00368fb:	5b                   	pop    %ebx
c00368fc:	de f1                	fdivp  %st,%st(1)
c00368fe:	5e                   	pop    %esi
c00368ff:	5d                   	pop    %ebp
c0036900:	c3                   	ret    
c0036901:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036908:	dd d9                	fstp   %st(1)
c003690a:	c1 e0 14             	shl    $0x14,%eax
c003690d:	29 45 d4             	sub    %eax,-0x2c(%ebp)
c0036910:	dd 45 d0             	fldl   -0x30(%ebp)
c0036913:	83 c4 30             	add    $0x30,%esp
c0036916:	5b                   	pop    %ebx
c0036917:	de f9                	fdivrp %st,%st(1)
c0036919:	5e                   	pop    %esi
c003691a:	5d                   	pop    %ebp
c003691b:	c3                   	ret    
c003691c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

c0036920 <_mprec_log10>:
c0036920:	55                   	push   %ebp
c0036921:	89 e5                	mov    %esp,%ebp
c0036923:	8b 45 08             	mov    0x8(%ebp),%eax
c0036926:	83 f8 17             	cmp    $0x17,%eax
c0036929:	7e 1d                	jle    c0036948 <_mprec_log10+0x28>
c003692b:	d9 e8                	fld1   
c003692d:	d9 05 18 9a 03 c0    	flds   0xc0039a18
c0036933:	90                   	nop
c0036934:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036938:	83 e8 01             	sub    $0x1,%eax
c003693b:	dc c9                	fmul   %st,%st(1)
c003693d:	75 f9                	jne    c0036938 <_mprec_log10+0x18>
c003693f:	dd d8                	fstp   %st(0)
c0036941:	5d                   	pop    %ebp
c0036942:	c3                   	ret    
c0036943:	90                   	nop
c0036944:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036948:	dd 04 c5 00 9b 03 c0 	fldl   -0x3ffc6500(,%eax,8)
c003694f:	5d                   	pop    %ebp
c0036950:	c3                   	ret    
c0036951:	eb 0d                	jmp    c0036960 <__copybits>
c0036953:	90                   	nop
c0036954:	90                   	nop
c0036955:	90                   	nop
c0036956:	90                   	nop
c0036957:	90                   	nop
c0036958:	90                   	nop
c0036959:	90                   	nop
c003695a:	90                   	nop
c003695b:	90                   	nop
c003695c:	90                   	nop
c003695d:	90                   	nop
c003695e:	90                   	nop
c003695f:	90                   	nop

c0036960 <__copybits>:
c0036960:	55                   	push   %ebp
c0036961:	89 e5                	mov    %esp,%ebp
c0036963:	57                   	push   %edi
c0036964:	8b 7d 10             	mov    0x10(%ebp),%edi
c0036967:	56                   	push   %esi
c0036968:	8b 75 0c             	mov    0xc(%ebp),%esi
c003696b:	8b 45 08             	mov    0x8(%ebp),%eax
c003696e:	53                   	push   %ebx
c003696f:	8b 4f 10             	mov    0x10(%edi),%ecx
c0036972:	8d 56 ff             	lea    -0x1(%esi),%edx
c0036975:	c1 fa 05             	sar    $0x5,%edx
c0036978:	8d 74 90 04          	lea    0x4(%eax,%edx,4),%esi
c003697c:	8d 57 14             	lea    0x14(%edi),%edx
c003697f:	8d 1c 8a             	lea    (%edx,%ecx,4),%ebx
c0036982:	39 da                	cmp    %ebx,%edx
c0036984:	73 34                	jae    c00369ba <__copybits+0x5a>
c0036986:	89 c1                	mov    %eax,%ecx
c0036988:	83 c2 04             	add    $0x4,%edx
c003698b:	8b 42 fc             	mov    -0x4(%edx),%eax
c003698e:	83 c1 04             	add    $0x4,%ecx
c0036991:	39 d3                	cmp    %edx,%ebx
c0036993:	89 41 fc             	mov    %eax,-0x4(%ecx)
c0036996:	77 f0                	ja     c0036988 <__copybits+0x28>
c0036998:	8b 45 08             	mov    0x8(%ebp),%eax
c003699b:	29 fb                	sub    %edi,%ebx
c003699d:	8d 53 eb             	lea    -0x15(%ebx),%edx
c00369a0:	c1 ea 02             	shr    $0x2,%edx
c00369a3:	8d 44 90 04          	lea    0x4(%eax,%edx,4),%eax
c00369a7:	39 c6                	cmp    %eax,%esi
c00369a9:	76 13                	jbe    c00369be <__copybits+0x5e>
c00369ab:	90                   	nop
c00369ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00369b0:	83 c0 04             	add    $0x4,%eax
c00369b3:	c7 40 fc 00 00 00 00 	movl   $0x0,-0x4(%eax)
c00369ba:	39 c6                	cmp    %eax,%esi
c00369bc:	77 f2                	ja     c00369b0 <__copybits+0x50>
c00369be:	5b                   	pop    %ebx
c00369bf:	5e                   	pop    %esi
c00369c0:	5f                   	pop    %edi
c00369c1:	5d                   	pop    %ebp
c00369c2:	c3                   	ret    
c00369c3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00369c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c00369d0 <__any_on>:
c00369d0:	55                   	push   %ebp
c00369d1:	89 e5                	mov    %esp,%ebp
c00369d3:	8b 45 08             	mov    0x8(%ebp),%eax
c00369d6:	57                   	push   %edi
c00369d7:	56                   	push   %esi
c00369d8:	53                   	push   %ebx
c00369d9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c00369dc:	8d 50 14             	lea    0x14(%eax),%edx
c00369df:	8b 40 10             	mov    0x10(%eax),%eax
c00369e2:	c1 fb 05             	sar    $0x5,%ebx
c00369e5:	39 d8                	cmp    %ebx,%eax
c00369e7:	7d 2f                	jge    c0036a18 <__any_on+0x48>
c00369e9:	8d 1c 82             	lea    (%edx,%eax,4),%ebx
c00369ec:	39 da                	cmp    %ebx,%edx
c00369ee:	73 1d                	jae    c0036a0d <__any_on+0x3d>
c00369f0:	8d 43 fc             	lea    -0x4(%ebx),%eax
c00369f3:	8b 5b fc             	mov    -0x4(%ebx),%ebx
c00369f6:	85 db                	test   %ebx,%ebx
c00369f8:	74 0f                	je     c0036a09 <__any_on+0x39>
c00369fa:	eb 44                	jmp    c0036a40 <__any_on+0x70>
c00369fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036a00:	83 e8 04             	sub    $0x4,%eax
c0036a03:	8b 08                	mov    (%eax),%ecx
c0036a05:	85 c9                	test   %ecx,%ecx
c0036a07:	75 37                	jne    c0036a40 <__any_on+0x70>
c0036a09:	39 c2                	cmp    %eax,%edx
c0036a0b:	72 f3                	jb     c0036a00 <__any_on+0x30>
c0036a0d:	31 c0                	xor    %eax,%eax
c0036a0f:	5b                   	pop    %ebx
c0036a10:	5e                   	pop    %esi
c0036a11:	5f                   	pop    %edi
c0036a12:	5d                   	pop    %ebp
c0036a13:	c3                   	ret    
c0036a14:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036a18:	7e 1e                	jle    c0036a38 <__any_on+0x68>
c0036a1a:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c0036a1d:	8d 1c 9a             	lea    (%edx,%ebx,4),%ebx
c0036a20:	83 e1 1f             	and    $0x1f,%ecx
c0036a23:	74 c7                	je     c00369ec <__any_on+0x1c>
c0036a25:	8b 3b                	mov    (%ebx),%edi
c0036a27:	b8 01 00 00 00       	mov    $0x1,%eax
c0036a2c:	89 fe                	mov    %edi,%esi
c0036a2e:	d3 ee                	shr    %cl,%esi
c0036a30:	d3 e6                	shl    %cl,%esi
c0036a32:	39 fe                	cmp    %edi,%esi
c0036a34:	75 d9                	jne    c0036a0f <__any_on+0x3f>
c0036a36:	eb b4                	jmp    c00369ec <__any_on+0x1c>
c0036a38:	8d 1c 9a             	lea    (%edx,%ebx,4),%ebx
c0036a3b:	eb af                	jmp    c00369ec <__any_on+0x1c>
c0036a3d:	8d 76 00             	lea    0x0(%esi),%esi
c0036a40:	5b                   	pop    %ebx
c0036a41:	b8 01 00 00 00       	mov    $0x1,%eax
c0036a46:	5e                   	pop    %esi
c0036a47:	5f                   	pop    %edi
c0036a48:	5d                   	pop    %ebp
c0036a49:	c3                   	ret    
c0036a4a:	66 90                	xchg   %ax,%ax
c0036a4c:	66 90                	xchg   %ax,%ax
c0036a4e:	66 90                	xchg   %ax,%ax

c0036a50 <_sbrk_r>:
c0036a50:	55                   	push   %ebp
c0036a51:	89 e5                	mov    %esp,%ebp
c0036a53:	83 ec 18             	sub    $0x18,%esp
c0036a56:	8b 45 0c             	mov    0xc(%ebp),%eax
c0036a59:	c7 05 04 40 09 c0 00 	movl   $0x0,0xc0094004
c0036a60:	00 00 00 
c0036a63:	89 04 24             	mov    %eax,(%esp)
c0036a66:	e8 21 a8 ff ff       	call   c003128c <sbrk>
c0036a6b:	83 f8 ff             	cmp    $0xffffffff,%eax
c0036a6e:	74 08                	je     c0036a78 <_sbrk_r+0x28>
c0036a70:	c9                   	leave  
c0036a71:	c3                   	ret    
c0036a72:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036a78:	8b 15 04 40 09 c0    	mov    0xc0094004,%edx
c0036a7e:	85 d2                	test   %edx,%edx
c0036a80:	74 ee                	je     c0036a70 <_sbrk_r+0x20>
c0036a82:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0036a85:	89 11                	mov    %edx,(%ecx)
c0036a87:	c9                   	leave  
c0036a88:	c3                   	ret    
c0036a89:	66 90                	xchg   %ax,%ax
c0036a8b:	66 90                	xchg   %ax,%ax
c0036a8d:	66 90                	xchg   %ax,%ax
c0036a8f:	90                   	nop

c0036a90 <__fpclassifyd>:
c0036a90:	55                   	push   %ebp
c0036a91:	b8 02 00 00 00       	mov    $0x2,%eax
c0036a96:	89 e5                	mov    %esp,%ebp
c0036a98:	53                   	push   %ebx
c0036a99:	83 ec 0c             	sub    $0xc,%esp
c0036a9c:	dd 45 08             	fldl   0x8(%ebp)
c0036a9f:	dd 5d f0             	fstpl  -0x10(%ebp)
c0036aa2:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0036aa5:	8b 4d f4             	mov    -0xc(%ebp),%ecx
c0036aa8:	89 d3                	mov    %edx,%ebx
c0036aaa:	09 cb                	or     %ecx,%ebx
c0036aac:	75 0a                	jne    c0036ab8 <__fpclassifyd+0x28>
c0036aae:	83 c4 0c             	add    $0xc,%esp
c0036ab1:	5b                   	pop    %ebx
c0036ab2:	5d                   	pop    %ebp
c0036ab3:	c3                   	ret    
c0036ab4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036ab8:	85 d2                	test   %edx,%edx
c0036aba:	0f 94 c2             	sete   %dl
c0036abd:	75 08                	jne    c0036ac7 <__fpclassifyd+0x37>
c0036abf:	81 f9 00 00 00 80    	cmp    $0x80000000,%ecx
c0036ac5:	74 e7                	je     c0036aae <__fpclassifyd+0x1e>
c0036ac7:	81 e1 ff ff ff 7f    	and    $0x7fffffff,%ecx
c0036acd:	b8 04 00 00 00       	mov    $0x4,%eax
c0036ad2:	8d 99 00 00 f0 ff    	lea    -0x100000(%ecx),%ebx
c0036ad8:	81 fb ff ff df 7f    	cmp    $0x7fdfffff,%ebx
c0036ade:	76 ce                	jbe    c0036aae <__fpclassifyd+0x1e>
c0036ae0:	81 f9 ff ff 0f 00    	cmp    $0xfffff,%ecx
c0036ae6:	b0 03                	mov    $0x3,%al
c0036ae8:	76 c4                	jbe    c0036aae <__fpclassifyd+0x1e>
c0036aea:	31 c0                	xor    %eax,%eax
c0036aec:	81 f9 00 00 f0 7f    	cmp    $0x7ff00000,%ecx
c0036af2:	0f 94 c0             	sete   %al
c0036af5:	21 d0                	and    %edx,%eax
c0036af7:	eb b5                	jmp    c0036aae <__fpclassifyd+0x1e>
c0036af9:	66 90                	xchg   %ax,%ax
c0036afb:	66 90                	xchg   %ax,%ax
c0036afd:	66 90                	xchg   %ax,%ax
c0036aff:	90                   	nop

c0036b00 <strcmp>:
c0036b00:	55                   	push   %ebp
c0036b01:	89 e5                	mov    %esp,%ebp
c0036b03:	8b 45 08             	mov    0x8(%ebp),%eax
c0036b06:	8b 55 0c             	mov    0xc(%ebp),%edx
c0036b09:	53                   	push   %ebx
c0036b0a:	89 c1                	mov    %eax,%ecx
c0036b0c:	09 d1                	or     %edx,%ecx
c0036b0e:	83 e1 03             	and    $0x3,%ecx
c0036b11:	75 17                	jne    c0036b2a <strcmp+0x2a>
c0036b13:	8b 08                	mov    (%eax),%ecx
c0036b15:	3b 0a                	cmp    (%edx),%ecx
c0036b17:	74 33                	je     c0036b4c <strcmp+0x4c>
c0036b19:	eb 0f                	jmp    c0036b2a <strcmp+0x2a>
c0036b1b:	90                   	nop
c0036b1c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036b20:	3a 0a                	cmp    (%edx),%cl
c0036b22:	75 0d                	jne    c0036b31 <strcmp+0x31>
c0036b24:	83 c0 01             	add    $0x1,%eax
c0036b27:	83 c2 01             	add    $0x1,%edx
c0036b2a:	0f b6 08             	movzbl (%eax),%ecx
c0036b2d:	84 c9                	test   %cl,%cl
c0036b2f:	75 ef                	jne    c0036b20 <strcmp+0x20>
c0036b31:	0f b6 00             	movzbl (%eax),%eax
c0036b34:	0f b6 12             	movzbl (%edx),%edx
c0036b37:	5b                   	pop    %ebx
c0036b38:	5d                   	pop    %ebp
c0036b39:	29 d0                	sub    %edx,%eax
c0036b3b:	c3                   	ret    
c0036b3c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036b40:	83 c0 04             	add    $0x4,%eax
c0036b43:	83 c2 04             	add    $0x4,%edx
c0036b46:	8b 08                	mov    (%eax),%ecx
c0036b48:	3b 0a                	cmp    (%edx),%ecx
c0036b4a:	75 de                	jne    c0036b2a <strcmp+0x2a>
c0036b4c:	8d 99 ff fe fe fe    	lea    -0x1010101(%ecx),%ebx
c0036b52:	f7 d1                	not    %ecx
c0036b54:	21 cb                	and    %ecx,%ebx
c0036b56:	81 e3 80 80 80 80    	and    $0x80808080,%ebx
c0036b5c:	74 e2                	je     c0036b40 <strcmp+0x40>
c0036b5e:	31 c0                	xor    %eax,%eax
c0036b60:	5b                   	pop    %ebx
c0036b61:	5d                   	pop    %ebp
c0036b62:	c3                   	ret    
c0036b63:	66 90                	xchg   %ax,%ax
c0036b65:	66 90                	xchg   %ax,%ax
c0036b67:	66 90                	xchg   %ax,%ax
c0036b69:	66 90                	xchg   %ax,%ax
c0036b6b:	66 90                	xchg   %ax,%ax
c0036b6d:	66 90                	xchg   %ax,%ax
c0036b6f:	90                   	nop

c0036b70 <strlen>:
c0036b70:	55                   	push   %ebp
c0036b71:	89 e5                	mov    %esp,%ebp
c0036b73:	57                   	push   %edi
c0036b74:	8b 55 08             	mov    0x8(%ebp),%edx
c0036b77:	89 d7                	mov    %edx,%edi
c0036b79:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0036b7f:	74 25                	je     c0036ba6 <L5>
c0036b81:	8a 0f                	mov    (%edi),%cl
c0036b83:	47                   	inc    %edi
c0036b84:	84 c9                	test   %cl,%cl
c0036b86:	74 56                	je     c0036bde <L15>
c0036b88:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0036b8e:	74 16                	je     c0036ba6 <L5>
c0036b90:	8a 0f                	mov    (%edi),%cl
c0036b92:	47                   	inc    %edi
c0036b93:	84 c9                	test   %cl,%cl
c0036b95:	74 47                	je     c0036bde <L15>
c0036b97:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0036b9d:	74 07                	je     c0036ba6 <L5>
c0036b9f:	8a 0f                	mov    (%edi),%cl
c0036ba1:	47                   	inc    %edi
c0036ba2:	84 c9                	test   %cl,%cl
c0036ba4:	74 38                	je     c0036bde <L15>

c0036ba6 <L5>:
c0036ba6:	83 ef 04             	sub    $0x4,%edi
c0036ba9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0036bb0 <L10>:
c0036bb0:	83 c7 04             	add    $0x4,%edi
c0036bb3:	8b 0f                	mov    (%edi),%ecx
c0036bb5:	8d 81 ff fe fe fe    	lea    -0x1010101(%ecx),%eax
c0036bbb:	f7 d1                	not    %ecx
c0036bbd:	21 c8                	and    %ecx,%eax
c0036bbf:	a9 80 80 80 80       	test   $0x80808080,%eax
c0036bc4:	74 ea                	je     c0036bb0 <L10>
c0036bc6:	f7 d1                	not    %ecx
c0036bc8:	47                   	inc    %edi
c0036bc9:	84 c9                	test   %cl,%cl
c0036bcb:	74 11                	je     c0036bde <L15>
c0036bcd:	47                   	inc    %edi
c0036bce:	c1 e9 08             	shr    $0x8,%ecx
c0036bd1:	84 c9                	test   %cl,%cl
c0036bd3:	74 09                	je     c0036bde <L15>
c0036bd5:	47                   	inc    %edi
c0036bd6:	c1 e9 08             	shr    $0x8,%ecx
c0036bd9:	84 c9                	test   %cl,%cl
c0036bdb:	74 01                	je     c0036bde <L15>
c0036bdd:	47                   	inc    %edi

c0036bde <L15>:
c0036bde:	29 d7                	sub    %edx,%edi
c0036be0:	8d 47 ff             	lea    -0x1(%edi),%eax
c0036be3:	8d 65 fc             	lea    -0x4(%ebp),%esp
c0036be6:	5f                   	pop    %edi
c0036be7:	c9                   	leave  
c0036be8:	c3                   	ret    
c0036be9:	66 90                	xchg   %ax,%ax
c0036beb:	66 90                	xchg   %ax,%ax
c0036bed:	66 90                	xchg   %ax,%ax
c0036bef:	90                   	nop

c0036bf0 <__ssprint_r>:
c0036bf0:	55                   	push   %ebp
c0036bf1:	89 e5                	mov    %esp,%ebp
c0036bf3:	57                   	push   %edi
c0036bf4:	56                   	push   %esi
c0036bf5:	53                   	push   %ebx
c0036bf6:	83 ec 2c             	sub    $0x2c,%esp
c0036bf9:	8b 45 10             	mov    0x10(%ebp),%eax
c0036bfc:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c0036bff:	8b 00                	mov    (%eax),%eax
c0036c01:	89 c7                	mov    %eax,%edi
c0036c03:	8b 45 10             	mov    0x10(%ebp),%eax
c0036c06:	8b 40 08             	mov    0x8(%eax),%eax
c0036c09:	85 c0                	test   %eax,%eax
c0036c0b:	0f 84 af 01 00 00    	je     c0036dc0 <__ssprint_r+0x1d0>
c0036c11:	31 c9                	xor    %ecx,%ecx
c0036c13:	31 d2                	xor    %edx,%edx
c0036c15:	8b 03                	mov    (%ebx),%eax
c0036c17:	89 ce                	mov    %ecx,%esi
c0036c19:	85 f6                	test   %esi,%esi
c0036c1b:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c0036c1e:	0f 84 ec 00 00 00    	je     c0036d10 <__ssprint_r+0x120>
c0036c24:	8b 53 08             	mov    0x8(%ebx),%edx
c0036c27:	39 d6                	cmp    %edx,%esi
c0036c29:	0f 82 fc 00 00 00    	jb     c0036d2b <__ssprint_r+0x13b>
c0036c2f:	0f b7 4b 0c          	movzwl 0xc(%ebx),%ecx
c0036c33:	66 f7 c1 80 04       	test   $0x480,%cx
c0036c38:	0f 84 fa 00 00 00    	je     c0036d38 <__ssprint_r+0x148>
c0036c3e:	8b 53 10             	mov    0x10(%ebx),%edx
c0036c41:	29 d0                	sub    %edx,%eax
c0036c43:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0036c46:	8b 43 14             	mov    0x14(%ebx),%eax
c0036c49:	89 55 d8             	mov    %edx,-0x28(%ebp)
c0036c4c:	8d 04 40             	lea    (%eax,%eax,2),%eax
c0036c4f:	89 c2                	mov    %eax,%edx
c0036c51:	c1 ea 1f             	shr    $0x1f,%edx
c0036c54:	01 d0                	add    %edx,%eax
c0036c56:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0036c59:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0036c5c:	d1 7d e0             	sarl   -0x20(%ebp)
c0036c5f:	8d 44 06 01          	lea    0x1(%esi,%eax,1),%eax
c0036c63:	39 45 e0             	cmp    %eax,-0x20(%ebp)
c0036c66:	0f 83 34 01 00 00    	jae    c0036da0 <__ssprint_r+0x1b0>
c0036c6c:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0036c6f:	80 e5 04             	and    $0x4,%ch
c0036c72:	0f 84 c8 00 00 00    	je     c0036d40 <__ssprint_r+0x150>
c0036c78:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036c7c:	8b 45 08             	mov    0x8(%ebp),%eax
c0036c7f:	89 04 24             	mov    %eax,(%esp)
c0036c82:	e8 e9 e7 ff ff       	call   c0035470 <_malloc_r>
c0036c87:	85 c0                	test   %eax,%eax
c0036c89:	89 c2                	mov    %eax,%edx
c0036c8b:	0f 84 e1 00 00 00    	je     c0036d72 <__ssprint_r+0x182>
c0036c91:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0036c94:	89 55 d8             	mov    %edx,-0x28(%ebp)
c0036c97:	89 44 24 08          	mov    %eax,0x8(%esp)
c0036c9b:	8b 43 10             	mov    0x10(%ebx),%eax
c0036c9e:	89 14 24             	mov    %edx,(%esp)
c0036ca1:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036ca5:	e8 0a b2 ff ff       	call   c0031eb4 <memcpy>
c0036caa:	0f b7 43 0c          	movzwl 0xc(%ebx),%eax
c0036cae:	8b 55 d8             	mov    -0x28(%ebp),%edx
c0036cb1:	66 25 7f fb          	and    $0xfb7f,%ax
c0036cb5:	0c 80                	or     $0x80,%al
c0036cb7:	66 89 43 0c          	mov    %ax,0xc(%ebx)
c0036cbb:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0036cbe:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0036cc1:	89 53 10             	mov    %edx,0x10(%ebx)
c0036cc4:	89 4b 14             	mov    %ecx,0x14(%ebx)
c0036cc7:	2b 4d dc             	sub    -0x24(%ebp),%ecx
c0036cca:	01 d0                	add    %edx,%eax
c0036ccc:	89 03                	mov    %eax,(%ebx)
c0036cce:	89 f2                	mov    %esi,%edx
c0036cd0:	89 4b 08             	mov    %ecx,0x8(%ebx)
c0036cd3:	89 f1                	mov    %esi,%ecx
c0036cd5:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c0036cd9:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0036cdc:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0036cdf:	89 04 24             	mov    %eax,(%esp)
c0036ce2:	89 55 dc             	mov    %edx,-0x24(%ebp)
c0036ce5:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c0036ce9:	e8 22 13 00 00       	call   c0038010 <memmove>
c0036cee:	8b 03                	mov    (%ebx),%eax
c0036cf0:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0036cf3:	8b 55 dc             	mov    -0x24(%ebp),%edx
c0036cf6:	29 53 08             	sub    %edx,0x8(%ebx)
c0036cf9:	01 c8                	add    %ecx,%eax
c0036cfb:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0036cfe:	89 03                	mov    %eax,(%ebx)
c0036d00:	8b 51 08             	mov    0x8(%ecx),%edx
c0036d03:	29 f2                	sub    %esi,%edx
c0036d05:	85 d2                	test   %edx,%edx
c0036d07:	89 51 08             	mov    %edx,0x8(%ecx)
c0036d0a:	0f 84 98 00 00 00    	je     c0036da8 <__ssprint_r+0x1b8>
c0036d10:	8b 77 04             	mov    0x4(%edi),%esi
c0036d13:	83 c7 08             	add    $0x8,%edi
c0036d16:	8b 4f f8             	mov    -0x8(%edi),%ecx
c0036d19:	85 f6                	test   %esi,%esi
c0036d1b:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0036d1e:	74 f0                	je     c0036d10 <__ssprint_r+0x120>
c0036d20:	8b 53 08             	mov    0x8(%ebx),%edx
c0036d23:	39 d6                	cmp    %edx,%esi
c0036d25:	0f 83 04 ff ff ff    	jae    c0036c2f <__ssprint_r+0x3f>
c0036d2b:	89 f2                	mov    %esi,%edx
c0036d2d:	89 f1                	mov    %esi,%ecx
c0036d2f:	eb a4                	jmp    c0036cd5 <__ssprint_r+0xe5>
c0036d31:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036d38:	89 d1                	mov    %edx,%ecx
c0036d3a:	eb 99                	jmp    c0036cd5 <__ssprint_r+0xe5>
c0036d3c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036d40:	89 44 24 08          	mov    %eax,0x8(%esp)
c0036d44:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0036d47:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036d4b:	8b 45 08             	mov    0x8(%ebp),%eax
c0036d4e:	89 04 24             	mov    %eax,(%esp)
c0036d51:	e8 4a 13 00 00       	call   c00380a0 <_realloc_r>
c0036d56:	85 c0                	test   %eax,%eax
c0036d58:	89 c2                	mov    %eax,%edx
c0036d5a:	0f 85 5b ff ff ff    	jne    c0036cbb <__ssprint_r+0xcb>
c0036d60:	8b 43 10             	mov    0x10(%ebx),%eax
c0036d63:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036d67:	8b 45 08             	mov    0x8(%ebp),%eax
c0036d6a:	89 04 24             	mov    %eax,(%esp)
c0036d6d:	e8 3e 10 00 00       	call   c0037db0 <_free_r>
c0036d72:	8b 45 08             	mov    0x8(%ebp),%eax
c0036d75:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0036d7b:	8b 45 10             	mov    0x10(%ebp),%eax
c0036d7e:	66 83 4b 0c 40       	orw    $0x40,0xc(%ebx)
c0036d83:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
c0036d8a:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c0036d91:	83 c4 2c             	add    $0x2c,%esp
c0036d94:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0036d99:	5b                   	pop    %ebx
c0036d9a:	5e                   	pop    %esi
c0036d9b:	5f                   	pop    %edi
c0036d9c:	5d                   	pop    %ebp
c0036d9d:	c3                   	ret    
c0036d9e:	66 90                	xchg   %ax,%ax
c0036da0:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0036da3:	e9 c7 fe ff ff       	jmp    c0036c6f <__ssprint_r+0x7f>
c0036da8:	c7 41 04 00 00 00 00 	movl   $0x0,0x4(%ecx)
c0036daf:	83 c4 2c             	add    $0x2c,%esp
c0036db2:	31 c0                	xor    %eax,%eax
c0036db4:	5b                   	pop    %ebx
c0036db5:	5e                   	pop    %esi
c0036db6:	5f                   	pop    %edi
c0036db7:	5d                   	pop    %ebp
c0036db8:	c3                   	ret    
c0036db9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036dc0:	8b 45 10             	mov    0x10(%ebp),%eax
c0036dc3:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c0036dca:	83 c4 2c             	add    $0x2c,%esp
c0036dcd:	31 c0                	xor    %eax,%eax
c0036dcf:	5b                   	pop    %ebx
c0036dd0:	5e                   	pop    %esi
c0036dd1:	5f                   	pop    %edi
c0036dd2:	5d                   	pop    %ebp
c0036dd3:	c3                   	ret    
c0036dd4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036dda:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

c0036de0 <_svfiprintf_r>:
c0036de0:	55                   	push   %ebp
c0036de1:	89 e5                	mov    %esp,%ebp
c0036de3:	57                   	push   %edi
c0036de4:	56                   	push   %esi
c0036de5:	53                   	push   %ebx
c0036de6:	81 ec cc 00 00 00    	sub    $0xcc,%esp
c0036dec:	8b 45 0c             	mov    0xc(%ebp),%eax
c0036def:	f6 40 0c 80          	testb  $0x80,0xc(%eax)
c0036df3:	74 0b                	je     c0036e00 <_svfiprintf_r+0x20>
c0036df5:	8b 50 10             	mov    0x10(%eax),%edx
c0036df8:	85 d2                	test   %edx,%edx
c0036dfa:	0f 84 1c 0d 00 00    	je     c0037b1c <_svfiprintf_r+0xd3c>
c0036e00:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0036e03:	8d 5d a7             	lea    -0x59(%ebp),%ebx
c0036e06:	89 c6                	mov    %eax,%esi
c0036e08:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%ebp)
c0036e0e:	29 d8                	sub    %ebx,%eax
c0036e10:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%ebp)
c0036e17:	00 00 00 
c0036e1a:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c0036e21:	00 00 00 
c0036e24:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0036e2b:	00 00 00 
c0036e2e:	c7 85 50 ff ff ff 00 	movl   $0x0,-0xb0(%ebp)
c0036e35:	00 00 00 
c0036e38:	89 85 3c ff ff ff    	mov    %eax,-0xc4(%ebp)
c0036e3e:	8b 45 10             	mov    0x10(%ebp),%eax
c0036e41:	8b 5d 10             	mov    0x10(%ebp),%ebx
c0036e44:	0f b6 00             	movzbl (%eax),%eax
c0036e47:	84 c0                	test   %al,%al
c0036e49:	74 58                	je     c0036ea3 <_svfiprintf_r+0xc3>
c0036e4b:	3c 25                	cmp    $0x25,%al
c0036e4d:	75 13                	jne    c0036e62 <_svfiprintf_r+0x82>
c0036e4f:	eb 52                	jmp    c0036ea3 <_svfiprintf_r+0xc3>
c0036e51:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036e58:	84 c0                	test   %al,%al
c0036e5a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036e60:	74 0a                	je     c0036e6c <_svfiprintf_r+0x8c>
c0036e62:	83 c3 01             	add    $0x1,%ebx
c0036e65:	0f b6 03             	movzbl (%ebx),%eax
c0036e68:	3c 25                	cmp    $0x25,%al
c0036e6a:	75 ec                	jne    c0036e58 <_svfiprintf_r+0x78>
c0036e6c:	89 df                	mov    %ebx,%edi
c0036e6e:	2b 7d 10             	sub    0x10(%ebp),%edi
c0036e71:	74 30                	je     c0036ea3 <_svfiprintf_r+0xc3>
c0036e73:	8b 45 10             	mov    0x10(%ebp),%eax
c0036e76:	83 c6 08             	add    $0x8,%esi
c0036e79:	89 7e fc             	mov    %edi,-0x4(%esi)
c0036e7c:	01 bd 7c ff ff ff    	add    %edi,-0x84(%ebp)
c0036e82:	89 46 f8             	mov    %eax,-0x8(%esi)
c0036e85:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0036e8b:	83 c0 01             	add    $0x1,%eax
c0036e8e:	83 f8 07             	cmp    $0x7,%eax
c0036e91:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0036e97:	0f 8f eb 0a 00 00    	jg     c0037988 <_svfiprintf_r+0xba8>
c0036e9d:	01 bd 50 ff ff ff    	add    %edi,-0xb0(%ebp)
c0036ea3:	80 3b 00             	cmpb   $0x0,(%ebx)
c0036ea6:	0f 84 11 09 00 00    	je     c00377bd <_svfiprintf_r+0x9dd>
c0036eac:	8d 43 01             	lea    0x1(%ebx),%eax
c0036eaf:	31 ff                	xor    %edi,%edi
c0036eb1:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c0036eb8:	c7 85 5c ff ff ff ff 	movl   $0xffffffff,-0xa4(%ebp)
c0036ebf:	ff ff ff 
c0036ec2:	c7 85 54 ff ff ff 00 	movl   $0x0,-0xac(%ebp)
c0036ec9:	00 00 00 
c0036ecc:	c7 85 64 ff ff ff 00 	movl   $0x0,-0x9c(%ebp)
c0036ed3:	00 00 00 
c0036ed6:	8d 50 01             	lea    0x1(%eax),%edx
c0036ed9:	0f be 00             	movsbl (%eax),%eax
c0036edc:	8d 48 e0             	lea    -0x20(%eax),%ecx
c0036edf:	83 f9 58             	cmp    $0x58,%ecx
c0036ee2:	0f 87 63 03 00 00    	ja     c003724b <_svfiprintf_r+0x46b>
c0036ee8:	ff 24 8d c8 9b 03 c0 	jmp    *-0x3ffc6438(,%ecx,4)
c0036eef:	90                   	nop
c0036ef0:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c0036ef7:	89 d0                	mov    %edx,%eax
c0036ef9:	eb db                	jmp    c0036ed6 <_svfiprintf_r+0xf6>
c0036efb:	8b 45 14             	mov    0x14(%ebp),%eax
c0036efe:	8b 5d 14             	mov    0x14(%ebp),%ebx
c0036f01:	8b 00                	mov    (%eax),%eax
c0036f03:	83 c3 04             	add    $0x4,%ebx
c0036f06:	89 5d 14             	mov    %ebx,0x14(%ebp)
c0036f09:	85 c0                	test   %eax,%eax
c0036f0b:	89 85 54 ff ff ff    	mov    %eax,-0xac(%ebp)
c0036f11:	79 e4                	jns    c0036ef7 <_svfiprintf_r+0x117>
c0036f13:	f7 9d 54 ff ff ff    	negl   -0xac(%ebp)
c0036f19:	83 8d 64 ff ff ff 04 	orl    $0x4,-0x9c(%ebp)
c0036f20:	89 d0                	mov    %edx,%eax
c0036f22:	eb b2                	jmp    c0036ed6 <_svfiprintf_r+0xf6>
c0036f24:	bf 2b 00 00 00       	mov    $0x2b,%edi
c0036f29:	89 d0                	mov    %edx,%eax
c0036f2b:	eb a9                	jmp    c0036ed6 <_svfiprintf_r+0xf6>
c0036f2d:	8b 45 14             	mov    0x14(%ebp),%eax
c0036f30:	83 8d 64 ff ff ff 02 	orl    $0x2,-0x9c(%ebp)
c0036f37:	89 55 10             	mov    %edx,0x10(%ebp)
c0036f3a:	ba 02 00 00 00       	mov    $0x2,%edx
c0036f3f:	8b 08                	mov    (%eax),%ecx
c0036f41:	83 c0 04             	add    $0x4,%eax
c0036f44:	c6 85 72 ff ff ff 30 	movb   $0x30,-0x8e(%ebp)
c0036f4b:	c6 85 73 ff ff ff 78 	movb   $0x78,-0x8d(%ebp)
c0036f52:	89 45 14             	mov    %eax,0x14(%ebp)
c0036f55:	c7 85 44 ff ff ff 5f 	movl   $0xc003985f,-0xbc(%ebp)
c0036f5c:	98 03 c0 
c0036f5f:	90                   	nop
c0036f60:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c0036f67:	31 ff                	xor    %edi,%edi
c0036f69:	8b 9d 64 ff ff ff    	mov    -0x9c(%ebp),%ebx
c0036f6f:	89 d8                	mov    %ebx,%eax
c0036f71:	24 7f                	and    $0x7f,%al
c0036f73:	83 bd 5c ff ff ff 00 	cmpl   $0x0,-0xa4(%ebp)
c0036f7a:	0f 48 c3             	cmovs  %ebx,%eax
c0036f7d:	89 85 64 ff ff ff    	mov    %eax,-0x9c(%ebp)
c0036f83:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0036f89:	85 c0                	test   %eax,%eax
c0036f8b:	75 08                	jne    c0036f95 <_svfiprintf_r+0x1b5>
c0036f8d:	85 c9                	test   %ecx,%ecx
c0036f8f:	0f 84 03 08 00 00    	je     c0037798 <_svfiprintf_r+0x9b8>
c0036f95:	80 fa 01             	cmp    $0x1,%dl
c0036f98:	0f 84 8a 0a 00 00    	je     c0037a28 <_svfiprintf_r+0xc48>
c0036f9e:	80 fa 02             	cmp    $0x2,%dl
c0036fa1:	8d 5d a8             	lea    -0x58(%ebp),%ebx
c0036fa4:	0f 85 86 01 00 00    	jne    c0037130 <_svfiprintf_r+0x350>
c0036faa:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c0036fb0:	89 c8                	mov    %ecx,%eax
c0036fb2:	83 eb 01             	sub    $0x1,%ebx
c0036fb5:	83 e0 0f             	and    $0xf,%eax
c0036fb8:	0f b6 04 02          	movzbl (%edx,%eax,1),%eax
c0036fbc:	c1 e9 04             	shr    $0x4,%ecx
c0036fbf:	85 c9                	test   %ecx,%ecx
c0036fc1:	88 03                	mov    %al,(%ebx)
c0036fc3:	75 eb                	jne    c0036fb0 <_svfiprintf_r+0x1d0>
c0036fc5:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0036fc8:	29 d8                	sub    %ebx,%eax
c0036fca:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0036fd0:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0036fd6:	8b 8d 58 ff ff ff    	mov    -0xa8(%ebp),%ecx
c0036fdc:	39 c1                	cmp    %eax,%ecx
c0036fde:	0f 4d c1             	cmovge %ecx,%eax
c0036fe1:	89 85 60 ff ff ff    	mov    %eax,-0xa0(%ebp)
c0036fe7:	89 f8                	mov    %edi,%eax
c0036fe9:	3c 01                	cmp    $0x1,%al
c0036feb:	83 9d 60 ff ff ff ff 	sbbl   $0xffffffff,-0xa0(%ebp)
c0036ff2:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
c0036ff8:	8b 8d 64 ff ff ff    	mov    -0x9c(%ebp),%ecx
c0036ffe:	89 d0                	mov    %edx,%eax
c0037000:	89 cf                	mov    %ecx,%edi
c0037002:	83 c0 02             	add    $0x2,%eax
c0037005:	83 e7 02             	and    $0x2,%edi
c0037008:	89 bd 4c ff ff ff    	mov    %edi,-0xb4(%ebp)
c003700e:	89 cf                	mov    %ecx,%edi
c0037010:	0f 44 c2             	cmove  %edx,%eax
c0037013:	81 e7 84 00 00 00    	and    $0x84,%edi
c0037019:	89 85 60 ff ff ff    	mov    %eax,-0xa0(%ebp)
c003701f:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c0037025:	0f 85 cd 04 00 00    	jne    c00374f8 <_svfiprintf_r+0x718>
c003702b:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
c0037031:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
c0037037:	85 ff                	test   %edi,%edi
c0037039:	0f 8e b9 04 00 00    	jle    c00374f8 <_svfiprintf_r+0x718>
c003703f:	83 ff 10             	cmp    $0x10,%edi
c0037042:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037048:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003704e:	7e 7c                	jle    c00370cc <_svfiprintf_r+0x2ec>
c0037050:	89 9d 40 ff ff ff    	mov    %ebx,-0xc0(%ebp)
c0037056:	89 f1                	mov    %esi,%ecx
c0037058:	8b 5d 08             	mov    0x8(%ebp),%ebx
c003705b:	8b 75 0c             	mov    0xc(%ebp),%esi
c003705e:	eb 08                	jmp    c0037068 <_svfiprintf_r+0x288>
c0037060:	83 ef 10             	sub    $0x10,%edi
c0037063:	83 ff 10             	cmp    $0x10,%edi
c0037066:	7e 5c                	jle    c00370c4 <_svfiprintf_r+0x2e4>
c0037068:	83 c0 01             	add    $0x1,%eax
c003706b:	83 c2 10             	add    $0x10,%edx
c003706e:	c7 01 3c 9d 03 c0    	movl   $0xc0039d3c,(%ecx)
c0037074:	83 c1 08             	add    $0x8,%ecx
c0037077:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c003707e:	83 f8 07             	cmp    $0x7,%eax
c0037081:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037087:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003708d:	7e d1                	jle    c0037060 <_svfiprintf_r+0x280>
c003708f:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037095:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037099:	89 74 24 04          	mov    %esi,0x4(%esp)
c003709d:	89 1c 24             	mov    %ebx,(%esp)
c00370a0:	e8 4b fb ff ff       	call   c0036bf0 <__ssprint_r>
c00370a5:	85 c0                	test   %eax,%eax
c00370a7:	0f 85 3b 07 00 00    	jne    c00377e8 <_svfiprintf_r+0xa08>
c00370ad:	83 ef 10             	sub    $0x10,%edi
c00370b0:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00370b6:	83 ff 10             	cmp    $0x10,%edi
c00370b9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00370bf:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c00370c2:	7f a4                	jg     c0037068 <_svfiprintf_r+0x288>
c00370c4:	8b 9d 40 ff ff ff    	mov    -0xc0(%ebp),%ebx
c00370ca:	89 ce                	mov    %ecx,%esi
c00370cc:	83 c0 01             	add    $0x1,%eax
c00370cf:	01 fa                	add    %edi,%edx
c00370d1:	c7 06 3c 9d 03 c0    	movl   $0xc0039d3c,(%esi)
c00370d7:	83 c6 08             	add    $0x8,%esi
c00370da:	89 7e fc             	mov    %edi,-0x4(%esi)
c00370dd:	83 f8 07             	cmp    $0x7,%eax
c00370e0:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00370e6:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00370ec:	0f 8e 12 04 00 00    	jle    c0037504 <_svfiprintf_r+0x724>
c00370f2:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00370f8:	89 44 24 08          	mov    %eax,0x8(%esp)
c00370fc:	8b 45 0c             	mov    0xc(%ebp),%eax
c00370ff:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037103:	8b 45 08             	mov    0x8(%ebp),%eax
c0037106:	89 04 24             	mov    %eax,(%esp)
c0037109:	e8 e2 fa ff ff       	call   c0036bf0 <__ssprint_r>
c003710e:	85 c0                	test   %eax,%eax
c0037110:	0f 85 d2 06 00 00    	jne    c00377e8 <_svfiprintf_r+0xa08>
c0037116:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003711c:	8d 75 a8             	lea    -0x58(%ebp),%esi
c003711f:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037125:	e9 da 03 00 00       	jmp    c0037504 <_svfiprintf_r+0x724>
c003712a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037130:	89 c8                	mov    %ecx,%eax
c0037132:	83 eb 01             	sub    $0x1,%ebx
c0037135:	83 e0 07             	and    $0x7,%eax
c0037138:	c1 e9 03             	shr    $0x3,%ecx
c003713b:	83 c0 30             	add    $0x30,%eax
c003713e:	85 c9                	test   %ecx,%ecx
c0037140:	88 03                	mov    %al,(%ebx)
c0037142:	75 ec                	jne    c0037130 <_svfiprintf_r+0x350>
c0037144:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
c003714b:	89 da                	mov    %ebx,%edx
c003714d:	0f 84 72 fe ff ff    	je     c0036fc5 <_svfiprintf_r+0x1e5>
c0037153:	3c 30                	cmp    $0x30,%al
c0037155:	0f 84 6a fe ff ff    	je     c0036fc5 <_svfiprintf_r+0x1e5>
c003715b:	83 eb 01             	sub    $0x1,%ebx
c003715e:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0037161:	29 d8                	sub    %ebx,%eax
c0037163:	c6 42 ff 30          	movb   $0x30,-0x1(%edx)
c0037167:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c003716d:	e9 5e fe ff ff       	jmp    c0036fd0 <_svfiprintf_r+0x1f0>
c0037172:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c0037179:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c0037180:	89 55 10             	mov    %edx,0x10(%ebp)
c0037183:	8b 45 14             	mov    0x14(%ebp),%eax
c0037186:	0f 85 48 01 00 00    	jne    c00372d4 <_svfiprintf_r+0x4f4>
c003718c:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c0037193:	0f 84 3b 01 00 00    	je     c00372d4 <_svfiprintf_r+0x4f4>
c0037199:	0f b7 08             	movzwl (%eax),%ecx
c003719c:	83 c0 04             	add    $0x4,%eax
c003719f:	31 d2                	xor    %edx,%edx
c00371a1:	89 45 14             	mov    %eax,0x14(%ebp)
c00371a4:	e9 b7 fd ff ff       	jmp    c0036f60 <_svfiprintf_r+0x180>
c00371a9:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c00371b0:	89 f8                	mov    %edi,%eax
c00371b2:	89 55 10             	mov    %edx,0x10(%ebp)
c00371b5:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
c00371bb:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c00371c2:	8b 45 14             	mov    0x14(%ebp),%eax
c00371c5:	75 0d                	jne    c00371d4 <_svfiprintf_r+0x3f4>
c00371c7:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c00371ce:	0f 85 f2 08 00 00    	jne    c0037ac6 <_svfiprintf_r+0xce6>
c00371d4:	8b 08                	mov    (%eax),%ecx
c00371d6:	83 c0 04             	add    $0x4,%eax
c00371d9:	89 45 14             	mov    %eax,0x14(%ebp)
c00371dc:	85 c9                	test   %ecx,%ecx
c00371de:	0f 88 f3 08 00 00    	js     c0037ad7 <_svfiprintf_r+0xcf7>
c00371e4:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c00371eb:	ba 01 00 00 00       	mov    $0x1,%edx
c00371f0:	e9 74 fd ff ff       	jmp    c0036f69 <_svfiprintf_r+0x189>
c00371f5:	0f be 02             	movsbl (%edx),%eax
c00371f8:	8d 5a 01             	lea    0x1(%edx),%ebx
c00371fb:	83 f8 2a             	cmp    $0x2a,%eax
c00371fe:	0f 84 af 09 00 00    	je     c0037bb3 <_svfiprintf_r+0xdd3>
c0037204:	8d 48 d0             	lea    -0x30(%eax),%ecx
c0037207:	31 d2                	xor    %edx,%edx
c0037209:	83 f9 09             	cmp    $0x9,%ecx
c003720c:	0f 87 90 09 00 00    	ja     c0037ba2 <_svfiprintf_r+0xdc2>
c0037212:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037218:	8d 04 92             	lea    (%edx,%edx,4),%eax
c003721b:	83 c3 01             	add    $0x1,%ebx
c003721e:	8d 14 41             	lea    (%ecx,%eax,2),%edx
c0037221:	0f be 43 ff          	movsbl -0x1(%ebx),%eax
c0037225:	8d 48 d0             	lea    -0x30(%eax),%ecx
c0037228:	83 f9 09             	cmp    $0x9,%ecx
c003722b:	76 eb                	jbe    c0037218 <_svfiprintf_r+0x438>
c003722d:	85 d2                	test   %edx,%edx
c003722f:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
c0037234:	0f 48 d1             	cmovs  %ecx,%edx
c0037237:	8d 48 e0             	lea    -0x20(%eax),%ecx
c003723a:	83 f9 58             	cmp    $0x58,%ecx
c003723d:	89 95 5c ff ff ff    	mov    %edx,-0xa4(%ebp)
c0037243:	89 da                	mov    %ebx,%edx
c0037245:	0f 86 9d fc ff ff    	jbe    c0036ee8 <_svfiprintf_r+0x108>
c003724b:	89 fb                	mov    %edi,%ebx
c003724d:	85 c0                	test   %eax,%eax
c003724f:	89 55 10             	mov    %edx,0x10(%ebp)
c0037252:	88 9d 71 ff ff ff    	mov    %bl,-0x8f(%ebp)
c0037258:	0f 84 5f 05 00 00    	je     c00377bd <_svfiprintf_r+0x9dd>
c003725e:	88 45 80             	mov    %al,-0x80(%ebp)
c0037261:	8d 5d 80             	lea    -0x80(%ebp),%ebx
c0037264:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c003726b:	c7 85 60 ff ff ff 01 	movl   $0x1,-0xa0(%ebp)
c0037272:	00 00 00 
c0037275:	c7 85 58 ff ff ff 01 	movl   $0x1,-0xa8(%ebp)
c003727c:	00 00 00 
c003727f:	e9 5a 01 00 00       	jmp    c00373de <_svfiprintf_r+0x5fe>
c0037284:	31 db                	xor    %ebx,%ebx
c0037286:	8d 48 d0             	lea    -0x30(%eax),%ecx
c0037289:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0037290:	8d 04 9b             	lea    (%ebx,%ebx,4),%eax
c0037293:	83 c2 01             	add    $0x1,%edx
c0037296:	8d 1c 41             	lea    (%ecx,%eax,2),%ebx
c0037299:	0f be 42 ff          	movsbl -0x1(%edx),%eax
c003729d:	8d 48 d0             	lea    -0x30(%eax),%ecx
c00372a0:	83 f9 09             	cmp    $0x9,%ecx
c00372a3:	76 eb                	jbe    c0037290 <_svfiprintf_r+0x4b0>
c00372a5:	89 9d 54 ff ff ff    	mov    %ebx,-0xac(%ebp)
c00372ab:	e9 2c fc ff ff       	jmp    c0036edc <_svfiprintf_r+0xfc>
c00372b0:	81 8d 64 ff ff ff 80 	orl    $0x80,-0x9c(%ebp)
c00372b7:	00 00 00 
c00372ba:	89 d0                	mov    %edx,%eax
c00372bc:	e9 15 fc ff ff       	jmp    c0036ed6 <_svfiprintf_r+0xf6>
c00372c1:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c00372c8:	89 55 10             	mov    %edx,0x10(%ebp)
c00372cb:	8b 45 14             	mov    0x14(%ebp),%eax
c00372ce:	0f 84 b8 fe ff ff    	je     c003718c <_svfiprintf_r+0x3ac>
c00372d4:	8b 08                	mov    (%eax),%ecx
c00372d6:	83 c0 04             	add    $0x4,%eax
c00372d9:	31 d2                	xor    %edx,%edx
c00372db:	89 45 14             	mov    %eax,0x14(%ebp)
c00372de:	e9 7d fc ff ff       	jmp    c0036f60 <_svfiprintf_r+0x180>
c00372e3:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c00372ea:	89 f8                	mov    %edi,%eax
c00372ec:	89 55 10             	mov    %edx,0x10(%ebp)
c00372ef:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
c00372f5:	0f 85 a2 07 00 00    	jne    c0037a9d <_svfiprintf_r+0xcbd>
c00372fb:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c0037302:	0f 84 95 07 00 00    	je     c0037a9d <_svfiprintf_r+0xcbd>
c0037308:	8b 45 14             	mov    0x14(%ebp),%eax
c003730b:	0f b7 9d 50 ff ff ff 	movzwl -0xb0(%ebp),%ebx
c0037312:	8b 00                	mov    (%eax),%eax
c0037314:	66 89 18             	mov    %bx,(%eax)
c0037317:	8b 45 14             	mov    0x14(%ebp),%eax
c003731a:	83 c0 04             	add    $0x4,%eax
c003731d:	89 45 14             	mov    %eax,0x14(%ebp)
c0037320:	e9 19 fb ff ff       	jmp    c0036e3e <_svfiprintf_r+0x5e>
c0037325:	89 fb                	mov    %edi,%ebx
c0037327:	89 55 10             	mov    %edx,0x10(%ebp)
c003732a:	88 9d 71 ff ff ff    	mov    %bl,-0x8f(%ebp)
c0037330:	c7 85 44 ff ff ff 5f 	movl   $0xc003985f,-0xbc(%ebp)
c0037337:	98 03 c0 
c003733a:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c0037341:	8b 5d 14             	mov    0x14(%ebp),%ebx
c0037344:	75 0d                	jne    c0037353 <_svfiprintf_r+0x573>
c0037346:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c003734d:	0f 85 65 07 00 00    	jne    c0037ab8 <_svfiprintf_r+0xcd8>
c0037353:	8b 0b                	mov    (%ebx),%ecx
c0037355:	83 c3 04             	add    $0x4,%ebx
c0037358:	89 5d 14             	mov    %ebx,0x14(%ebp)
c003735b:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
c0037362:	ba 02 00 00 00       	mov    $0x2,%edx
c0037367:	0f 84 f3 fb ff ff    	je     c0036f60 <_svfiprintf_r+0x180>
c003736d:	85 c9                	test   %ecx,%ecx
c003736f:	0f 84 eb fb ff ff    	je     c0036f60 <_svfiprintf_r+0x180>
c0037375:	c6 85 72 ff ff ff 30 	movb   $0x30,-0x8e(%ebp)
c003737c:	88 85 73 ff ff ff    	mov    %al,-0x8d(%ebp)
c0037382:	83 8d 64 ff ff ff 02 	orl    $0x2,-0x9c(%ebp)
c0037389:	e9 d2 fb ff ff       	jmp    c0036f60 <_svfiprintf_r+0x180>
c003738e:	83 8d 64 ff ff ff 40 	orl    $0x40,-0x9c(%ebp)
c0037395:	89 d0                	mov    %edx,%eax
c0037397:	e9 3a fb ff ff       	jmp    c0036ed6 <_svfiprintf_r+0xf6>
c003739c:	89 f8                	mov    %edi,%eax
c003739e:	89 55 10             	mov    %edx,0x10(%ebp)
c00373a1:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
c00373a7:	e9 0f fe ff ff       	jmp    c00371bb <_svfiprintf_r+0x3db>
c00373ac:	8b 45 14             	mov    0x14(%ebp),%eax
c00373af:	8d 5d 80             	lea    -0x80(%ebp),%ebx
c00373b2:	89 55 10             	mov    %edx,0x10(%ebp)
c00373b5:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c00373bc:	c7 85 60 ff ff ff 01 	movl   $0x1,-0xa0(%ebp)
c00373c3:	00 00 00 
c00373c6:	8b 00                	mov    (%eax),%eax
c00373c8:	c7 85 58 ff ff ff 01 	movl   $0x1,-0xa8(%ebp)
c00373cf:	00 00 00 
c00373d2:	88 45 80             	mov    %al,-0x80(%ebp)
c00373d5:	8b 45 14             	mov    0x14(%ebp),%eax
c00373d8:	83 c0 04             	add    $0x4,%eax
c00373db:	89 45 14             	mov    %eax,0x14(%ebp)
c00373de:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c00373e5:	00 00 00 
c00373e8:	e9 05 fc ff ff       	jmp    c0036ff2 <_svfiprintf_r+0x212>
c00373ed:	89 fb                	mov    %edi,%ebx
c00373ef:	89 55 10             	mov    %edx,0x10(%ebp)
c00373f2:	88 9d 71 ff ff ff    	mov    %bl,-0x8f(%ebp)
c00373f8:	c7 85 44 ff ff ff 4e 	movl   $0xc003984e,-0xbc(%ebp)
c00373ff:	98 03 c0 
c0037402:	e9 33 ff ff ff       	jmp    c003733a <_svfiprintf_r+0x55a>
c0037407:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c003740e:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c0037415:	89 55 10             	mov    %edx,0x10(%ebp)
c0037418:	8b 45 14             	mov    0x14(%ebp),%eax
c003741b:	75 39                	jne    c0037456 <_svfiprintf_r+0x676>
c003741d:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c0037424:	74 30                	je     c0037456 <_svfiprintf_r+0x676>
c0037426:	0f b7 08             	movzwl (%eax),%ecx
c0037429:	83 c0 04             	add    $0x4,%eax
c003742c:	ba 01 00 00 00       	mov    $0x1,%edx
c0037431:	89 45 14             	mov    %eax,0x14(%ebp)
c0037434:	e9 27 fb ff ff       	jmp    c0036f60 <_svfiprintf_r+0x180>
c0037439:	83 8d 64 ff ff ff 01 	orl    $0x1,-0x9c(%ebp)
c0037440:	89 d0                	mov    %edx,%eax
c0037442:	e9 8f fa ff ff       	jmp    c0036ed6 <_svfiprintf_r+0xf6>
c0037447:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c003744e:	89 55 10             	mov    %edx,0x10(%ebp)
c0037451:	8b 45 14             	mov    0x14(%ebp),%eax
c0037454:	74 c7                	je     c003741d <_svfiprintf_r+0x63d>
c0037456:	8b 08                	mov    (%eax),%ecx
c0037458:	83 c0 04             	add    $0x4,%eax
c003745b:	ba 01 00 00 00       	mov    $0x1,%edx
c0037460:	89 45 14             	mov    %eax,0x14(%ebp)
c0037463:	e9 f8 fa ff ff       	jmp    c0036f60 <_svfiprintf_r+0x180>
c0037468:	8b 45 14             	mov    0x14(%ebp),%eax
c003746b:	89 55 10             	mov    %edx,0x10(%ebp)
c003746e:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c0037475:	8b 18                	mov    (%eax),%ebx
c0037477:	8d 50 04             	lea    0x4(%eax),%edx
c003747a:	85 db                	test   %ebx,%ebx
c003747c:	0f 84 cc 06 00 00    	je     c0037b4e <_svfiprintf_r+0xd6e>
c0037482:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
c0037488:	89 95 60 ff ff ff    	mov    %edx,-0xa0(%ebp)
c003748e:	85 ff                	test   %edi,%edi
c0037490:	0f 88 59 06 00 00    	js     c0037aef <_svfiprintf_r+0xd0f>
c0037496:	89 7c 24 08          	mov    %edi,0x8(%esp)
c003749a:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c00374a1:	00 
c00374a2:	89 1c 24             	mov    %ebx,(%esp)
c00374a5:	e8 06 e7 ff ff       	call   c0035bb0 <memchr>
c00374aa:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
c00374b0:	85 c0                	test   %eax,%eax
c00374b2:	0f 84 c5 06 00 00    	je     c0037b7d <_svfiprintf_r+0xd9d>
c00374b8:	29 d8                	sub    %ebx,%eax
c00374ba:	39 f8                	cmp    %edi,%eax
c00374bc:	0f 4f c7             	cmovg  %edi,%eax
c00374bf:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c00374c6:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c00374cc:	89 55 14             	mov    %edx,0x14(%ebp)
c00374cf:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c00374d6:	00 00 00 
c00374d9:	e9 f2 fa ff ff       	jmp    c0036fd0 <_svfiprintf_r+0x1f0>
c00374de:	89 f8                	mov    %edi,%eax
c00374e0:	84 c0                	test   %al,%al
c00374e2:	b8 20 00 00 00       	mov    $0x20,%eax
c00374e7:	0f 44 f8             	cmove  %eax,%edi
c00374ea:	89 d0                	mov    %edx,%eax
c00374ec:	e9 e5 f9 ff ff       	jmp    c0036ed6 <_svfiprintf_r+0xf6>
c00374f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00374f8:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00374fe:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037504:	80 bd 71 ff ff ff 00 	cmpb   $0x0,-0x8f(%ebp)
c003750b:	74 2e                	je     c003753b <_svfiprintf_r+0x75b>
c003750d:	83 c0 01             	add    $0x1,%eax
c0037510:	83 c2 01             	add    $0x1,%edx
c0037513:	8d 8d 71 ff ff ff    	lea    -0x8f(%ebp),%ecx
c0037519:	83 c6 08             	add    $0x8,%esi
c003751c:	89 4e f8             	mov    %ecx,-0x8(%esi)
c003751f:	c7 46 fc 01 00 00 00 	movl   $0x1,-0x4(%esi)
c0037526:	83 f8 07             	cmp    $0x7,%eax
c0037529:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c003752f:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0037535:	0f 8f b5 04 00 00    	jg     c00379f0 <_svfiprintf_r+0xc10>
c003753b:	8b 8d 4c ff ff ff    	mov    -0xb4(%ebp),%ecx
c0037541:	85 c9                	test   %ecx,%ecx
c0037543:	74 2e                	je     c0037573 <_svfiprintf_r+0x793>
c0037545:	83 c0 01             	add    $0x1,%eax
c0037548:	83 c2 02             	add    $0x2,%edx
c003754b:	8d 8d 72 ff ff ff    	lea    -0x8e(%ebp),%ecx
c0037551:	83 c6 08             	add    $0x8,%esi
c0037554:	89 4e f8             	mov    %ecx,-0x8(%esi)
c0037557:	c7 46 fc 02 00 00 00 	movl   $0x2,-0x4(%esi)
c003755e:	83 f8 07             	cmp    $0x7,%eax
c0037561:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037567:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003756d:	0f 8f 45 04 00 00    	jg     c00379b8 <_svfiprintf_r+0xbd8>
c0037573:	81 bd 48 ff ff ff 80 	cmpl   $0x80,-0xb8(%ebp)
c003757a:	00 00 00 
c003757d:	0f 84 9d 02 00 00    	je     c0037820 <_svfiprintf_r+0xa40>
c0037583:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
c0037589:	2b bd 58 ff ff ff    	sub    -0xa8(%ebp),%edi
c003758f:	85 ff                	test   %edi,%edi
c0037591:	0f 8e e1 00 00 00    	jle    c0037678 <_svfiprintf_r+0x898>
c0037597:	83 ff 10             	cmp    $0x10,%edi
c003759a:	0f 8e 7c 00 00 00    	jle    c003761c <_svfiprintf_r+0x83c>
c00375a0:	89 9d 5c ff ff ff    	mov    %ebx,-0xa4(%ebp)
c00375a6:	89 f1                	mov    %esi,%ecx
c00375a8:	8b 5d 08             	mov    0x8(%ebp),%ebx
c00375ab:	8b 75 0c             	mov    0xc(%ebp),%esi
c00375ae:	eb 08                	jmp    c00375b8 <_svfiprintf_r+0x7d8>
c00375b0:	83 ef 10             	sub    $0x10,%edi
c00375b3:	83 ff 10             	cmp    $0x10,%edi
c00375b6:	7e 5c                	jle    c0037614 <_svfiprintf_r+0x834>
c00375b8:	83 c0 01             	add    $0x1,%eax
c00375bb:	83 c2 10             	add    $0x10,%edx
c00375be:	c7 01 2c 9d 03 c0    	movl   $0xc0039d2c,(%ecx)
c00375c4:	83 c1 08             	add    $0x8,%ecx
c00375c7:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c00375ce:	83 f8 07             	cmp    $0x7,%eax
c00375d1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00375d7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00375dd:	7e d1                	jle    c00375b0 <_svfiprintf_r+0x7d0>
c00375df:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00375e5:	89 44 24 08          	mov    %eax,0x8(%esp)
c00375e9:	89 74 24 04          	mov    %esi,0x4(%esp)
c00375ed:	89 1c 24             	mov    %ebx,(%esp)
c00375f0:	e8 fb f5 ff ff       	call   c0036bf0 <__ssprint_r>
c00375f5:	85 c0                	test   %eax,%eax
c00375f7:	0f 85 eb 01 00 00    	jne    c00377e8 <_svfiprintf_r+0xa08>
c00375fd:	83 ef 10             	sub    $0x10,%edi
c0037600:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037606:	83 ff 10             	cmp    $0x10,%edi
c0037609:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003760f:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c0037612:	7f a4                	jg     c00375b8 <_svfiprintf_r+0x7d8>
c0037614:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c003761a:	89 ce                	mov    %ecx,%esi
c003761c:	83 c0 01             	add    $0x1,%eax
c003761f:	01 fa                	add    %edi,%edx
c0037621:	c7 06 2c 9d 03 c0    	movl   $0xc0039d2c,(%esi)
c0037627:	83 c6 08             	add    $0x8,%esi
c003762a:	89 7e fc             	mov    %edi,-0x4(%esi)
c003762d:	83 f8 07             	cmp    $0x7,%eax
c0037630:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037636:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003763c:	7e 3a                	jle    c0037678 <_svfiprintf_r+0x898>
c003763e:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037644:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037648:	8b 45 0c             	mov    0xc(%ebp),%eax
c003764b:	89 44 24 04          	mov    %eax,0x4(%esp)
c003764f:	8b 45 08             	mov    0x8(%ebp),%eax
c0037652:	89 04 24             	mov    %eax,(%esp)
c0037655:	e8 96 f5 ff ff       	call   c0036bf0 <__ssprint_r>
c003765a:	85 c0                	test   %eax,%eax
c003765c:	0f 85 86 01 00 00    	jne    c00377e8 <_svfiprintf_r+0xa08>
c0037662:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037668:	8d 75 a8             	lea    -0x58(%ebp),%esi
c003766b:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037671:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0037678:	89 1e                	mov    %ebx,(%esi)
c003767a:	8b 9d 58 ff ff ff    	mov    -0xa8(%ebp),%ebx
c0037680:	83 c0 01             	add    $0x1,%eax
c0037683:	83 c6 08             	add    $0x8,%esi
c0037686:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003768c:	89 5e fc             	mov    %ebx,-0x4(%esi)
c003768f:	01 da                	add    %ebx,%edx
c0037691:	83 f8 07             	cmp    $0x7,%eax
c0037694:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c003769a:	0f 8f 80 02 00 00    	jg     c0037920 <_svfiprintf_r+0xb40>
c00376a0:	f6 85 64 ff ff ff 04 	testb  $0x4,-0x9c(%ebp)
c00376a7:	0f 84 b9 00 00 00    	je     c0037766 <_svfiprintf_r+0x986>
c00376ad:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
c00376b3:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
c00376b9:	85 ff                	test   %edi,%edi
c00376bb:	0f 8e a5 00 00 00    	jle    c0037766 <_svfiprintf_r+0x986>
c00376c1:	83 ff 10             	cmp    $0x10,%edi
c00376c4:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00376ca:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c00376d0:	7e 71                	jle    c0037743 <_svfiprintf_r+0x963>
c00376d2:	89 f1                	mov    %esi,%ecx
c00376d4:	8b 75 08             	mov    0x8(%ebp),%esi
c00376d7:	eb 0f                	jmp    c00376e8 <_svfiprintf_r+0x908>
c00376d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00376e0:	83 ef 10             	sub    $0x10,%edi
c00376e3:	83 ff 10             	cmp    $0x10,%edi
c00376e6:	7e 59                	jle    c0037741 <_svfiprintf_r+0x961>
c00376e8:	83 c0 01             	add    $0x1,%eax
c00376eb:	83 c2 10             	add    $0x10,%edx
c00376ee:	c7 01 3c 9d 03 c0    	movl   $0xc0039d3c,(%ecx)
c00376f4:	83 c1 08             	add    $0x8,%ecx
c00376f7:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c00376fe:	83 f8 07             	cmp    $0x7,%eax
c0037701:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037707:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003770d:	7e d1                	jle    c00376e0 <_svfiprintf_r+0x900>
c003770f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037712:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0037716:	89 34 24             	mov    %esi,(%esp)
c0037719:	89 44 24 04          	mov    %eax,0x4(%esp)
c003771d:	e8 ce f4 ff ff       	call   c0036bf0 <__ssprint_r>
c0037722:	85 c0                	test   %eax,%eax
c0037724:	0f 85 be 00 00 00    	jne    c00377e8 <_svfiprintf_r+0xa08>
c003772a:	83 ef 10             	sub    $0x10,%edi
c003772d:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037733:	83 ff 10             	cmp    $0x10,%edi
c0037736:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003773c:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c003773f:	7f a7                	jg     c00376e8 <_svfiprintf_r+0x908>
c0037741:	89 ce                	mov    %ecx,%esi
c0037743:	83 c0 01             	add    $0x1,%eax
c0037746:	01 fa                	add    %edi,%edx
c0037748:	83 f8 07             	cmp    $0x7,%eax
c003774b:	c7 06 3c 9d 03 c0    	movl   $0xc0039d3c,(%esi)
c0037751:	89 7e 04             	mov    %edi,0x4(%esi)
c0037754:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c003775a:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0037760:	0f 8f ee 02 00 00    	jg     c0037a54 <_svfiprintf_r+0xc74>
c0037766:	8b 85 54 ff ff ff    	mov    -0xac(%ebp),%eax
c003776c:	8b b5 60 ff ff ff    	mov    -0xa0(%ebp),%esi
c0037772:	39 c6                	cmp    %eax,%esi
c0037774:	0f 4d c6             	cmovge %esi,%eax
c0037777:	01 85 50 ff ff ff    	add    %eax,-0xb0(%ebp)
c003777d:	85 d2                	test   %edx,%edx
c003777f:	0f 85 d3 01 00 00    	jne    c0037958 <_svfiprintf_r+0xb78>
c0037785:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c003778c:	00 00 00 
c003778f:	8d 75 a8             	lea    -0x58(%ebp),%esi
c0037792:	e9 a7 f6 ff ff       	jmp    c0036e3e <_svfiprintf_r+0x5e>
c0037797:	90                   	nop
c0037798:	84 d2                	test   %dl,%dl
c003779a:	75 6c                	jne    c0037808 <_svfiprintf_r+0xa28>
c003779c:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
c00377a3:	74 63                	je     c0037808 <_svfiprintf_r+0xa28>
c00377a5:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
c00377ab:	8d 5d a7             	lea    -0x59(%ebp),%ebx
c00377ae:	c6 45 a7 30          	movb   $0x30,-0x59(%ebp)
c00377b2:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c00377b8:	e9 13 f8 ff ff       	jmp    c0036fd0 <_svfiprintf_r+0x1f0>
c00377bd:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
c00377c3:	85 c0                	test   %eax,%eax
c00377c5:	74 21                	je     c00377e8 <_svfiprintf_r+0xa08>
c00377c7:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00377cd:	89 44 24 08          	mov    %eax,0x8(%esp)
c00377d1:	8b 45 0c             	mov    0xc(%ebp),%eax
c00377d4:	89 44 24 04          	mov    %eax,0x4(%esp)
c00377d8:	8b 45 08             	mov    0x8(%ebp),%eax
c00377db:	89 04 24             	mov    %eax,(%esp)
c00377de:	e8 0d f4 ff ff       	call   c0036bf0 <__ssprint_r>
c00377e3:	90                   	nop
c00377e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00377e8:	8b 75 0c             	mov    0xc(%ebp),%esi
c00377eb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c00377f0:	f6 46 0c 40          	testb  $0x40,0xc(%esi)
c00377f4:	0f 44 85 50 ff ff ff 	cmove  -0xb0(%ebp),%eax
c00377fb:	81 c4 cc 00 00 00    	add    $0xcc,%esp
c0037801:	5b                   	pop    %ebx
c0037802:	5e                   	pop    %esi
c0037803:	5f                   	pop    %edi
c0037804:	5d                   	pop    %ebp
c0037805:	c3                   	ret    
c0037806:	66 90                	xchg   %ax,%ax
c0037808:	c7 85 58 ff ff ff 00 	movl   $0x0,-0xa8(%ebp)
c003780f:	00 00 00 
c0037812:	8d 5d a8             	lea    -0x58(%ebp),%ebx
c0037815:	e9 b6 f7 ff ff       	jmp    c0036fd0 <_svfiprintf_r+0x1f0>
c003781a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037820:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
c0037826:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
c003782c:	85 ff                	test   %edi,%edi
c003782e:	0f 8e 4f fd ff ff    	jle    c0037583 <_svfiprintf_r+0x7a3>
c0037834:	83 ff 10             	cmp    $0x10,%edi
c0037837:	0f 8e 7f 00 00 00    	jle    c00378bc <_svfiprintf_r+0xadc>
c003783d:	89 9d 4c ff ff ff    	mov    %ebx,-0xb4(%ebp)
c0037843:	89 f1                	mov    %esi,%ecx
c0037845:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0037848:	8b 75 0c             	mov    0xc(%ebp),%esi
c003784b:	eb 0b                	jmp    c0037858 <_svfiprintf_r+0xa78>
c003784d:	8d 76 00             	lea    0x0(%esi),%esi
c0037850:	83 ef 10             	sub    $0x10,%edi
c0037853:	83 ff 10             	cmp    $0x10,%edi
c0037856:	7e 5c                	jle    c00378b4 <_svfiprintf_r+0xad4>
c0037858:	83 c0 01             	add    $0x1,%eax
c003785b:	83 c2 10             	add    $0x10,%edx
c003785e:	c7 01 2c 9d 03 c0    	movl   $0xc0039d2c,(%ecx)
c0037864:	83 c1 08             	add    $0x8,%ecx
c0037867:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c003786e:	83 f8 07             	cmp    $0x7,%eax
c0037871:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037877:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003787d:	7e d1                	jle    c0037850 <_svfiprintf_r+0xa70>
c003787f:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037885:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037889:	89 74 24 04          	mov    %esi,0x4(%esp)
c003788d:	89 1c 24             	mov    %ebx,(%esp)
c0037890:	e8 5b f3 ff ff       	call   c0036bf0 <__ssprint_r>
c0037895:	85 c0                	test   %eax,%eax
c0037897:	0f 85 4b ff ff ff    	jne    c00377e8 <_svfiprintf_r+0xa08>
c003789d:	83 ef 10             	sub    $0x10,%edi
c00378a0:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00378a6:	83 ff 10             	cmp    $0x10,%edi
c00378a9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00378af:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c00378b2:	7f a4                	jg     c0037858 <_svfiprintf_r+0xa78>
c00378b4:	8b 9d 4c ff ff ff    	mov    -0xb4(%ebp),%ebx
c00378ba:	89 ce                	mov    %ecx,%esi
c00378bc:	83 c0 01             	add    $0x1,%eax
c00378bf:	01 fa                	add    %edi,%edx
c00378c1:	c7 06 2c 9d 03 c0    	movl   $0xc0039d2c,(%esi)
c00378c7:	83 c6 08             	add    $0x8,%esi
c00378ca:	89 7e fc             	mov    %edi,-0x4(%esi)
c00378cd:	83 f8 07             	cmp    $0x7,%eax
c00378d0:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00378d6:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00378dc:	0f 8e a1 fc ff ff    	jle    c0037583 <_svfiprintf_r+0x7a3>
c00378e2:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00378e8:	89 44 24 08          	mov    %eax,0x8(%esp)
c00378ec:	8b 45 0c             	mov    0xc(%ebp),%eax
c00378ef:	89 44 24 04          	mov    %eax,0x4(%esp)
c00378f3:	8b 45 08             	mov    0x8(%ebp),%eax
c00378f6:	89 04 24             	mov    %eax,(%esp)
c00378f9:	e8 f2 f2 ff ff       	call   c0036bf0 <__ssprint_r>
c00378fe:	85 c0                	test   %eax,%eax
c0037900:	0f 85 e2 fe ff ff    	jne    c00377e8 <_svfiprintf_r+0xa08>
c0037906:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003790c:	8d 75 a8             	lea    -0x58(%ebp),%esi
c003790f:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037915:	e9 69 fc ff ff       	jmp    c0037583 <_svfiprintf_r+0x7a3>
c003791a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037920:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037926:	89 44 24 08          	mov    %eax,0x8(%esp)
c003792a:	8b 45 0c             	mov    0xc(%ebp),%eax
c003792d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037931:	8b 45 08             	mov    0x8(%ebp),%eax
c0037934:	89 04 24             	mov    %eax,(%esp)
c0037937:	e8 b4 f2 ff ff       	call   c0036bf0 <__ssprint_r>
c003793c:	85 c0                	test   %eax,%eax
c003793e:	0f 85 a4 fe ff ff    	jne    c00377e8 <_svfiprintf_r+0xa08>
c0037944:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003794a:	8d 75 a8             	lea    -0x58(%ebp),%esi
c003794d:	e9 4e fd ff ff       	jmp    c00376a0 <_svfiprintf_r+0x8c0>
c0037952:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037958:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003795e:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037962:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037965:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037969:	8b 45 08             	mov    0x8(%ebp),%eax
c003796c:	89 04 24             	mov    %eax,(%esp)
c003796f:	e8 7c f2 ff ff       	call   c0036bf0 <__ssprint_r>
c0037974:	85 c0                	test   %eax,%eax
c0037976:	0f 84 09 fe ff ff    	je     c0037785 <_svfiprintf_r+0x9a5>
c003797c:	e9 67 fe ff ff       	jmp    c00377e8 <_svfiprintf_r+0xa08>
c0037981:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0037988:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003798e:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037992:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037995:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037999:	8b 45 08             	mov    0x8(%ebp),%eax
c003799c:	89 04 24             	mov    %eax,(%esp)
c003799f:	e8 4c f2 ff ff       	call   c0036bf0 <__ssprint_r>
c00379a4:	85 c0                	test   %eax,%eax
c00379a6:	0f 85 3c fe ff ff    	jne    c00377e8 <_svfiprintf_r+0xa08>
c00379ac:	8d 75 a8             	lea    -0x58(%ebp),%esi
c00379af:	e9 e9 f4 ff ff       	jmp    c0036e9d <_svfiprintf_r+0xbd>
c00379b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00379b8:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00379be:	89 44 24 08          	mov    %eax,0x8(%esp)
c00379c2:	8b 45 0c             	mov    0xc(%ebp),%eax
c00379c5:	89 44 24 04          	mov    %eax,0x4(%esp)
c00379c9:	8b 45 08             	mov    0x8(%ebp),%eax
c00379cc:	89 04 24             	mov    %eax,(%esp)
c00379cf:	e8 1c f2 ff ff       	call   c0036bf0 <__ssprint_r>
c00379d4:	85 c0                	test   %eax,%eax
c00379d6:	0f 85 0c fe ff ff    	jne    c00377e8 <_svfiprintf_r+0xa08>
c00379dc:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00379e2:	8d 75 a8             	lea    -0x58(%ebp),%esi
c00379e5:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00379eb:	e9 83 fb ff ff       	jmp    c0037573 <_svfiprintf_r+0x793>
c00379f0:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00379f6:	89 44 24 08          	mov    %eax,0x8(%esp)
c00379fa:	8b 45 0c             	mov    0xc(%ebp),%eax
c00379fd:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037a01:	8b 45 08             	mov    0x8(%ebp),%eax
c0037a04:	89 04 24             	mov    %eax,(%esp)
c0037a07:	e8 e4 f1 ff ff       	call   c0036bf0 <__ssprint_r>
c0037a0c:	85 c0                	test   %eax,%eax
c0037a0e:	0f 85 d4 fd ff ff    	jne    c00377e8 <_svfiprintf_r+0xa08>
c0037a14:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037a1a:	8d 75 a8             	lea    -0x58(%ebp),%esi
c0037a1d:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037a23:	e9 13 fb ff ff       	jmp    c003753b <_svfiprintf_r+0x75b>
c0037a28:	83 f9 09             	cmp    $0x9,%ecx
c0037a2b:	76 56                	jbe    c0037a83 <_svfiprintf_r+0xca3>
c0037a2d:	8d 5d a8             	lea    -0x58(%ebp),%ebx
c0037a30:	b8 cd cc cc cc       	mov    $0xcccccccd,%eax
c0037a35:	83 eb 01             	sub    $0x1,%ebx
c0037a38:	f7 e1                	mul    %ecx
c0037a3a:	c1 ea 03             	shr    $0x3,%edx
c0037a3d:	8d 04 92             	lea    (%edx,%edx,4),%eax
c0037a40:	01 c0                	add    %eax,%eax
c0037a42:	29 c1                	sub    %eax,%ecx
c0037a44:	83 c1 30             	add    $0x30,%ecx
c0037a47:	85 d2                	test   %edx,%edx
c0037a49:	88 0b                	mov    %cl,(%ebx)
c0037a4b:	89 d1                	mov    %edx,%ecx
c0037a4d:	75 e1                	jne    c0037a30 <_svfiprintf_r+0xc50>
c0037a4f:	e9 71 f5 ff ff       	jmp    c0036fc5 <_svfiprintf_r+0x1e5>
c0037a54:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037a5a:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037a5e:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037a61:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037a65:	8b 45 08             	mov    0x8(%ebp),%eax
c0037a68:	89 04 24             	mov    %eax,(%esp)
c0037a6b:	e8 80 f1 ff ff       	call   c0036bf0 <__ssprint_r>
c0037a70:	85 c0                	test   %eax,%eax
c0037a72:	0f 85 70 fd ff ff    	jne    c00377e8 <_svfiprintf_r+0xa08>
c0037a78:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037a7e:	e9 e3 fc ff ff       	jmp    c0037766 <_svfiprintf_r+0x986>
c0037a83:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
c0037a89:	83 c1 30             	add    $0x30,%ecx
c0037a8c:	88 4d a7             	mov    %cl,-0x59(%ebp)
c0037a8f:	8d 5d a7             	lea    -0x59(%ebp),%ebx
c0037a92:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0037a98:	e9 33 f5 ff ff       	jmp    c0036fd0 <_svfiprintf_r+0x1f0>
c0037a9d:	8b 45 14             	mov    0x14(%ebp),%eax
c0037aa0:	8b 9d 50 ff ff ff    	mov    -0xb0(%ebp),%ebx
c0037aa6:	8b 00                	mov    (%eax),%eax
c0037aa8:	89 18                	mov    %ebx,(%eax)
c0037aaa:	8b 45 14             	mov    0x14(%ebp),%eax
c0037aad:	83 c0 04             	add    $0x4,%eax
c0037ab0:	89 45 14             	mov    %eax,0x14(%ebp)
c0037ab3:	e9 86 f3 ff ff       	jmp    c0036e3e <_svfiprintf_r+0x5e>
c0037ab8:	0f b7 0b             	movzwl (%ebx),%ecx
c0037abb:	83 c3 04             	add    $0x4,%ebx
c0037abe:	89 5d 14             	mov    %ebx,0x14(%ebp)
c0037ac1:	e9 95 f8 ff ff       	jmp    c003735b <_svfiprintf_r+0x57b>
c0037ac6:	0f bf 08             	movswl (%eax),%ecx
c0037ac9:	83 c0 04             	add    $0x4,%eax
c0037acc:	89 45 14             	mov    %eax,0x14(%ebp)
c0037acf:	85 c9                	test   %ecx,%ecx
c0037ad1:	0f 89 0d f7 ff ff    	jns    c00371e4 <_svfiprintf_r+0x404>
c0037ad7:	f7 d9                	neg    %ecx
c0037ad9:	bf 2d 00 00 00       	mov    $0x2d,%edi
c0037ade:	c6 85 71 ff ff ff 2d 	movb   $0x2d,-0x8f(%ebp)
c0037ae5:	ba 01 00 00 00       	mov    $0x1,%edx
c0037aea:	e9 7a f4 ff ff       	jmp    c0036f69 <_svfiprintf_r+0x189>
c0037aef:	89 1c 24             	mov    %ebx,(%esp)
c0037af2:	e8 79 f0 ff ff       	call   c0036b70 <strlen>
c0037af7:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
c0037afd:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c0037b04:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c0037b0b:	00 00 00 
c0037b0e:	89 55 14             	mov    %edx,0x14(%ebp)
c0037b11:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0037b17:	e9 b4 f4 ff ff       	jmp    c0036fd0 <_svfiprintf_r+0x1f0>
c0037b1c:	8b 45 08             	mov    0x8(%ebp),%eax
c0037b1f:	c7 44 24 04 40 00 00 	movl   $0x40,0x4(%esp)
c0037b26:	00 
c0037b27:	89 04 24             	mov    %eax,(%esp)
c0037b2a:	e8 41 d9 ff ff       	call   c0035470 <_malloc_r>
c0037b2f:	8b 75 0c             	mov    0xc(%ebp),%esi
c0037b32:	85 c0                	test   %eax,%eax
c0037b34:	89 06                	mov    %eax,(%esi)
c0037b36:	89 46 10             	mov    %eax,0x10(%esi)
c0037b39:	0f 84 a3 00 00 00    	je     c0037be2 <_svfiprintf_r+0xe02>
c0037b3f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037b42:	c7 40 14 40 00 00 00 	movl   $0x40,0x14(%eax)
c0037b49:	e9 b2 f2 ff ff       	jmp    c0036e00 <_svfiprintf_r+0x20>
c0037b4e:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
c0037b54:	b8 06 00 00 00       	mov    $0x6,%eax
c0037b59:	89 55 14             	mov    %edx,0x14(%ebp)
c0037b5c:	83 ff 06             	cmp    $0x6,%edi
c0037b5f:	0f 46 c7             	cmovbe %edi,%eax
c0037b62:	85 c0                	test   %eax,%eax
c0037b64:	0f 49 d8             	cmovns %eax,%ebx
c0037b67:	89 9d 60 ff ff ff    	mov    %ebx,-0xa0(%ebp)
c0037b6d:	bb 70 98 03 c0       	mov    $0xc0039870,%ebx
c0037b72:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0037b78:	e9 61 f8 ff ff       	jmp    c00373de <_svfiprintf_r+0x5fe>
c0037b7d:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0037b83:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c0037b8a:	89 55 14             	mov    %edx,0x14(%ebp)
c0037b8d:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c0037b94:	00 00 00 
c0037b97:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0037b9d:	e9 2e f4 ff ff       	jmp    c0036fd0 <_svfiprintf_r+0x1f0>
c0037ba2:	89 da                	mov    %ebx,%edx
c0037ba4:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c0037bab:	00 00 00 
c0037bae:	e9 29 f3 ff ff       	jmp    c0036edc <_svfiprintf_r+0xfc>
c0037bb3:	8b 4d 14             	mov    0x14(%ebp),%ecx
c0037bb6:	89 da                	mov    %ebx,%edx
c0037bb8:	8b 45 14             	mov    0x14(%ebp),%eax
c0037bbb:	8b 09                	mov    (%ecx),%ecx
c0037bbd:	83 c0 04             	add    $0x4,%eax
c0037bc0:	89 45 14             	mov    %eax,0x14(%ebp)
c0037bc3:	85 c9                	test   %ecx,%ecx
c0037bc5:	89 8d 5c ff ff ff    	mov    %ecx,-0xa4(%ebp)
c0037bcb:	0f 89 26 f3 ff ff    	jns    c0036ef7 <_svfiprintf_r+0x117>
c0037bd1:	c7 85 5c ff ff ff ff 	movl   $0xffffffff,-0xa4(%ebp)
c0037bd8:	ff ff ff 
c0037bdb:	89 d0                	mov    %edx,%eax
c0037bdd:	e9 f4 f2 ff ff       	jmp    c0036ed6 <_svfiprintf_r+0xf6>
c0037be2:	8b 45 08             	mov    0x8(%ebp),%eax
c0037be5:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0037beb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0037bf0:	e9 06 fc ff ff       	jmp    c00377fb <_svfiprintf_r+0xa1b>
c0037bf5:	66 90                	xchg   %ax,%ax
c0037bf7:	66 90                	xchg   %ax,%ax
c0037bf9:	66 90                	xchg   %ax,%ax
c0037bfb:	66 90                	xchg   %ax,%ax
c0037bfd:	66 90                	xchg   %ax,%ax
c0037bff:	90                   	nop

c0037c00 <_calloc_r>:
c0037c00:	55                   	push   %ebp
c0037c01:	89 e5                	mov    %esp,%ebp
c0037c03:	53                   	push   %ebx
c0037c04:	83 ec 14             	sub    $0x14,%esp
c0037c07:	8b 45 10             	mov    0x10(%ebp),%eax
c0037c0a:	0f af 45 0c          	imul   0xc(%ebp),%eax
c0037c0e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037c12:	8b 45 08             	mov    0x8(%ebp),%eax
c0037c15:	89 04 24             	mov    %eax,(%esp)
c0037c18:	e8 53 d8 ff ff       	call   c0035470 <_malloc_r>
c0037c1d:	85 c0                	test   %eax,%eax
c0037c1f:	89 c3                	mov    %eax,%ebx
c0037c21:	0f 84 91 00 00 00    	je     c0037cb8 <_calloc_r+0xb8>
c0037c27:	8b 40 fc             	mov    -0x4(%eax),%eax
c0037c2a:	83 e0 fc             	and    $0xfffffffc,%eax
c0037c2d:	83 e8 04             	sub    $0x4,%eax
c0037c30:	83 f8 24             	cmp    $0x24,%eax
c0037c33:	77 63                	ja     c0037c98 <_calloc_r+0x98>
c0037c35:	83 f8 13             	cmp    $0x13,%eax
c0037c38:	89 da                	mov    %ebx,%edx
c0037c3a:	77 1c                	ja     c0037c58 <_calloc_r+0x58>
c0037c3c:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
c0037c42:	89 d8                	mov    %ebx,%eax
c0037c44:	c7 42 04 00 00 00 00 	movl   $0x0,0x4(%edx)
c0037c4b:	c7 42 08 00 00 00 00 	movl   $0x0,0x8(%edx)
c0037c52:	83 c4 14             	add    $0x14,%esp
c0037c55:	5b                   	pop    %ebx
c0037c56:	5d                   	pop    %ebp
c0037c57:	c3                   	ret    
c0037c58:	83 f8 1b             	cmp    $0x1b,%eax
c0037c5b:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
c0037c61:	8d 53 08             	lea    0x8(%ebx),%edx
c0037c64:	c7 43 04 00 00 00 00 	movl   $0x0,0x4(%ebx)
c0037c6b:	76 cf                	jbe    c0037c3c <_calloc_r+0x3c>
c0037c6d:	83 f8 24             	cmp    $0x24,%eax
c0037c70:	c7 43 08 00 00 00 00 	movl   $0x0,0x8(%ebx)
c0037c77:	8d 53 10             	lea    0x10(%ebx),%edx
c0037c7a:	c7 43 0c 00 00 00 00 	movl   $0x0,0xc(%ebx)
c0037c81:	75 b9                	jne    c0037c3c <_calloc_r+0x3c>
c0037c83:	c7 43 10 00 00 00 00 	movl   $0x0,0x10(%ebx)
c0037c8a:	8d 53 18             	lea    0x18(%ebx),%edx
c0037c8d:	c7 43 14 00 00 00 00 	movl   $0x0,0x14(%ebx)
c0037c94:	eb a6                	jmp    c0037c3c <_calloc_r+0x3c>
c0037c96:	66 90                	xchg   %ax,%ax
c0037c98:	89 1c 24             	mov    %ebx,(%esp)
c0037c9b:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037c9f:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0037ca6:	00 
c0037ca7:	e8 50 a2 ff ff       	call   c0031efc <memset>
c0037cac:	83 c4 14             	add    $0x14,%esp
c0037caf:	89 d8                	mov    %ebx,%eax
c0037cb1:	5b                   	pop    %ebx
c0037cb2:	5d                   	pop    %ebp
c0037cb3:	c3                   	ret    
c0037cb4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037cb8:	31 c0                	xor    %eax,%eax
c0037cba:	eb 96                	jmp    c0037c52 <_calloc_r+0x52>
c0037cbc:	66 90                	xchg   %ax,%ax
c0037cbe:	66 90                	xchg   %ax,%ax

c0037cc0 <_malloc_trim_r>:
c0037cc0:	55                   	push   %ebp
c0037cc1:	89 e5                	mov    %esp,%ebp
c0037cc3:	57                   	push   %edi
c0037cc4:	56                   	push   %esi
c0037cc5:	53                   	push   %ebx
c0037cc6:	83 ec 1c             	sub    $0x1c,%esp
c0037cc9:	8b 75 08             	mov    0x8(%ebp),%esi
c0037ccc:	89 34 24             	mov    %esi,(%esp)
c0037ccf:	e8 7c df ff ff       	call   c0035c50 <__malloc_lock>
c0037cd4:	a1 48 d5 03 c0       	mov    0xc003d548,%eax
c0037cd9:	8b 58 04             	mov    0x4(%eax),%ebx
c0037cdc:	83 e3 fc             	and    $0xfffffffc,%ebx
c0037cdf:	89 d8                	mov    %ebx,%eax
c0037ce1:	2b 45 0c             	sub    0xc(%ebp),%eax
c0037ce4:	05 ef 0f 00 00       	add    $0xfef,%eax
c0037ce9:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0037cee:	8d b8 00 f0 ff ff    	lea    -0x1000(%eax),%edi
c0037cf4:	81 ff ff 0f 00 00    	cmp    $0xfff,%edi
c0037cfa:	7e 1c                	jle    c0037d18 <_malloc_trim_r+0x58>
c0037cfc:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0037d03:	00 
c0037d04:	89 34 24             	mov    %esi,(%esp)
c0037d07:	e8 44 ed ff ff       	call   c0036a50 <_sbrk_r>
c0037d0c:	8b 15 48 d5 03 c0    	mov    0xc003d548,%edx
c0037d12:	01 da                	add    %ebx,%edx
c0037d14:	39 d0                	cmp    %edx,%eax
c0037d16:	74 18                	je     c0037d30 <_malloc_trim_r+0x70>
c0037d18:	89 34 24             	mov    %esi,(%esp)
c0037d1b:	e8 40 df ff ff       	call   c0035c60 <__malloc_unlock>
c0037d20:	83 c4 1c             	add    $0x1c,%esp
c0037d23:	31 c0                	xor    %eax,%eax
c0037d25:	5b                   	pop    %ebx
c0037d26:	5e                   	pop    %esi
c0037d27:	5f                   	pop    %edi
c0037d28:	5d                   	pop    %ebp
c0037d29:	c3                   	ret    
c0037d2a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037d30:	89 f8                	mov    %edi,%eax
c0037d32:	f7 d8                	neg    %eax
c0037d34:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037d38:	89 34 24             	mov    %esi,(%esp)
c0037d3b:	e8 10 ed ff ff       	call   c0036a50 <_sbrk_r>
c0037d40:	83 f8 ff             	cmp    $0xffffffff,%eax
c0037d43:	74 2b                	je     c0037d70 <_malloc_trim_r+0xb0>
c0037d45:	a1 48 d5 03 c0       	mov    0xc003d548,%eax
c0037d4a:	29 fb                	sub    %edi,%ebx
c0037d4c:	83 cb 01             	or     $0x1,%ebx
c0037d4f:	29 3d 20 00 07 c0    	sub    %edi,0xc0070020
c0037d55:	89 58 04             	mov    %ebx,0x4(%eax)
c0037d58:	89 34 24             	mov    %esi,(%esp)
c0037d5b:	e8 00 df ff ff       	call   c0035c60 <__malloc_unlock>
c0037d60:	83 c4 1c             	add    $0x1c,%esp
c0037d63:	b8 01 00 00 00       	mov    $0x1,%eax
c0037d68:	5b                   	pop    %ebx
c0037d69:	5e                   	pop    %esi
c0037d6a:	5f                   	pop    %edi
c0037d6b:	5d                   	pop    %ebp
c0037d6c:	c3                   	ret    
c0037d6d:	8d 76 00             	lea    0x0(%esi),%esi
c0037d70:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0037d77:	00 
c0037d78:	89 34 24             	mov    %esi,(%esp)
c0037d7b:	e8 d0 ec ff ff       	call   c0036a50 <_sbrk_r>
c0037d80:	8b 15 48 d5 03 c0    	mov    0xc003d548,%edx
c0037d86:	89 c1                	mov    %eax,%ecx
c0037d88:	29 d1                	sub    %edx,%ecx
c0037d8a:	83 f9 0f             	cmp    $0xf,%ecx
c0037d8d:	7e 89                	jle    c0037d18 <_malloc_trim_r+0x58>
c0037d8f:	2b 05 20 d5 03 c0    	sub    0xc003d520,%eax
c0037d95:	83 c9 01             	or     $0x1,%ecx
c0037d98:	89 4a 04             	mov    %ecx,0x4(%edx)
c0037d9b:	a3 20 00 07 c0       	mov    %eax,0xc0070020
c0037da0:	e9 73 ff ff ff       	jmp    c0037d18 <_malloc_trim_r+0x58>
c0037da5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037da9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0037db0 <_free_r>:
c0037db0:	55                   	push   %ebp
c0037db1:	89 e5                	mov    %esp,%ebp
c0037db3:	57                   	push   %edi
c0037db4:	56                   	push   %esi
c0037db5:	53                   	push   %ebx
c0037db6:	83 ec 1c             	sub    $0x1c,%esp
c0037db9:	8b 75 0c             	mov    0xc(%ebp),%esi
c0037dbc:	8b 45 08             	mov    0x8(%ebp),%eax
c0037dbf:	85 f6                	test   %esi,%esi
c0037dc1:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0037dc4:	0f 84 fe 00 00 00    	je     c0037ec8 <_free_r+0x118>
c0037dca:	89 04 24             	mov    %eax,(%esp)
c0037dcd:	e8 7e de ff ff       	call   c0035c50 <__malloc_lock>
c0037dd2:	8b 7e fc             	mov    -0x4(%esi),%edi
c0037dd5:	8d 56 f8             	lea    -0x8(%esi),%edx
c0037dd8:	89 f8                	mov    %edi,%eax
c0037dda:	83 e0 fe             	and    $0xfffffffe,%eax
c0037ddd:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
c0037de0:	8b 59 04             	mov    0x4(%ecx),%ebx
c0037de3:	83 e3 fc             	and    $0xfffffffc,%ebx
c0037de6:	39 0d 48 d5 03 c0    	cmp    %ecx,0xc003d548
c0037dec:	0f 84 0e 01 00 00    	je     c0037f00 <_free_r+0x150>
c0037df2:	83 e7 01             	and    $0x1,%edi
c0037df5:	89 59 04             	mov    %ebx,0x4(%ecx)
c0037df8:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
c0037dff:	75 1f                	jne    c0037e20 <_free_r+0x70>
c0037e01:	8b 76 f8             	mov    -0x8(%esi),%esi
c0037e04:	29 f2                	sub    %esi,%edx
c0037e06:	01 f0                	add    %esi,%eax
c0037e08:	8b 72 08             	mov    0x8(%edx),%esi
c0037e0b:	81 fe 48 d5 03 c0    	cmp    $0xc003d548,%esi
c0037e11:	0f 84 39 01 00 00    	je     c0037f50 <_free_r+0x1a0>
c0037e17:	8b 7a 0c             	mov    0xc(%edx),%edi
c0037e1a:	89 7e 0c             	mov    %edi,0xc(%esi)
c0037e1d:	89 77 08             	mov    %esi,0x8(%edi)
c0037e20:	f6 44 19 04 01       	testb  $0x1,0x4(%ecx,%ebx,1)
c0037e25:	75 21                	jne    c0037e48 <_free_r+0x98>
c0037e27:	8b 75 e0             	mov    -0x20(%ebp),%esi
c0037e2a:	01 d8                	add    %ebx,%eax
c0037e2c:	8b 59 08             	mov    0x8(%ecx),%ebx
c0037e2f:	85 f6                	test   %esi,%esi
c0037e31:	75 0c                	jne    c0037e3f <_free_r+0x8f>
c0037e33:	81 fb 48 d5 03 c0    	cmp    $0xc003d548,%ebx
c0037e39:	0f 84 21 01 00 00    	je     c0037f60 <_free_r+0x1b0>
c0037e3f:	8b 49 0c             	mov    0xc(%ecx),%ecx
c0037e42:	89 4b 0c             	mov    %ecx,0xc(%ebx)
c0037e45:	89 59 08             	mov    %ebx,0x8(%ecx)
c0037e48:	89 c1                	mov    %eax,%ecx
c0037e4a:	83 c9 01             	or     $0x1,%ecx
c0037e4d:	89 4a 04             	mov    %ecx,0x4(%edx)
c0037e50:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0037e53:	89 04 02             	mov    %eax,(%edx,%eax,1)
c0037e56:	85 c9                	test   %ecx,%ecx
c0037e58:	75 56                	jne    c0037eb0 <_free_r+0x100>
c0037e5a:	3d ff 01 00 00       	cmp    $0x1ff,%eax
c0037e5f:	76 6f                	jbe    c0037ed0 <_free_r+0x120>
c0037e61:	89 c1                	mov    %eax,%ecx
c0037e63:	c1 e9 09             	shr    $0x9,%ecx
c0037e66:	83 f9 04             	cmp    $0x4,%ecx
c0037e69:	0f 87 21 01 00 00    	ja     c0037f90 <_free_r+0x1e0>
c0037e6f:	89 c1                	mov    %eax,%ecx
c0037e71:	c1 e9 06             	shr    $0x6,%ecx
c0037e74:	83 c1 38             	add    $0x38,%ecx
c0037e77:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0037e7a:	8d 34 9d 40 d5 03 c0 	lea    -0x3ffc2ac0(,%ebx,4),%esi
c0037e81:	8b 5e 08             	mov    0x8(%esi),%ebx
c0037e84:	39 f3                	cmp    %esi,%ebx
c0037e86:	0f 84 14 01 00 00    	je     c0037fa0 <_free_r+0x1f0>
c0037e8c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037e90:	8b 4b 04             	mov    0x4(%ebx),%ecx
c0037e93:	83 e1 fc             	and    $0xfffffffc,%ecx
c0037e96:	39 c8                	cmp    %ecx,%eax
c0037e98:	73 07                	jae    c0037ea1 <_free_r+0xf1>
c0037e9a:	8b 5b 08             	mov    0x8(%ebx),%ebx
c0037e9d:	39 de                	cmp    %ebx,%esi
c0037e9f:	75 ef                	jne    c0037e90 <_free_r+0xe0>
c0037ea1:	8b 43 0c             	mov    0xc(%ebx),%eax
c0037ea4:	89 42 0c             	mov    %eax,0xc(%edx)
c0037ea7:	89 5a 08             	mov    %ebx,0x8(%edx)
c0037eaa:	89 50 08             	mov    %edx,0x8(%eax)
c0037ead:	89 53 0c             	mov    %edx,0xc(%ebx)
c0037eb0:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0037eb3:	89 45 08             	mov    %eax,0x8(%ebp)
c0037eb6:	83 c4 1c             	add    $0x1c,%esp
c0037eb9:	5b                   	pop    %ebx
c0037eba:	5e                   	pop    %esi
c0037ebb:	5f                   	pop    %edi
c0037ebc:	5d                   	pop    %ebp
c0037ebd:	e9 9e dd ff ff       	jmp    c0035c60 <__malloc_unlock>
c0037ec2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037ec8:	83 c4 1c             	add    $0x1c,%esp
c0037ecb:	5b                   	pop    %ebx
c0037ecc:	5e                   	pop    %esi
c0037ecd:	5f                   	pop    %edi
c0037ece:	5d                   	pop    %ebp
c0037ecf:	c3                   	ret    
c0037ed0:	c1 e8 03             	shr    $0x3,%eax
c0037ed3:	bb 01 00 00 00       	mov    $0x1,%ebx
c0037ed8:	89 c1                	mov    %eax,%ecx
c0037eda:	c1 f9 02             	sar    $0x2,%ecx
c0037edd:	8d 04 c5 40 d5 03 c0 	lea    -0x3ffc2ac0(,%eax,8),%eax
c0037ee4:	d3 e3                	shl    %cl,%ebx
c0037ee6:	8b 48 08             	mov    0x8(%eax),%ecx
c0037ee9:	09 1d 44 d5 03 c0    	or     %ebx,0xc003d544
c0037eef:	89 42 0c             	mov    %eax,0xc(%edx)
c0037ef2:	89 4a 08             	mov    %ecx,0x8(%edx)
c0037ef5:	89 50 08             	mov    %edx,0x8(%eax)
c0037ef8:	89 51 0c             	mov    %edx,0xc(%ecx)
c0037efb:	eb b3                	jmp    c0037eb0 <_free_r+0x100>
c0037efd:	8d 76 00             	lea    0x0(%esi),%esi
c0037f00:	01 d8                	add    %ebx,%eax
c0037f02:	83 e7 01             	and    $0x1,%edi
c0037f05:	75 13                	jne    c0037f1a <_free_r+0x16a>
c0037f07:	8b 4e f8             	mov    -0x8(%esi),%ecx
c0037f0a:	29 ca                	sub    %ecx,%edx
c0037f0c:	01 c8                	add    %ecx,%eax
c0037f0e:	8b 5a 08             	mov    0x8(%edx),%ebx
c0037f11:	8b 4a 0c             	mov    0xc(%edx),%ecx
c0037f14:	89 4b 0c             	mov    %ecx,0xc(%ebx)
c0037f17:	89 59 08             	mov    %ebx,0x8(%ecx)
c0037f1a:	89 c1                	mov    %eax,%ecx
c0037f1c:	83 c9 01             	or     $0x1,%ecx
c0037f1f:	3b 05 24 d5 03 c0    	cmp    0xc003d524,%eax
c0037f25:	89 4a 04             	mov    %ecx,0x4(%edx)
c0037f28:	89 15 48 d5 03 c0    	mov    %edx,0xc003d548
c0037f2e:	72 80                	jb     c0037eb0 <_free_r+0x100>
c0037f30:	a1 50 00 07 c0       	mov    0xc0070050,%eax
c0037f35:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037f39:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0037f3c:	89 04 24             	mov    %eax,(%esp)
c0037f3f:	e8 7c fd ff ff       	call   c0037cc0 <_malloc_trim_r>
c0037f44:	e9 67 ff ff ff       	jmp    c0037eb0 <_free_r+0x100>
c0037f49:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0037f50:	c7 45 e0 01 00 00 00 	movl   $0x1,-0x20(%ebp)
c0037f57:	e9 c4 fe ff ff       	jmp    c0037e20 <_free_r+0x70>
c0037f5c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037f60:	89 c1                	mov    %eax,%ecx
c0037f62:	83 c9 01             	or     $0x1,%ecx
c0037f65:	89 15 54 d5 03 c0    	mov    %edx,0xc003d554
c0037f6b:	89 15 50 d5 03 c0    	mov    %edx,0xc003d550
c0037f71:	c7 42 0c 48 d5 03 c0 	movl   $0xc003d548,0xc(%edx)
c0037f78:	c7 42 08 48 d5 03 c0 	movl   $0xc003d548,0x8(%edx)
c0037f7f:	89 4a 04             	mov    %ecx,0x4(%edx)
c0037f82:	89 04 02             	mov    %eax,(%edx,%eax,1)
c0037f85:	e9 26 ff ff ff       	jmp    c0037eb0 <_free_r+0x100>
c0037f8a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037f90:	83 f9 14             	cmp    $0x14,%ecx
c0037f93:	77 23                	ja     c0037fb8 <_free_r+0x208>
c0037f95:	83 c1 5b             	add    $0x5b,%ecx
c0037f98:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0037f9b:	e9 da fe ff ff       	jmp    c0037e7a <_free_r+0xca>
c0037fa0:	c1 f9 02             	sar    $0x2,%ecx
c0037fa3:	b8 01 00 00 00       	mov    $0x1,%eax
c0037fa8:	d3 e0                	shl    %cl,%eax
c0037faa:	09 05 44 d5 03 c0    	or     %eax,0xc003d544
c0037fb0:	89 d8                	mov    %ebx,%eax
c0037fb2:	e9 ed fe ff ff       	jmp    c0037ea4 <_free_r+0xf4>
c0037fb7:	90                   	nop
c0037fb8:	83 f9 54             	cmp    $0x54,%ecx
c0037fbb:	77 10                	ja     c0037fcd <_free_r+0x21d>
c0037fbd:	89 c1                	mov    %eax,%ecx
c0037fbf:	c1 e9 0c             	shr    $0xc,%ecx
c0037fc2:	83 c1 6e             	add    $0x6e,%ecx
c0037fc5:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0037fc8:	e9 ad fe ff ff       	jmp    c0037e7a <_free_r+0xca>
c0037fcd:	81 f9 54 01 00 00    	cmp    $0x154,%ecx
c0037fd3:	77 10                	ja     c0037fe5 <_free_r+0x235>
c0037fd5:	89 c1                	mov    %eax,%ecx
c0037fd7:	c1 e9 0f             	shr    $0xf,%ecx
c0037fda:	83 c1 77             	add    $0x77,%ecx
c0037fdd:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0037fe0:	e9 95 fe ff ff       	jmp    c0037e7a <_free_r+0xca>
c0037fe5:	81 f9 54 05 00 00    	cmp    $0x554,%ecx
c0037feb:	77 10                	ja     c0037ffd <_free_r+0x24d>
c0037fed:	89 c1                	mov    %eax,%ecx
c0037fef:	c1 e9 12             	shr    $0x12,%ecx
c0037ff2:	83 c1 7c             	add    $0x7c,%ecx
c0037ff5:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0037ff8:	e9 7d fe ff ff       	jmp    c0037e7a <_free_r+0xca>
c0037ffd:	bb fc 00 00 00       	mov    $0xfc,%ebx
c0038002:	b9 7e 00 00 00       	mov    $0x7e,%ecx
c0038007:	e9 6e fe ff ff       	jmp    c0037e7a <_free_r+0xca>
c003800c:	66 90                	xchg   %ax,%ax
c003800e:	66 90                	xchg   %ax,%ax

c0038010 <memmove>:
c0038010:	55                   	push   %ebp
c0038011:	89 e5                	mov    %esp,%ebp
c0038013:	56                   	push   %esi
c0038014:	57                   	push   %edi
c0038015:	53                   	push   %ebx
c0038016:	8b 7d 08             	mov    0x8(%ebp),%edi
c0038019:	8b 4d 10             	mov    0x10(%ebp),%ecx
c003801c:	8b 75 0c             	mov    0xc(%ebp),%esi
c003801f:	fc                   	cld    
c0038020:	39 fe                	cmp    %edi,%esi
c0038022:	73 43                	jae    c0038067 <memmove+0x57>
c0038024:	8d 5c 31 ff          	lea    -0x1(%ecx,%esi,1),%ebx
c0038028:	39 df                	cmp    %ebx,%edi
c003802a:	77 3b                	ja     c0038067 <memmove+0x57>
c003802c:	01 ce                	add    %ecx,%esi
c003802e:	01 cf                	add    %ecx,%edi
c0038030:	fd                   	std    
c0038031:	83 f9 08             	cmp    $0x8,%ecx
c0038034:	76 2b                	jbe    c0038061 <memmove+0x51>
c0038036:	89 fa                	mov    %edi,%edx
c0038038:	89 cb                	mov    %ecx,%ebx
c003803a:	83 e2 03             	and    $0x3,%edx
c003803d:	74 0c                	je     c003804b <memmove+0x3b>
c003803f:	89 d1                	mov    %edx,%ecx
c0038041:	4e                   	dec    %esi
c0038042:	4f                   	dec    %edi
c0038043:	29 cb                	sub    %ecx,%ebx
c0038045:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0038047:	89 d9                	mov    %ebx,%ecx
c0038049:	46                   	inc    %esi
c003804a:	47                   	inc    %edi
c003804b:	c1 e9 02             	shr    $0x2,%ecx
c003804e:	83 ee 04             	sub    $0x4,%esi
c0038051:	83 ef 04             	sub    $0x4,%edi
c0038054:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
c0038056:	83 c6 04             	add    $0x4,%esi
c0038059:	83 c7 04             	add    $0x4,%edi
c003805c:	89 d9                	mov    %ebx,%ecx
c003805e:	83 e1 03             	and    $0x3,%ecx
c0038061:	4e                   	dec    %esi
c0038062:	4f                   	dec    %edi
c0038063:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0038065:	eb 2a                	jmp    c0038091 <memmove+0x81>
c0038067:	83 f9 08             	cmp    $0x8,%ecx
c003806a:	76 23                	jbe    c003808f <memmove+0x7f>
c003806c:	89 fa                	mov    %edi,%edx
c003806e:	89 cb                	mov    %ecx,%ebx
c0038070:	83 e2 03             	and    $0x3,%edx
c0038073:	74 10                	je     c0038085 <memmove+0x75>
c0038075:	b9 04 00 00 00       	mov    $0x4,%ecx
c003807a:	29 d1                	sub    %edx,%ecx
c003807c:	83 e1 03             	and    $0x3,%ecx
c003807f:	29 cb                	sub    %ecx,%ebx
c0038081:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0038083:	89 d9                	mov    %ebx,%ecx
c0038085:	c1 e9 02             	shr    $0x2,%ecx
c0038088:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
c003808a:	89 d9                	mov    %ebx,%ecx
c003808c:	83 e1 03             	and    $0x3,%ecx
c003808f:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0038091:	8b 45 08             	mov    0x8(%ebp),%eax
c0038094:	fc                   	cld    
c0038095:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0038098:	5b                   	pop    %ebx
c0038099:	5f                   	pop    %edi
c003809a:	5e                   	pop    %esi
c003809b:	c9                   	leave  
c003809c:	c3                   	ret    
c003809d:	66 90                	xchg   %ax,%ax
c003809f:	90                   	nop

c00380a0 <_realloc_r>:
c00380a0:	55                   	push   %ebp
c00380a1:	89 e5                	mov    %esp,%ebp
c00380a3:	57                   	push   %edi
c00380a4:	56                   	push   %esi
c00380a5:	53                   	push   %ebx
c00380a6:	83 ec 3c             	sub    $0x3c,%esp
c00380a9:	8b 45 08             	mov    0x8(%ebp),%eax
c00380ac:	8b 7d 0c             	mov    0xc(%ebp),%edi
c00380af:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c00380b2:	8b 45 10             	mov    0x10(%ebp),%eax
c00380b5:	85 ff                	test   %edi,%edi
c00380b7:	89 45 e0             	mov    %eax,-0x20(%ebp)
c00380ba:	0f 84 50 02 00 00    	je     c0038310 <_realloc_r+0x270>
c00380c0:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c00380c3:	8d 77 f8             	lea    -0x8(%edi),%esi
c00380c6:	89 04 24             	mov    %eax,(%esp)
c00380c9:	e8 82 db ff ff       	call   c0035c50 <__malloc_lock>
c00380ce:	8b 47 fc             	mov    -0x4(%edi),%eax
c00380d1:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c00380d4:	89 c3                	mov    %eax,%ebx
c00380d6:	8d 51 0b             	lea    0xb(%ecx),%edx
c00380d9:	83 e3 fc             	and    $0xfffffffc,%ebx
c00380dc:	83 fa 16             	cmp    $0x16,%edx
c00380df:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c00380e2:	0f 87 00 01 00 00    	ja     c00381e8 <_realloc_r+0x148>
c00380e8:	31 d2                	xor    %edx,%edx
c00380ea:	c7 45 d8 10 00 00 00 	movl   $0x10,-0x28(%ebp)
c00380f1:	c7 45 dc 10 00 00 00 	movl   $0x10,-0x24(%ebp)
c00380f8:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c00380fb:	39 4d dc             	cmp    %ecx,-0x24(%ebp)
c00380fe:	0f 82 1c 02 00 00    	jb     c0038320 <_realloc_r+0x280>
c0038104:	84 d2                	test   %dl,%dl
c0038106:	0f 85 14 02 00 00    	jne    c0038320 <_realloc_r+0x280>
c003810c:	3b 5d d8             	cmp    -0x28(%ebp),%ebx
c003810f:	0f 8d eb 00 00 00    	jge    c0038200 <_realloc_r+0x160>
c0038115:	8b 0d 48 d5 03 c0    	mov    0xc003d548,%ecx
c003811b:	8d 14 1e             	lea    (%esi,%ebx,1),%edx
c003811e:	39 d1                	cmp    %edx,%ecx
c0038120:	89 4d cc             	mov    %ecx,-0x34(%ebp)
c0038123:	0f 84 6f 02 00 00    	je     c0038398 <_realloc_r+0x2f8>
c0038129:	8b 4a 04             	mov    0x4(%edx),%ecx
c003812c:	89 c8                	mov    %ecx,%eax
c003812e:	83 e0 fe             	and    $0xfffffffe,%eax
c0038131:	f6 44 02 04 01       	testb  $0x1,0x4(%edx,%eax,1)
c0038136:	0f 84 f4 00 00 00    	je     c0038230 <_realloc_r+0x190>
c003813c:	c7 45 d0 00 00 00 00 	movl   $0x0,-0x30(%ebp)
c0038143:	31 d2                	xor    %edx,%edx
c0038145:	f6 45 d4 01          	testb  $0x1,-0x2c(%ebp)
c0038149:	0f 85 39 01 00 00    	jne    c0038288 <_realloc_r+0x1e8>
c003814f:	89 f1                	mov    %esi,%ecx
c0038151:	2b 4f f8             	sub    -0x8(%edi),%ecx
c0038154:	8b 41 04             	mov    0x4(%ecx),%eax
c0038157:	83 e0 fc             	and    $0xfffffffc,%eax
c003815a:	85 d2                	test   %edx,%edx
c003815c:	0f 84 f6 02 00 00    	je     c0038458 <_realloc_r+0x3b8>
c0038162:	3b 55 cc             	cmp    -0x34(%ebp),%edx
c0038165:	0f 84 f5 02 00 00    	je     c0038460 <_realloc_r+0x3c0>
c003816b:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c003816e:	8b 55 d0             	mov    -0x30(%ebp),%edx
c0038171:	01 d8                	add    %ebx,%eax
c0038173:	01 c2                	add    %eax,%edx
c0038175:	3b 55 d8             	cmp    -0x28(%ebp),%edx
c0038178:	89 55 d0             	mov    %edx,-0x30(%ebp)
c003817b:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c003817e:	0f 8c ac 01 00 00    	jl     c0038330 <_realloc_r+0x290>
c0038184:	8b 42 0c             	mov    0xc(%edx),%eax
c0038187:	83 eb 04             	sub    $0x4,%ebx
c003818a:	8b 52 08             	mov    0x8(%edx),%edx
c003818d:	83 fb 24             	cmp    $0x24,%ebx
c0038190:	8d 71 08             	lea    0x8(%ecx),%esi
c0038193:	89 42 0c             	mov    %eax,0xc(%edx)
c0038196:	89 50 08             	mov    %edx,0x8(%eax)
c0038199:	8b 41 0c             	mov    0xc(%ecx),%eax
c003819c:	8b 51 08             	mov    0x8(%ecx),%edx
c003819f:	89 42 0c             	mov    %eax,0xc(%edx)
c00381a2:	89 50 08             	mov    %edx,0x8(%eax)
c00381a5:	0f 87 85 03 00 00    	ja     c0038530 <_realloc_r+0x490>
c00381ab:	83 fb 13             	cmp    $0x13,%ebx
c00381ae:	89 f0                	mov    %esi,%eax
c00381b0:	76 1a                	jbe    c00381cc <_realloc_r+0x12c>
c00381b2:	8b 07                	mov    (%edi),%eax
c00381b4:	83 fb 1b             	cmp    $0x1b,%ebx
c00381b7:	89 41 08             	mov    %eax,0x8(%ecx)
c00381ba:	8b 47 04             	mov    0x4(%edi),%eax
c00381bd:	89 41 0c             	mov    %eax,0xc(%ecx)
c00381c0:	0f 87 8f 03 00 00    	ja     c0038555 <_realloc_r+0x4b5>
c00381c6:	8d 41 10             	lea    0x10(%ecx),%eax
c00381c9:	83 c7 08             	add    $0x8,%edi
c00381cc:	8b 17                	mov    (%edi),%edx
c00381ce:	8b 5d d0             	mov    -0x30(%ebp),%ebx
c00381d1:	89 10                	mov    %edx,(%eax)
c00381d3:	8b 57 04             	mov    0x4(%edi),%edx
c00381d6:	89 50 04             	mov    %edx,0x4(%eax)
c00381d9:	8b 57 08             	mov    0x8(%edi),%edx
c00381dc:	89 f7                	mov    %esi,%edi
c00381de:	89 ce                	mov    %ecx,%esi
c00381e0:	89 50 08             	mov    %edx,0x8(%eax)
c00381e3:	8b 41 04             	mov    0x4(%ecx),%eax
c00381e6:	eb 1b                	jmp    c0038203 <_realloc_r+0x163>
c00381e8:	83 e2 f8             	and    $0xfffffff8,%edx
c00381eb:	89 55 dc             	mov    %edx,-0x24(%ebp)
c00381ee:	89 55 d8             	mov    %edx,-0x28(%ebp)
c00381f1:	c1 ea 1f             	shr    $0x1f,%edx
c00381f4:	e9 ff fe ff ff       	jmp    c00380f8 <_realloc_r+0x58>
c00381f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0038200:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c0038203:	89 da                	mov    %ebx,%edx
c0038205:	2b 55 dc             	sub    -0x24(%ebp),%edx
c0038208:	83 fa 0f             	cmp    $0xf,%edx
c003820b:	77 4b                	ja     c0038258 <_realloc_r+0x1b8>
c003820d:	83 e0 01             	and    $0x1,%eax
c0038210:	09 d8                	or     %ebx,%eax
c0038212:	89 46 04             	mov    %eax,0x4(%esi)
c0038215:	83 4c 1e 04 01       	orl    $0x1,0x4(%esi,%ebx,1)
c003821a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c003821d:	89 04 24             	mov    %eax,(%esp)
c0038220:	e8 3b da ff ff       	call   c0035c60 <__malloc_unlock>
c0038225:	89 f8                	mov    %edi,%eax
c0038227:	83 c4 3c             	add    $0x3c,%esp
c003822a:	5b                   	pop    %ebx
c003822b:	5e                   	pop    %esi
c003822c:	5f                   	pop    %edi
c003822d:	5d                   	pop    %ebp
c003822e:	c3                   	ret    
c003822f:	90                   	nop
c0038230:	83 e1 fc             	and    $0xfffffffc,%ecx
c0038233:	89 4d d0             	mov    %ecx,-0x30(%ebp)
c0038236:	01 d9                	add    %ebx,%ecx
c0038238:	3b 4d d8             	cmp    -0x28(%ebp),%ecx
c003823b:	0f 8c 04 ff ff ff    	jl     c0038145 <_realloc_r+0xa5>
c0038241:	8b 5a 0c             	mov    0xc(%edx),%ebx
c0038244:	8b 52 08             	mov    0x8(%edx),%edx
c0038247:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c003824a:	89 5a 0c             	mov    %ebx,0xc(%edx)
c003824d:	89 53 08             	mov    %edx,0x8(%ebx)
c0038250:	89 cb                	mov    %ecx,%ebx
c0038252:	eb af                	jmp    c0038203 <_realloc_r+0x163>
c0038254:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0038258:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c003825b:	83 e0 01             	and    $0x1,%eax
c003825e:	09 d8                	or     %ebx,%eax
c0038260:	89 46 04             	mov    %eax,0x4(%esi)
c0038263:	89 d0                	mov    %edx,%eax
c0038265:	8d 0c 1e             	lea    (%esi,%ebx,1),%ecx
c0038268:	83 c8 01             	or     $0x1,%eax
c003826b:	89 41 04             	mov    %eax,0x4(%ecx)
c003826e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0038271:	83 4c 11 04 01       	orl    $0x1,0x4(%ecx,%edx,1)
c0038276:	83 c1 08             	add    $0x8,%ecx
c0038279:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c003827d:	89 04 24             	mov    %eax,(%esp)
c0038280:	e8 2b fb ff ff       	call   c0037db0 <_free_r>
c0038285:	eb 93                	jmp    c003821a <_realloc_r+0x17a>
c0038287:	90                   	nop
c0038288:	8b 45 e0             	mov    -0x20(%ebp),%eax
c003828b:	89 44 24 04          	mov    %eax,0x4(%esp)
c003828f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0038292:	89 04 24             	mov    %eax,(%esp)
c0038295:	e8 d6 d1 ff ff       	call   c0035470 <_malloc_r>
c003829a:	85 c0                	test   %eax,%eax
c003829c:	89 c1                	mov    %eax,%ecx
c003829e:	0f 84 65 03 00 00    	je     c0038609 <_realloc_r+0x569>
c00382a4:	8b 47 fc             	mov    -0x4(%edi),%eax
c00382a7:	8d 51 f8             	lea    -0x8(%ecx),%edx
c00382aa:	89 55 e0             	mov    %edx,-0x20(%ebp)
c00382ad:	89 c2                	mov    %eax,%edx
c00382af:	83 e2 fe             	and    $0xfffffffe,%edx
c00382b2:	01 f2                	add    %esi,%edx
c00382b4:	39 55 e0             	cmp    %edx,-0x20(%ebp)
c00382b7:	0f 84 63 02 00 00    	je     c0038520 <_realloc_r+0x480>
c00382bd:	83 eb 04             	sub    $0x4,%ebx
c00382c0:	83 fb 24             	cmp    $0x24,%ebx
c00382c3:	0f 87 6f 01 00 00    	ja     c0038438 <_realloc_r+0x398>
c00382c9:	83 fb 13             	cmp    $0x13,%ebx
c00382cc:	0f 87 ee 00 00 00    	ja     c00383c0 <_realloc_r+0x320>
c00382d2:	89 c8                	mov    %ecx,%eax
c00382d4:	89 fa                	mov    %edi,%edx
c00382d6:	8b 1a                	mov    (%edx),%ebx
c00382d8:	89 18                	mov    %ebx,(%eax)
c00382da:	8b 5a 04             	mov    0x4(%edx),%ebx
c00382dd:	89 58 04             	mov    %ebx,0x4(%eax)
c00382e0:	8b 52 08             	mov    0x8(%edx),%edx
c00382e3:	89 50 08             	mov    %edx,0x8(%eax)
c00382e6:	8b 75 e4             	mov    -0x1c(%ebp),%esi
c00382e9:	89 7c 24 04          	mov    %edi,0x4(%esp)
c00382ed:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c00382f0:	89 34 24             	mov    %esi,(%esp)
c00382f3:	e8 b8 fa ff ff       	call   c0037db0 <_free_r>
c00382f8:	89 34 24             	mov    %esi,(%esp)
c00382fb:	e8 60 d9 ff ff       	call   c0035c60 <__malloc_unlock>
c0038300:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0038303:	83 c4 3c             	add    $0x3c,%esp
c0038306:	5b                   	pop    %ebx
c0038307:	5e                   	pop    %esi
c0038308:	5f                   	pop    %edi
c0038309:	89 c8                	mov    %ecx,%eax
c003830b:	5d                   	pop    %ebp
c003830c:	c3                   	ret    
c003830d:	8d 76 00             	lea    0x0(%esi),%esi
c0038310:	89 45 0c             	mov    %eax,0xc(%ebp)
c0038313:	83 c4 3c             	add    $0x3c,%esp
c0038316:	5b                   	pop    %ebx
c0038317:	5e                   	pop    %esi
c0038318:	5f                   	pop    %edi
c0038319:	5d                   	pop    %ebp
c003831a:	e9 51 d1 ff ff       	jmp    c0035470 <_malloc_r>
c003831f:	90                   	nop
c0038320:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0038323:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0038329:	31 c0                	xor    %eax,%eax
c003832b:	e9 f7 fe ff ff       	jmp    c0038227 <_realloc_r+0x187>
c0038330:	89 c2                	mov    %eax,%edx
c0038332:	3b 55 d8             	cmp    -0x28(%ebp),%edx
c0038335:	0f 8c 4d ff ff ff    	jl     c0038288 <_realloc_r+0x1e8>
c003833b:	8b 71 08             	mov    0x8(%ecx),%esi
c003833e:	83 eb 04             	sub    $0x4,%ebx
c0038341:	8b 41 0c             	mov    0xc(%ecx),%eax
c0038344:	83 fb 24             	cmp    $0x24,%ebx
c0038347:	89 46 0c             	mov    %eax,0xc(%esi)
c003834a:	89 70 08             	mov    %esi,0x8(%eax)
c003834d:	8d 71 08             	lea    0x8(%ecx),%esi
c0038350:	0f 87 88 00 00 00    	ja     c00383de <_realloc_r+0x33e>
c0038356:	83 fb 13             	cmp    $0x13,%ebx
c0038359:	89 f0                	mov    %esi,%eax
c003835b:	76 1a                	jbe    c0038377 <_realloc_r+0x2d7>
c003835d:	8b 07                	mov    (%edi),%eax
c003835f:	83 fb 1b             	cmp    $0x1b,%ebx
c0038362:	89 41 08             	mov    %eax,0x8(%ecx)
c0038365:	8b 47 04             	mov    0x4(%edi),%eax
c0038368:	89 41 0c             	mov    %eax,0xc(%ecx)
c003836b:	0f 87 17 02 00 00    	ja     c0038588 <_realloc_r+0x4e8>
c0038371:	8d 41 10             	lea    0x10(%ecx),%eax
c0038374:	83 c7 08             	add    $0x8,%edi
c0038377:	8b 1f                	mov    (%edi),%ebx
c0038379:	89 18                	mov    %ebx,(%eax)
c003837b:	8b 5f 04             	mov    0x4(%edi),%ebx
c003837e:	89 58 04             	mov    %ebx,0x4(%eax)
c0038381:	8b 5f 08             	mov    0x8(%edi),%ebx
c0038384:	89 f7                	mov    %esi,%edi
c0038386:	89 ce                	mov    %ecx,%esi
c0038388:	89 58 08             	mov    %ebx,0x8(%eax)
c003838b:	89 d3                	mov    %edx,%ebx
c003838d:	8b 41 04             	mov    0x4(%ecx),%eax
c0038390:	e9 6e fe ff ff       	jmp    c0038203 <_realloc_r+0x163>
c0038395:	8d 76 00             	lea    0x0(%esi),%esi
c0038398:	8b 45 cc             	mov    -0x34(%ebp),%eax
c003839b:	8b 55 dc             	mov    -0x24(%ebp),%edx
c003839e:	8b 48 04             	mov    0x4(%eax),%ecx
c00383a1:	83 c2 10             	add    $0x10,%edx
c00383a4:	89 4d d0             	mov    %ecx,-0x30(%ebp)
c00383a7:	83 65 d0 fc          	andl   $0xfffffffc,-0x30(%ebp)
c00383ab:	8b 4d d0             	mov    -0x30(%ebp),%ecx
c00383ae:	01 d9                	add    %ebx,%ecx
c00383b0:	39 d1                	cmp    %edx,%ecx
c00383b2:	7d 54                	jge    c0038408 <_realloc_r+0x368>
c00383b4:	89 c2                	mov    %eax,%edx
c00383b6:	e9 8a fd ff ff       	jmp    c0038145 <_realloc_r+0xa5>
c00383bb:	90                   	nop
c00383bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00383c0:	8b 07                	mov    (%edi),%eax
c00383c2:	83 fb 1b             	cmp    $0x1b,%ebx
c00383c5:	89 01                	mov    %eax,(%ecx)
c00383c7:	8b 47 04             	mov    0x4(%edi),%eax
c00383ca:	89 41 04             	mov    %eax,0x4(%ecx)
c00383cd:	0f 87 2d 01 00 00    	ja     c0038500 <_realloc_r+0x460>
c00383d3:	8d 41 08             	lea    0x8(%ecx),%eax
c00383d6:	8d 57 08             	lea    0x8(%edi),%edx
c00383d9:	e9 f8 fe ff ff       	jmp    c00382d6 <_realloc_r+0x236>
c00383de:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c00383e2:	89 7c 24 04          	mov    %edi,0x4(%esp)
c00383e6:	89 f7                	mov    %esi,%edi
c00383e8:	89 34 24             	mov    %esi,(%esp)
c00383eb:	89 55 d8             	mov    %edx,-0x28(%ebp)
c00383ee:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c00383f1:	e8 1a fc ff ff       	call   c0038010 <memmove>
c00383f6:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c00383f9:	8b 55 d8             	mov    -0x28(%ebp),%edx
c00383fc:	8b 41 04             	mov    0x4(%ecx),%eax
c00383ff:	89 ce                	mov    %ecx,%esi
c0038401:	89 d3                	mov    %edx,%ebx
c0038403:	e9 fb fd ff ff       	jmp    c0038203 <_realloc_r+0x163>
c0038408:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c003840b:	29 d9                	sub    %ebx,%ecx
c003840d:	01 de                	add    %ebx,%esi
c003840f:	83 c9 01             	or     $0x1,%ecx
c0038412:	89 35 48 d5 03 c0    	mov    %esi,0xc003d548
c0038418:	89 4e 04             	mov    %ecx,0x4(%esi)
c003841b:	8b 47 fc             	mov    -0x4(%edi),%eax
c003841e:	83 e0 01             	and    $0x1,%eax
c0038421:	09 d8                	or     %ebx,%eax
c0038423:	89 47 fc             	mov    %eax,-0x4(%edi)
c0038426:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0038429:	89 04 24             	mov    %eax,(%esp)
c003842c:	e8 2f d8 ff ff       	call   c0035c60 <__malloc_unlock>
c0038431:	89 f8                	mov    %edi,%eax
c0038433:	e9 ef fd ff ff       	jmp    c0038227 <_realloc_r+0x187>
c0038438:	89 0c 24             	mov    %ecx,(%esp)
c003843b:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c003843f:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0038443:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0038446:	e8 c5 fb ff ff       	call   c0038010 <memmove>
c003844b:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c003844e:	e9 93 fe ff ff       	jmp    c00382e6 <_realloc_r+0x246>
c0038453:	90                   	nop
c0038454:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0038458:	8d 14 18             	lea    (%eax,%ebx,1),%edx
c003845b:	e9 d2 fe ff ff       	jmp    c0038332 <_realloc_r+0x292>
c0038460:	8d 14 18             	lea    (%eax,%ebx,1),%edx
c0038463:	8b 45 d0             	mov    -0x30(%ebp),%eax
c0038466:	01 d0                	add    %edx,%eax
c0038468:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c003846b:	8b 45 dc             	mov    -0x24(%ebp),%eax
c003846e:	83 c0 10             	add    $0x10,%eax
c0038471:	39 45 d4             	cmp    %eax,-0x2c(%ebp)
c0038474:	0f 8c b8 fe ff ff    	jl     c0038332 <_realloc_r+0x292>
c003847a:	8b 41 0c             	mov    0xc(%ecx),%eax
c003847d:	83 eb 04             	sub    $0x4,%ebx
c0038480:	8b 51 08             	mov    0x8(%ecx),%edx
c0038483:	83 fb 24             	cmp    $0x24,%ebx
c0038486:	8d 71 08             	lea    0x8(%ecx),%esi
c0038489:	89 42 0c             	mov    %eax,0xc(%edx)
c003848c:	89 50 08             	mov    %edx,0x8(%eax)
c003848f:	0f 87 3d 01 00 00    	ja     c00385d2 <_realloc_r+0x532>
c0038495:	83 fb 13             	cmp    $0x13,%ebx
c0038498:	89 f0                	mov    %esi,%eax
c003849a:	76 1a                	jbe    c00384b6 <_realloc_r+0x416>
c003849c:	8b 07                	mov    (%edi),%eax
c003849e:	83 fb 1b             	cmp    $0x1b,%ebx
c00384a1:	89 41 08             	mov    %eax,0x8(%ecx)
c00384a4:	8b 47 04             	mov    0x4(%edi),%eax
c00384a7:	89 41 0c             	mov    %eax,0xc(%ecx)
c00384aa:	0f 87 3d 01 00 00    	ja     c00385ed <_realloc_r+0x54d>
c00384b0:	8d 41 10             	lea    0x10(%ecx),%eax
c00384b3:	83 c7 08             	add    $0x8,%edi
c00384b6:	8b 17                	mov    (%edi),%edx
c00384b8:	89 10                	mov    %edx,(%eax)
c00384ba:	8b 57 04             	mov    0x4(%edi),%edx
c00384bd:	89 50 04             	mov    %edx,0x4(%eax)
c00384c0:	8b 57 08             	mov    0x8(%edi),%edx
c00384c3:	89 50 08             	mov    %edx,0x8(%eax)
c00384c6:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c00384c9:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c00384cc:	89 d8                	mov    %ebx,%eax
c00384ce:	29 df                	sub    %ebx,%edi
c00384d0:	01 c8                	add    %ecx,%eax
c00384d2:	83 cf 01             	or     $0x1,%edi
c00384d5:	a3 48 d5 03 c0       	mov    %eax,0xc003d548
c00384da:	89 78 04             	mov    %edi,0x4(%eax)
c00384dd:	8b 41 04             	mov    0x4(%ecx),%eax
c00384e0:	83 e0 01             	and    $0x1,%eax
c00384e3:	09 d8                	or     %ebx,%eax
c00384e5:	89 41 04             	mov    %eax,0x4(%ecx)
c00384e8:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c00384eb:	89 04 24             	mov    %eax,(%esp)
c00384ee:	e8 6d d7 ff ff       	call   c0035c60 <__malloc_unlock>
c00384f3:	89 f0                	mov    %esi,%eax
c00384f5:	e9 2d fd ff ff       	jmp    c0038227 <_realloc_r+0x187>
c00384fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0038500:	8b 47 08             	mov    0x8(%edi),%eax
c0038503:	83 fb 24             	cmp    $0x24,%ebx
c0038506:	89 41 08             	mov    %eax,0x8(%ecx)
c0038509:	8b 47 0c             	mov    0xc(%edi),%eax
c003850c:	89 41 0c             	mov    %eax,0xc(%ecx)
c003850f:	74 60                	je     c0038571 <_realloc_r+0x4d1>
c0038511:	8d 41 10             	lea    0x10(%ecx),%eax
c0038514:	8d 57 10             	lea    0x10(%edi),%edx
c0038517:	e9 ba fd ff ff       	jmp    c00382d6 <_realloc_r+0x236>
c003851c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0038520:	8b 51 fc             	mov    -0x4(%ecx),%edx
c0038523:	83 e2 fc             	and    $0xfffffffc,%edx
c0038526:	01 d3                	add    %edx,%ebx
c0038528:	e9 d6 fc ff ff       	jmp    c0038203 <_realloc_r+0x163>
c003852d:	8d 76 00             	lea    0x0(%esi),%esi
c0038530:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0038534:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0038538:	89 f7                	mov    %esi,%edi
c003853a:	89 34 24             	mov    %esi,(%esp)
c003853d:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0038540:	e8 cb fa ff ff       	call   c0038010 <memmove>
c0038545:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0038548:	8b 5d d0             	mov    -0x30(%ebp),%ebx
c003854b:	8b 41 04             	mov    0x4(%ecx),%eax
c003854e:	89 ce                	mov    %ecx,%esi
c0038550:	e9 ae fc ff ff       	jmp    c0038203 <_realloc_r+0x163>
c0038555:	8b 47 08             	mov    0x8(%edi),%eax
c0038558:	83 fb 24             	cmp    $0x24,%ebx
c003855b:	89 41 10             	mov    %eax,0x10(%ecx)
c003855e:	8b 47 0c             	mov    0xc(%edi),%eax
c0038561:	89 41 14             	mov    %eax,0x14(%ecx)
c0038564:	74 3e                	je     c00385a4 <_realloc_r+0x504>
c0038566:	8d 41 18             	lea    0x18(%ecx),%eax
c0038569:	83 c7 10             	add    $0x10,%edi
c003856c:	e9 5b fc ff ff       	jmp    c00381cc <_realloc_r+0x12c>
c0038571:	8b 47 10             	mov    0x10(%edi),%eax
c0038574:	8d 57 18             	lea    0x18(%edi),%edx
c0038577:	89 41 10             	mov    %eax,0x10(%ecx)
c003857a:	8b 5f 14             	mov    0x14(%edi),%ebx
c003857d:	8d 41 18             	lea    0x18(%ecx),%eax
c0038580:	89 59 14             	mov    %ebx,0x14(%ecx)
c0038583:	e9 4e fd ff ff       	jmp    c00382d6 <_realloc_r+0x236>
c0038588:	8b 47 08             	mov    0x8(%edi),%eax
c003858b:	83 fb 24             	cmp    $0x24,%ebx
c003858e:	89 41 10             	mov    %eax,0x10(%ecx)
c0038591:	8b 47 0c             	mov    0xc(%edi),%eax
c0038594:	89 41 14             	mov    %eax,0x14(%ecx)
c0038597:	74 22                	je     c00385bb <_realloc_r+0x51b>
c0038599:	8d 41 18             	lea    0x18(%ecx),%eax
c003859c:	83 c7 10             	add    $0x10,%edi
c003859f:	e9 d3 fd ff ff       	jmp    c0038377 <_realloc_r+0x2d7>
c00385a4:	8b 47 10             	mov    0x10(%edi),%eax
c00385a7:	83 c7 18             	add    $0x18,%edi
c00385aa:	89 41 18             	mov    %eax,0x18(%ecx)
c00385ad:	8b 57 fc             	mov    -0x4(%edi),%edx
c00385b0:	8d 41 20             	lea    0x20(%ecx),%eax
c00385b3:	89 51 1c             	mov    %edx,0x1c(%ecx)
c00385b6:	e9 11 fc ff ff       	jmp    c00381cc <_realloc_r+0x12c>
c00385bb:	8b 47 10             	mov    0x10(%edi),%eax
c00385be:	83 c7 18             	add    $0x18,%edi
c00385c1:	89 41 18             	mov    %eax,0x18(%ecx)
c00385c4:	8b 5f fc             	mov    -0x4(%edi),%ebx
c00385c7:	8d 41 20             	lea    0x20(%ecx),%eax
c00385ca:	89 59 1c             	mov    %ebx,0x1c(%ecx)
c00385cd:	e9 a5 fd ff ff       	jmp    c0038377 <_realloc_r+0x2d7>
c00385d2:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c00385d6:	89 7c 24 04          	mov    %edi,0x4(%esp)
c00385da:	89 34 24             	mov    %esi,(%esp)
c00385dd:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c00385e0:	e8 2b fa ff ff       	call   c0038010 <memmove>
c00385e5:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c00385e8:	e9 d9 fe ff ff       	jmp    c00384c6 <_realloc_r+0x426>
c00385ed:	8b 47 08             	mov    0x8(%edi),%eax
c00385f0:	83 fb 24             	cmp    $0x24,%ebx
c00385f3:	89 41 10             	mov    %eax,0x10(%ecx)
c00385f6:	8b 47 0c             	mov    0xc(%edi),%eax
c00385f9:	89 41 14             	mov    %eax,0x14(%ecx)
c00385fc:	74 1d                	je     c003861b <_realloc_r+0x57b>
c00385fe:	8d 41 18             	lea    0x18(%ecx),%eax
c0038601:	83 c7 10             	add    $0x10,%edi
c0038604:	e9 ad fe ff ff       	jmp    c00384b6 <_realloc_r+0x416>
c0038609:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c003860c:	89 04 24             	mov    %eax,(%esp)
c003860f:	e8 4c d6 ff ff       	call   c0035c60 <__malloc_unlock>
c0038614:	31 c0                	xor    %eax,%eax
c0038616:	e9 0c fc ff ff       	jmp    c0038227 <_realloc_r+0x187>
c003861b:	8b 47 10             	mov    0x10(%edi),%eax
c003861e:	83 c7 18             	add    $0x18,%edi
c0038621:	89 41 18             	mov    %eax,0x18(%ecx)
c0038624:	8b 57 fc             	mov    -0x4(%edi),%edx
c0038627:	8d 41 20             	lea    0x20(%ecx),%eax
c003862a:	89 51 1c             	mov    %edx,0x1c(%ecx)
c003862d:	e9 84 fe ff ff       	jmp    c00384b6 <_realloc_r+0x416>
c0038632:	66 90                	xchg   %ax,%ax
c0038634:	66 90                	xchg   %ax,%ax
c0038636:	66 90                	xchg   %ax,%ax
c0038638:	66 90                	xchg   %ax,%ax
c003863a:	66 90                	xchg   %ax,%ax
c003863c:	66 90                	xchg   %ax,%ax
c003863e:	66 90                	xchg   %ax,%ax

c0038640 <cleanup_glue>:
c0038640:	55                   	push   %ebp
c0038641:	89 e5                	mov    %esp,%ebp
c0038643:	56                   	push   %esi
c0038644:	53                   	push   %ebx
c0038645:	83 ec 10             	sub    $0x10,%esp
c0038648:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c003864b:	8b 75 08             	mov    0x8(%ebp),%esi
c003864e:	8b 03                	mov    (%ebx),%eax
c0038650:	85 c0                	test   %eax,%eax
c0038652:	74 0c                	je     c0038660 <cleanup_glue+0x20>
c0038654:	89 44 24 04          	mov    %eax,0x4(%esp)
c0038658:	89 34 24             	mov    %esi,(%esp)
c003865b:	e8 e0 ff ff ff       	call   c0038640 <cleanup_glue>
c0038660:	89 5d 0c             	mov    %ebx,0xc(%ebp)
c0038663:	89 75 08             	mov    %esi,0x8(%ebp)
c0038666:	83 c4 10             	add    $0x10,%esp
c0038669:	5b                   	pop    %ebx
c003866a:	5e                   	pop    %esi
c003866b:	5d                   	pop    %ebp
c003866c:	e9 3f f7 ff ff       	jmp    c0037db0 <_free_r>
c0038671:	eb 0d                	jmp    c0038680 <_reclaim_reent>
c0038673:	90                   	nop
c0038674:	90                   	nop
c0038675:	90                   	nop
c0038676:	90                   	nop
c0038677:	90                   	nop
c0038678:	90                   	nop
c0038679:	90                   	nop
c003867a:	90                   	nop
c003867b:	90                   	nop
c003867c:	90                   	nop
c003867d:	90                   	nop
c003867e:	90                   	nop
c003867f:	90                   	nop

c0038680 <_reclaim_reent>:
c0038680:	55                   	push   %ebp
c0038681:	89 e5                	mov    %esp,%ebp
c0038683:	57                   	push   %edi
c0038684:	56                   	push   %esi
c0038685:	53                   	push   %ebx
c0038686:	83 ec 1c             	sub    $0x1c,%esp
c0038689:	8b 5d 08             	mov    0x8(%ebp),%ebx
c003868c:	3b 1d 40 d0 03 c0    	cmp    0xc003d040,%ebx
c0038692:	0f 84 a6 00 00 00    	je     c003873e <_reclaim_reent+0xbe>
c0038698:	8b 53 4c             	mov    0x4c(%ebx),%edx
c003869b:	85 d2                	test   %edx,%edx
c003869d:	74 46                	je     c00386e5 <_reclaim_reent+0x65>
c003869f:	31 c0                	xor    %eax,%eax
c00386a1:	31 f6                	xor    %esi,%esi
c00386a3:	90                   	nop
c00386a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00386a8:	8b 04 82             	mov    (%edx,%eax,4),%eax
c00386ab:	85 c0                	test   %eax,%eax
c00386ad:	75 0b                	jne    c00386ba <_reclaim_reent+0x3a>
c00386af:	eb 1e                	jmp    c00386cf <_reclaim_reent+0x4f>
c00386b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00386b8:	89 f8                	mov    %edi,%eax
c00386ba:	8b 38                	mov    (%eax),%edi
c00386bc:	89 44 24 04          	mov    %eax,0x4(%esp)
c00386c0:	89 1c 24             	mov    %ebx,(%esp)
c00386c3:	e8 e8 f6 ff ff       	call   c0037db0 <_free_r>
c00386c8:	85 ff                	test   %edi,%edi
c00386ca:	75 ec                	jne    c00386b8 <_reclaim_reent+0x38>
c00386cc:	8b 53 4c             	mov    0x4c(%ebx),%edx
c00386cf:	83 c6 01             	add    $0x1,%esi
c00386d2:	83 fe 20             	cmp    $0x20,%esi
c00386d5:	89 f0                	mov    %esi,%eax
c00386d7:	75 cf                	jne    c00386a8 <_reclaim_reent+0x28>
c00386d9:	89 54 24 04          	mov    %edx,0x4(%esp)
c00386dd:	89 1c 24             	mov    %ebx,(%esp)
c00386e0:	e8 cb f6 ff ff       	call   c0037db0 <_free_r>
c00386e5:	8b 43 40             	mov    0x40(%ebx),%eax
c00386e8:	85 c0                	test   %eax,%eax
c00386ea:	74 0c                	je     c00386f8 <_reclaim_reent+0x78>
c00386ec:	89 44 24 04          	mov    %eax,0x4(%esp)
c00386f0:	89 1c 24             	mov    %ebx,(%esp)
c00386f3:	e8 b8 f6 ff ff       	call   c0037db0 <_free_r>
c00386f8:	8b 83 48 01 00 00    	mov    0x148(%ebx),%eax
c00386fe:	85 c0                	test   %eax,%eax
c0038700:	74 22                	je     c0038724 <_reclaim_reent+0xa4>
c0038702:	8d b3 4c 01 00 00    	lea    0x14c(%ebx),%esi
c0038708:	39 f0                	cmp    %esi,%eax
c003870a:	75 06                	jne    c0038712 <_reclaim_reent+0x92>
c003870c:	eb 16                	jmp    c0038724 <_reclaim_reent+0xa4>
c003870e:	66 90                	xchg   %ax,%ax
c0038710:	89 f8                	mov    %edi,%eax
c0038712:	8b 38                	mov    (%eax),%edi
c0038714:	89 44 24 04          	mov    %eax,0x4(%esp)
c0038718:	89 1c 24             	mov    %ebx,(%esp)
c003871b:	e8 90 f6 ff ff       	call   c0037db0 <_free_r>
c0038720:	39 fe                	cmp    %edi,%esi
c0038722:	75 ec                	jne    c0038710 <_reclaim_reent+0x90>
c0038724:	8b 43 54             	mov    0x54(%ebx),%eax
c0038727:	85 c0                	test   %eax,%eax
c0038729:	74 0c                	je     c0038737 <_reclaim_reent+0xb7>
c003872b:	89 44 24 04          	mov    %eax,0x4(%esp)
c003872f:	89 1c 24             	mov    %ebx,(%esp)
c0038732:	e8 79 f6 ff ff       	call   c0037db0 <_free_r>
c0038737:	8b 43 38             	mov    0x38(%ebx),%eax
c003873a:	85 c0                	test   %eax,%eax
c003873c:	75 08                	jne    c0038746 <_reclaim_reent+0xc6>
c003873e:	83 c4 1c             	add    $0x1c,%esp
c0038741:	5b                   	pop    %ebx
c0038742:	5e                   	pop    %esi
c0038743:	5f                   	pop    %edi
c0038744:	5d                   	pop    %ebp
c0038745:	c3                   	ret    
c0038746:	89 1c 24             	mov    %ebx,(%esp)
c0038749:	ff 53 3c             	call   *0x3c(%ebx)
c003874c:	8b 83 e0 02 00 00    	mov    0x2e0(%ebx),%eax
c0038752:	85 c0                	test   %eax,%eax
c0038754:	74 e8                	je     c003873e <_reclaim_reent+0xbe>
c0038756:	89 1c 24             	mov    %ebx,(%esp)
c0038759:	89 44 24 04          	mov    %eax,0x4(%esp)
c003875d:	e8 de fe ff ff       	call   c0038640 <cleanup_glue>
c0038762:	83 c4 1c             	add    $0x1c,%esp
c0038765:	5b                   	pop    %ebx
c0038766:	5e                   	pop    %esi
c0038767:	5f                   	pop    %edi
c0038768:	5d                   	pop    %ebp
c0038769:	c3                   	ret    
