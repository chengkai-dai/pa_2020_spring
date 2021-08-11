
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
c003002f:	e9 7a 13 00 00       	jmp    c00313ae <init>

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
c00300d5:	e8 06 10 00 00       	call   c00310e0 <irq_handle>
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
c00307c8:	e8 46 08 00 00       	call   c0031013 <add_irq_handle>
c00307cd:	83 c4 10             	add    $0x10,%esp
c00307d0:	83 ec 08             	sub    $0x8,%esp
c00307d3:	8d 83 48 37 ff ff    	lea    -0xc8b8(%ebx),%eax
c00307d9:	50                   	push   %eax
c00307da:	6a 0e                	push   $0xe
c00307dc:	e8 32 08 00 00       	call   c0031013 <add_irq_handle>
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
c003081f:	8d 85 e8 ef ff ff    	lea    -0x1018(%ebp),%eax
c0030825:	50                   	push   %eax
c0030826:	e8 41 fe ff ff       	call   c003066c <ide_read>
c003082b:	83 c4 10             	add    $0x10,%esp
c003082e:	8d 85 e8 ef ff ff    	lea    -0x1018(%ebp),%eax
c0030834:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0030837:	8d 83 4c c0 ff ff    	lea    -0x3fb4(%ebx),%eax
c003083d:	50                   	push   %eax
c003083e:	6a 1c                	push   $0x1c
c0030840:	8d 83 00 c0 ff ff    	lea    -0x4000(%ebx),%eax
c0030846:	50                   	push   %eax
c0030847:	8d 83 10 c0 ff ff    	lea    -0x3ff0(%ebx),%eax
c003084d:	50                   	push   %eax
c003084e:	e8 37 0a 00 00       	call   c003128a <printk>
c0030853:	83 c4 10             	add    $0x10,%esp
c0030856:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0030859:	8b 50 1c             	mov    0x1c(%eax),%edx
c003085c:	8b 45 f0             	mov    -0x10(%ebp),%eax
c003085f:	01 d0                	add    %edx,%eax
c0030861:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0030864:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0030867:	8b 40 2c             	mov    0x2c(%eax),%eax
c003086a:	0f b7 c0             	movzwl %ax,%eax
c003086d:	c1 e0 05             	shl    $0x5,%eax
c0030870:	89 c2                	mov    %eax,%edx
c0030872:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030875:	01 d0                	add    %edx,%eax
c0030877:	89 45 ec             	mov    %eax,-0x14(%ebp)
c003087a:	e9 ba 00 00 00       	jmp    c0030939 <loader+0x139>
c003087f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030882:	8b 00                	mov    (%eax),%eax
c0030884:	83 f8 01             	cmp    $0x1,%eax
c0030887:	0f 85 a8 00 00 00    	jne    c0030935 <loader+0x135>
c003088d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030890:	8b 40 14             	mov    0x14(%eax),%eax
c0030893:	89 c2                	mov    %eax,%edx
c0030895:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030898:	8b 40 08             	mov    0x8(%eax),%eax
c003089b:	83 ec 08             	sub    $0x8,%esp
c003089e:	52                   	push   %edx
c003089f:	50                   	push   %eax
c00308a0:	e8 2b 13 00 00       	call   c0031bd0 <mm_malloc>
c00308a5:	83 c4 10             	add    $0x10,%esp
c00308a8:	89 c2                	mov    %eax,%edx
c00308aa:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00308ad:	89 50 08             	mov    %edx,0x8(%eax)
c00308b0:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00308b3:	8b 50 14             	mov    0x14(%eax),%edx
c00308b6:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00308b9:	8b 40 04             	mov    0x4(%eax),%eax
c00308bc:	8b 4d f4             	mov    -0xc(%ebp),%ecx
c00308bf:	8b 49 08             	mov    0x8(%ecx),%ecx
c00308c2:	83 ec 04             	sub    $0x4,%esp
c00308c5:	52                   	push   %edx
c00308c6:	50                   	push   %eax
c00308c7:	51                   	push   %ecx
c00308c8:	e8 9f fd ff ff       	call   c003066c <ide_read>
c00308cd:	83 c4 10             	add    $0x10,%esp
c00308d0:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00308d3:	8b 50 14             	mov    0x14(%eax),%edx
c00308d6:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00308d9:	8b 40 10             	mov    0x10(%eax),%eax
c00308dc:	39 c2                	cmp    %eax,%edx
c00308de:	76 2b                	jbe    c003090b <loader+0x10b>
c00308e0:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00308e3:	8b 50 14             	mov    0x14(%eax),%edx
c00308e6:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00308e9:	8b 40 10             	mov    0x10(%eax),%eax
c00308ec:	29 c2                	sub    %eax,%edx
c00308ee:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00308f1:	8b 48 10             	mov    0x10(%eax),%ecx
c00308f4:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00308f7:	8b 40 08             	mov    0x8(%eax),%eax
c00308fa:	01 c8                	add    %ecx,%eax
c00308fc:	83 ec 04             	sub    $0x4,%esp
c00308ff:	52                   	push   %edx
c0030900:	6a 00                	push   $0x0
c0030902:	50                   	push   %eax
c0030903:	e8 a4 15 00 00       	call   c0031eac <memset>
c0030908:	83 c4 10             	add    $0x10,%esp
c003090b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003090e:	8b 50 08             	mov    0x8(%eax),%edx
c0030911:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030914:	8b 40 14             	mov    0x14(%eax),%eax
c0030917:	01 d0                	add    %edx,%eax
c0030919:	48                   	dec    %eax
c003091a:	89 45 e8             	mov    %eax,-0x18(%ebp)
c003091d:	c7 c0 a8 ee 04 c0    	mov    $0xc004eea8,%eax
c0030923:	8b 00                	mov    (%eax),%eax
c0030925:	39 45 e8             	cmp    %eax,-0x18(%ebp)
c0030928:	76 0b                	jbe    c0030935 <loader+0x135>
c003092a:	c7 c0 a8 ee 04 c0    	mov    $0xc004eea8,%eax
c0030930:	8b 55 e8             	mov    -0x18(%ebp),%edx
c0030933:	89 10                	mov    %edx,(%eax)
c0030935:	83 45 f4 20          	addl   $0x20,-0xc(%ebp)
c0030939:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003093c:	3b 45 ec             	cmp    -0x14(%ebp),%eax
c003093f:	0f 82 3a ff ff ff    	jb     c003087f <loader+0x7f>
c0030945:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0030948:	8b 40 18             	mov    0x18(%eax),%eax
c003094b:	89 85 e4 ef ff ff    	mov    %eax,-0x101c(%ebp)
c0030951:	83 ec 08             	sub    $0x8,%esp
c0030954:	68 00 00 10 00       	push   $0x100000
c0030959:	68 00 00 f0 bf       	push   $0xbff00000
c003095e:	e8 6d 12 00 00       	call   c0031bd0 <mm_malloc>
c0030963:	83 c4 10             	add    $0x10,%esp
c0030966:	e8 d8 0d 00 00       	call   c0031743 <get_ucr3>
c003096b:	83 ec 0c             	sub    $0xc,%esp
c003096e:	50                   	push   %eax
c003096f:	e8 76 fe ff ff       	call   c00307ea <write_cr3>
c0030974:	83 c4 10             	add    $0x10,%esp
c0030977:	8b 85 e4 ef ff ff    	mov    -0x101c(%ebp),%eax
c003097d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030980:	c9                   	leave  
c0030981:	c3                   	ret    

c0030982 <fs_open>:
c0030982:	55                   	push   %ebp
c0030983:	89 e5                	mov    %esp,%ebp
c0030985:	53                   	push   %ebx
c0030986:	83 ec 04             	sub    $0x4,%esp
c0030989:	e8 5d f9 ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c003098e:	05 72 c6 00 00       	add    $0xc672,%eax
c0030993:	8d 90 f0 c2 ff ff    	lea    -0x3d10(%eax),%edx
c0030999:	52                   	push   %edx
c003099a:	6a 28                	push   $0x28
c003099c:	8d 90 27 c1 ff ff    	lea    -0x3ed9(%eax),%edx
c00309a2:	52                   	push   %edx
c00309a3:	8d 90 34 c1 ff ff    	lea    -0x3ecc(%eax),%edx
c00309a9:	52                   	push   %edx
c00309aa:	89 c3                	mov    %eax,%ebx
c00309ac:	e8 d9 08 00 00       	call   c003128a <printk>
c00309b1:	83 c4 10             	add    $0x10,%esp
c00309b4:	b8 01 00 00 00       	mov    $0x1,%eax
c00309b9:	82                   	nemu_trap 
c00309ba:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c00309bf:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00309c2:	c9                   	leave  
c00309c3:	c3                   	ret    

c00309c4 <fs_read>:
c00309c4:	55                   	push   %ebp
c00309c5:	89 e5                	mov    %esp,%ebp
c00309c7:	53                   	push   %ebx
c00309c8:	83 ec 04             	sub    $0x4,%esp
c00309cb:	e8 23 f9 ff ff       	call   c00302f3 <__x86.get_pc_thunk.bx>
c00309d0:	81 c3 30 c6 00 00    	add    $0xc630,%ebx
c00309d6:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
c00309da:	7f 2f                	jg     c0030a0b <fs_read+0x47>
c00309dc:	83 ec 0c             	sub    $0xc,%esp
c00309df:	8d 83 8a c1 ff ff    	lea    -0x3e76(%ebx),%eax
c00309e5:	50                   	push   %eax
c00309e6:	8d 83 f8 c2 ff ff    	lea    -0x3d08(%ebx),%eax
c00309ec:	50                   	push   %eax
c00309ed:	6a 2e                	push   $0x2e
c00309ef:	8d 83 27 c1 ff ff    	lea    -0x3ed9(%ebx),%eax
c00309f5:	50                   	push   %eax
c00309f6:	8d 83 94 c1 ff ff    	lea    -0x3e6c(%ebx),%eax
c00309fc:	50                   	push   %eax
c00309fd:	e8 88 08 00 00       	call   c003128a <printk>
c0030a02:	83 c4 20             	add    $0x20,%esp
c0030a05:	b8 01 00 00 00       	mov    $0x1,%eax
c0030a0a:	82                   	nemu_trap 
c0030a0b:	8d 83 f8 c2 ff ff    	lea    -0x3d08(%ebx),%eax
c0030a11:	50                   	push   %eax
c0030a12:	6a 2f                	push   $0x2f
c0030a14:	8d 83 27 c1 ff ff    	lea    -0x3ed9(%ebx),%eax
c0030a1a:	50                   	push   %eax
c0030a1b:	8d 83 e0 c1 ff ff    	lea    -0x3e20(%ebx),%eax
c0030a21:	50                   	push   %eax
c0030a22:	e8 63 08 00 00       	call   c003128a <printk>
c0030a27:	83 c4 10             	add    $0x10,%esp
c0030a2a:	b8 01 00 00 00       	mov    $0x1,%eax
c0030a2f:	82                   	nemu_trap 
c0030a30:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0030a35:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030a38:	c9                   	leave  
c0030a39:	c3                   	ret    

c0030a3a <fs_write>:
c0030a3a:	55                   	push   %ebp
c0030a3b:	89 e5                	mov    %esp,%ebp
c0030a3d:	53                   	push   %ebx
c0030a3e:	83 ec 14             	sub    $0x14,%esp
c0030a41:	e8 ad f8 ff ff       	call   c00302f3 <__x86.get_pc_thunk.bx>
c0030a46:	81 c3 ba c5 00 00    	add    $0xc5ba,%ebx
c0030a4c:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
c0030a50:	7e 2f                	jle    c0030a81 <fs_write+0x47>
c0030a52:	83 ec 0c             	sub    $0xc,%esp
c0030a55:	8d 83 36 c2 ff ff    	lea    -0x3dca(%ebx),%eax
c0030a5b:	50                   	push   %eax
c0030a5c:	8d 83 00 c3 ff ff    	lea    -0x3d00(%ebx),%eax
c0030a62:	50                   	push   %eax
c0030a63:	6a 35                	push   $0x35
c0030a65:	8d 83 27 c1 ff ff    	lea    -0x3ed9(%ebx),%eax
c0030a6b:	50                   	push   %eax
c0030a6c:	8d 83 94 c1 ff ff    	lea    -0x3e6c(%ebx),%eax
c0030a72:	50                   	push   %eax
c0030a73:	e8 12 08 00 00       	call   c003128a <printk>
c0030a78:	83 c4 20             	add    $0x20,%esp
c0030a7b:	b8 01 00 00 00       	mov    $0x1,%eax
c0030a80:	82                   	nemu_trap 
c0030a81:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0030a88:	eb 1c                	jmp    c0030aa6 <fs_write+0x6c>
c0030a8a:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0030a8d:	8b 45 0c             	mov    0xc(%ebp),%eax
c0030a90:	01 d0                	add    %edx,%eax
c0030a92:	8a 00                	mov    (%eax),%al
c0030a94:	0f be c0             	movsbl %al,%eax
c0030a97:	83 ec 0c             	sub    $0xc,%esp
c0030a9a:	50                   	push   %eax
c0030a9b:	e8 c6 08 00 00       	call   c0031366 <serial_printc>
c0030aa0:	83 c4 10             	add    $0x10,%esp
c0030aa3:	ff 45 f4             	incl   -0xc(%ebp)
c0030aa6:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030aa9:	39 45 10             	cmp    %eax,0x10(%ebp)
c0030aac:	77 dc                	ja     c0030a8a <fs_write+0x50>
c0030aae:	8b 45 10             	mov    0x10(%ebp),%eax
c0030ab1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030ab4:	c9                   	leave  
c0030ab5:	c3                   	ret    

c0030ab6 <fs_lseek>:
c0030ab6:	55                   	push   %ebp
c0030ab7:	89 e5                	mov    %esp,%ebp
c0030ab9:	53                   	push   %ebx
c0030aba:	83 ec 04             	sub    $0x4,%esp
c0030abd:	e8 29 f8 ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c0030ac2:	05 3e c5 00 00       	add    $0xc53e,%eax
c0030ac7:	8d 90 0c c3 ff ff    	lea    -0x3cf4(%eax),%edx
c0030acd:	52                   	push   %edx
c0030ace:	6a 48                	push   $0x48
c0030ad0:	8d 90 27 c1 ff ff    	lea    -0x3ed9(%eax),%edx
c0030ad6:	52                   	push   %edx
c0030ad7:	8d 90 40 c2 ff ff    	lea    -0x3dc0(%eax),%edx
c0030add:	52                   	push   %edx
c0030ade:	89 c3                	mov    %eax,%ebx
c0030ae0:	e8 a5 07 00 00       	call   c003128a <printk>
c0030ae5:	83 c4 10             	add    $0x10,%esp
c0030ae8:	b8 01 00 00 00       	mov    $0x1,%eax
c0030aed:	82                   	nemu_trap 
c0030aee:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0030af3:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030af6:	c9                   	leave  
c0030af7:	c3                   	ret    

c0030af8 <fs_close>:
c0030af8:	55                   	push   %ebp
c0030af9:	89 e5                	mov    %esp,%ebp
c0030afb:	53                   	push   %ebx
c0030afc:	83 ec 04             	sub    $0x4,%esp
c0030aff:	e8 e7 f7 ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c0030b04:	05 fc c4 00 00       	add    $0xc4fc,%eax
c0030b09:	8d 90 18 c3 ff ff    	lea    -0x3ce8(%eax),%edx
c0030b0f:	52                   	push   %edx
c0030b10:	6a 4e                	push   $0x4e
c0030b12:	8d 90 27 c1 ff ff    	lea    -0x3ed9(%eax),%edx
c0030b18:	52                   	push   %edx
c0030b19:	8d 90 98 c2 ff ff    	lea    -0x3d68(%eax),%edx
c0030b1f:	52                   	push   %edx
c0030b20:	89 c3                	mov    %eax,%ebx
c0030b22:	e8 63 07 00 00       	call   c003128a <printk>
c0030b27:	83 c4 10             	add    $0x10,%esp
c0030b2a:	b8 01 00 00 00       	mov    $0x1,%eax
c0030b2f:	82                   	nemu_trap 
c0030b30:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0030b35:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030b38:	c9                   	leave  
c0030b39:	c3                   	ret    

c0030b3a <out_byte>:
c0030b3a:	55                   	push   %ebp
c0030b3b:	89 e5                	mov    %esp,%ebp
c0030b3d:	83 ec 08             	sub    $0x8,%esp
c0030b40:	e8 a6 f7 ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c0030b45:	05 bb c4 00 00       	add    $0xc4bb,%eax
c0030b4a:	8b 45 08             	mov    0x8(%ebp),%eax
c0030b4d:	8b 55 0c             	mov    0xc(%ebp),%edx
c0030b50:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c0030b54:	88 d0                	mov    %dl,%al
c0030b56:	88 45 f8             	mov    %al,-0x8(%ebp)
c0030b59:	8a 45 f8             	mov    -0x8(%ebp),%al
c0030b5c:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0030b5f:	ee                   	out    %al,(%dx)
c0030b60:	90                   	nop
c0030b61:	c9                   	leave  
c0030b62:	c3                   	ret    

c0030b63 <init_i8259>:
c0030b63:	55                   	push   %ebp
c0030b64:	89 e5                	mov    %esp,%ebp
c0030b66:	e8 80 f7 ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c0030b6b:	05 95 c4 00 00       	add    $0xc495,%eax
c0030b70:	68 ff 00 00 00       	push   $0xff
c0030b75:	6a 21                	push   $0x21
c0030b77:	e8 be ff ff ff       	call   c0030b3a <out_byte>
c0030b7c:	83 c4 08             	add    $0x8,%esp
c0030b7f:	68 ff 00 00 00       	push   $0xff
c0030b84:	68 a1 00 00 00       	push   $0xa1
c0030b89:	e8 ac ff ff ff       	call   c0030b3a <out_byte>
c0030b8e:	83 c4 08             	add    $0x8,%esp
c0030b91:	6a 11                	push   $0x11
c0030b93:	6a 20                	push   $0x20
c0030b95:	e8 a0 ff ff ff       	call   c0030b3a <out_byte>
c0030b9a:	83 c4 08             	add    $0x8,%esp
c0030b9d:	6a 20                	push   $0x20
c0030b9f:	6a 21                	push   $0x21
c0030ba1:	e8 94 ff ff ff       	call   c0030b3a <out_byte>
c0030ba6:	83 c4 08             	add    $0x8,%esp
c0030ba9:	6a 04                	push   $0x4
c0030bab:	6a 21                	push   $0x21
c0030bad:	e8 88 ff ff ff       	call   c0030b3a <out_byte>
c0030bb2:	83 c4 08             	add    $0x8,%esp
c0030bb5:	6a 03                	push   $0x3
c0030bb7:	6a 21                	push   $0x21
c0030bb9:	e8 7c ff ff ff       	call   c0030b3a <out_byte>
c0030bbe:	83 c4 08             	add    $0x8,%esp
c0030bc1:	6a 11                	push   $0x11
c0030bc3:	68 a0 00 00 00       	push   $0xa0
c0030bc8:	e8 6d ff ff ff       	call   c0030b3a <out_byte>
c0030bcd:	83 c4 08             	add    $0x8,%esp
c0030bd0:	6a 28                	push   $0x28
c0030bd2:	68 a1 00 00 00       	push   $0xa1
c0030bd7:	e8 5e ff ff ff       	call   c0030b3a <out_byte>
c0030bdc:	83 c4 08             	add    $0x8,%esp
c0030bdf:	6a 02                	push   $0x2
c0030be1:	68 a1 00 00 00       	push   $0xa1
c0030be6:	e8 4f ff ff ff       	call   c0030b3a <out_byte>
c0030beb:	83 c4 08             	add    $0x8,%esp
c0030bee:	6a 03                	push   $0x3
c0030bf0:	68 a1 00 00 00       	push   $0xa1
c0030bf5:	e8 40 ff ff ff       	call   c0030b3a <out_byte>
c0030bfa:	83 c4 08             	add    $0x8,%esp
c0030bfd:	6a 68                	push   $0x68
c0030bff:	6a 20                	push   $0x20
c0030c01:	e8 34 ff ff ff       	call   c0030b3a <out_byte>
c0030c06:	83 c4 08             	add    $0x8,%esp
c0030c09:	6a 0a                	push   $0xa
c0030c0b:	6a 20                	push   $0x20
c0030c0d:	e8 28 ff ff ff       	call   c0030b3a <out_byte>
c0030c12:	83 c4 08             	add    $0x8,%esp
c0030c15:	6a 68                	push   $0x68
c0030c17:	68 a0 00 00 00       	push   $0xa0
c0030c1c:	e8 19 ff ff ff       	call   c0030b3a <out_byte>
c0030c21:	83 c4 08             	add    $0x8,%esp
c0030c24:	6a 0a                	push   $0xa
c0030c26:	68 a0 00 00 00       	push   $0xa0
c0030c2b:	e8 0a ff ff ff       	call   c0030b3a <out_byte>
c0030c30:	83 c4 08             	add    $0x8,%esp
c0030c33:	90                   	nop
c0030c34:	c9                   	leave  
c0030c35:	c3                   	ret    

c0030c36 <write_idtr>:
c0030c36:	55                   	push   %ebp
c0030c37:	89 e5                	mov    %esp,%ebp
c0030c39:	e8 ad f6 ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c0030c3e:	05 c2 c3 00 00       	add    $0xc3c2,%eax
c0030c43:	8b 55 0c             	mov    0xc(%ebp),%edx
c0030c46:	4a                   	dec    %edx
c0030c47:	66 89 90 20 1c 01 00 	mov    %dx,0x11c20(%eax)
c0030c4e:	8b 55 08             	mov    0x8(%ebp),%edx
c0030c51:	66 89 90 22 1c 01 00 	mov    %dx,0x11c22(%eax)
c0030c58:	8b 55 08             	mov    0x8(%ebp),%edx
c0030c5b:	c1 ea 10             	shr    $0x10,%edx
c0030c5e:	66 89 90 24 1c 01 00 	mov    %dx,0x11c24(%eax)
c0030c65:	8d 80 20 1c 01 00    	lea    0x11c20(%eax),%eax
c0030c6b:	0f 01 18             	lidtl  (%eax)
c0030c6e:	90                   	nop
c0030c6f:	5d                   	pop    %ebp
c0030c70:	c3                   	ret    

c0030c71 <sti>:
c0030c71:	55                   	push   %ebp
c0030c72:	89 e5                	mov    %esp,%ebp
c0030c74:	e8 72 f6 ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c0030c79:	05 87 c3 00 00       	add    $0xc387,%eax
c0030c7e:	fb                   	sti    
c0030c7f:	90                   	nop
c0030c80:	5d                   	pop    %ebp
c0030c81:	c3                   	ret    

c0030c82 <set_intr>:
c0030c82:	55                   	push   %ebp
c0030c83:	89 e5                	mov    %esp,%ebp
c0030c85:	e8 61 f6 ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c0030c8a:	05 76 c3 00 00       	add    $0xc376,%eax
c0030c8f:	8b 45 10             	mov    0x10(%ebp),%eax
c0030c92:	8b 55 08             	mov    0x8(%ebp),%edx
c0030c95:	66 89 02             	mov    %ax,(%edx)
c0030c98:	8b 45 0c             	mov    0xc(%ebp),%eax
c0030c9b:	8b 55 08             	mov    0x8(%ebp),%edx
c0030c9e:	66 89 42 02          	mov    %ax,0x2(%edx)
c0030ca2:	8b 45 08             	mov    0x8(%ebp),%eax
c0030ca5:	c6 40 04 00          	movb   $0x0,0x4(%eax)
c0030ca9:	8b 45 08             	mov    0x8(%ebp),%eax
c0030cac:	8a 50 05             	mov    0x5(%eax),%dl
c0030caf:	83 e2 f0             	and    $0xfffffff0,%edx
c0030cb2:	83 ca 0e             	or     $0xe,%edx
c0030cb5:	88 50 05             	mov    %dl,0x5(%eax)
c0030cb8:	8b 45 08             	mov    0x8(%ebp),%eax
c0030cbb:	8a 50 05             	mov    0x5(%eax),%dl
c0030cbe:	83 e2 ef             	and    $0xffffffef,%edx
c0030cc1:	88 50 05             	mov    %dl,0x5(%eax)
c0030cc4:	8b 45 14             	mov    0x14(%ebp),%eax
c0030cc7:	88 c2                	mov    %al,%dl
c0030cc9:	83 e2 03             	and    $0x3,%edx
c0030ccc:	8b 45 08             	mov    0x8(%ebp),%eax
c0030ccf:	83 e2 03             	and    $0x3,%edx
c0030cd2:	88 d1                	mov    %dl,%cl
c0030cd4:	c1 e1 05             	shl    $0x5,%ecx
c0030cd7:	8a 50 05             	mov    0x5(%eax),%dl
c0030cda:	83 e2 9f             	and    $0xffffff9f,%edx
c0030cdd:	09 ca                	or     %ecx,%edx
c0030cdf:	88 50 05             	mov    %dl,0x5(%eax)
c0030ce2:	8b 45 08             	mov    0x8(%ebp),%eax
c0030ce5:	8a 50 05             	mov    0x5(%eax),%dl
c0030ce8:	83 ca 80             	or     $0xffffff80,%edx
c0030ceb:	88 50 05             	mov    %dl,0x5(%eax)
c0030cee:	8b 45 10             	mov    0x10(%ebp),%eax
c0030cf1:	c1 e8 10             	shr    $0x10,%eax
c0030cf4:	8b 55 08             	mov    0x8(%ebp),%edx
c0030cf7:	66 89 42 06          	mov    %ax,0x6(%edx)
c0030cfb:	90                   	nop
c0030cfc:	5d                   	pop    %ebp
c0030cfd:	c3                   	ret    

c0030cfe <set_trap>:
c0030cfe:	55                   	push   %ebp
c0030cff:	89 e5                	mov    %esp,%ebp
c0030d01:	e8 e5 f5 ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c0030d06:	05 fa c2 00 00       	add    $0xc2fa,%eax
c0030d0b:	8b 45 10             	mov    0x10(%ebp),%eax
c0030d0e:	8b 55 08             	mov    0x8(%ebp),%edx
c0030d11:	66 89 02             	mov    %ax,(%edx)
c0030d14:	8b 45 0c             	mov    0xc(%ebp),%eax
c0030d17:	8b 55 08             	mov    0x8(%ebp),%edx
c0030d1a:	66 89 42 02          	mov    %ax,0x2(%edx)
c0030d1e:	8b 45 08             	mov    0x8(%ebp),%eax
c0030d21:	c6 40 04 00          	movb   $0x0,0x4(%eax)
c0030d25:	8b 45 08             	mov    0x8(%ebp),%eax
c0030d28:	8a 50 05             	mov    0x5(%eax),%dl
c0030d2b:	83 ca 0f             	or     $0xf,%edx
c0030d2e:	88 50 05             	mov    %dl,0x5(%eax)
c0030d31:	8b 45 08             	mov    0x8(%ebp),%eax
c0030d34:	8a 50 05             	mov    0x5(%eax),%dl
c0030d37:	83 e2 ef             	and    $0xffffffef,%edx
c0030d3a:	88 50 05             	mov    %dl,0x5(%eax)
c0030d3d:	8b 45 14             	mov    0x14(%ebp),%eax
c0030d40:	88 c2                	mov    %al,%dl
c0030d42:	83 e2 03             	and    $0x3,%edx
c0030d45:	8b 45 08             	mov    0x8(%ebp),%eax
c0030d48:	83 e2 03             	and    $0x3,%edx
c0030d4b:	88 d1                	mov    %dl,%cl
c0030d4d:	c1 e1 05             	shl    $0x5,%ecx
c0030d50:	8a 50 05             	mov    0x5(%eax),%dl
c0030d53:	83 e2 9f             	and    $0xffffff9f,%edx
c0030d56:	09 ca                	or     %ecx,%edx
c0030d58:	88 50 05             	mov    %dl,0x5(%eax)
c0030d5b:	8b 45 08             	mov    0x8(%ebp),%eax
c0030d5e:	8a 50 05             	mov    0x5(%eax),%dl
c0030d61:	83 ca 80             	or     $0xffffff80,%edx
c0030d64:	88 50 05             	mov    %dl,0x5(%eax)
c0030d67:	8b 45 10             	mov    0x10(%ebp),%eax
c0030d6a:	c1 e8 10             	shr    $0x10,%eax
c0030d6d:	8b 55 08             	mov    0x8(%ebp),%edx
c0030d70:	66 89 42 06          	mov    %ax,0x6(%edx)
c0030d74:	90                   	nop
c0030d75:	5d                   	pop    %ebp
c0030d76:	c3                   	ret    

c0030d77 <init_idt>:
c0030d77:	55                   	push   %ebp
c0030d78:	89 e5                	mov    %esp,%ebp
c0030d7a:	53                   	push   %ebx
c0030d7b:	83 ec 10             	sub    $0x10,%esp
c0030d7e:	e8 70 f5 ff ff       	call   c00302f3 <__x86.get_pc_thunk.bx>
c0030d83:	81 c3 7d c2 00 00    	add    $0xc27d,%ebx
c0030d89:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0030d90:	eb 2b                	jmp    c0030dbd <init_idt+0x46>
c0030d92:	c7 c0 cd 00 03 c0    	mov    $0xc00300cd,%eax
c0030d98:	89 c2                	mov    %eax,%edx
c0030d9a:	8b 45 f8             	mov    -0x8(%ebp),%eax
c0030d9d:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
c0030da4:	8d 83 20 14 01 00    	lea    0x11420(%ebx),%eax
c0030daa:	01 c8                	add    %ecx,%eax
c0030dac:	6a 00                	push   $0x0
c0030dae:	52                   	push   %edx
c0030daf:	6a 08                	push   $0x8
c0030db1:	50                   	push   %eax
c0030db2:	e8 47 ff ff ff       	call   c0030cfe <set_trap>
c0030db7:	83 c4 10             	add    $0x10,%esp
c0030dba:	ff 45 f8             	incl   -0x8(%ebp)
c0030dbd:	81 7d f8 ff 00 00 00 	cmpl   $0xff,-0x8(%ebp)
c0030dc4:	7e cc                	jle    c0030d92 <init_idt+0x1b>
c0030dc6:	c7 c0 52 00 03 c0    	mov    $0xc0030052,%eax
c0030dcc:	6a 00                	push   $0x0
c0030dce:	50                   	push   %eax
c0030dcf:	6a 08                	push   $0x8
c0030dd1:	8d 83 20 14 01 00    	lea    0x11420(%ebx),%eax
c0030dd7:	50                   	push   %eax
c0030dd8:	e8 21 ff ff ff       	call   c0030cfe <set_trap>
c0030ddd:	83 c4 10             	add    $0x10,%esp
c0030de0:	c7 c0 58 00 03 c0    	mov    $0xc0030058,%eax
c0030de6:	89 c2                	mov    %eax,%edx
c0030de8:	8d 83 28 14 01 00    	lea    0x11428(%ebx),%eax
c0030dee:	6a 00                	push   $0x0
c0030df0:	52                   	push   %edx
c0030df1:	6a 08                	push   $0x8
c0030df3:	50                   	push   %eax
c0030df4:	e8 05 ff ff ff       	call   c0030cfe <set_trap>
c0030df9:	83 c4 10             	add    $0x10,%esp
c0030dfc:	c7 c0 5e 00 03 c0    	mov    $0xc003005e,%eax
c0030e02:	89 c2                	mov    %eax,%edx
c0030e04:	8d 83 30 14 01 00    	lea    0x11430(%ebx),%eax
c0030e0a:	6a 00                	push   $0x0
c0030e0c:	52                   	push   %edx
c0030e0d:	6a 08                	push   $0x8
c0030e0f:	50                   	push   %eax
c0030e10:	e8 e9 fe ff ff       	call   c0030cfe <set_trap>
c0030e15:	83 c4 10             	add    $0x10,%esp
c0030e18:	c7 c0 64 00 03 c0    	mov    $0xc0030064,%eax
c0030e1e:	89 c2                	mov    %eax,%edx
c0030e20:	8d 83 38 14 01 00    	lea    0x11438(%ebx),%eax
c0030e26:	6a 00                	push   $0x0
c0030e28:	52                   	push   %edx
c0030e29:	6a 08                	push   $0x8
c0030e2b:	50                   	push   %eax
c0030e2c:	e8 cd fe ff ff       	call   c0030cfe <set_trap>
c0030e31:	83 c4 10             	add    $0x10,%esp
c0030e34:	c7 c0 6a 00 03 c0    	mov    $0xc003006a,%eax
c0030e3a:	89 c2                	mov    %eax,%edx
c0030e3c:	8d 83 40 14 01 00    	lea    0x11440(%ebx),%eax
c0030e42:	6a 00                	push   $0x0
c0030e44:	52                   	push   %edx
c0030e45:	6a 08                	push   $0x8
c0030e47:	50                   	push   %eax
c0030e48:	e8 b1 fe ff ff       	call   c0030cfe <set_trap>
c0030e4d:	83 c4 10             	add    $0x10,%esp
c0030e50:	c7 c0 70 00 03 c0    	mov    $0xc0030070,%eax
c0030e56:	89 c2                	mov    %eax,%edx
c0030e58:	8d 83 48 14 01 00    	lea    0x11448(%ebx),%eax
c0030e5e:	6a 00                	push   $0x0
c0030e60:	52                   	push   %edx
c0030e61:	6a 08                	push   $0x8
c0030e63:	50                   	push   %eax
c0030e64:	e8 95 fe ff ff       	call   c0030cfe <set_trap>
c0030e69:	83 c4 10             	add    $0x10,%esp
c0030e6c:	c7 c0 76 00 03 c0    	mov    $0xc0030076,%eax
c0030e72:	89 c2                	mov    %eax,%edx
c0030e74:	8d 83 50 14 01 00    	lea    0x11450(%ebx),%eax
c0030e7a:	6a 00                	push   $0x0
c0030e7c:	52                   	push   %edx
c0030e7d:	6a 08                	push   $0x8
c0030e7f:	50                   	push   %eax
c0030e80:	e8 79 fe ff ff       	call   c0030cfe <set_trap>
c0030e85:	83 c4 10             	add    $0x10,%esp
c0030e88:	c7 c0 7c 00 03 c0    	mov    $0xc003007c,%eax
c0030e8e:	89 c2                	mov    %eax,%edx
c0030e90:	8d 83 58 14 01 00    	lea    0x11458(%ebx),%eax
c0030e96:	6a 00                	push   $0x0
c0030e98:	52                   	push   %edx
c0030e99:	6a 08                	push   $0x8
c0030e9b:	50                   	push   %eax
c0030e9c:	e8 5d fe ff ff       	call   c0030cfe <set_trap>
c0030ea1:	83 c4 10             	add    $0x10,%esp
c0030ea4:	c7 c0 82 00 03 c0    	mov    $0xc0030082,%eax
c0030eaa:	89 c2                	mov    %eax,%edx
c0030eac:	8d 83 60 14 01 00    	lea    0x11460(%ebx),%eax
c0030eb2:	6a 00                	push   $0x0
c0030eb4:	52                   	push   %edx
c0030eb5:	6a 08                	push   $0x8
c0030eb7:	50                   	push   %eax
c0030eb8:	e8 41 fe ff ff       	call   c0030cfe <set_trap>
c0030ebd:	83 c4 10             	add    $0x10,%esp
c0030ec0:	c7 c0 86 00 03 c0    	mov    $0xc0030086,%eax
c0030ec6:	89 c2                	mov    %eax,%edx
c0030ec8:	8d 83 68 14 01 00    	lea    0x11468(%ebx),%eax
c0030ece:	6a 00                	push   $0x0
c0030ed0:	52                   	push   %edx
c0030ed1:	6a 08                	push   $0x8
c0030ed3:	50                   	push   %eax
c0030ed4:	e8 25 fe ff ff       	call   c0030cfe <set_trap>
c0030ed9:	83 c4 10             	add    $0x10,%esp
c0030edc:	c7 c0 8c 00 03 c0    	mov    $0xc003008c,%eax
c0030ee2:	89 c2                	mov    %eax,%edx
c0030ee4:	8d 83 70 14 01 00    	lea    0x11470(%ebx),%eax
c0030eea:	6a 00                	push   $0x0
c0030eec:	52                   	push   %edx
c0030eed:	6a 08                	push   $0x8
c0030eef:	50                   	push   %eax
c0030ef0:	e8 09 fe ff ff       	call   c0030cfe <set_trap>
c0030ef5:	83 c4 10             	add    $0x10,%esp
c0030ef8:	c7 c0 90 00 03 c0    	mov    $0xc0030090,%eax
c0030efe:	89 c2                	mov    %eax,%edx
c0030f00:	8d 83 78 14 01 00    	lea    0x11478(%ebx),%eax
c0030f06:	6a 00                	push   $0x0
c0030f08:	52                   	push   %edx
c0030f09:	6a 08                	push   $0x8
c0030f0b:	50                   	push   %eax
c0030f0c:	e8 ed fd ff ff       	call   c0030cfe <set_trap>
c0030f11:	83 c4 10             	add    $0x10,%esp
c0030f14:	c7 c0 94 00 03 c0    	mov    $0xc0030094,%eax
c0030f1a:	89 c2                	mov    %eax,%edx
c0030f1c:	8d 83 80 14 01 00    	lea    0x11480(%ebx),%eax
c0030f22:	6a 00                	push   $0x0
c0030f24:	52                   	push   %edx
c0030f25:	6a 08                	push   $0x8
c0030f27:	50                   	push   %eax
c0030f28:	e8 d1 fd ff ff       	call   c0030cfe <set_trap>
c0030f2d:	83 c4 10             	add    $0x10,%esp
c0030f30:	c7 c0 98 00 03 c0    	mov    $0xc0030098,%eax
c0030f36:	89 c2                	mov    %eax,%edx
c0030f38:	8d 83 88 14 01 00    	lea    0x11488(%ebx),%eax
c0030f3e:	6a 00                	push   $0x0
c0030f40:	52                   	push   %edx
c0030f41:	6a 08                	push   $0x8
c0030f43:	50                   	push   %eax
c0030f44:	e8 b5 fd ff ff       	call   c0030cfe <set_trap>
c0030f49:	83 c4 10             	add    $0x10,%esp
c0030f4c:	c7 c0 9c 00 03 c0    	mov    $0xc003009c,%eax
c0030f52:	89 c2                	mov    %eax,%edx
c0030f54:	8d 83 90 14 01 00    	lea    0x11490(%ebx),%eax
c0030f5a:	6a 00                	push   $0x0
c0030f5c:	52                   	push   %edx
c0030f5d:	6a 08                	push   $0x8
c0030f5f:	50                   	push   %eax
c0030f60:	e8 99 fd ff ff       	call   c0030cfe <set_trap>
c0030f65:	83 c4 10             	add    $0x10,%esp
c0030f68:	c7 c0 a0 00 03 c0    	mov    $0xc00300a0,%eax
c0030f6e:	89 c2                	mov    %eax,%edx
c0030f70:	8d 83 20 18 01 00    	lea    0x11820(%ebx),%eax
c0030f76:	6a 03                	push   $0x3
c0030f78:	52                   	push   %edx
c0030f79:	6a 08                	push   $0x8
c0030f7b:	50                   	push   %eax
c0030f7c:	e8 7d fd ff ff       	call   c0030cfe <set_trap>
c0030f81:	83 c4 10             	add    $0x10,%esp
c0030f84:	c7 c0 a9 00 03 c0    	mov    $0xc00300a9,%eax
c0030f8a:	89 c2                	mov    %eax,%edx
c0030f8c:	8d 83 20 15 01 00    	lea    0x11520(%ebx),%eax
c0030f92:	6a 00                	push   $0x0
c0030f94:	52                   	push   %edx
c0030f95:	6a 08                	push   $0x8
c0030f97:	50                   	push   %eax
c0030f98:	e8 e5 fc ff ff       	call   c0030c82 <set_intr>
c0030f9d:	83 c4 10             	add    $0x10,%esp
c0030fa0:	c7 c0 b2 00 03 c0    	mov    $0xc00300b2,%eax
c0030fa6:	89 c2                	mov    %eax,%edx
c0030fa8:	8d 83 28 15 01 00    	lea    0x11528(%ebx),%eax
c0030fae:	6a 00                	push   $0x0
c0030fb0:	52                   	push   %edx
c0030fb1:	6a 08                	push   $0x8
c0030fb3:	50                   	push   %eax
c0030fb4:	e8 c9 fc ff ff       	call   c0030c82 <set_intr>
c0030fb9:	83 c4 10             	add    $0x10,%esp
c0030fbc:	c7 c0 bb 00 03 c0    	mov    $0xc00300bb,%eax
c0030fc2:	89 c2                	mov    %eax,%edx
c0030fc4:	8d 83 30 15 01 00    	lea    0x11530(%ebx),%eax
c0030fca:	6a 00                	push   $0x0
c0030fcc:	52                   	push   %edx
c0030fcd:	6a 08                	push   $0x8
c0030fcf:	50                   	push   %eax
c0030fd0:	e8 ad fc ff ff       	call   c0030c82 <set_intr>
c0030fd5:	83 c4 10             	add    $0x10,%esp
c0030fd8:	c7 c0 c4 00 03 c0    	mov    $0xc00300c4,%eax
c0030fde:	89 c2                	mov    %eax,%edx
c0030fe0:	8d 83 90 15 01 00    	lea    0x11590(%ebx),%eax
c0030fe6:	6a 00                	push   $0x0
c0030fe8:	52                   	push   %edx
c0030fe9:	6a 08                	push   $0x8
c0030feb:	50                   	push   %eax
c0030fec:	e8 91 fc ff ff       	call   c0030c82 <set_intr>
c0030ff1:	83 c4 10             	add    $0x10,%esp
c0030ff4:	68 00 08 00 00       	push   $0x800
c0030ff9:	8d 83 20 14 01 00    	lea    0x11420(%ebx),%eax
c0030fff:	50                   	push   %eax
c0031000:	e8 31 fc ff ff       	call   c0030c36 <write_idtr>
c0031005:	83 c4 08             	add    $0x8,%esp
c0031008:	e8 64 fc ff ff       	call   c0030c71 <sti>
c003100d:	90                   	nop
c003100e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031011:	c9                   	leave  
c0031012:	c3                   	ret    

c0031013 <add_irq_handle>:
c0031013:	55                   	push   %ebp
c0031014:	89 e5                	mov    %esp,%ebp
c0031016:	53                   	push   %ebx
c0031017:	83 ec 14             	sub    $0x14,%esp
c003101a:	e8 d4 f2 ff ff       	call   c00302f3 <__x86.get_pc_thunk.bx>
c003101f:	81 c3 e1 bf 00 00    	add    $0xbfe1,%ebx
c0031025:	83 7d 08 0f          	cmpl   $0xf,0x8(%ebp)
c0031029:	7e 2f                	jle    c003105a <add_irq_handle+0x47>
c003102b:	83 ec 0c             	sub    $0xc,%esp
c003102e:	8d 83 24 c3 ff ff    	lea    -0x3cdc(%ebx),%eax
c0031034:	50                   	push   %eax
c0031035:	8d 83 74 c4 ff ff    	lea    -0x3b8c(%ebx),%eax
c003103b:	50                   	push   %eax
c003103c:	6a 16                	push   $0x16
c003103e:	8d 83 37 c3 ff ff    	lea    -0x3cc9(%ebx),%eax
c0031044:	50                   	push   %eax
c0031045:	8d 83 4c c3 ff ff    	lea    -0x3cb4(%ebx),%eax
c003104b:	50                   	push   %eax
c003104c:	e8 39 02 00 00       	call   c003128a <printk>
c0031051:	83 c4 20             	add    $0x20,%esp
c0031054:	b8 01 00 00 00       	mov    $0x1,%eax
c0031059:	82                   	nemu_trap 
c003105a:	8b 83 80 1d 01 00    	mov    0x11d80(%ebx),%eax
c0031060:	83 f8 20             	cmp    $0x20,%eax
c0031063:	7e 2f                	jle    c0031094 <add_irq_handle+0x81>
c0031065:	83 ec 0c             	sub    $0xc,%esp
c0031068:	8d 83 96 c3 ff ff    	lea    -0x3c6a(%ebx),%eax
c003106e:	50                   	push   %eax
c003106f:	8d 83 74 c4 ff ff    	lea    -0x3b8c(%ebx),%eax
c0031075:	50                   	push   %eax
c0031076:	6a 17                	push   $0x17
c0031078:	8d 83 37 c3 ff ff    	lea    -0x3cc9(%ebx),%eax
c003107e:	50                   	push   %eax
c003107f:	8d 83 4c c3 ff ff    	lea    -0x3cb4(%ebx),%eax
c0031085:	50                   	push   %eax
c0031086:	e8 ff 01 00 00       	call   c003128a <printk>
c003108b:	83 c4 20             	add    $0x20,%esp
c003108e:	b8 01 00 00 00       	mov    $0x1,%eax
c0031093:	82                   	nemu_trap 
c0031094:	8b 83 80 1d 01 00    	mov    0x11d80(%ebx),%eax
c003109a:	8d 50 01             	lea    0x1(%eax),%edx
c003109d:	89 93 80 1d 01 00    	mov    %edx,0x11d80(%ebx)
c00310a3:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
c00310aa:	8d 83 40 1c 01 00    	lea    0x11c40(%ebx),%eax
c00310b0:	01 d0                	add    %edx,%eax
c00310b2:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00310b5:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00310b8:	8b 55 0c             	mov    0xc(%ebp),%edx
c00310bb:	89 10                	mov    %edx,(%eax)
c00310bd:	8b 45 08             	mov    0x8(%ebp),%eax
c00310c0:	8b 94 83 40 1d 01 00 	mov    0x11d40(%ebx,%eax,4),%edx
c00310c7:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00310ca:	89 50 04             	mov    %edx,0x4(%eax)
c00310cd:	8b 45 08             	mov    0x8(%ebp),%eax
c00310d0:	8b 55 f4             	mov    -0xc(%ebp),%edx
c00310d3:	89 94 83 40 1d 01 00 	mov    %edx,0x11d40(%ebx,%eax,4)
c00310da:	90                   	nop
c00310db:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00310de:	c9                   	leave  
c00310df:	c3                   	ret    

c00310e0 <irq_handle>:
c00310e0:	55                   	push   %ebp
c00310e1:	89 e5                	mov    %esp,%ebp
c00310e3:	53                   	push   %ebx
c00310e4:	83 ec 14             	sub    $0x14,%esp
c00310e7:	e8 07 f2 ff ff       	call   c00302f3 <__x86.get_pc_thunk.bx>
c00310ec:	81 c3 14 bf 00 00    	add    $0xbf14,%ebx
c00310f2:	8b 45 08             	mov    0x8(%ebp),%eax
c00310f5:	8b 40 20             	mov    0x20(%eax),%eax
c00310f8:	89 45 f0             	mov    %eax,-0x10(%ebp)
c00310fb:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
c00310ff:	79 2a                	jns    c003112b <irq_handle+0x4b>
c0031101:	8d 83 84 c4 ff ff    	lea    -0x3b7c(%ebx),%eax
c0031107:	50                   	push   %eax
c0031108:	6a 26                	push   $0x26
c003110a:	8d 83 37 c3 ff ff    	lea    -0x3cc9(%ebx),%eax
c0031110:	50                   	push   %eax
c0031111:	8d 83 b4 c3 ff ff    	lea    -0x3c4c(%ebx),%eax
c0031117:	50                   	push   %eax
c0031118:	e8 6d 01 00 00       	call   c003128a <printk>
c003111d:	83 c4 10             	add    $0x10,%esp
c0031120:	b8 01 00 00 00       	mov    $0x1,%eax
c0031125:	82                   	nemu_trap 
c0031126:	e9 0d 01 00 00       	jmp    c0031238 <irq_handle+0x158>
c003112b:	81 7d f0 80 00 00 00 	cmpl   $0x80,-0x10(%ebp)
c0031132:	75 13                	jne    c0031147 <irq_handle+0x67>
c0031134:	83 ec 0c             	sub    $0xc,%esp
c0031137:	ff 75 08             	pushl  0x8(%ebp)
c003113a:	e8 9f 09 00 00       	call   c0031ade <do_syscall>
c003113f:	83 c4 10             	add    $0x10,%esp
c0031142:	e9 f1 00 00 00       	jmp    c0031238 <irq_handle+0x158>
c0031147:	81 7d f0 e7 03 00 00 	cmpl   $0x3e7,-0x10(%ebp)
c003114e:	7f 37                	jg     c0031187 <irq_handle+0xa7>
c0031150:	8b 45 08             	mov    0x8(%ebp),%eax
c0031153:	8b 40 28             	mov    0x28(%eax),%eax
c0031156:	83 ec 08             	sub    $0x8,%esp
c0031159:	50                   	push   %eax
c003115a:	ff 75 f0             	pushl  -0x10(%ebp)
c003115d:	8d 83 84 c4 ff ff    	lea    -0x3b7c(%ebx),%eax
c0031163:	50                   	push   %eax
c0031164:	6a 2e                	push   $0x2e
c0031166:	8d 83 37 c3 ff ff    	lea    -0x3cc9(%ebx),%eax
c003116c:	50                   	push   %eax
c003116d:	8d 83 00 c4 ff ff    	lea    -0x3c00(%ebx),%eax
c0031173:	50                   	push   %eax
c0031174:	e8 11 01 00 00       	call   c003128a <printk>
c0031179:	83 c4 20             	add    $0x20,%esp
c003117c:	b8 01 00 00 00       	mov    $0x1,%eax
c0031181:	82                   	nemu_trap 
c0031182:	e9 b1 00 00 00       	jmp    c0031238 <irq_handle+0x158>
c0031187:	81 7d f0 e7 03 00 00 	cmpl   $0x3e7,-0x10(%ebp)
c003118e:	0f 8e a4 00 00 00    	jle    c0031238 <irq_handle+0x158>
c0031194:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0031197:	2d e8 03 00 00       	sub    $0x3e8,%eax
c003119c:	89 45 ec             	mov    %eax,-0x14(%ebp)
c003119f:	83 7d ec 0f          	cmpl   $0xf,-0x14(%ebp)
c00311a3:	7e 2f                	jle    c00311d4 <irq_handle+0xf4>
c00311a5:	83 ec 0c             	sub    $0xc,%esp
c00311a8:	8d 83 5a c4 ff ff    	lea    -0x3ba6(%ebx),%eax
c00311ae:	50                   	push   %eax
c00311af:	8d 83 84 c4 ff ff    	lea    -0x3b7c(%ebx),%eax
c00311b5:	50                   	push   %eax
c00311b6:	6a 33                	push   $0x33
c00311b8:	8d 83 37 c3 ff ff    	lea    -0x3cc9(%ebx),%eax
c00311be:	50                   	push   %eax
c00311bf:	8d 83 4c c3 ff ff    	lea    -0x3cb4(%ebx),%eax
c00311c5:	50                   	push   %eax
c00311c6:	e8 bf 00 00 00       	call   c003128a <printk>
c00311cb:	83 c4 20             	add    $0x20,%esp
c00311ce:	b8 01 00 00 00       	mov    $0x1,%eax
c00311d3:	82                   	nemu_trap 
c00311d4:	8b 45 ec             	mov    -0x14(%ebp),%eax
c00311d7:	8b 84 83 40 1d 01 00 	mov    0x11d40(%ebx,%eax,4),%eax
c00311de:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00311e1:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c00311e5:	0f 94 c0             	sete   %al
c00311e8:	88 45 eb             	mov    %al,-0x15(%ebp)
c00311eb:	80 7d eb 00          	cmpb   $0x0,-0x15(%ebp)
c00311ef:	74 41                	je     c0031232 <irq_handle+0x152>
c00311f1:	83 ec 0c             	sub    $0xc,%esp
c00311f4:	8d 83 70 c4 ff ff    	lea    -0x3b90(%ebx),%eax
c00311fa:	50                   	push   %eax
c00311fb:	8d 83 84 c4 ff ff    	lea    -0x3b7c(%ebx),%eax
c0031201:	50                   	push   %eax
c0031202:	6a 3b                	push   $0x3b
c0031204:	8d 83 37 c3 ff ff    	lea    -0x3cc9(%ebx),%eax
c003120a:	50                   	push   %eax
c003120b:	8d 83 4c c3 ff ff    	lea    -0x3cb4(%ebx),%eax
c0031211:	50                   	push   %eax
c0031212:	e8 73 00 00 00       	call   c003128a <printk>
c0031217:	83 c4 20             	add    $0x20,%esp
c003121a:	b8 01 00 00 00       	mov    $0x1,%eax
c003121f:	82                   	nemu_trap 
c0031220:	eb 10                	jmp    c0031232 <irq_handle+0x152>
c0031222:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031225:	8b 00                	mov    (%eax),%eax
c0031227:	ff d0                	call   *%eax
c0031229:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003122c:	8b 40 04             	mov    0x4(%eax),%eax
c003122f:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0031232:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0031236:	75 ea                	jne    c0031222 <irq_handle+0x142>
c0031238:	90                   	nop
c0031239:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003123c:	c9                   	leave  
c003123d:	c3                   	ret    

c003123e <sbrk>:
c003123e:	55                   	push   %ebp
c003123f:	89 e5                	mov    %esp,%ebp
c0031241:	53                   	push   %ebx
c0031242:	83 ec 04             	sub    $0x4,%esp
c0031245:	e8 a1 f0 ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c003124a:	05 b6 bd 00 00       	add    $0xbdb6,%eax
c003124f:	83 ec 0c             	sub    $0xc,%esp
c0031252:	8d 90 90 c4 ff ff    	lea    -0x3b70(%eax),%edx
c0031258:	52                   	push   %edx
c0031259:	8d 90 f0 c4 ff ff    	lea    -0x3b10(%eax),%edx
c003125f:	52                   	push   %edx
c0031260:	6a 09                	push   $0x9
c0031262:	8d 90 92 c4 ff ff    	lea    -0x3b6e(%eax),%edx
c0031268:	52                   	push   %edx
c0031269:	8d 90 a4 c4 ff ff    	lea    -0x3b5c(%eax),%edx
c003126f:	52                   	push   %edx
c0031270:	89 c3                	mov    %eax,%ebx
c0031272:	e8 13 00 00 00       	call   c003128a <printk>
c0031277:	83 c4 20             	add    $0x20,%esp
c003127a:	b8 01 00 00 00       	mov    $0x1,%eax
c003127f:	82                   	nemu_trap 
c0031280:	b8 00 00 00 00       	mov    $0x0,%eax
c0031285:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031288:	c9                   	leave  
c0031289:	c3                   	ret    

c003128a <printk>:
c003128a:	55                   	push   %ebp
c003128b:	89 e5                	mov    %esp,%ebp
c003128d:	53                   	push   %ebx
c003128e:	83 ec 14             	sub    $0x14,%esp
c0031291:	e8 5d f0 ff ff       	call   c00302f3 <__x86.get_pc_thunk.bx>
c0031296:	81 c3 6a bd 00 00    	add    $0xbd6a,%ebx
c003129c:	8d 45 0c             	lea    0xc(%ebp),%eax
c003129f:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00312a2:	8b 45 08             	mov    0x8(%ebp),%eax
c00312a5:	ff 75 f4             	pushl  -0xc(%ebp)
c00312a8:	50                   	push   %eax
c00312a9:	68 00 01 00 00       	push   $0x100
c00312ae:	8d 83 a0 1d 01 00    	lea    0x11da0(%ebx),%eax
c00312b4:	50                   	push   %eax
c00312b5:	e8 16 0d 00 00       	call   c0031fd0 <vsnprintf>
c00312ba:	83 c4 10             	add    $0x10,%esp
c00312bd:	89 45 f0             	mov    %eax,-0x10(%ebp)
c00312c0:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00312c3:	83 ec 04             	sub    $0x4,%esp
c00312c6:	50                   	push   %eax
c00312c7:	8d 83 a0 1d 01 00    	lea    0x11da0(%ebx),%eax
c00312cd:	50                   	push   %eax
c00312ce:	6a 01                	push   $0x1
c00312d0:	e8 65 f7 ff ff       	call   c0030a3a <fs_write>
c00312d5:	83 c4 10             	add    $0x10,%esp
c00312d8:	90                   	nop
c00312d9:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00312dc:	c9                   	leave  
c00312dd:	c3                   	ret    

c00312de <in_byte>:
c00312de:	55                   	push   %ebp
c00312df:	89 e5                	mov    %esp,%ebp
c00312e1:	83 ec 14             	sub    $0x14,%esp
c00312e4:	e8 02 f0 ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c00312e9:	05 17 bd 00 00       	add    $0xbd17,%eax
c00312ee:	8b 45 08             	mov    0x8(%ebp),%eax
c00312f1:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
c00312f5:	8b 45 ec             	mov    -0x14(%ebp),%eax
c00312f8:	89 c2                	mov    %eax,%edx
c00312fa:	ec                   	in     (%dx),%al
c00312fb:	88 45 ff             	mov    %al,-0x1(%ebp)
c00312fe:	8a 45 ff             	mov    -0x1(%ebp),%al
c0031301:	c9                   	leave  
c0031302:	c3                   	ret    

c0031303 <out_byte>:
c0031303:	55                   	push   %ebp
c0031304:	89 e5                	mov    %esp,%ebp
c0031306:	83 ec 08             	sub    $0x8,%esp
c0031309:	e8 dd ef ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c003130e:	05 f2 bc 00 00       	add    $0xbcf2,%eax
c0031313:	8b 45 08             	mov    0x8(%ebp),%eax
c0031316:	8b 55 0c             	mov    0xc(%ebp),%edx
c0031319:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c003131d:	88 d0                	mov    %dl,%al
c003131f:	88 45 f8             	mov    %al,-0x8(%ebp)
c0031322:	8a 45 f8             	mov    -0x8(%ebp),%al
c0031325:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0031328:	ee                   	out    %al,(%dx)
c0031329:	90                   	nop
c003132a:	c9                   	leave  
c003132b:	c3                   	ret    

c003132c <init_serial>:
c003132c:	55                   	push   %ebp
c003132d:	89 e5                	mov    %esp,%ebp
c003132f:	e8 b7 ef ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c0031334:	05 cc bc 00 00       	add    $0xbccc,%eax
c0031339:	90                   	nop
c003133a:	5d                   	pop    %ebp
c003133b:	c3                   	ret    

c003133c <serial_idle>:
c003133c:	55                   	push   %ebp
c003133d:	89 e5                	mov    %esp,%ebp
c003133f:	e8 a7 ef ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c0031344:	05 bc bc 00 00       	add    $0xbcbc,%eax
c0031349:	68 fd 03 00 00       	push   $0x3fd
c003134e:	e8 8b ff ff ff       	call   c00312de <in_byte>
c0031353:	83 c4 04             	add    $0x4,%esp
c0031356:	0f b6 c0             	movzbl %al,%eax
c0031359:	83 e0 20             	and    $0x20,%eax
c003135c:	85 c0                	test   %eax,%eax
c003135e:	0f 95 c0             	setne  %al
c0031361:	0f b6 c0             	movzbl %al,%eax
c0031364:	c9                   	leave  
c0031365:	c3                   	ret    

c0031366 <serial_printc>:
c0031366:	55                   	push   %ebp
c0031367:	89 e5                	mov    %esp,%ebp
c0031369:	83 ec 04             	sub    $0x4,%esp
c003136c:	e8 7a ef ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c0031371:	05 8f bc 00 00       	add    $0xbc8f,%eax
c0031376:	8b 45 08             	mov    0x8(%ebp),%eax
c0031379:	88 45 fc             	mov    %al,-0x4(%ebp)
c003137c:	90                   	nop
c003137d:	e8 ba ff ff ff       	call   c003133c <serial_idle>
c0031382:	85 c0                	test   %eax,%eax
c0031384:	74 f7                	je     c003137d <serial_printc+0x17>
c0031386:	8a 45 fc             	mov    -0x4(%ebp),%al
c0031389:	0f b6 c0             	movzbl %al,%eax
c003138c:	50                   	push   %eax
c003138d:	68 f8 03 00 00       	push   $0x3f8
c0031392:	e8 6c ff ff ff       	call   c0031303 <out_byte>
c0031397:	83 c4 08             	add    $0x8,%esp
c003139a:	90                   	nop
c003139b:	c9                   	leave  
c003139c:	c3                   	ret    

c003139d <sti>:
c003139d:	55                   	push   %ebp
c003139e:	89 e5                	mov    %esp,%ebp
c00313a0:	e8 46 ef ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c00313a5:	05 5b bc 00 00       	add    $0xbc5b,%eax
c00313aa:	fb                   	sti    
c00313ab:	90                   	nop
c00313ac:	5d                   	pop    %ebp
c00313ad:	c3                   	ret    

c00313ae <init>:
c00313ae:	55                   	push   %ebp
c00313af:	89 e5                	mov    %esp,%ebp
c00313b1:	53                   	push   %ebx
c00313b2:	83 ec 04             	sub    $0x4,%esp
c00313b5:	e8 39 ef ff ff       	call   c00302f3 <__x86.get_pc_thunk.bx>
c00313ba:	81 c3 46 bc 00 00    	add    $0xbc46,%ebx
c00313c0:	e8 14 01 00 00       	call   c00314d9 <init_page>
c00313c5:	81 c4 00 00 00 c0    	add    $0xc0000000,%esp
c00313cb:	8d 83 e0 43 ff bf    	lea    -0x4000bc20(%ebx),%eax
c00313d1:	ff e0                	jmp    *%eax
c00313d3:	b8 01 00 00 00       	mov    $0x1,%eax
c00313d8:	82                   	nemu_trap 
c00313d9:	90                   	nop
c00313da:	83 c4 04             	add    $0x4,%esp
c00313dd:	5b                   	pop    %ebx
c00313de:	5d                   	pop    %ebp
c00313df:	c3                   	ret    

c00313e0 <init_cond>:
c00313e0:	55                   	push   %ebp
c00313e1:	89 e5                	mov    %esp,%ebp
c00313e3:	53                   	push   %ebx
c00313e4:	83 ec 14             	sub    $0x14,%esp
c00313e7:	e8 07 ef ff ff       	call   c00302f3 <__x86.get_pc_thunk.bx>
c00313ec:	81 c3 14 bc 00 00    	add    $0xbc14,%ebx
c00313f2:	e8 c3 02 00 00       	call   c00316ba <init_segment>
c00313f7:	e8 7b f9 ff ff       	call   c0030d77 <init_idt>
c00313fc:	e8 9c ff ff ff       	call   c003139d <sti>
c0031401:	e8 9f f3 ff ff       	call   c00307a5 <init_ide>
c0031406:	e8 9d 03 00 00       	call   c00317a8 <init_mm>
c003140b:	8d 83 38 c5 ff ff    	lea    -0x3ac8(%ebx),%eax
c0031411:	50                   	push   %eax
c0031412:	6a 56                	push   $0x56
c0031414:	8d 83 f8 c4 ff ff    	lea    -0x3b08(%ebx),%eax
c003141a:	50                   	push   %eax
c003141b:	8d 83 04 c5 ff ff    	lea    -0x3afc(%ebx),%eax
c0031421:	50                   	push   %eax
c0031422:	e8 63 fe ff ff       	call   c003128a <printk>
c0031427:	83 c4 10             	add    $0x10,%esp
c003142a:	e8 d1 f3 ff ff       	call   c0030800 <loader>
c003142f:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0031432:	bc 00 00 00 c0       	mov    $0xc0000000,%esp
c0031437:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003143a:	ff d0                	call   *%eax
c003143c:	90                   	nop
c003143d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031440:	c9                   	leave  
c0031441:	c3                   	ret    

c0031442 <read_cr0>:
c0031442:	55                   	push   %ebp
c0031443:	89 e5                	mov    %esp,%ebp
c0031445:	83 ec 10             	sub    $0x10,%esp
c0031448:	e8 9e ee ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c003144d:	05 b3 bb 00 00       	add    $0xbbb3,%eax
c0031452:	0f 20 c0             	mov    %cr0,%eax
c0031455:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0031458:	8b 45 fc             	mov    -0x4(%ebp),%eax
c003145b:	c9                   	leave  
c003145c:	c3                   	ret    

c003145d <write_cr0>:
c003145d:	55                   	push   %ebp
c003145e:	89 e5                	mov    %esp,%ebp
c0031460:	e8 86 ee ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c0031465:	05 9b bb 00 00       	add    $0xbb9b,%eax
c003146a:	8b 45 08             	mov    0x8(%ebp),%eax
c003146d:	0f 22 c0             	mov    %eax,%cr0
c0031470:	90                   	nop
c0031471:	5d                   	pop    %ebp
c0031472:	c3                   	ret    

c0031473 <write_cr3>:
c0031473:	55                   	push   %ebp
c0031474:	89 e5                	mov    %esp,%ebp
c0031476:	e8 70 ee ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c003147b:	05 85 bb 00 00       	add    $0xbb85,%eax
c0031480:	8b 45 08             	mov    0x8(%ebp),%eax
c0031483:	0f 22 d8             	mov    %eax,%cr3
c0031486:	90                   	nop
c0031487:	5d                   	pop    %ebp
c0031488:	c3                   	ret    

c0031489 <write_gdtr>:
c0031489:	55                   	push   %ebp
c003148a:	89 e5                	mov    %esp,%ebp
c003148c:	e8 5a ee ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c0031491:	05 6f bb 00 00       	add    $0xbb6f,%eax
c0031496:	8b 55 0c             	mov    0xc(%ebp),%edx
c0031499:	4a                   	dec    %edx
c003149a:	66 89 90 a0 1e 01 00 	mov    %dx,0x11ea0(%eax)
c00314a1:	8b 55 08             	mov    0x8(%ebp),%edx
c00314a4:	66 89 90 a2 1e 01 00 	mov    %dx,0x11ea2(%eax)
c00314ab:	8b 55 08             	mov    0x8(%ebp),%edx
c00314ae:	c1 ea 10             	shr    $0x10,%edx
c00314b1:	66 89 90 a4 1e 01 00 	mov    %dx,0x11ea4(%eax)
c00314b8:	8d 80 a0 1e 01 00    	lea    0x11ea0(%eax),%eax
c00314be:	0f 01 10             	lgdtl  (%eax)
c00314c1:	90                   	nop
c00314c2:	5d                   	pop    %ebp
c00314c3:	c3                   	ret    

c00314c4 <get_kpdir>:
c00314c4:	55                   	push   %ebp
c00314c5:	89 e5                	mov    %esp,%ebp
c00314c7:	e8 1f ee ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c00314cc:	05 34 bb 00 00       	add    $0xbb34,%eax
c00314d1:	c7 c0 00 20 07 c0    	mov    $0xc0072000,%eax
c00314d7:	5d                   	pop    %ebp
c00314d8:	c3                   	ret    

c00314d9 <init_page>:
c00314d9:	55                   	push   %ebp
c00314da:	89 e5                	mov    %esp,%ebp
c00314dc:	53                   	push   %ebx
c00314dd:	83 ec 24             	sub    $0x24,%esp
c00314e0:	e8 06 ee ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c00314e5:	05 1b bb 00 00       	add    $0xbb1b,%eax
c00314ea:	c7 c2 00 20 07 c0    	mov    $0xc0072000,%edx
c00314f0:	81 c2 00 00 00 40    	add    $0x40000000,%edx
c00314f6:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c00314f9:	c7 c2 00 30 07 c0    	mov    $0xc0073000,%edx
c00314ff:	81 c2 00 00 00 40    	add    $0x40000000,%edx
c0031505:	89 55 f4             	mov    %edx,-0xc(%ebp)
c0031508:	83 ec 04             	sub    $0x4,%esp
c003150b:	68 00 10 00 00       	push   $0x1000
c0031510:	6a 00                	push   $0x0
c0031512:	ff 75 e4             	pushl  -0x1c(%ebp)
c0031515:	89 c3                	mov    %eax,%ebx
c0031517:	e8 90 09 00 00       	call   c0031eac <memset>
c003151c:	83 c4 10             	add    $0x10,%esp
c003151f:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
c0031526:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c003152d:	eb 70                	jmp    c003159f <init_page+0xc6>
c003152f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031532:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0031537:	89 c2                	mov    %eax,%edx
c0031539:	8b 45 f0             	mov    -0x10(%ebp),%eax
c003153c:	8d 0c 85 00 00 00 00 	lea    0x0(,%eax,4),%ecx
c0031543:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0031546:	01 c8                	add    %ecx,%eax
c0031548:	83 ca 07             	or     $0x7,%edx
c003154b:	89 10                	mov    %edx,(%eax)
c003154d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031550:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0031555:	89 c2                	mov    %eax,%edx
c0031557:	8b 45 f0             	mov    -0x10(%ebp),%eax
c003155a:	05 00 03 00 00       	add    $0x300,%eax
c003155f:	8d 0c 85 00 00 00 00 	lea    0x0(,%eax,4),%ecx
c0031566:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0031569:	01 c8                	add    %ecx,%eax
c003156b:	83 ca 07             	or     $0x7,%edx
c003156e:	89 10                	mov    %edx,(%eax)
c0031570:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
c0031577:	eb 1a                	jmp    c0031593 <init_page+0xba>
c0031579:	8b 45 e8             	mov    -0x18(%ebp),%eax
c003157c:	c1 e0 0c             	shl    $0xc,%eax
c003157f:	83 c8 07             	or     $0x7,%eax
c0031582:	89 c2                	mov    %eax,%edx
c0031584:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031587:	89 10                	mov    %edx,(%eax)
c0031589:	ff 45 e8             	incl   -0x18(%ebp)
c003158c:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
c0031590:	ff 45 ec             	incl   -0x14(%ebp)
c0031593:	81 7d ec ff 03 00 00 	cmpl   $0x3ff,-0x14(%ebp)
c003159a:	76 dd                	jbe    c0031579 <init_page+0xa0>
c003159c:	ff 45 f0             	incl   -0x10(%ebp)
c003159f:	83 7d f0 1f          	cmpl   $0x1f,-0x10(%ebp)
c00315a3:	76 8a                	jbe    c003152f <init_page+0x56>
c00315a5:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
c00315ac:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c00315af:	c1 e8 0c             	shr    $0xc,%eax
c00315b2:	25 ff ff 0f 00       	and    $0xfffff,%eax
c00315b7:	c1 e0 0c             	shl    $0xc,%eax
c00315ba:	89 c2                	mov    %eax,%edx
c00315bc:	8b 45 dc             	mov    -0x24(%ebp),%eax
c00315bf:	25 ff 0f 00 00       	and    $0xfff,%eax
c00315c4:	09 d0                	or     %edx,%eax
c00315c6:	89 45 dc             	mov    %eax,-0x24(%ebp)
c00315c9:	8b 45 dc             	mov    -0x24(%ebp),%eax
c00315cc:	83 ec 0c             	sub    $0xc,%esp
c00315cf:	50                   	push   %eax
c00315d0:	e8 9e fe ff ff       	call   c0031473 <write_cr3>
c00315d5:	83 c4 10             	add    $0x10,%esp
c00315d8:	e8 65 fe ff ff       	call   c0031442 <read_cr0>
c00315dd:	89 45 e0             	mov    %eax,-0x20(%ebp)
c00315e0:	8a 45 e3             	mov    -0x1d(%ebp),%al
c00315e3:	83 c8 80             	or     $0xffffff80,%eax
c00315e6:	88 45 e3             	mov    %al,-0x1d(%ebp)
c00315e9:	8b 45 e0             	mov    -0x20(%ebp),%eax
c00315ec:	83 ec 0c             	sub    $0xc,%esp
c00315ef:	50                   	push   %eax
c00315f0:	e8 68 fe ff ff       	call   c003145d <write_cr0>
c00315f5:	83 c4 10             	add    $0x10,%esp
c00315f8:	90                   	nop
c00315f9:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00315fc:	c9                   	leave  
c00315fd:	c3                   	ret    

c00315fe <set_segment>:
c00315fe:	55                   	push   %ebp
c00315ff:	89 e5                	mov    %esp,%ebp
c0031601:	e8 e5 ec ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c0031606:	05 fa b9 00 00       	add    $0xb9fa,%eax
c003160b:	8b 45 08             	mov    0x8(%ebp),%eax
c003160e:	66 c7 00 ff ff       	movw   $0xffff,(%eax)
c0031613:	8b 45 08             	mov    0x8(%ebp),%eax
c0031616:	66 c7 40 02 00 00    	movw   $0x0,0x2(%eax)
c003161c:	8b 45 08             	mov    0x8(%ebp),%eax
c003161f:	c6 40 04 00          	movb   $0x0,0x4(%eax)
c0031623:	8b 45 10             	mov    0x10(%ebp),%eax
c0031626:	88 c2                	mov    %al,%dl
c0031628:	83 e2 0f             	and    $0xf,%edx
c003162b:	8b 45 08             	mov    0x8(%ebp),%eax
c003162e:	88 d1                	mov    %dl,%cl
c0031630:	83 e1 0f             	and    $0xf,%ecx
c0031633:	8a 50 05             	mov    0x5(%eax),%dl
c0031636:	83 e2 f0             	and    $0xfffffff0,%edx
c0031639:	09 ca                	or     %ecx,%edx
c003163b:	88 50 05             	mov    %dl,0x5(%eax)
c003163e:	8b 45 08             	mov    0x8(%ebp),%eax
c0031641:	8a 50 05             	mov    0x5(%eax),%dl
c0031644:	83 ca 10             	or     $0x10,%edx
c0031647:	88 50 05             	mov    %dl,0x5(%eax)
c003164a:	8b 45 0c             	mov    0xc(%ebp),%eax
c003164d:	88 c2                	mov    %al,%dl
c003164f:	83 e2 03             	and    $0x3,%edx
c0031652:	8b 45 08             	mov    0x8(%ebp),%eax
c0031655:	83 e2 03             	and    $0x3,%edx
c0031658:	88 d1                	mov    %dl,%cl
c003165a:	c1 e1 05             	shl    $0x5,%ecx
c003165d:	8a 50 05             	mov    0x5(%eax),%dl
c0031660:	83 e2 9f             	and    $0xffffff9f,%edx
c0031663:	09 ca                	or     %ecx,%edx
c0031665:	88 50 05             	mov    %dl,0x5(%eax)
c0031668:	8b 45 08             	mov    0x8(%ebp),%eax
c003166b:	8a 50 05             	mov    0x5(%eax),%dl
c003166e:	83 ca 80             	or     $0xffffff80,%edx
c0031671:	88 50 05             	mov    %dl,0x5(%eax)
c0031674:	8b 45 08             	mov    0x8(%ebp),%eax
c0031677:	8a 50 06             	mov    0x6(%eax),%dl
c003167a:	83 ca 0f             	or     $0xf,%edx
c003167d:	88 50 06             	mov    %dl,0x6(%eax)
c0031680:	8b 45 08             	mov    0x8(%ebp),%eax
c0031683:	8a 50 06             	mov    0x6(%eax),%dl
c0031686:	83 e2 ef             	and    $0xffffffef,%edx
c0031689:	88 50 06             	mov    %dl,0x6(%eax)
c003168c:	8b 45 08             	mov    0x8(%ebp),%eax
c003168f:	8a 50 06             	mov    0x6(%eax),%dl
c0031692:	83 e2 df             	and    $0xffffffdf,%edx
c0031695:	88 50 06             	mov    %dl,0x6(%eax)
c0031698:	8b 45 08             	mov    0x8(%ebp),%eax
c003169b:	8a 50 06             	mov    0x6(%eax),%dl
c003169e:	83 ca 40             	or     $0x40,%edx
c00316a1:	88 50 06             	mov    %dl,0x6(%eax)
c00316a4:	8b 45 08             	mov    0x8(%ebp),%eax
c00316a7:	8a 50 06             	mov    0x6(%eax),%dl
c00316aa:	83 ca 80             	or     $0xffffff80,%edx
c00316ad:	88 50 06             	mov    %dl,0x6(%eax)
c00316b0:	8b 45 08             	mov    0x8(%ebp),%eax
c00316b3:	c6 40 07 00          	movb   $0x0,0x7(%eax)
c00316b7:	90                   	nop
c00316b8:	5d                   	pop    %ebp
c00316b9:	c3                   	ret    

c00316ba <init_segment>:
c00316ba:	55                   	push   %ebp
c00316bb:	89 e5                	mov    %esp,%ebp
c00316bd:	53                   	push   %ebx
c00316be:	83 ec 04             	sub    $0x4,%esp
c00316c1:	e8 2d ec ff ff       	call   c00302f3 <__x86.get_pc_thunk.bx>
c00316c6:	81 c3 3a b9 00 00    	add    $0xb93a,%ebx
c00316cc:	83 ec 04             	sub    $0x4,%esp
c00316cf:	6a 18                	push   $0x18
c00316d1:	6a 00                	push   $0x0
c00316d3:	c7 c0 00 10 07 c0    	mov    $0xc0071000,%eax
c00316d9:	50                   	push   %eax
c00316da:	e8 cd 07 00 00       	call   c0031eac <memset>
c00316df:	83 c4 10             	add    $0x10,%esp
c00316e2:	83 ec 04             	sub    $0x4,%esp
c00316e5:	6a 0a                	push   $0xa
c00316e7:	6a 00                	push   $0x0
c00316e9:	c7 c0 00 10 07 c0    	mov    $0xc0071000,%eax
c00316ef:	8d 40 08             	lea    0x8(%eax),%eax
c00316f2:	50                   	push   %eax
c00316f3:	e8 06 ff ff ff       	call   c00315fe <set_segment>
c00316f8:	83 c4 10             	add    $0x10,%esp
c00316fb:	83 ec 04             	sub    $0x4,%esp
c00316fe:	6a 02                	push   $0x2
c0031700:	6a 00                	push   $0x0
c0031702:	c7 c0 00 10 07 c0    	mov    $0xc0071000,%eax
c0031708:	8d 40 10             	lea    0x10(%eax),%eax
c003170b:	50                   	push   %eax
c003170c:	e8 ed fe ff ff       	call   c00315fe <set_segment>
c0031711:	83 c4 10             	add    $0x10,%esp
c0031714:	83 ec 08             	sub    $0x8,%esp
c0031717:	6a 18                	push   $0x18
c0031719:	c7 c0 00 10 07 c0    	mov    $0xc0071000,%eax
c003171f:	50                   	push   %eax
c0031720:	e8 64 fd ff ff       	call   c0031489 <write_gdtr>
c0031725:	83 c4 10             	add    $0x10,%esp
c0031728:	90                   	nop
c0031729:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003172c:	c9                   	leave  
c003172d:	c3                   	ret    

c003172e <get_updir>:
c003172e:	55                   	push   %ebp
c003172f:	89 e5                	mov    %esp,%ebp
c0031731:	e8 b5 eb ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c0031736:	05 ca b8 00 00       	add    $0xb8ca,%eax
c003173b:	c7 c0 00 30 09 c0    	mov    $0xc0093000,%eax
c0031741:	5d                   	pop    %ebp
c0031742:	c3                   	ret    

c0031743 <get_ucr3>:
c0031743:	55                   	push   %ebp
c0031744:	89 e5                	mov    %esp,%ebp
c0031746:	e8 a0 eb ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c003174b:	05 b5 b8 00 00       	add    $0xb8b5,%eax
c0031750:	c7 c0 00 40 09 c0    	mov    $0xc0094000,%eax
c0031756:	8b 00                	mov    (%eax),%eax
c0031758:	5d                   	pop    %ebp
c0031759:	c3                   	ret    

c003175a <mm_brk>:
c003175a:	55                   	push   %ebp
c003175b:	89 e5                	mov    %esp,%ebp
c003175d:	53                   	push   %ebx
c003175e:	83 ec 04             	sub    $0x4,%esp
c0031761:	e8 8d eb ff ff       	call   c00302f3 <__x86.get_pc_thunk.bx>
c0031766:	81 c3 9a b8 00 00    	add    $0xb89a,%ebx
c003176c:	8b 83 a8 1e 01 00    	mov    0x11ea8(%ebx),%eax
c0031772:	39 45 08             	cmp    %eax,0x8(%ebp)
c0031775:	76 22                	jbe    c0031799 <mm_brk+0x3f>
c0031777:	8b 83 a8 1e 01 00    	mov    0x11ea8(%ebx),%eax
c003177d:	8b 55 08             	mov    0x8(%ebp),%edx
c0031780:	29 c2                	sub    %eax,%edx
c0031782:	89 d0                	mov    %edx,%eax
c0031784:	89 c2                	mov    %eax,%edx
c0031786:	8b 83 a8 1e 01 00    	mov    0x11ea8(%ebx),%eax
c003178c:	83 ec 08             	sub    $0x8,%esp
c003178f:	52                   	push   %edx
c0031790:	50                   	push   %eax
c0031791:	e8 3a 04 00 00       	call   c0031bd0 <mm_malloc>
c0031796:	83 c4 10             	add    $0x10,%esp
c0031799:	8b 45 08             	mov    0x8(%ebp),%eax
c003179c:	89 83 a8 1e 01 00    	mov    %eax,0x11ea8(%ebx)
c00317a2:	90                   	nop
c00317a3:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00317a6:	c9                   	leave  
c00317a7:	c3                   	ret    

c00317a8 <init_mm>:
c00317a8:	55                   	push   %ebp
c00317a9:	89 e5                	mov    %esp,%ebp
c00317ab:	53                   	push   %ebx
c00317ac:	83 ec 14             	sub    $0x14,%esp
c00317af:	e8 3f eb ff ff       	call   c00302f3 <__x86.get_pc_thunk.bx>
c00317b4:	81 c3 4c b8 00 00    	add    $0xb84c,%ebx
c00317ba:	e8 05 fd ff ff       	call   c00314c4 <get_kpdir>
c00317bf:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00317c2:	83 ec 04             	sub    $0x4,%esp
c00317c5:	68 00 10 00 00       	push   $0x1000
c00317ca:	6a 00                	push   $0x0
c00317cc:	c7 c0 00 30 09 c0    	mov    $0xc0093000,%eax
c00317d2:	50                   	push   %eax
c00317d3:	e8 d4 06 00 00       	call   c0031eac <memset>
c00317d8:	83 c4 10             	add    $0x10,%esp
c00317db:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00317de:	05 00 0c 00 00       	add    $0xc00,%eax
c00317e3:	83 ec 04             	sub    $0x4,%esp
c00317e6:	68 80 00 00 00       	push   $0x80
c00317eb:	50                   	push   %eax
c00317ec:	c7 c0 00 30 09 c0    	mov    $0xc0093000,%eax
c00317f2:	8d 80 00 0c 00 00    	lea    0xc00(%eax),%eax
c00317f8:	50                   	push   %eax
c00317f9:	e8 66 06 00 00       	call   c0031e64 <memcpy>
c00317fe:	83 c4 10             	add    $0x10,%esp
c0031801:	c7 c0 00 30 09 c0    	mov    $0xc0093000,%eax
c0031807:	05 00 00 00 40       	add    $0x40000000,%eax
c003180c:	25 00 fc ff ff       	and    $0xfffffc00,%eax
c0031811:	89 c2                	mov    %eax,%edx
c0031813:	c7 c0 00 40 09 c0    	mov    $0xc0094000,%eax
c0031819:	89 10                	mov    %edx,(%eax)
c003181b:	90                   	nop
c003181c:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003181f:	c9                   	leave  
c0031820:	c3                   	ret    

c0031821 <create_video_mapping>:
c0031821:	55                   	push   %ebp
c0031822:	89 e5                	mov    %esp,%ebp
c0031824:	53                   	push   %ebx
c0031825:	83 ec 04             	sub    $0x4,%esp
c0031828:	e8 be ea ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c003182d:	05 d3 b7 00 00       	add    $0xb7d3,%eax
c0031832:	8d 90 fc c5 ff ff    	lea    -0x3a04(%eax),%edx
c0031838:	52                   	push   %edx
c0031839:	6a 14                	push   $0x14
c003183b:	8d 90 44 c5 ff ff    	lea    -0x3abc(%eax),%edx
c0031841:	52                   	push   %edx
c0031842:	8d 90 58 c5 ff ff    	lea    -0x3aa8(%eax),%edx
c0031848:	52                   	push   %edx
c0031849:	89 c3                	mov    %eax,%ebx
c003184b:	e8 3a fa ff ff       	call   c003128a <printk>
c0031850:	83 c4 10             	add    $0x10,%esp
c0031853:	b8 01 00 00 00       	mov    $0x1,%eax
c0031858:	82                   	nemu_trap 
c0031859:	90                   	nop
c003185a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003185d:	c9                   	leave  
c003185e:	c3                   	ret    

c003185f <video_mapping_write_test>:
c003185f:	55                   	push   %ebp
c0031860:	89 e5                	mov    %esp,%ebp
c0031862:	83 ec 10             	sub    $0x10,%esp
c0031865:	e8 81 ea ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c003186a:	05 96 b7 00 00       	add    $0xb796,%eax
c003186f:	c7 45 f8 00 00 0a 00 	movl   $0xa0000,-0x8(%ebp)
c0031876:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c003187d:	eb 17                	jmp    c0031896 <video_mapping_write_test+0x37>
c003187f:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0031882:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0031889:	8b 45 f8             	mov    -0x8(%ebp),%eax
c003188c:	01 c2                	add    %eax,%edx
c003188e:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0031891:	89 02                	mov    %eax,(%edx)
c0031893:	ff 45 fc             	incl   -0x4(%ebp)
c0031896:	81 7d fc 7f 3e 00 00 	cmpl   $0x3e7f,-0x4(%ebp)
c003189d:	7e e0                	jle    c003187f <video_mapping_write_test+0x20>
c003189f:	90                   	nop
c00318a0:	c9                   	leave  
c00318a1:	c3                   	ret    

c00318a2 <video_mapping_read_test>:
c00318a2:	55                   	push   %ebp
c00318a3:	89 e5                	mov    %esp,%ebp
c00318a5:	53                   	push   %ebx
c00318a6:	83 ec 14             	sub    $0x14,%esp
c00318a9:	e8 45 ea ff ff       	call   c00302f3 <__x86.get_pc_thunk.bx>
c00318ae:	81 c3 52 b7 00 00    	add    $0xb752,%ebx
c00318b4:	c7 45 f0 00 00 0a 00 	movl   $0xa0000,-0x10(%ebp)
c00318bb:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c00318c2:	eb 4a                	jmp    c003190e <video_mapping_read_test+0x6c>
c00318c4:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00318c7:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c00318ce:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00318d1:	01 d0                	add    %edx,%eax
c00318d3:	8b 10                	mov    (%eax),%edx
c00318d5:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00318d8:	39 c2                	cmp    %eax,%edx
c00318da:	74 2f                	je     c003190b <video_mapping_read_test+0x69>
c00318dc:	83 ec 0c             	sub    $0xc,%esp
c00318df:	8d 83 a1 c5 ff ff    	lea    -0x3a5f(%ebx),%eax
c00318e5:	50                   	push   %eax
c00318e6:	8d 83 14 c6 ff ff    	lea    -0x39ec(%ebx),%eax
c00318ec:	50                   	push   %eax
c00318ed:	6a 27                	push   $0x27
c00318ef:	8d 83 44 c5 ff ff    	lea    -0x3abc(%ebx),%eax
c00318f5:	50                   	push   %eax
c00318f6:	8d 83 b0 c5 ff ff    	lea    -0x3a50(%ebx),%eax
c00318fc:	50                   	push   %eax
c00318fd:	e8 88 f9 ff ff       	call   c003128a <printk>
c0031902:	83 c4 20             	add    $0x20,%esp
c0031905:	b8 01 00 00 00       	mov    $0x1,%eax
c003190a:	82                   	nemu_trap 
c003190b:	ff 45 f4             	incl   -0xc(%ebp)
c003190e:	81 7d f4 7f 3e 00 00 	cmpl   $0x3e7f,-0xc(%ebp)
c0031915:	7e ad                	jle    c00318c4 <video_mapping_read_test+0x22>
c0031917:	90                   	nop
c0031918:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003191b:	c9                   	leave  
c003191c:	c3                   	ret    

c003191d <video_mapping_clear>:
c003191d:	55                   	push   %ebp
c003191e:	89 e5                	mov    %esp,%ebp
c0031920:	53                   	push   %ebx
c0031921:	83 ec 04             	sub    $0x4,%esp
c0031924:	e8 c2 e9 ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c0031929:	05 d7 b6 00 00       	add    $0xb6d7,%eax
c003192e:	83 ec 04             	sub    $0x4,%esp
c0031931:	68 00 fa 00 00       	push   $0xfa00
c0031936:	6a 00                	push   $0x0
c0031938:	68 00 00 0a 00       	push   $0xa0000
c003193d:	89 c3                	mov    %eax,%ebx
c003193f:	e8 68 05 00 00       	call   c0031eac <memset>
c0031944:	83 c4 10             	add    $0x10,%esp
c0031947:	90                   	nop
c0031948:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003194b:	c9                   	leave  
c003194c:	c3                   	ret    

c003194d <sti>:
c003194d:	55                   	push   %ebp
c003194e:	89 e5                	mov    %esp,%ebp
c0031950:	e8 96 e9 ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c0031955:	05 ab b6 00 00       	add    $0xb6ab,%eax
c003195a:	fb                   	sti    
c003195b:	90                   	nop
c003195c:	5d                   	pop    %ebp
c003195d:	c3                   	ret    

c003195e <cli>:
c003195e:	55                   	push   %ebp
c003195f:	89 e5                	mov    %esp,%ebp
c0031961:	e8 85 e9 ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c0031966:	05 9a b6 00 00       	add    $0xb69a,%eax
c003196b:	fa                   	cli    
c003196c:	90                   	nop
c003196d:	5d                   	pop    %ebp
c003196e:	c3                   	ret    

c003196f <sys_brk>:
c003196f:	55                   	push   %ebp
c0031970:	89 e5                	mov    %esp,%ebp
c0031972:	53                   	push   %ebx
c0031973:	83 ec 04             	sub    $0x4,%esp
c0031976:	e8 70 e9 ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c003197b:	05 85 b6 00 00       	add    $0xb685,%eax
c0031980:	8b 55 08             	mov    0x8(%ebp),%edx
c0031983:	8b 52 10             	mov    0x10(%edx),%edx
c0031986:	83 ec 0c             	sub    $0xc,%esp
c0031989:	52                   	push   %edx
c003198a:	89 c3                	mov    %eax,%ebx
c003198c:	e8 c9 fd ff ff       	call   c003175a <mm_brk>
c0031991:	83 c4 10             	add    $0x10,%esp
c0031994:	8b 45 08             	mov    0x8(%ebp),%eax
c0031997:	c7 40 1c 00 00 00 00 	movl   $0x0,0x1c(%eax)
c003199e:	90                   	nop
c003199f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00319a2:	c9                   	leave  
c00319a3:	c3                   	ret    

c00319a4 <sys_open>:
c00319a4:	55                   	push   %ebp
c00319a5:	89 e5                	mov    %esp,%ebp
c00319a7:	53                   	push   %ebx
c00319a8:	83 ec 04             	sub    $0x4,%esp
c00319ab:	e8 3b e9 ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c00319b0:	05 50 b6 00 00       	add    $0xb650,%eax
c00319b5:	8b 55 08             	mov    0x8(%ebp),%edx
c00319b8:	8b 52 18             	mov    0x18(%edx),%edx
c00319bb:	89 d1                	mov    %edx,%ecx
c00319bd:	8b 55 08             	mov    0x8(%ebp),%edx
c00319c0:	8b 52 10             	mov    0x10(%edx),%edx
c00319c3:	83 ec 08             	sub    $0x8,%esp
c00319c6:	51                   	push   %ecx
c00319c7:	52                   	push   %edx
c00319c8:	89 c3                	mov    %eax,%ebx
c00319ca:	e8 b3 ef ff ff       	call   c0030982 <fs_open>
c00319cf:	83 c4 10             	add    $0x10,%esp
c00319d2:	89 c2                	mov    %eax,%edx
c00319d4:	8b 45 08             	mov    0x8(%ebp),%eax
c00319d7:	89 50 1c             	mov    %edx,0x1c(%eax)
c00319da:	90                   	nop
c00319db:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00319de:	c9                   	leave  
c00319df:	c3                   	ret    

c00319e0 <sys_read>:
c00319e0:	55                   	push   %ebp
c00319e1:	89 e5                	mov    %esp,%ebp
c00319e3:	53                   	push   %ebx
c00319e4:	83 ec 04             	sub    $0x4,%esp
c00319e7:	e8 ff e8 ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c00319ec:	05 14 b6 00 00       	add    $0xb614,%eax
c00319f1:	8b 55 08             	mov    0x8(%ebp),%edx
c00319f4:	8b 52 14             	mov    0x14(%edx),%edx
c00319f7:	8b 4d 08             	mov    0x8(%ebp),%ecx
c00319fa:	8b 49 18             	mov    0x18(%ecx),%ecx
c00319fd:	89 cb                	mov    %ecx,%ebx
c00319ff:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0031a02:	8b 49 10             	mov    0x10(%ecx),%ecx
c0031a05:	83 ec 04             	sub    $0x4,%esp
c0031a08:	52                   	push   %edx
c0031a09:	53                   	push   %ebx
c0031a0a:	51                   	push   %ecx
c0031a0b:	89 c3                	mov    %eax,%ebx
c0031a0d:	e8 b2 ef ff ff       	call   c00309c4 <fs_read>
c0031a12:	83 c4 10             	add    $0x10,%esp
c0031a15:	89 c2                	mov    %eax,%edx
c0031a17:	8b 45 08             	mov    0x8(%ebp),%eax
c0031a1a:	89 50 1c             	mov    %edx,0x1c(%eax)
c0031a1d:	90                   	nop
c0031a1e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031a21:	c9                   	leave  
c0031a22:	c3                   	ret    

c0031a23 <sys_write>:
c0031a23:	55                   	push   %ebp
c0031a24:	89 e5                	mov    %esp,%ebp
c0031a26:	53                   	push   %ebx
c0031a27:	83 ec 04             	sub    $0x4,%esp
c0031a2a:	e8 bc e8 ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c0031a2f:	05 d1 b5 00 00       	add    $0xb5d1,%eax
c0031a34:	8b 55 08             	mov    0x8(%ebp),%edx
c0031a37:	8b 52 14             	mov    0x14(%edx),%edx
c0031a3a:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0031a3d:	8b 49 18             	mov    0x18(%ecx),%ecx
c0031a40:	89 cb                	mov    %ecx,%ebx
c0031a42:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0031a45:	8b 49 10             	mov    0x10(%ecx),%ecx
c0031a48:	83 ec 04             	sub    $0x4,%esp
c0031a4b:	52                   	push   %edx
c0031a4c:	53                   	push   %ebx
c0031a4d:	51                   	push   %ecx
c0031a4e:	89 c3                	mov    %eax,%ebx
c0031a50:	e8 e5 ef ff ff       	call   c0030a3a <fs_write>
c0031a55:	83 c4 10             	add    $0x10,%esp
c0031a58:	89 c2                	mov    %eax,%edx
c0031a5a:	8b 45 08             	mov    0x8(%ebp),%eax
c0031a5d:	89 50 1c             	mov    %edx,0x1c(%eax)
c0031a60:	90                   	nop
c0031a61:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031a64:	c9                   	leave  
c0031a65:	c3                   	ret    

c0031a66 <sys_lseek>:
c0031a66:	55                   	push   %ebp
c0031a67:	89 e5                	mov    %esp,%ebp
c0031a69:	53                   	push   %ebx
c0031a6a:	83 ec 04             	sub    $0x4,%esp
c0031a6d:	e8 79 e8 ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c0031a72:	05 8e b5 00 00       	add    $0xb58e,%eax
c0031a77:	8b 55 08             	mov    0x8(%ebp),%edx
c0031a7a:	8b 52 14             	mov    0x14(%edx),%edx
c0031a7d:	89 d3                	mov    %edx,%ebx
c0031a7f:	8b 55 08             	mov    0x8(%ebp),%edx
c0031a82:	8b 52 18             	mov    0x18(%edx),%edx
c0031a85:	89 d1                	mov    %edx,%ecx
c0031a87:	8b 55 08             	mov    0x8(%ebp),%edx
c0031a8a:	8b 52 10             	mov    0x10(%edx),%edx
c0031a8d:	83 ec 04             	sub    $0x4,%esp
c0031a90:	53                   	push   %ebx
c0031a91:	51                   	push   %ecx
c0031a92:	52                   	push   %edx
c0031a93:	89 c3                	mov    %eax,%ebx
c0031a95:	e8 1c f0 ff ff       	call   c0030ab6 <fs_lseek>
c0031a9a:	83 c4 10             	add    $0x10,%esp
c0031a9d:	89 c2                	mov    %eax,%edx
c0031a9f:	8b 45 08             	mov    0x8(%ebp),%eax
c0031aa2:	89 50 1c             	mov    %edx,0x1c(%eax)
c0031aa5:	90                   	nop
c0031aa6:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031aa9:	c9                   	leave  
c0031aaa:	c3                   	ret    

c0031aab <sys_close>:
c0031aab:	55                   	push   %ebp
c0031aac:	89 e5                	mov    %esp,%ebp
c0031aae:	53                   	push   %ebx
c0031aaf:	83 ec 04             	sub    $0x4,%esp
c0031ab2:	e8 34 e8 ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c0031ab7:	05 49 b5 00 00       	add    $0xb549,%eax
c0031abc:	8b 55 08             	mov    0x8(%ebp),%edx
c0031abf:	8b 52 10             	mov    0x10(%edx),%edx
c0031ac2:	83 ec 0c             	sub    $0xc,%esp
c0031ac5:	52                   	push   %edx
c0031ac6:	89 c3                	mov    %eax,%ebx
c0031ac8:	e8 2b f0 ff ff       	call   c0030af8 <fs_close>
c0031acd:	83 c4 10             	add    $0x10,%esp
c0031ad0:	89 c2                	mov    %eax,%edx
c0031ad2:	8b 45 08             	mov    0x8(%ebp),%eax
c0031ad5:	89 50 1c             	mov    %edx,0x1c(%eax)
c0031ad8:	90                   	nop
c0031ad9:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031adc:	c9                   	leave  
c0031add:	c3                   	ret    

c0031ade <do_syscall>:
c0031ade:	55                   	push   %ebp
c0031adf:	89 e5                	mov    %esp,%ebp
c0031ae1:	53                   	push   %ebx
c0031ae2:	83 ec 04             	sub    $0x4,%esp
c0031ae5:	e8 09 e8 ff ff       	call   c00302f3 <__x86.get_pc_thunk.bx>
c0031aea:	81 c3 16 b5 00 00    	add    $0xb516,%ebx
c0031af0:	8b 45 08             	mov    0x8(%ebp),%eax
c0031af3:	8b 40 1c             	mov    0x1c(%eax),%eax
c0031af6:	83 f8 2d             	cmp    $0x2d,%eax
c0031af9:	0f 87 98 00 00 00    	ja     c0031b97 <.L10>
c0031aff:	c1 e0 02             	shl    $0x2,%eax
c0031b02:	8b 84 18 9c c6 ff ff 	mov    -0x3964(%eax,%ebx,1),%eax
c0031b09:	01 d8                	add    %ebx,%eax
c0031b0b:	ff e0                	jmp    *%eax

c0031b0d <.L18>:
c0031b0d:	e8 4c fe ff ff       	call   c003195e <cli>
c0031b12:	8b 45 08             	mov    0x8(%ebp),%eax
c0031b15:	8b 40 18             	mov    0x18(%eax),%eax
c0031b18:	89 c2                	mov    %eax,%edx
c0031b1a:	8b 45 08             	mov    0x8(%ebp),%eax
c0031b1d:	8b 40 10             	mov    0x10(%eax),%eax
c0031b20:	83 ec 08             	sub    $0x8,%esp
c0031b23:	52                   	push   %edx
c0031b24:	50                   	push   %eax
c0031b25:	e8 e9 f4 ff ff       	call   c0031013 <add_irq_handle>
c0031b2a:	83 c4 10             	add    $0x10,%esp
c0031b2d:	e8 1b fe ff ff       	call   c003194d <sti>
c0031b32:	e9 8f 00 00 00       	jmp    c0031bc6 <.L10+0x2f>

c0031b37 <.L11>:
c0031b37:	83 ec 0c             	sub    $0xc,%esp
c0031b3a:	ff 75 08             	pushl  0x8(%ebp)
c0031b3d:	e8 2d fe ff ff       	call   c003196f <sys_brk>
c0031b42:	83 c4 10             	add    $0x10,%esp
c0031b45:	eb 7f                	jmp    c0031bc6 <.L10+0x2f>

c0031b47 <.L15>:
c0031b47:	83 ec 0c             	sub    $0xc,%esp
c0031b4a:	ff 75 08             	pushl  0x8(%ebp)
c0031b4d:	e8 52 fe ff ff       	call   c00319a4 <sys_open>
c0031b52:	83 c4 10             	add    $0x10,%esp
c0031b55:	eb 6f                	jmp    c0031bc6 <.L10+0x2f>

c0031b57 <.L17>:
c0031b57:	83 ec 0c             	sub    $0xc,%esp
c0031b5a:	ff 75 08             	pushl  0x8(%ebp)
c0031b5d:	e8 7e fe ff ff       	call   c00319e0 <sys_read>
c0031b62:	83 c4 10             	add    $0x10,%esp
c0031b65:	eb 5f                	jmp    c0031bc6 <.L10+0x2f>

c0031b67 <.L16>:
c0031b67:	83 ec 0c             	sub    $0xc,%esp
c0031b6a:	ff 75 08             	pushl  0x8(%ebp)
c0031b6d:	e8 b1 fe ff ff       	call   c0031a23 <sys_write>
c0031b72:	83 c4 10             	add    $0x10,%esp
c0031b75:	eb 4f                	jmp    c0031bc6 <.L10+0x2f>

c0031b77 <.L13>:
c0031b77:	83 ec 0c             	sub    $0xc,%esp
c0031b7a:	ff 75 08             	pushl  0x8(%ebp)
c0031b7d:	e8 e4 fe ff ff       	call   c0031a66 <sys_lseek>
c0031b82:	83 c4 10             	add    $0x10,%esp
c0031b85:	eb 3f                	jmp    c0031bc6 <.L10+0x2f>

c0031b87 <.L14>:
c0031b87:	83 ec 0c             	sub    $0xc,%esp
c0031b8a:	ff 75 08             	pushl  0x8(%ebp)
c0031b8d:	e8 19 ff ff ff       	call   c0031aab <sys_close>
c0031b92:	83 c4 10             	add    $0x10,%esp
c0031b95:	eb 2f                	jmp    c0031bc6 <.L10+0x2f>

c0031b97 <.L10>:
c0031b97:	8b 45 08             	mov    0x8(%ebp),%eax
c0031b9a:	8b 40 1c             	mov    0x1c(%eax),%eax
c0031b9d:	83 ec 0c             	sub    $0xc,%esp
c0031ba0:	50                   	push   %eax
c0031ba1:	8d 83 54 c7 ff ff    	lea    -0x38ac(%ebx),%eax
c0031ba7:	50                   	push   %eax
c0031ba8:	6a 4a                	push   $0x4a
c0031baa:	8d 83 2c c6 ff ff    	lea    -0x39d4(%ebx),%eax
c0031bb0:	50                   	push   %eax
c0031bb1:	8d 83 48 c6 ff ff    	lea    -0x39b8(%ebx),%eax
c0031bb7:	50                   	push   %eax
c0031bb8:	e8 cd f6 ff ff       	call   c003128a <printk>
c0031bbd:	83 c4 20             	add    $0x20,%esp
c0031bc0:	b8 01 00 00 00       	mov    $0x1,%eax
c0031bc5:	82                   	nemu_trap 
c0031bc6:	90                   	nop
c0031bc7:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031bca:	c9                   	leave  
c0031bcb:	c3                   	ret    
c0031bcc:	66 90                	xchg   %ax,%ax
c0031bce:	66 90                	xchg   %ax,%ax

c0031bd0 <mm_malloc>:
c0031bd0:	55                   	push   %ebp
c0031bd1:	31 c0                	xor    %eax,%eax
c0031bd3:	89 e5                	mov    %esp,%ebp
c0031bd5:	57                   	push   %edi
c0031bd6:	56                   	push   %esi
c0031bd7:	53                   	push   %ebx
c0031bd8:	83 ec 3c             	sub    $0x3c,%esp
c0031bdb:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c0031bde:	85 db                	test   %ebx,%ebx
c0031be0:	0f 8e 36 02 00 00    	jle    c0031e1c <mm_malloc+0x24c>
c0031be6:	e8 43 fb ff ff       	call   c003172e <get_updir>
c0031beb:	89 c6                	mov    %eax,%esi
c0031bed:	e8 51 fb ff ff       	call   c0031743 <get_ucr3>
c0031bf2:	8b 55 08             	mov    0x8(%ebp),%edx
c0031bf5:	8d 5c 1a ff          	lea    -0x1(%edx,%ebx,1),%ebx
c0031bf9:	89 5d e0             	mov    %ebx,-0x20(%ebp)
c0031bfc:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0031bff:	b8 00 10 00 00       	mov    $0x1000,%eax
c0031c04:	29 d0                	sub    %edx,%eax
c0031c06:	89 da                	mov    %ebx,%edx
c0031c08:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
c0031c0e:	01 d0                	add    %edx,%eax
c0031c10:	85 c0                	test   %eax,%eax
c0031c12:	0f 8e c0 00 00 00    	jle    c0031cd8 <mm_malloc+0x108>
c0031c18:	8b 55 08             	mov    0x8(%ebp),%edx
c0031c1b:	83 e8 01             	sub    $0x1,%eax
c0031c1e:	89 f7                	mov    %esi,%edi
c0031c20:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0031c25:	8d 84 02 00 10 00 00 	lea    0x1000(%edx,%eax,1),%eax
c0031c2c:	89 d3                	mov    %edx,%ebx
c0031c2e:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0031c31:	eb 51                	jmp    c0031c84 <mm_malloc+0xb4>
c0031c33:	90                   	nop
c0031c34:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0031c38:	8b 31                	mov    (%ecx),%esi
c0031c3a:	81 e6 00 f0 ff ff    	and    $0xfffff000,%esi
c0031c40:	81 ee 00 00 00 40    	sub    $0x40000000,%esi
c0031c46:	89 d8                	mov    %ebx,%eax
c0031c48:	c1 e8 0a             	shr    $0xa,%eax
c0031c4b:	25 fc 0f 00 00       	and    $0xffc,%eax
c0031c50:	01 c6                	add    %eax,%esi
c0031c52:	f6 06 01             	testb  $0x1,(%esi)
c0031c55:	75 22                	jne    c0031c79 <mm_malloc+0xa9>
c0031c57:	a1 20 d0 03 c0       	mov    0xc003d020,%eax
c0031c5c:	3d ff 7f 00 00       	cmp    $0x7fff,%eax
c0031c61:	0f 8f c1 01 00 00    	jg     c0031e28 <mm_malloc+0x258>
c0031c67:	89 c1                	mov    %eax,%ecx
c0031c69:	83 c0 01             	add    $0x1,%eax
c0031c6c:	c1 e1 0c             	shl    $0xc,%ecx
c0031c6f:	83 c9 07             	or     $0x7,%ecx
c0031c72:	89 0e                	mov    %ecx,(%esi)
c0031c74:	a3 20 d0 03 c0       	mov    %eax,0xc003d020
c0031c79:	81 c3 00 10 00 00    	add    $0x1000,%ebx
c0031c7f:	3b 5d e4             	cmp    -0x1c(%ebp),%ebx
c0031c82:	74 54                	je     c0031cd8 <mm_malloc+0x108>
c0031c84:	89 d8                	mov    %ebx,%eax
c0031c86:	c1 e8 16             	shr    $0x16,%eax
c0031c89:	8d 0c 87             	lea    (%edi,%eax,4),%ecx
c0031c8c:	f6 01 01             	testb  $0x1,(%ecx)
c0031c8f:	75 a7                	jne    c0031c38 <mm_malloc+0x68>
c0031c91:	a1 00 f0 04 c0       	mov    0xc004f000,%eax
c0031c96:	89 c6                	mov    %eax,%esi
c0031c98:	83 c0 01             	add    $0x1,%eax
c0031c9b:	c1 e6 0c             	shl    $0xc,%esi
c0031c9e:	81 c6 00 00 05 c0    	add    $0xc0050000,%esi
c0031ca4:	a3 00 f0 04 c0       	mov    %eax,0xc004f000
c0031ca9:	8d 86 00 00 00 40    	lea    0x40000000(%esi),%eax
c0031caf:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0031cb4:	83 c8 07             	or     $0x7,%eax
c0031cb7:	89 01                	mov    %eax,(%ecx)
c0031cb9:	c7 44 24 08 00 10 00 	movl   $0x1000,0x8(%esp)
c0031cc0:	00 
c0031cc1:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0031cc8:	00 
c0031cc9:	89 34 24             	mov    %esi,(%esp)
c0031ccc:	e8 db 01 00 00       	call   c0031eac <memset>
c0031cd1:	e9 70 ff ff ff       	jmp    c0031c46 <mm_malloc+0x76>
c0031cd6:	66 90                	xchg   %ax,%ax
c0031cd8:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c0031cdb:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0031cde:	81 eb 00 00 00 40    	sub    $0x40000000,%ebx
c0031ce4:	81 e3 00 f0 ff ff    	and    $0xfffff000,%ebx
c0031cea:	c1 e8 16             	shr    $0x16,%eax
c0031ced:	8b 34 83             	mov    (%ebx,%eax,4),%esi
c0031cf0:	f7 c6 01 00 00 00    	test   $0x1,%esi
c0031cf6:	75 32                	jne    c0031d2a <mm_malloc+0x15a>
c0031cf8:	c7 44 24 10 83 97 03 	movl   $0xc0039783,0x10(%esp)
c0031cff:	c0 
c0031d00:	c7 44 24 0c ea 97 03 	movl   $0xc00397ea,0xc(%esp)
c0031d07:	c0 
c0031d08:	c7 44 24 08 11 00 00 	movl   $0x11,0x8(%esp)
c0031d0f:	00 
c0031d10:	c7 44 24 04 72 97 03 	movl   $0xc0039772,0x4(%esp)
c0031d17:	c0 
c0031d18:	c7 04 24 94 97 03 c0 	movl   $0xc0039794,(%esp)
c0031d1f:	e8 66 f5 ff ff       	call   c003128a <printk>
c0031d24:	b8 01 00 00 00       	mov    $0x1,%eax
c0031d29:	82                   	nemu_trap 
c0031d2a:	8b 55 e0             	mov    -0x20(%ebp),%edx
c0031d2d:	8d 86 00 00 00 c0    	lea    -0x40000000(%esi),%eax
c0031d33:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0031d38:	c1 ea 0c             	shr    $0xc,%edx
c0031d3b:	81 e2 ff 03 00 00    	and    $0x3ff,%edx
c0031d41:	f6 04 90 01          	testb  $0x1,(%eax,%edx,4)
c0031d45:	75 32                	jne    c0031d79 <mm_malloc+0x1a9>
c0031d47:	c7 44 24 10 8b 97 03 	movl   $0xc003978b,0x10(%esp)
c0031d4e:	c0 
c0031d4f:	c7 44 24 0c ea 97 03 	movl   $0xc00397ea,0xc(%esp)
c0031d56:	c0 
c0031d57:	c7 44 24 08 13 00 00 	movl   $0x13,0x8(%esp)
c0031d5e:	00 
c0031d5f:	c7 44 24 04 72 97 03 	movl   $0xc0039772,0x4(%esp)
c0031d66:	c0 
c0031d67:	c7 04 24 94 97 03 c0 	movl   $0xc0039794,(%esp)
c0031d6e:	e8 17 f5 ff ff       	call   c003128a <printk>
c0031d73:	b8 01 00 00 00       	mov    $0x1,%eax
c0031d78:	82                   	nemu_trap 
c0031d79:	8b 45 08             	mov    0x8(%ebp),%eax
c0031d7c:	c1 e8 16             	shr    $0x16,%eax
c0031d7f:	8b 1c 83             	mov    (%ebx,%eax,4),%ebx
c0031d82:	f6 c3 01             	test   $0x1,%bl
c0031d85:	75 32                	jne    c0031db9 <mm_malloc+0x1e9>
c0031d87:	c7 44 24 10 83 97 03 	movl   $0xc0039783,0x10(%esp)
c0031d8e:	c0 
c0031d8f:	c7 44 24 0c ea 97 03 	movl   $0xc00397ea,0xc(%esp)
c0031d96:	c0 
c0031d97:	c7 44 24 08 11 00 00 	movl   $0x11,0x8(%esp)
c0031d9e:	00 
c0031d9f:	c7 44 24 04 72 97 03 	movl   $0xc0039772,0x4(%esp)
c0031da6:	c0 
c0031da7:	c7 04 24 94 97 03 c0 	movl   $0xc0039794,(%esp)
c0031dae:	e8 d7 f4 ff ff       	call   c003128a <printk>
c0031db3:	b8 01 00 00 00       	mov    $0x1,%eax
c0031db8:	82                   	nemu_trap 
c0031db9:	8b 55 08             	mov    0x8(%ebp),%edx
c0031dbc:	8d 83 00 00 00 c0    	lea    -0x40000000(%ebx),%eax
c0031dc2:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0031dc7:	c1 ea 0c             	shr    $0xc,%edx
c0031dca:	81 e2 ff 03 00 00    	and    $0x3ff,%edx
c0031dd0:	8b 1c 90             	mov    (%eax,%edx,4),%ebx
c0031dd3:	f6 c3 01             	test   $0x1,%bl
c0031dd6:	75 32                	jne    c0031e0a <mm_malloc+0x23a>
c0031dd8:	c7 44 24 10 8b 97 03 	movl   $0xc003978b,0x10(%esp)
c0031ddf:	c0 
c0031de0:	c7 44 24 0c ea 97 03 	movl   $0xc00397ea,0xc(%esp)
c0031de7:	c0 
c0031de8:	c7 44 24 08 13 00 00 	movl   $0x13,0x8(%esp)
c0031def:	00 
c0031df0:	c7 44 24 04 72 97 03 	movl   $0xc0039772,0x4(%esp)
c0031df7:	c0 
c0031df8:	c7 04 24 94 97 03 c0 	movl   $0xc0039794,(%esp)
c0031dff:	e8 86 f4 ff ff       	call   c003128a <printk>
c0031e04:	b8 01 00 00 00       	mov    $0x1,%eax
c0031e09:	82                   	nemu_trap 
c0031e0a:	8b 55 08             	mov    0x8(%ebp),%edx
c0031e0d:	89 d8                	mov    %ebx,%eax
c0031e0f:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0031e14:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
c0031e1a:	09 d0                	or     %edx,%eax
c0031e1c:	83 c4 3c             	add    $0x3c,%esp
c0031e1f:	5b                   	pop    %ebx
c0031e20:	5e                   	pop    %esi
c0031e21:	5f                   	pop    %edi
c0031e22:	5d                   	pop    %ebp
c0031e23:	c3                   	ret    
c0031e24:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0031e28:	c7 44 24 10 5f 97 03 	movl   $0xc003975f,0x10(%esp)
c0031e2f:	c0 
c0031e30:	c7 44 24 0c e0 97 03 	movl   $0xc00397e0,0xc(%esp)
c0031e37:	c0 
c0031e38:	c7 44 24 08 31 00 00 	movl   $0x31,0x8(%esp)
c0031e3f:	00 
c0031e40:	c7 44 24 04 72 97 03 	movl   $0xc0039772,0x4(%esp)
c0031e47:	c0 
c0031e48:	c7 04 24 94 97 03 c0 	movl   $0xc0039794,(%esp)
c0031e4f:	e8 36 f4 ff ff       	call   c003128a <printk>
c0031e54:	b8 01 00 00 00       	mov    $0x1,%eax
c0031e59:	82                   	nemu_trap 
c0031e5a:	a1 20 d0 03 c0       	mov    0xc003d020,%eax
c0031e5f:	e9 03 fe ff ff       	jmp    c0031c67 <mm_malloc+0x97>

c0031e64 <memcpy>:
c0031e64:	55                   	push   %ebp
c0031e65:	89 e5                	mov    %esp,%ebp
c0031e67:	56                   	push   %esi
c0031e68:	57                   	push   %edi
c0031e69:	53                   	push   %ebx
c0031e6a:	8b 7d 08             	mov    0x8(%ebp),%edi
c0031e6d:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0031e70:	8b 75 0c             	mov    0xc(%ebp),%esi
c0031e73:	fc                   	cld    
c0031e74:	83 f9 08             	cmp    $0x8,%ecx
c0031e77:	76 26                	jbe    c0031e9f <memcpy+0x3b>
c0031e79:	89 fa                	mov    %edi,%edx
c0031e7b:	89 cb                	mov    %ecx,%ebx
c0031e7d:	83 e2 03             	and    $0x3,%edx
c0031e80:	74 10                	je     c0031e92 <memcpy+0x2e>
c0031e82:	b9 04 00 00 00       	mov    $0x4,%ecx
c0031e87:	29 d1                	sub    %edx,%ecx
c0031e89:	83 e1 03             	and    $0x3,%ecx
c0031e8c:	29 cb                	sub    %ecx,%ebx
c0031e8e:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0031e90:	89 d9                	mov    %ebx,%ecx
c0031e92:	c1 e9 02             	shr    $0x2,%ecx
c0031e95:	8d 76 00             	lea    0x0(%esi),%esi
c0031e98:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
c0031e9a:	89 d9                	mov    %ebx,%ecx
c0031e9c:	83 e1 03             	and    $0x3,%ecx
c0031e9f:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0031ea1:	8b 45 08             	mov    0x8(%ebp),%eax
c0031ea4:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0031ea7:	5b                   	pop    %ebx
c0031ea8:	5f                   	pop    %edi
c0031ea9:	5e                   	pop    %esi
c0031eaa:	c9                   	leave  
c0031eab:	c3                   	ret    

c0031eac <memset>:
c0031eac:	55                   	push   %ebp
c0031ead:	89 e5                	mov    %esp,%ebp
c0031eaf:	57                   	push   %edi
c0031eb0:	8b 7d 08             	mov    0x8(%ebp),%edi
c0031eb3:	0f b6 45 0c          	movzbl 0xc(%ebp),%eax
c0031eb7:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0031eba:	fc                   	cld    
c0031ebb:	83 f9 10             	cmp    $0x10,%ecx
c0031ebe:	76 69                	jbe    c0031f29 <memset+0x7d>
c0031ec0:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031ec6:	74 4c                	je     c0031f14 <memset+0x68>
c0031ec8:	88 07                	mov    %al,(%edi)
c0031eca:	47                   	inc    %edi
c0031ecb:	49                   	dec    %ecx
c0031ecc:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031ed2:	74 40                	je     c0031f14 <memset+0x68>
c0031ed4:	88 07                	mov    %al,(%edi)
c0031ed6:	47                   	inc    %edi
c0031ed7:	49                   	dec    %ecx
c0031ed8:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031ede:	74 34                	je     c0031f14 <memset+0x68>
c0031ee0:	88 07                	mov    %al,(%edi)
c0031ee2:	47                   	inc    %edi
c0031ee3:	49                   	dec    %ecx
c0031ee4:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031eea:	74 28                	je     c0031f14 <memset+0x68>
c0031eec:	88 07                	mov    %al,(%edi)
c0031eee:	47                   	inc    %edi
c0031eef:	49                   	dec    %ecx
c0031ef0:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031ef6:	74 1c                	je     c0031f14 <memset+0x68>
c0031ef8:	88 07                	mov    %al,(%edi)
c0031efa:	47                   	inc    %edi
c0031efb:	49                   	dec    %ecx
c0031efc:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031f02:	74 10                	je     c0031f14 <memset+0x68>
c0031f04:	88 07                	mov    %al,(%edi)
c0031f06:	47                   	inc    %edi
c0031f07:	49                   	dec    %ecx
c0031f08:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031f0e:	74 04                	je     c0031f14 <memset+0x68>
c0031f10:	88 07                	mov    %al,(%edi)
c0031f12:	47                   	inc    %edi
c0031f13:	49                   	dec    %ecx
c0031f14:	88 c4                	mov    %al,%ah
c0031f16:	89 c2                	mov    %eax,%edx
c0031f18:	c1 e2 10             	shl    $0x10,%edx
c0031f1b:	09 d0                	or     %edx,%eax
c0031f1d:	89 ca                	mov    %ecx,%edx
c0031f1f:	c1 e9 02             	shr    $0x2,%ecx
c0031f22:	83 e2 03             	and    $0x3,%edx
c0031f25:	f3 ab                	rep stos %eax,%es:(%edi)
c0031f27:	89 d1                	mov    %edx,%ecx
c0031f29:	f3 aa                	rep stos %al,%es:(%edi)
c0031f2b:	8b 45 08             	mov    0x8(%ebp),%eax
c0031f2e:	8d 65 fc             	lea    -0x4(%ebp),%esp
c0031f31:	5f                   	pop    %edi
c0031f32:	c9                   	leave  
c0031f33:	c3                   	ret    
c0031f34:	66 90                	xchg   %ax,%ax
c0031f36:	66 90                	xchg   %ax,%ax
c0031f38:	66 90                	xchg   %ax,%ax
c0031f3a:	66 90                	xchg   %ax,%ax
c0031f3c:	66 90                	xchg   %ax,%ax
c0031f3e:	66 90                	xchg   %ax,%ax

c0031f40 <_vsnprintf_r>:
c0031f40:	55                   	push   %ebp
c0031f41:	89 e5                	mov    %esp,%ebp
c0031f43:	56                   	push   %esi
c0031f44:	53                   	push   %ebx
c0031f45:	83 c4 80             	add    $0xffffff80,%esp
c0031f48:	8b 5d 10             	mov    0x10(%ebp),%ebx
c0031f4b:	8b 75 08             	mov    0x8(%ebp),%esi
c0031f4e:	8b 45 0c             	mov    0xc(%ebp),%eax
c0031f51:	85 db                	test   %ebx,%ebx
c0031f53:	78 63                	js     c0031fb8 <_vsnprintf_r+0x78>
c0031f55:	ba 08 02 00 00       	mov    $0x208,%edx
c0031f5a:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
c0031f5f:	66 89 55 9c          	mov    %dx,-0x64(%ebp)
c0031f63:	8d 53 ff             	lea    -0x1(%ebx),%edx
c0031f66:	89 45 90             	mov    %eax,-0x70(%ebp)
c0031f69:	89 45 a0             	mov    %eax,-0x60(%ebp)
c0031f6c:	31 c0                	xor    %eax,%eax
c0031f6e:	85 db                	test   %ebx,%ebx
c0031f70:	0f 45 c2             	cmovne %edx,%eax
c0031f73:	89 45 98             	mov    %eax,-0x68(%ebp)
c0031f76:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0031f79:	8b 45 18             	mov    0x18(%ebp),%eax
c0031f7c:	89 34 24             	mov    %esi,(%esp)
c0031f7f:	66 89 4d 9e          	mov    %cx,-0x62(%ebp)
c0031f83:	89 44 24 0c          	mov    %eax,0xc(%esp)
c0031f87:	8b 45 14             	mov    0x14(%ebp),%eax
c0031f8a:	89 44 24 08          	mov    %eax,0x8(%esp)
c0031f8e:	8d 45 90             	lea    -0x70(%ebp),%eax
c0031f91:	89 44 24 04          	mov    %eax,0x4(%esp)
c0031f95:	e8 86 00 00 00       	call   c0032020 <_svfprintf_r>
c0031f9a:	83 f8 ff             	cmp    $0xffffffff,%eax
c0031f9d:	7c 11                	jl     c0031fb0 <_vsnprintf_r+0x70>
c0031f9f:	85 db                	test   %ebx,%ebx
c0031fa1:	74 06                	je     c0031fa9 <_vsnprintf_r+0x69>
c0031fa3:	8b 55 90             	mov    -0x70(%ebp),%edx
c0031fa6:	c6 02 00             	movb   $0x0,(%edx)
c0031fa9:	83 ec 80             	sub    $0xffffff80,%esp
c0031fac:	5b                   	pop    %ebx
c0031fad:	5e                   	pop    %esi
c0031fae:	5d                   	pop    %ebp
c0031faf:	c3                   	ret    
c0031fb0:	c7 06 8b 00 00 00    	movl   $0x8b,(%esi)
c0031fb6:	eb e7                	jmp    c0031f9f <_vsnprintf_r+0x5f>
c0031fb8:	c7 06 8b 00 00 00    	movl   $0x8b,(%esi)
c0031fbe:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0031fc3:	eb e4                	jmp    c0031fa9 <_vsnprintf_r+0x69>
c0031fc5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0031fc9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0031fd0 <vsnprintf>:
c0031fd0:	55                   	push   %ebp
c0031fd1:	89 e5                	mov    %esp,%ebp
c0031fd3:	83 ec 28             	sub    $0x28,%esp
c0031fd6:	e8 35 00 00 00       	call   c0032010 <__getreent>
c0031fdb:	8b 55 14             	mov    0x14(%ebp),%edx
c0031fde:	89 54 24 10          	mov    %edx,0x10(%esp)
c0031fe2:	8b 55 10             	mov    0x10(%ebp),%edx
c0031fe5:	89 04 24             	mov    %eax,(%esp)
c0031fe8:	89 54 24 0c          	mov    %edx,0xc(%esp)
c0031fec:	8b 55 0c             	mov    0xc(%ebp),%edx
c0031fef:	89 54 24 08          	mov    %edx,0x8(%esp)
c0031ff3:	8b 55 08             	mov    0x8(%ebp),%edx
c0031ff6:	89 54 24 04          	mov    %edx,0x4(%esp)
c0031ffa:	e8 41 ff ff ff       	call   c0031f40 <_vsnprintf_r>
c0031fff:	c9                   	leave  
c0032000:	c3                   	ret    
c0032001:	66 90                	xchg   %ax,%ax
c0032003:	66 90                	xchg   %ax,%ax
c0032005:	66 90                	xchg   %ax,%ax
c0032007:	66 90                	xchg   %ax,%ax
c0032009:	66 90                	xchg   %ax,%ax
c003200b:	66 90                	xchg   %ax,%ax
c003200d:	66 90                	xchg   %ax,%ax
c003200f:	90                   	nop

c0032010 <__getreent>:
c0032010:	55                   	push   %ebp
c0032011:	a1 40 d0 03 c0       	mov    0xc003d040,%eax
c0032016:	89 e5                	mov    %esp,%ebp
c0032018:	5d                   	pop    %ebp
c0032019:	c3                   	ret    
c003201a:	66 90                	xchg   %ax,%ax
c003201c:	66 90                	xchg   %ax,%ax
c003201e:	66 90                	xchg   %ax,%ax

c0032020 <_svfprintf_r>:
c0032020:	55                   	push   %ebp
c0032021:	89 e5                	mov    %esp,%ebp
c0032023:	57                   	push   %edi
c0032024:	56                   	push   %esi
c0032025:	53                   	push   %ebx
c0032026:	81 ec 1c 01 00 00    	sub    $0x11c,%esp
c003202c:	8b 45 08             	mov    0x8(%ebp),%eax
c003202f:	89 04 24             	mov    %eax,(%esp)
c0032032:	e8 89 33 00 00       	call   c00353c0 <_localeconv_r>
c0032037:	8b 00                	mov    (%eax),%eax
c0032039:	89 04 24             	mov    %eax,(%esp)
c003203c:	89 85 0c ff ff ff    	mov    %eax,-0xf4(%ebp)
c0032042:	e8 d9 4a 00 00       	call   c0036b20 <strlen>
c0032047:	89 85 08 ff ff ff    	mov    %eax,-0xf8(%ebp)
c003204d:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032050:	f6 40 0c 80          	testb  $0x80,0xc(%eax)
c0032054:	74 0b                	je     c0032061 <_svfprintf_r+0x41>
c0032056:	8b 40 10             	mov    0x10(%eax),%eax
c0032059:	85 c0                	test   %eax,%eax
c003205b:	0f 84 62 18 00 00    	je     c00338c3 <_svfprintf_r+0x18a3>
c0032061:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0032064:	8d 55 a7             	lea    -0x59(%ebp),%edx
c0032067:	89 c7                	mov    %eax,%edi
c0032069:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%ebp)
c003206f:	d9 ee                	fldz   
c0032071:	29 d0                	sub    %edx,%eax
c0032073:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%ebp)
c003207a:	00 00 00 
c003207d:	dd 9d 10 ff ff ff    	fstpl  -0xf0(%ebp)
c0032083:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c003208a:	00 00 00 
c003208d:	c7 85 1c ff ff ff 00 	movl   $0x0,-0xe4(%ebp)
c0032094:	00 00 00 
c0032097:	c7 85 18 ff ff ff 00 	movl   $0x0,-0xe8(%ebp)
c003209e:	00 00 00 
c00320a1:	c7 85 04 ff ff ff 00 	movl   $0x0,-0xfc(%ebp)
c00320a8:	00 00 00 
c00320ab:	c7 85 34 ff ff ff 00 	movl   $0x0,-0xcc(%ebp)
c00320b2:	00 00 00 
c00320b5:	89 85 00 ff ff ff    	mov    %eax,-0x100(%ebp)
c00320bb:	8b 45 10             	mov    0x10(%ebp),%eax
c00320be:	8b 5d 10             	mov    0x10(%ebp),%ebx
c00320c1:	0f b6 00             	movzbl (%eax),%eax
c00320c4:	3c 25                	cmp    $0x25,%al
c00320c6:	74 4d                	je     c0032115 <_svfprintf_r+0xf5>
c00320c8:	84 c0                	test   %al,%al
c00320ca:	75 08                	jne    c00320d4 <_svfprintf_r+0xb4>
c00320cc:	eb 47                	jmp    c0032115 <_svfprintf_r+0xf5>
c00320ce:	66 90                	xchg   %ax,%ax
c00320d0:	84 c0                	test   %al,%al
c00320d2:	74 0a                	je     c00320de <_svfprintf_r+0xbe>
c00320d4:	83 c3 01             	add    $0x1,%ebx
c00320d7:	0f b6 03             	movzbl (%ebx),%eax
c00320da:	3c 25                	cmp    $0x25,%al
c00320dc:	75 f2                	jne    c00320d0 <_svfprintf_r+0xb0>
c00320de:	89 de                	mov    %ebx,%esi
c00320e0:	2b 75 10             	sub    0x10(%ebp),%esi
c00320e3:	74 30                	je     c0032115 <_svfprintf_r+0xf5>
c00320e5:	8b 45 10             	mov    0x10(%ebp),%eax
c00320e8:	83 c7 08             	add    $0x8,%edi
c00320eb:	89 77 fc             	mov    %esi,-0x4(%edi)
c00320ee:	01 b5 7c ff ff ff    	add    %esi,-0x84(%ebp)
c00320f4:	89 47 f8             	mov    %eax,-0x8(%edi)
c00320f7:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00320fd:	83 c0 01             	add    $0x1,%eax
c0032100:	83 f8 07             	cmp    $0x7,%eax
c0032103:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032109:	0f 8f 91 00 00 00    	jg     c00321a0 <_svfprintf_r+0x180>
c003210f:	01 b5 34 ff ff ff    	add    %esi,-0xcc(%ebp)
c0032115:	80 3b 00             	cmpb   $0x0,(%ebx)
c0032118:	0f 84 aa 00 00 00    	je     c00321c8 <_svfprintf_r+0x1a8>
c003211e:	8d 43 01             	lea    0x1(%ebx),%eax
c0032121:	be 20 00 00 00       	mov    $0x20,%esi
c0032126:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c003212d:	31 db                	xor    %ebx,%ebx
c003212f:	c7 85 44 ff ff ff ff 	movl   $0xffffffff,-0xbc(%ebp)
c0032136:	ff ff ff 
c0032139:	c7 85 40 ff ff ff 00 	movl   $0x0,-0xc0(%ebp)
c0032140:	00 00 00 
c0032143:	c7 85 4c ff ff ff 00 	movl   $0x0,-0xb4(%ebp)
c003214a:	00 00 00 
c003214d:	8d 48 01             	lea    0x1(%eax),%ecx
c0032150:	0f be 00             	movsbl (%eax),%eax
c0032153:	8d 50 e0             	lea    -0x20(%eax),%edx
c0032156:	83 fa 58             	cmp    $0x58,%edx
c0032159:	0f 87 8f 07 00 00    	ja     c00328ee <_svfprintf_r+0x8ce>
c003215f:	ff 24 95 34 98 03 c0 	jmp    *-0x3ffc67cc(,%edx,4)
c0032166:	66 90                	xchg   %ax,%ax
c0032168:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c003216f:	89 c8                	mov    %ecx,%eax
c0032171:	eb da                	jmp    c003214d <_svfprintf_r+0x12d>
c0032173:	8b 45 14             	mov    0x14(%ebp),%eax
c0032176:	8b 55 14             	mov    0x14(%ebp),%edx
c0032179:	8b 00                	mov    (%eax),%eax
c003217b:	83 c2 04             	add    $0x4,%edx
c003217e:	89 55 14             	mov    %edx,0x14(%ebp)
c0032181:	85 c0                	test   %eax,%eax
c0032183:	89 85 40 ff ff ff    	mov    %eax,-0xc0(%ebp)
c0032189:	79 e4                	jns    c003216f <_svfprintf_r+0x14f>
c003218b:	f7 9d 40 ff ff ff    	negl   -0xc0(%ebp)
c0032191:	83 8d 4c ff ff ff 04 	orl    $0x4,-0xb4(%ebp)
c0032198:	89 c8                	mov    %ecx,%eax
c003219a:	eb b1                	jmp    c003214d <_svfprintf_r+0x12d>
c003219c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00321a0:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00321a6:	89 44 24 08          	mov    %eax,0x8(%esp)
c00321aa:	8b 45 0c             	mov    0xc(%ebp),%eax
c00321ad:	89 44 24 04          	mov    %eax,0x4(%esp)
c00321b1:	8b 45 08             	mov    0x8(%ebp),%eax
c00321b4:	89 04 24             	mov    %eax,(%esp)
c00321b7:	e8 e4 49 00 00       	call   c0036ba0 <__ssprint_r>
c00321bc:	85 c0                	test   %eax,%eax
c00321be:	75 30                	jne    c00321f0 <_svfprintf_r+0x1d0>
c00321c0:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00321c3:	e9 47 ff ff ff       	jmp    c003210f <_svfprintf_r+0xef>
c00321c8:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
c00321ce:	85 c0                	test   %eax,%eax
c00321d0:	74 1e                	je     c00321f0 <_svfprintf_r+0x1d0>
c00321d2:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00321d8:	89 44 24 08          	mov    %eax,0x8(%esp)
c00321dc:	8b 45 0c             	mov    0xc(%ebp),%eax
c00321df:	89 44 24 04          	mov    %eax,0x4(%esp)
c00321e3:	8b 45 08             	mov    0x8(%ebp),%eax
c00321e6:	89 04 24             	mov    %eax,(%esp)
c00321e9:	e8 b2 49 00 00       	call   c0036ba0 <__ssprint_r>
c00321ee:	66 90                	xchg   %ax,%ax
c00321f0:	8b 55 0c             	mov    0xc(%ebp),%edx
c00321f3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c00321f8:	f6 42 0c 40          	testb  $0x40,0xc(%edx)
c00321fc:	0f 44 85 34 ff ff ff 	cmove  -0xcc(%ebp),%eax
c0032203:	81 c4 1c 01 00 00    	add    $0x11c,%esp
c0032209:	5b                   	pop    %ebx
c003220a:	5e                   	pop    %esi
c003220b:	5f                   	pop    %edi
c003220c:	5d                   	pop    %ebp
c003220d:	c3                   	ret    
c003220e:	bb 2b 00 00 00       	mov    $0x2b,%ebx
c0032213:	89 c8                	mov    %ecx,%eax
c0032215:	e9 33 ff ff ff       	jmp    c003214d <_svfprintf_r+0x12d>
c003221a:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032220:	8b 45 14             	mov    0x14(%ebp),%eax
c0032223:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032226:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c003222d:	8d 70 04             	lea    0x4(%eax),%esi
c0032230:	8b 00                	mov    (%eax),%eax
c0032232:	85 c0                	test   %eax,%eax
c0032234:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c003223a:	0f 84 7f 18 00 00    	je     c0033abf <_svfprintf_r+0x1a9f>
c0032240:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c0032246:	85 c0                	test   %eax,%eax
c0032248:	0f 88 b6 17 00 00    	js     c0033a04 <_svfprintf_r+0x19e4>
c003224e:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032252:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c0032258:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c003225f:	00 
c0032260:	89 04 24             	mov    %eax,(%esp)
c0032263:	e8 f8 38 00 00       	call   c0035b60 <memchr>
c0032268:	85 c0                	test   %eax,%eax
c003226a:	0f 84 a0 19 00 00    	je     c0033c10 <_svfprintf_r+0x1bf0>
c0032270:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c0032276:	2b 85 28 ff ff ff    	sub    -0xd8(%ebp),%eax
c003227c:	39 d0                	cmp    %edx,%eax
c003227e:	0f 4f c2             	cmovg  %edx,%eax
c0032281:	89 c2                	mov    %eax,%edx
c0032283:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c003228a:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0032290:	31 c0                	xor    %eax,%eax
c0032292:	85 d2                	test   %edx,%edx
c0032294:	0f 49 c2             	cmovns %edx,%eax
c0032297:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c003229d:	89 75 14             	mov    %esi,0x14(%ebp)
c00322a0:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c00322a7:	00 00 00 
c00322aa:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c00322b1:	00 00 00 
c00322b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00322b8:	84 db                	test   %bl,%bl
c00322ba:	74 07                	je     c00322c3 <_svfprintf_r+0x2a3>
c00322bc:	83 85 48 ff ff ff 01 	addl   $0x1,-0xb8(%ebp)
c00322c3:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c00322c9:	8b b5 4c ff ff ff    	mov    -0xb4(%ebp),%esi
c00322cf:	89 c8                	mov    %ecx,%eax
c00322d1:	89 f2                	mov    %esi,%edx
c00322d3:	83 c0 02             	add    $0x2,%eax
c00322d6:	83 e2 02             	and    $0x2,%edx
c00322d9:	89 95 30 ff ff ff    	mov    %edx,-0xd0(%ebp)
c00322df:	89 f2                	mov    %esi,%edx
c00322e1:	0f 44 c1             	cmove  %ecx,%eax
c00322e4:	81 e2 84 00 00 00    	and    $0x84,%edx
c00322ea:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c00322f0:	89 95 2c ff ff ff    	mov    %edx,-0xd4(%ebp)
c00322f6:	0f 85 1c 06 00 00    	jne    c0032918 <_svfprintf_r+0x8f8>
c00322fc:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
c0032302:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
c0032308:	85 f6                	test   %esi,%esi
c003230a:	0f 8e 08 06 00 00    	jle    c0032918 <_svfprintf_r+0x8f8>
c0032310:	83 fe 10             	cmp    $0x10,%esi
c0032313:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032319:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003231f:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0032325:	7f 11                	jg     c0032338 <_svfprintf_r+0x318>
c0032327:	eb 6b                	jmp    c0032394 <_svfprintf_r+0x374>
c0032329:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0032330:	83 ee 10             	sub    $0x10,%esi
c0032333:	83 fe 10             	cmp    $0x10,%esi
c0032336:	7e 5c                	jle    c0032394 <_svfprintf_r+0x374>
c0032338:	83 c0 01             	add    $0x1,%eax
c003233b:	83 c1 10             	add    $0x10,%ecx
c003233e:	c7 07 a8 99 03 c0    	movl   $0xc00399a8,(%edi)
c0032344:	83 c7 08             	add    $0x8,%edi
c0032347:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c003234e:	83 f8 07             	cmp    $0x7,%eax
c0032351:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032357:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003235d:	7e d1                	jle    c0032330 <_svfprintf_r+0x310>
c003235f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032362:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0032366:	89 44 24 04          	mov    %eax,0x4(%esp)
c003236a:	8b 45 08             	mov    0x8(%ebp),%eax
c003236d:	89 04 24             	mov    %eax,(%esp)
c0032370:	e8 2b 48 00 00       	call   c0036ba0 <__ssprint_r>
c0032375:	85 c0                	test   %eax,%eax
c0032377:	0f 85 73 fe ff ff    	jne    c00321f0 <_svfprintf_r+0x1d0>
c003237d:	83 ee 10             	sub    $0x10,%esi
c0032380:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032386:	83 fe 10             	cmp    $0x10,%esi
c0032389:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003238f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032392:	7f a4                	jg     c0032338 <_svfprintf_r+0x318>
c0032394:	83 c0 01             	add    $0x1,%eax
c0032397:	01 f1                	add    %esi,%ecx
c0032399:	83 f8 07             	cmp    $0x7,%eax
c003239c:	c7 07 a8 99 03 c0    	movl   $0xc00399a8,(%edi)
c00323a2:	89 77 04             	mov    %esi,0x4(%edi)
c00323a5:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00323ab:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00323b1:	0f 8f 16 0e 00 00    	jg     c00331cd <_svfprintf_r+0x11ad>
c00323b7:	83 c7 08             	add    $0x8,%edi
c00323ba:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c00323c1:	e9 58 05 00 00       	jmp    c003291e <_svfprintf_r+0x8fe>
c00323c6:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c00323cd:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c00323d3:	8b 45 14             	mov    0x14(%ebp),%eax
c00323d6:	89 4d 10             	mov    %ecx,0x10(%ebp)
c00323d9:	0f 85 fd 04 00 00    	jne    c00328dc <_svfprintf_r+0x8bc>
c00323df:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c00323e6:	0f 84 f0 04 00 00    	je     c00328dc <_svfprintf_r+0x8bc>
c00323ec:	0f b7 08             	movzwl (%eax),%ecx
c00323ef:	83 c0 04             	add    $0x4,%eax
c00323f2:	89 45 14             	mov    %eax,0x14(%ebp)
c00323f5:	b8 01 00 00 00       	mov    $0x1,%eax
c00323fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032400:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c0032407:	31 db                	xor    %ebx,%ebx
c0032409:	8b b5 4c ff ff ff    	mov    -0xb4(%ebp),%esi
c003240f:	89 f2                	mov    %esi,%edx
c0032411:	80 e2 7f             	and    $0x7f,%dl
c0032414:	83 bd 44 ff ff ff 00 	cmpl   $0x0,-0xbc(%ebp)
c003241b:	0f 48 d6             	cmovs  %esi,%edx
c003241e:	89 95 4c ff ff ff    	mov    %edx,-0xb4(%ebp)
c0032424:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c003242a:	85 d2                	test   %edx,%edx
c003242c:	75 08                	jne    c0032436 <_svfprintf_r+0x416>
c003242e:	85 c9                	test   %ecx,%ecx
c0032430:	0f 84 ea 08 00 00    	je     c0032d20 <_svfprintf_r+0xd00>
c0032436:	3c 01                	cmp    $0x1,%al
c0032438:	0f 84 6a 0d 00 00    	je     c00331a8 <_svfprintf_r+0x1188>
c003243e:	3c 02                	cmp    $0x2,%al
c0032440:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0032443:	0f 85 bf 0b 00 00    	jne    c0033008 <_svfprintf_r+0xfe8>
c0032449:	8b b5 18 ff ff ff    	mov    -0xe8(%ebp),%esi
c003244f:	90                   	nop
c0032450:	89 ca                	mov    %ecx,%edx
c0032452:	83 e8 01             	sub    $0x1,%eax
c0032455:	83 e2 0f             	and    $0xf,%edx
c0032458:	0f b6 14 16          	movzbl (%esi,%edx,1),%edx
c003245c:	c1 e9 04             	shr    $0x4,%ecx
c003245f:	85 c9                	test   %ecx,%ecx
c0032461:	88 10                	mov    %dl,(%eax)
c0032463:	75 eb                	jne    c0032450 <_svfprintf_r+0x430>
c0032465:	8d 55 a8             	lea    -0x58(%ebp),%edx
c0032468:	29 c2                	sub    %eax,%edx
c003246a:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0032470:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0032476:	66 90                	xchg   %ax,%ax
c0032478:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c003247e:	8b 95 38 ff ff ff    	mov    -0xc8(%ebp),%edx
c0032484:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c003248b:	00 00 00 
c003248e:	39 c2                	cmp    %eax,%edx
c0032490:	0f 4d c2             	cmovge %edx,%eax
c0032493:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0032499:	e9 1a fe ff ff       	jmp    c00322b8 <_svfprintf_r+0x298>
c003249e:	84 db                	test   %bl,%bl
c00324a0:	89 c8                	mov    %ecx,%eax
c00324a2:	0f 44 de             	cmove  %esi,%ebx
c00324a5:	e9 a3 fc ff ff       	jmp    c003214d <_svfprintf_r+0x12d>
c00324aa:	83 8d 4c ff ff ff 01 	orl    $0x1,-0xb4(%ebp)
c00324b1:	89 c8                	mov    %ecx,%eax
c00324b3:	e9 95 fc ff ff       	jmp    c003214d <_svfprintf_r+0x12d>
c00324b8:	81 8d 4c ff ff ff 80 	orl    $0x80,-0xb4(%ebp)
c00324bf:	00 00 00 
c00324c2:	89 c8                	mov    %ecx,%eax
c00324c4:	e9 84 fc ff ff       	jmp    c003214d <_svfprintf_r+0x12d>
c00324c9:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c00324cf:	8d 50 d0             	lea    -0x30(%eax),%edx
c00324d2:	31 ff                	xor    %edi,%edi
c00324d4:	c7 85 40 ff ff ff 00 	movl   $0x0,-0xc0(%ebp)
c00324db:	00 00 00 
c00324de:	66 90                	xchg   %ax,%ax
c00324e0:	8d 04 bf             	lea    (%edi,%edi,4),%eax
c00324e3:	83 c1 01             	add    $0x1,%ecx
c00324e6:	8d 3c 42             	lea    (%edx,%eax,2),%edi
c00324e9:	0f be 41 ff          	movsbl -0x1(%ecx),%eax
c00324ed:	8d 50 d0             	lea    -0x30(%eax),%edx
c00324f0:	83 fa 09             	cmp    $0x9,%edx
c00324f3:	76 eb                	jbe    c00324e0 <_svfprintf_r+0x4c0>
c00324f5:	89 bd 40 ff ff ff    	mov    %edi,-0xc0(%ebp)
c00324fb:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
c0032501:	e9 4d fc ff ff       	jmp    c0032153 <_svfprintf_r+0x133>
c0032506:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c003250d:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0032514:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c003251a:	8b 45 14             	mov    0x14(%ebp),%eax
c003251d:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032520:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c0032526:	0f 85 61 02 00 00    	jne    c003278d <_svfprintf_r+0x76d>
c003252c:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c0032533:	0f 84 54 02 00 00    	je     c003278d <_svfprintf_r+0x76d>
c0032539:	0f bf 08             	movswl (%eax),%ecx
c003253c:	83 c0 04             	add    $0x4,%eax
c003253f:	89 45 14             	mov    %eax,0x14(%ebp)
c0032542:	85 c9                	test   %ecx,%ecx
c0032544:	0f 88 53 02 00 00    	js     c003279d <_svfprintf_r+0x77d>
c003254a:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0032551:	b8 01 00 00 00       	mov    $0x1,%eax
c0032556:	e9 ae fe ff ff       	jmp    c0032409 <_svfprintf_r+0x3e9>
c003255b:	f6 85 4c ff ff ff 08 	testb  $0x8,-0xb4(%ebp)
c0032562:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032568:	8b 45 14             	mov    0x14(%ebp),%eax
c003256b:	89 4d 10             	mov    %ecx,0x10(%ebp)
c003256e:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c0032574:	0f 84 15 10 00 00    	je     c003358f <_svfprintf_r+0x156f>
c003257a:	db 28                	fldt   (%eax)
c003257c:	83 c0 0c             	add    $0xc,%eax
c003257f:	89 45 14             	mov    %eax,0x14(%ebp)
c0032582:	dd 9d 10 ff ff ff    	fstpl  -0xf0(%ebp)
c0032588:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c003258e:	dd 1c 24             	fstpl  (%esp)
c0032591:	e8 aa 44 00 00       	call   c0036a40 <__fpclassifyd>
c0032596:	83 f8 01             	cmp    $0x1,%eax
c0032599:	0f 85 82 0f 00 00    	jne    c0033521 <_svfprintf_r+0x1501>
c003259f:	d9 ee                	fldz   
c00325a1:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c00325a7:	d9 c9                	fxch   %st(1)
c00325a9:	df e9                	fucomip %st(1),%st
c00325ab:	dd d8                	fstp   %st(0)
c00325ad:	0f 87 59 15 00 00    	ja     c0033b0c <_svfprintf_r+0x1aec>
c00325b3:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c00325ba:	83 bd 24 ff ff ff 47 	cmpl   $0x47,-0xdc(%ebp)
c00325c1:	ba f6 97 03 c0       	mov    $0xc00397f6,%edx
c00325c6:	b8 fa 97 03 c0       	mov    $0xc00397fa,%eax
c00325cb:	c7 85 48 ff ff ff 03 	movl   $0x3,-0xb8(%ebp)
c00325d2:	00 00 00 
c00325d5:	0f 4e c2             	cmovle %edx,%eax
c00325d8:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c00325de:	81 a5 4c ff ff ff 7f 	andl   $0xffffff7f,-0xb4(%ebp)
c00325e5:	ff ff ff 
c00325e8:	c7 85 38 ff ff ff 03 	movl   $0x3,-0xc8(%ebp)
c00325ef:	00 00 00 
c00325f2:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c00325f9:	00 00 00 
c00325fc:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0032603:	00 00 00 
c0032606:	e9 ad fc ff ff       	jmp    c00322b8 <_svfprintf_r+0x298>
c003260b:	8d 41 01             	lea    0x1(%ecx),%eax
c003260e:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0032614:	0f be 01             	movsbl (%ecx),%eax
c0032617:	83 f8 2a             	cmp    $0x2a,%eax
c003261a:	0f 84 84 18 00 00    	je     c0033ea4 <_svfprintf_r+0x1e84>
c0032620:	8d 50 d0             	lea    -0x30(%eax),%edx
c0032623:	31 c9                	xor    %ecx,%ecx
c0032625:	83 fa 09             	cmp    $0x9,%edx
c0032628:	0f 87 a8 16 00 00    	ja     c0033cd6 <_svfprintf_r+0x1cb6>
c003262e:	89 bd 44 ff ff ff    	mov    %edi,-0xbc(%ebp)
c0032634:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
c003263a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032640:	8d 04 89             	lea    (%ecx,%ecx,4),%eax
c0032643:	83 c7 01             	add    $0x1,%edi
c0032646:	8d 0c 42             	lea    (%edx,%eax,2),%ecx
c0032649:	0f be 47 ff          	movsbl -0x1(%edi),%eax
c003264d:	8d 50 d0             	lea    -0x30(%eax),%edx
c0032650:	83 fa 09             	cmp    $0x9,%edx
c0032653:	76 eb                	jbe    c0032640 <_svfprintf_r+0x620>
c0032655:	85 c9                	test   %ecx,%ecx
c0032657:	89 ca                	mov    %ecx,%edx
c0032659:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
c003265e:	0f 48 d1             	cmovs  %ecx,%edx
c0032661:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c0032667:	8b bd 44 ff ff ff    	mov    -0xbc(%ebp),%edi
c003266d:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c0032673:	89 95 44 ff ff ff    	mov    %edx,-0xbc(%ebp)
c0032679:	e9 d5 fa ff ff       	jmp    c0032153 <_svfprintf_r+0x133>
c003267e:	8b 45 14             	mov    0x14(%ebp),%eax
c0032681:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032684:	83 8d 4c ff ff ff 02 	orl    $0x2,-0xb4(%ebp)
c003268b:	8b 08                	mov    (%eax),%ecx
c003268d:	83 c0 04             	add    $0x4,%eax
c0032690:	89 45 14             	mov    %eax,0x14(%ebp)
c0032693:	b8 02 00 00 00       	mov    $0x2,%eax
c0032698:	c6 85 5a ff ff ff 30 	movb   $0x30,-0xa6(%ebp)
c003269f:	c6 85 5b ff ff ff 78 	movb   $0x78,-0xa5(%ebp)
c00326a6:	c7 85 18 ff ff ff 17 	movl   $0xc0039817,-0xe8(%ebp)
c00326ad:	98 03 c0 
c00326b0:	c7 85 24 ff ff ff 78 	movl   $0x78,-0xdc(%ebp)
c00326b7:	00 00 00 
c00326ba:	e9 41 fd ff ff       	jmp    c0032400 <_svfprintf_r+0x3e0>
c00326bf:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c00326c6:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c00326cc:	8b 45 14             	mov    0x14(%ebp),%eax
c00326cf:	89 4d 10             	mov    %ecx,0x10(%ebp)
c00326d2:	0f 85 87 00 00 00    	jne    c003275f <_svfprintf_r+0x73f>
c00326d8:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c00326df:	74 7e                	je     c003275f <_svfprintf_r+0x73f>
c00326e1:	0f b7 08             	movzwl (%eax),%ecx
c00326e4:	83 c0 04             	add    $0x4,%eax
c00326e7:	89 45 14             	mov    %eax,0x14(%ebp)
c00326ea:	31 c0                	xor    %eax,%eax
c00326ec:	e9 0f fd ff ff       	jmp    c0032400 <_svfprintf_r+0x3e0>
c00326f1:	83 8d 4c ff ff ff 08 	orl    $0x8,-0xb4(%ebp)
c00326f8:	89 c8                	mov    %ecx,%eax
c00326fa:	e9 4e fa ff ff       	jmp    c003214d <_svfprintf_r+0x12d>
c00326ff:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0032706:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032709:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c003270f:	0f 85 97 0b 00 00    	jne    c00332ac <_svfprintf_r+0x128c>
c0032715:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c003271c:	0f 84 8a 0b 00 00    	je     c00332ac <_svfprintf_r+0x128c>
c0032722:	8b 45 14             	mov    0x14(%ebp),%eax
c0032725:	0f b7 95 34 ff ff ff 	movzwl -0xcc(%ebp),%edx
c003272c:	8b 00                	mov    (%eax),%eax
c003272e:	66 89 10             	mov    %dx,(%eax)
c0032731:	8b 45 14             	mov    0x14(%ebp),%eax
c0032734:	83 c0 04             	add    $0x4,%eax
c0032737:	89 45 14             	mov    %eax,0x14(%ebp)
c003273a:	e9 7c f9 ff ff       	jmp    c00320bb <_svfprintf_r+0x9b>
c003273f:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c0032746:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c003274d:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032753:	8b 45 14             	mov    0x14(%ebp),%eax
c0032756:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032759:	0f 84 79 ff ff ff    	je     c00326d8 <_svfprintf_r+0x6b8>
c003275f:	8b 08                	mov    (%eax),%ecx
c0032761:	83 c0 04             	add    $0x4,%eax
c0032764:	89 45 14             	mov    %eax,0x14(%ebp)
c0032767:	31 c0                	xor    %eax,%eax
c0032769:	e9 92 fc ff ff       	jmp    c0032400 <_svfprintf_r+0x3e0>
c003276e:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0032775:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c003277b:	8b 45 14             	mov    0x14(%ebp),%eax
c003277e:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032781:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c0032787:	0f 84 9f fd ff ff    	je     c003252c <_svfprintf_r+0x50c>
c003278d:	8b 08                	mov    (%eax),%ecx
c003278f:	83 c0 04             	add    $0x4,%eax
c0032792:	89 45 14             	mov    %eax,0x14(%ebp)
c0032795:	85 c9                	test   %ecx,%ecx
c0032797:	0f 89 ad fd ff ff    	jns    c003254a <_svfprintf_r+0x52a>
c003279d:	f7 d9                	neg    %ecx
c003279f:	bb 2d 00 00 00       	mov    $0x2d,%ebx
c00327a4:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
c00327ab:	b8 01 00 00 00       	mov    $0x1,%eax
c00327b0:	e9 54 fc ff ff       	jmp    c0032409 <_svfprintf_r+0x3e9>
c00327b5:	83 8d 4c ff ff ff 40 	orl    $0x40,-0xb4(%ebp)
c00327bc:	89 c8                	mov    %ecx,%eax
c00327be:	e9 8a f9 ff ff       	jmp    c003214d <_svfprintf_r+0x12d>
c00327c3:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c00327ca:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c00327d0:	8b 45 14             	mov    0x14(%ebp),%eax
c00327d3:	89 4d 10             	mov    %ecx,0x10(%ebp)
c00327d6:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c00327dc:	c7 85 18 ff ff ff 17 	movl   $0xc0039817,-0xe8(%ebp)
c00327e3:	98 03 c0 
c00327e6:	75 71                	jne    c0032859 <_svfprintf_r+0x839>
c00327e8:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c00327ef:	74 68                	je     c0032859 <_svfprintf_r+0x839>
c00327f1:	0f b7 08             	movzwl (%eax),%ecx
c00327f4:	83 c0 04             	add    $0x4,%eax
c00327f7:	89 45 14             	mov    %eax,0x14(%ebp)
c00327fa:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0032801:	b8 02 00 00 00       	mov    $0x2,%eax
c0032806:	0f 84 f4 fb ff ff    	je     c0032400 <_svfprintf_r+0x3e0>
c003280c:	85 c9                	test   %ecx,%ecx
c003280e:	0f 84 ec fb ff ff    	je     c0032400 <_svfprintf_r+0x3e0>
c0032814:	0f b6 95 24 ff ff ff 	movzbl -0xdc(%ebp),%edx
c003281b:	c6 85 5a ff ff ff 30 	movb   $0x30,-0xa6(%ebp)
c0032822:	83 8d 4c ff ff ff 02 	orl    $0x2,-0xb4(%ebp)
c0032829:	88 95 5b ff ff ff    	mov    %dl,-0xa5(%ebp)
c003282f:	e9 cc fb ff ff       	jmp    c0032400 <_svfprintf_r+0x3e0>
c0032834:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c003283b:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032841:	8b 45 14             	mov    0x14(%ebp),%eax
c0032844:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032847:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c003284d:	c7 85 18 ff ff ff 06 	movl   $0xc0039806,-0xe8(%ebp)
c0032854:	98 03 c0 
c0032857:	74 8f                	je     c00327e8 <_svfprintf_r+0x7c8>
c0032859:	8b 08                	mov    (%eax),%ecx
c003285b:	83 c0 04             	add    $0x4,%eax
c003285e:	89 45 14             	mov    %eax,0x14(%ebp)
c0032861:	eb 97                	jmp    c00327fa <_svfprintf_r+0x7da>
c0032863:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032869:	8b 45 14             	mov    0x14(%ebp),%eax
c003286c:	89 4d 10             	mov    %ecx,0x10(%ebp)
c003286f:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c0032876:	8b 00                	mov    (%eax),%eax
c0032878:	88 45 80             	mov    %al,-0x80(%ebp)
c003287b:	8b 45 14             	mov    0x14(%ebp),%eax
c003287e:	83 c0 04             	add    $0x4,%eax
c0032881:	89 45 14             	mov    %eax,0x14(%ebp)
c0032884:	8d 45 80             	lea    -0x80(%ebp),%eax
c0032887:	31 db                	xor    %ebx,%ebx
c0032889:	c7 85 48 ff ff ff 01 	movl   $0x1,-0xb8(%ebp)
c0032890:	00 00 00 
c0032893:	c7 85 38 ff ff ff 01 	movl   $0x1,-0xc8(%ebp)
c003289a:	00 00 00 
c003289d:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c00328a4:	00 00 00 
c00328a7:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c00328ae:	00 00 00 
c00328b1:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c00328b7:	e9 07 fa ff ff       	jmp    c00322c3 <_svfprintf_r+0x2a3>
c00328bc:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c00328c3:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c00328ca:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c00328d0:	8b 45 14             	mov    0x14(%ebp),%eax
c00328d3:	89 4d 10             	mov    %ecx,0x10(%ebp)
c00328d6:	0f 84 03 fb ff ff    	je     c00323df <_svfprintf_r+0x3bf>
c00328dc:	8b 08                	mov    (%eax),%ecx
c00328de:	83 c0 04             	add    $0x4,%eax
c00328e1:	89 45 14             	mov    %eax,0x14(%ebp)
c00328e4:	b8 01 00 00 00       	mov    $0x1,%eax
c00328e9:	e9 12 fb ff ff       	jmp    c0032400 <_svfprintf_r+0x3e0>
c00328ee:	85 c0                	test   %eax,%eax
c00328f0:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c00328f6:	89 4d 10             	mov    %ecx,0x10(%ebp)
c00328f9:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c00328ff:	0f 84 c3 f8 ff ff    	je     c00321c8 <_svfprintf_r+0x1a8>
c0032905:	88 45 80             	mov    %al,-0x80(%ebp)
c0032908:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c003290f:	e9 70 ff ff ff       	jmp    c0032884 <_svfprintf_r+0x864>
c0032914:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032918:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c003291e:	84 db                	test   %bl,%bl
c0032920:	74 33                	je     c0032955 <_svfprintf_r+0x935>
c0032922:	8d 85 59 ff ff ff    	lea    -0xa7(%ebp),%eax
c0032928:	83 c1 01             	add    $0x1,%ecx
c003292b:	89 07                	mov    %eax,(%edi)
c003292d:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032933:	83 c7 08             	add    $0x8,%edi
c0032936:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
c003293d:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032943:	83 c0 01             	add    $0x1,%eax
c0032946:	83 f8 07             	cmp    $0x7,%eax
c0032949:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003294f:	0f 8f 7b 06 00 00    	jg     c0032fd0 <_svfprintf_r+0xfb0>
c0032955:	8b 9d 30 ff ff ff    	mov    -0xd0(%ebp),%ebx
c003295b:	85 db                	test   %ebx,%ebx
c003295d:	74 33                	je     c0032992 <_svfprintf_r+0x972>
c003295f:	8d 85 5a ff ff ff    	lea    -0xa6(%ebp),%eax
c0032965:	83 c1 02             	add    $0x2,%ecx
c0032968:	89 07                	mov    %eax,(%edi)
c003296a:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032970:	83 c7 08             	add    $0x8,%edi
c0032973:	c7 47 fc 02 00 00 00 	movl   $0x2,-0x4(%edi)
c003297a:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032980:	83 c0 01             	add    $0x1,%eax
c0032983:	83 f8 07             	cmp    $0x7,%eax
c0032986:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003298c:	0f 8f 06 06 00 00    	jg     c0032f98 <_svfprintf_r+0xf78>
c0032992:	81 bd 2c ff ff ff 80 	cmpl   $0x80,-0xd4(%ebp)
c0032999:	00 00 00 
c003299c:	0f 84 c6 03 00 00    	je     c0032d68 <_svfprintf_r+0xd48>
c00329a2:	8b b5 44 ff ff ff    	mov    -0xbc(%ebp),%esi
c00329a8:	2b b5 38 ff ff ff    	sub    -0xc8(%ebp),%esi
c00329ae:	85 f6                	test   %esi,%esi
c00329b0:	0f 8e d2 00 00 00    	jle    c0032a88 <_svfprintf_r+0xa68>
c00329b6:	83 fe 10             	cmp    $0x10,%esi
c00329b9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00329bf:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c00329c5:	7f 11                	jg     c00329d8 <_svfprintf_r+0x9b8>
c00329c7:	eb 6b                	jmp    c0032a34 <_svfprintf_r+0xa14>
c00329c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00329d0:	83 ee 10             	sub    $0x10,%esi
c00329d3:	83 fe 10             	cmp    $0x10,%esi
c00329d6:	7e 5c                	jle    c0032a34 <_svfprintf_r+0xa14>
c00329d8:	83 c0 01             	add    $0x1,%eax
c00329db:	83 c1 10             	add    $0x10,%ecx
c00329de:	c7 07 98 99 03 c0    	movl   $0xc0039998,(%edi)
c00329e4:	83 c7 08             	add    $0x8,%edi
c00329e7:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c00329ee:	83 f8 07             	cmp    $0x7,%eax
c00329f1:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00329f7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00329fd:	7e d1                	jle    c00329d0 <_svfprintf_r+0x9b0>
c00329ff:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032a02:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0032a06:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032a0a:	8b 45 08             	mov    0x8(%ebp),%eax
c0032a0d:	89 04 24             	mov    %eax,(%esp)
c0032a10:	e8 8b 41 00 00       	call   c0036ba0 <__ssprint_r>
c0032a15:	85 c0                	test   %eax,%eax
c0032a17:	0f 85 d3 f7 ff ff    	jne    c00321f0 <_svfprintf_r+0x1d0>
c0032a1d:	83 ee 10             	sub    $0x10,%esi
c0032a20:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032a26:	83 fe 10             	cmp    $0x10,%esi
c0032a29:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032a2f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032a32:	7f a4                	jg     c00329d8 <_svfprintf_r+0x9b8>
c0032a34:	83 c0 01             	add    $0x1,%eax
c0032a37:	01 f1                	add    %esi,%ecx
c0032a39:	c7 07 98 99 03 c0    	movl   $0xc0039998,(%edi)
c0032a3f:	83 c7 08             	add    $0x8,%edi
c0032a42:	89 77 fc             	mov    %esi,-0x4(%edi)
c0032a45:	83 f8 07             	cmp    $0x7,%eax
c0032a48:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032a4e:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032a54:	7e 32                	jle    c0032a88 <_svfprintf_r+0xa68>
c0032a56:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032a5c:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032a60:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032a63:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032a67:	8b 45 08             	mov    0x8(%ebp),%eax
c0032a6a:	89 04 24             	mov    %eax,(%esp)
c0032a6d:	e8 2e 41 00 00       	call   c0036ba0 <__ssprint_r>
c0032a72:	85 c0                	test   %eax,%eax
c0032a74:	0f 85 76 f7 ff ff    	jne    c00321f0 <_svfprintf_r+0x1d0>
c0032a7a:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032a80:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032a83:	90                   	nop
c0032a84:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032a88:	f7 85 4c ff ff ff 00 	testl  $0x100,-0xb4(%ebp)
c0032a8f:	01 00 00 
c0032a92:	0f 85 50 01 00 00    	jne    c0032be8 <_svfprintf_r+0xbc8>
c0032a98:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c0032a9e:	89 07                	mov    %eax,(%edi)
c0032aa0:	8b 85 38 ff ff ff    	mov    -0xc8(%ebp),%eax
c0032aa6:	01 c1                	add    %eax,%ecx
c0032aa8:	89 47 04             	mov    %eax,0x4(%edi)
c0032aab:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032ab1:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032ab7:	83 c0 01             	add    $0x1,%eax
c0032aba:	83 f8 07             	cmp    $0x7,%eax
c0032abd:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032ac3:	0f 8f 6a 04 00 00    	jg     c0032f33 <_svfprintf_r+0xf13>
c0032ac9:	83 c7 08             	add    $0x8,%edi
c0032acc:	f6 85 4c ff ff ff 04 	testb  $0x4,-0xb4(%ebp)
c0032ad3:	0f 84 d7 00 00 00    	je     c0032bb0 <_svfprintf_r+0xb90>
c0032ad9:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
c0032adf:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
c0032ae5:	85 f6                	test   %esi,%esi
c0032ae7:	0f 8e c3 00 00 00    	jle    c0032bb0 <_svfprintf_r+0xb90>
c0032aed:	83 fe 10             	cmp    $0x10,%esi
c0032af0:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032af6:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0032afc:	7f 0a                	jg     c0032b08 <_svfprintf_r+0xae8>
c0032afe:	eb 64                	jmp    c0032b64 <_svfprintf_r+0xb44>
c0032b00:	83 ee 10             	sub    $0x10,%esi
c0032b03:	83 fe 10             	cmp    $0x10,%esi
c0032b06:	7e 5c                	jle    c0032b64 <_svfprintf_r+0xb44>
c0032b08:	83 c0 01             	add    $0x1,%eax
c0032b0b:	83 c1 10             	add    $0x10,%ecx
c0032b0e:	c7 07 a8 99 03 c0    	movl   $0xc00399a8,(%edi)
c0032b14:	83 c7 08             	add    $0x8,%edi
c0032b17:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0032b1e:	83 f8 07             	cmp    $0x7,%eax
c0032b21:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032b27:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032b2d:	7e d1                	jle    c0032b00 <_svfprintf_r+0xae0>
c0032b2f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032b32:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0032b36:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032b3a:	8b 45 08             	mov    0x8(%ebp),%eax
c0032b3d:	89 04 24             	mov    %eax,(%esp)
c0032b40:	e8 5b 40 00 00       	call   c0036ba0 <__ssprint_r>
c0032b45:	85 c0                	test   %eax,%eax
c0032b47:	0f 85 a3 f6 ff ff    	jne    c00321f0 <_svfprintf_r+0x1d0>
c0032b4d:	83 ee 10             	sub    $0x10,%esi
c0032b50:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032b56:	83 fe 10             	cmp    $0x10,%esi
c0032b59:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032b5f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032b62:	7f a4                	jg     c0032b08 <_svfprintf_r+0xae8>
c0032b64:	83 c0 01             	add    $0x1,%eax
c0032b67:	01 f1                	add    %esi,%ecx
c0032b69:	83 f8 07             	cmp    $0x7,%eax
c0032b6c:	c7 07 a8 99 03 c0    	movl   $0xc00399a8,(%edi)
c0032b72:	89 77 04             	mov    %esi,0x4(%edi)
c0032b75:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032b7b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032b81:	7e 2d                	jle    c0032bb0 <_svfprintf_r+0xb90>
c0032b83:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032b89:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032b8d:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032b90:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032b94:	8b 45 08             	mov    0x8(%ebp),%eax
c0032b97:	89 04 24             	mov    %eax,(%esp)
c0032b9a:	e8 01 40 00 00       	call   c0036ba0 <__ssprint_r>
c0032b9f:	85 c0                	test   %eax,%eax
c0032ba1:	0f 85 49 f6 ff ff    	jne    c00321f0 <_svfprintf_r+0x1d0>
c0032ba7:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032bad:	8d 76 00             	lea    0x0(%esi),%esi
c0032bb0:	8b 85 40 ff ff ff    	mov    -0xc0(%ebp),%eax
c0032bb6:	8b 95 48 ff ff ff    	mov    -0xb8(%ebp),%edx
c0032bbc:	39 c2                	cmp    %eax,%edx
c0032bbe:	0f 4d c2             	cmovge %edx,%eax
c0032bc1:	01 85 34 ff ff ff    	add    %eax,-0xcc(%ebp)
c0032bc7:	85 c9                	test   %ecx,%ecx
c0032bc9:	0f 85 99 03 00 00    	jne    c0032f68 <_svfprintf_r+0xf48>
c0032bcf:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c0032bd6:	00 00 00 
c0032bd9:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032bdc:	e9 da f4 ff ff       	jmp    c00320bb <_svfprintf_r+0x9b>
c0032be1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0032be8:	83 bd 24 ff ff ff 65 	cmpl   $0x65,-0xdc(%ebp)
c0032bef:	0f 8e 5b 02 00 00    	jle    c0032e50 <_svfprintf_r+0xe30>
c0032bf5:	d9 ee                	fldz   
c0032bf7:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0032bfd:	df e9                	fucomip %st(1),%st
c0032bff:	dd d8                	fstp   %st(0)
c0032c01:	0f 8a 59 04 00 00    	jp     c0033060 <_svfprintf_r+0x1040>
c0032c07:	0f 85 53 04 00 00    	jne    c0033060 <_svfprintf_r+0x1040>
c0032c0d:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032c13:	83 c1 01             	add    $0x1,%ecx
c0032c16:	83 c7 08             	add    $0x8,%edi
c0032c19:	c7 47 f8 2f 98 03 c0 	movl   $0xc003982f,-0x8(%edi)
c0032c20:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
c0032c27:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032c2d:	83 c0 01             	add    $0x1,%eax
c0032c30:	83 f8 07             	cmp    $0x7,%eax
c0032c33:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032c39:	0f 8f 63 09 00 00    	jg     c00335a2 <_svfprintf_r+0x1582>
c0032c3f:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
c0032c45:	39 85 5c ff ff ff    	cmp    %eax,-0xa4(%ebp)
c0032c4b:	7c 0d                	jl     c0032c5a <_svfprintf_r+0xc3a>
c0032c4d:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0032c54:	0f 84 72 fe ff ff    	je     c0032acc <_svfprintf_r+0xaac>
c0032c5a:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
c0032c60:	83 c7 08             	add    $0x8,%edi
c0032c63:	89 47 f8             	mov    %eax,-0x8(%edi)
c0032c66:	8b 85 08 ff ff ff    	mov    -0xf8(%ebp),%eax
c0032c6c:	89 47 fc             	mov    %eax,-0x4(%edi)
c0032c6f:	01 c1                	add    %eax,%ecx
c0032c71:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032c77:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032c7d:	83 c0 01             	add    $0x1,%eax
c0032c80:	83 f8 07             	cmp    $0x7,%eax
c0032c83:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032c89:	0f 8f dc 0b 00 00    	jg     c003386b <_svfprintf_r+0x184b>
c0032c8f:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
c0032c95:	8d 70 ff             	lea    -0x1(%eax),%esi
c0032c98:	85 f6                	test   %esi,%esi
c0032c9a:	0f 8e 2c fe ff ff    	jle    c0032acc <_svfprintf_r+0xaac>
c0032ca0:	83 fe 10             	cmp    $0x10,%esi
c0032ca3:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032ca9:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0032caf:	7f 13                	jg     c0032cc4 <_svfprintf_r+0xca4>
c0032cb1:	e9 e6 05 00 00       	jmp    c003329c <_svfprintf_r+0x127c>
c0032cb6:	66 90                	xchg   %ax,%ax
c0032cb8:	83 ee 10             	sub    $0x10,%esi
c0032cbb:	83 fe 10             	cmp    $0x10,%esi
c0032cbe:	0f 8e d8 05 00 00    	jle    c003329c <_svfprintf_r+0x127c>
c0032cc4:	83 c0 01             	add    $0x1,%eax
c0032cc7:	83 c1 10             	add    $0x10,%ecx
c0032cca:	c7 07 98 99 03 c0    	movl   $0xc0039998,(%edi)
c0032cd0:	83 c7 08             	add    $0x8,%edi
c0032cd3:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0032cda:	83 f8 07             	cmp    $0x7,%eax
c0032cdd:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032ce3:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032ce9:	7e cd                	jle    c0032cb8 <_svfprintf_r+0xc98>
c0032ceb:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032cee:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0032cf2:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032cf6:	8b 45 08             	mov    0x8(%ebp),%eax
c0032cf9:	89 04 24             	mov    %eax,(%esp)
c0032cfc:	e8 9f 3e 00 00       	call   c0036ba0 <__ssprint_r>
c0032d01:	85 c0                	test   %eax,%eax
c0032d03:	0f 85 e7 f4 ff ff    	jne    c00321f0 <_svfprintf_r+0x1d0>
c0032d09:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032d0f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032d12:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032d18:	eb 9e                	jmp    c0032cb8 <_svfprintf_r+0xc98>
c0032d1a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032d20:	84 c0                	test   %al,%al
c0032d22:	75 2c                	jne    c0032d50 <_svfprintf_r+0xd30>
c0032d24:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0032d2b:	74 23                	je     c0032d50 <_svfprintf_r+0xd30>
c0032d2d:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
c0032d33:	c6 45 a7 30          	movb   $0x30,-0x59(%ebp)
c0032d37:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0032d3d:	8d 45 a7             	lea    -0x59(%ebp),%eax
c0032d40:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0032d46:	e9 2d f7 ff ff       	jmp    c0032478 <_svfprintf_r+0x458>
c0032d4b:	90                   	nop
c0032d4c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032d50:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0032d53:	c7 85 38 ff ff ff 00 	movl   $0x0,-0xc8(%ebp)
c0032d5a:	00 00 00 
c0032d5d:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0032d63:	e9 10 f7 ff ff       	jmp    c0032478 <_svfprintf_r+0x458>
c0032d68:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
c0032d6e:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
c0032d74:	85 f6                	test   %esi,%esi
c0032d76:	0f 8e 26 fc ff ff    	jle    c00329a2 <_svfprintf_r+0x982>
c0032d7c:	83 fe 10             	cmp    $0x10,%esi
c0032d7f:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032d85:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0032d8b:	7f 0b                	jg     c0032d98 <_svfprintf_r+0xd78>
c0032d8d:	eb 65                	jmp    c0032df4 <_svfprintf_r+0xdd4>
c0032d8f:	90                   	nop
c0032d90:	83 ee 10             	sub    $0x10,%esi
c0032d93:	83 fe 10             	cmp    $0x10,%esi
c0032d96:	7e 5c                	jle    c0032df4 <_svfprintf_r+0xdd4>
c0032d98:	83 c0 01             	add    $0x1,%eax
c0032d9b:	83 c1 10             	add    $0x10,%ecx
c0032d9e:	c7 07 98 99 03 c0    	movl   $0xc0039998,(%edi)
c0032da4:	83 c7 08             	add    $0x8,%edi
c0032da7:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0032dae:	83 f8 07             	cmp    $0x7,%eax
c0032db1:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032db7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032dbd:	7e d1                	jle    c0032d90 <_svfprintf_r+0xd70>
c0032dbf:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032dc2:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0032dc6:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032dca:	8b 45 08             	mov    0x8(%ebp),%eax
c0032dcd:	89 04 24             	mov    %eax,(%esp)
c0032dd0:	e8 cb 3d 00 00       	call   c0036ba0 <__ssprint_r>
c0032dd5:	85 c0                	test   %eax,%eax
c0032dd7:	0f 85 13 f4 ff ff    	jne    c00321f0 <_svfprintf_r+0x1d0>
c0032ddd:	83 ee 10             	sub    $0x10,%esi
c0032de0:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032de6:	83 fe 10             	cmp    $0x10,%esi
c0032de9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032def:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032df2:	7f a4                	jg     c0032d98 <_svfprintf_r+0xd78>
c0032df4:	83 c0 01             	add    $0x1,%eax
c0032df7:	01 f1                	add    %esi,%ecx
c0032df9:	c7 07 98 99 03 c0    	movl   $0xc0039998,(%edi)
c0032dff:	83 c7 08             	add    $0x8,%edi
c0032e02:	89 77 fc             	mov    %esi,-0x4(%edi)
c0032e05:	83 f8 07             	cmp    $0x7,%eax
c0032e08:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032e0e:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032e14:	0f 8e 88 fb ff ff    	jle    c00329a2 <_svfprintf_r+0x982>
c0032e1a:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032e20:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032e24:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032e27:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032e2b:	8b 45 08             	mov    0x8(%ebp),%eax
c0032e2e:	89 04 24             	mov    %eax,(%esp)
c0032e31:	e8 6a 3d 00 00       	call   c0036ba0 <__ssprint_r>
c0032e36:	85 c0                	test   %eax,%eax
c0032e38:	0f 85 b2 f3 ff ff    	jne    c00321f0 <_svfprintf_r+0x1d0>
c0032e3e:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032e44:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032e47:	e9 56 fb ff ff       	jmp    c00329a2 <_svfprintf_r+0x982>
c0032e4c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032e50:	83 bd 1c ff ff ff 01 	cmpl   $0x1,-0xe4(%ebp)
c0032e57:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c0032e5d:	0f 8e df 05 00 00    	jle    c0033442 <_svfprintf_r+0x1422>
c0032e63:	89 07                	mov    %eax,(%edi)
c0032e65:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032e6b:	8d 51 01             	lea    0x1(%ecx),%edx
c0032e6e:	c7 47 04 01 00 00 00 	movl   $0x1,0x4(%edi)
c0032e75:	83 c7 08             	add    $0x8,%edi
c0032e78:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0032e7e:	83 c0 01             	add    $0x1,%eax
c0032e81:	83 f8 07             	cmp    $0x7,%eax
c0032e84:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032e8a:	0f 8f 59 06 00 00    	jg     c00334e9 <_svfprintf_r+0x14c9>
c0032e90:	8b 9d 0c ff ff ff    	mov    -0xf4(%ebp),%ebx
c0032e96:	83 c0 01             	add    $0x1,%eax
c0032e99:	83 c7 08             	add    $0x8,%edi
c0032e9c:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032ea2:	89 5f f8             	mov    %ebx,-0x8(%edi)
c0032ea5:	8b 9d 08 ff ff ff    	mov    -0xf8(%ebp),%ebx
c0032eab:	89 5f fc             	mov    %ebx,-0x4(%edi)
c0032eae:	01 da                	add    %ebx,%edx
c0032eb0:	83 f8 07             	cmp    $0x7,%eax
c0032eb3:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0032eb9:	0f 8f f2 05 00 00    	jg     c00334b1 <_svfprintf_r+0x1491>
c0032ebf:	d9 ee                	fldz   
c0032ec1:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0032ec7:	df e9                	fucomip %st(1),%st
c0032ec9:	dd d8                	fstp   %st(0)
c0032ecb:	7a 06                	jp     c0032ed3 <_svfprintf_r+0xeb3>
c0032ecd:	0f 84 33 03 00 00    	je     c0033206 <_svfprintf_r+0x11e6>
c0032ed3:	8b 8d 28 ff ff ff    	mov    -0xd8(%ebp),%ecx
c0032ed9:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c0032edf:	83 c1 01             	add    $0x1,%ecx
c0032ee2:	89 0f                	mov    %ecx,(%edi)
c0032ee4:	8d 4b ff             	lea    -0x1(%ebx),%ecx
c0032ee7:	89 4f 04             	mov    %ecx,0x4(%edi)
c0032eea:	01 ca                	add    %ecx,%edx
c0032eec:	83 c0 01             	add    $0x1,%eax
c0032eef:	83 f8 07             	cmp    $0x7,%eax
c0032ef2:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0032ef8:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032efe:	0f 8f 75 05 00 00    	jg     c0033479 <_svfprintf_r+0x1459>
c0032f04:	83 c7 08             	add    $0x8,%edi
c0032f07:	8b 9d 04 ff ff ff    	mov    -0xfc(%ebp),%ebx
c0032f0d:	8d 8d 65 ff ff ff    	lea    -0x9b(%ebp),%ecx
c0032f13:	89 0f                	mov    %ecx,(%edi)
c0032f15:	89 5f 04             	mov    %ebx,0x4(%edi)
c0032f18:	8d 0c 1a             	lea    (%edx,%ebx,1),%ecx
c0032f1b:	83 c0 01             	add    $0x1,%eax
c0032f1e:	83 f8 07             	cmp    $0x7,%eax
c0032f21:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032f27:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032f2d:	0f 8e 96 fb ff ff    	jle    c0032ac9 <_svfprintf_r+0xaa9>
c0032f33:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032f39:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032f3d:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032f40:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032f44:	8b 45 08             	mov    0x8(%ebp),%eax
c0032f47:	89 04 24             	mov    %eax,(%esp)
c0032f4a:	e8 51 3c 00 00       	call   c0036ba0 <__ssprint_r>
c0032f4f:	85 c0                	test   %eax,%eax
c0032f51:	0f 85 99 f2 ff ff    	jne    c00321f0 <_svfprintf_r+0x1d0>
c0032f57:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032f5d:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032f60:	e9 67 fb ff ff       	jmp    c0032acc <_svfprintf_r+0xaac>
c0032f65:	8d 76 00             	lea    0x0(%esi),%esi
c0032f68:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032f6e:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032f72:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032f75:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032f79:	8b 45 08             	mov    0x8(%ebp),%eax
c0032f7c:	89 04 24             	mov    %eax,(%esp)
c0032f7f:	e8 1c 3c 00 00       	call   c0036ba0 <__ssprint_r>
c0032f84:	85 c0                	test   %eax,%eax
c0032f86:	0f 84 43 fc ff ff    	je     c0032bcf <_svfprintf_r+0xbaf>
c0032f8c:	e9 5f f2 ff ff       	jmp    c00321f0 <_svfprintf_r+0x1d0>
c0032f91:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0032f98:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032f9e:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032fa2:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032fa5:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032fa9:	8b 45 08             	mov    0x8(%ebp),%eax
c0032fac:	89 04 24             	mov    %eax,(%esp)
c0032faf:	e8 ec 3b 00 00       	call   c0036ba0 <__ssprint_r>
c0032fb4:	85 c0                	test   %eax,%eax
c0032fb6:	0f 85 34 f2 ff ff    	jne    c00321f0 <_svfprintf_r+0x1d0>
c0032fbc:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032fc2:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032fc5:	e9 c8 f9 ff ff       	jmp    c0032992 <_svfprintf_r+0x972>
c0032fca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032fd0:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032fd6:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032fda:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032fdd:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032fe1:	8b 45 08             	mov    0x8(%ebp),%eax
c0032fe4:	89 04 24             	mov    %eax,(%esp)
c0032fe7:	e8 b4 3b 00 00       	call   c0036ba0 <__ssprint_r>
c0032fec:	85 c0                	test   %eax,%eax
c0032fee:	0f 85 fc f1 ff ff    	jne    c00321f0 <_svfprintf_r+0x1d0>
c0032ff4:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032ffa:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032ffd:	e9 53 f9 ff ff       	jmp    c0032955 <_svfprintf_r+0x935>
c0033002:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0033008:	89 c2                	mov    %eax,%edx
c003300a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0033010:	89 c8                	mov    %ecx,%eax
c0033012:	83 ea 01             	sub    $0x1,%edx
c0033015:	83 e0 07             	and    $0x7,%eax
c0033018:	c1 e9 03             	shr    $0x3,%ecx
c003301b:	83 c0 30             	add    $0x30,%eax
c003301e:	85 c9                	test   %ecx,%ecx
c0033020:	88 02                	mov    %al,(%edx)
c0033022:	75 ec                	jne    c0033010 <_svfprintf_r+0xff0>
c0033024:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c003302b:	89 95 28 ff ff ff    	mov    %edx,-0xd8(%ebp)
c0033031:	0f 84 5b 01 00 00    	je     c0033192 <_svfprintf_r+0x1172>
c0033037:	3c 30                	cmp    $0x30,%al
c0033039:	74 0b                	je     c0033046 <_svfprintf_r+0x1026>
c003303b:	83 ad 28 ff ff ff 01 	subl   $0x1,-0xd8(%ebp)
c0033042:	c6 42 ff 30          	movb   $0x30,-0x1(%edx)
c0033046:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0033049:	2b 85 28 ff ff ff    	sub    -0xd8(%ebp),%eax
c003304f:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0033055:	e9 1e f4 ff ff       	jmp    c0032478 <_svfprintf_r+0x458>
c003305a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0033060:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c0033066:	85 db                	test   %ebx,%ebx
c0033068:	0f 8e 66 05 00 00    	jle    c00335d4 <_svfprintf_r+0x15b4>
c003306e:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
c0033074:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
c003307a:	01 d0                	add    %edx,%eax
c003307c:	89 c3                	mov    %eax,%ebx
c003307e:	29 d3                	sub    %edx,%ebx
c0033080:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%ebp)
c0033086:	89 d0                	mov    %edx,%eax
c0033088:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c003308e:	39 d3                	cmp    %edx,%ebx
c0033090:	0f 4f da             	cmovg  %edx,%ebx
c0033093:	85 db                	test   %ebx,%ebx
c0033095:	7e 28                	jle    c00330bf <_svfprintf_r+0x109f>
c0033097:	89 07                	mov    %eax,(%edi)
c0033099:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003309f:	01 d9                	add    %ebx,%ecx
c00330a1:	89 5f 04             	mov    %ebx,0x4(%edi)
c00330a4:	83 c7 08             	add    $0x8,%edi
c00330a7:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00330ad:	83 c0 01             	add    $0x1,%eax
c00330b0:	83 f8 07             	cmp    $0x7,%eax
c00330b3:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00330b9:	0f 8f 58 09 00 00    	jg     c0033a17 <_svfprintf_r+0x19f7>
c00330bf:	8b b5 20 ff ff ff    	mov    -0xe0(%ebp),%esi
c00330c5:	31 c0                	xor    %eax,%eax
c00330c7:	85 db                	test   %ebx,%ebx
c00330c9:	0f 49 c3             	cmovns %ebx,%eax
c00330cc:	29 c6                	sub    %eax,%esi
c00330ce:	85 f6                	test   %esi,%esi
c00330d0:	0f 8e 40 02 00 00    	jle    c0033316 <_svfprintf_r+0x12f6>
c00330d6:	83 fe 10             	cmp    $0x10,%esi
c00330d9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00330df:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c00330e5:	7f 15                	jg     c00330fc <_svfprintf_r+0x10dc>
c00330e7:	e9 db 01 00 00       	jmp    c00332c7 <_svfprintf_r+0x12a7>
c00330ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00330f0:	83 ee 10             	sub    $0x10,%esi
c00330f3:	83 fe 10             	cmp    $0x10,%esi
c00330f6:	0f 8e cb 01 00 00    	jle    c00332c7 <_svfprintf_r+0x12a7>
c00330fc:	83 c0 01             	add    $0x1,%eax
c00330ff:	83 c1 10             	add    $0x10,%ecx
c0033102:	c7 07 98 99 03 c0    	movl   $0xc0039998,(%edi)
c0033108:	83 c7 08             	add    $0x8,%edi
c003310b:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0033112:	83 f8 07             	cmp    $0x7,%eax
c0033115:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c003311b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033121:	7e cd                	jle    c00330f0 <_svfprintf_r+0x10d0>
c0033123:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033126:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c003312a:	89 44 24 04          	mov    %eax,0x4(%esp)
c003312e:	8b 45 08             	mov    0x8(%ebp),%eax
c0033131:	89 04 24             	mov    %eax,(%esp)
c0033134:	e8 67 3a 00 00       	call   c0036ba0 <__ssprint_r>
c0033139:	85 c0                	test   %eax,%eax
c003313b:	0f 85 af f0 ff ff    	jne    c00321f0 <_svfprintf_r+0x1d0>
c0033141:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033147:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003314a:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033150:	eb 9e                	jmp    c00330f0 <_svfprintf_r+0x10d0>
c0033152:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0033155:	be cd cc cc cc       	mov    $0xcccccccd,%esi
c003315a:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c0033160:	89 c7                	mov    %eax,%edi
c0033162:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0033168:	89 c8                	mov    %ecx,%eax
c003316a:	83 ef 01             	sub    $0x1,%edi
c003316d:	f7 e6                	mul    %esi
c003316f:	c1 ea 03             	shr    $0x3,%edx
c0033172:	8d 04 92             	lea    (%edx,%edx,4),%eax
c0033175:	01 c0                	add    %eax,%eax
c0033177:	29 c1                	sub    %eax,%ecx
c0033179:	83 c1 30             	add    $0x30,%ecx
c003317c:	85 d2                	test   %edx,%edx
c003317e:	88 0f                	mov    %cl,(%edi)
c0033180:	89 d1                	mov    %edx,%ecx
c0033182:	75 e4                	jne    c0033168 <_svfprintf_r+0x1148>
c0033184:	89 fa                	mov    %edi,%edx
c0033186:	89 bd 28 ff ff ff    	mov    %edi,-0xd8(%ebp)
c003318c:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
c0033192:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0033195:	29 d0                	sub    %edx,%eax
c0033197:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c003319d:	e9 d6 f2 ff ff       	jmp    c0032478 <_svfprintf_r+0x458>
c00331a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00331a8:	83 f9 09             	cmp    $0x9,%ecx
c00331ab:	77 a5                	ja     c0033152 <_svfprintf_r+0x1132>
c00331ad:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
c00331b3:	83 c1 30             	add    $0x30,%ecx
c00331b6:	88 4d a7             	mov    %cl,-0x59(%ebp)
c00331b9:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c00331bf:	8d 45 a7             	lea    -0x59(%ebp),%eax
c00331c2:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c00331c8:	e9 ab f2 ff ff       	jmp    c0032478 <_svfprintf_r+0x458>
c00331cd:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00331d3:	89 44 24 08          	mov    %eax,0x8(%esp)
c00331d7:	8b 45 0c             	mov    0xc(%ebp),%eax
c00331da:	89 44 24 04          	mov    %eax,0x4(%esp)
c00331de:	8b 45 08             	mov    0x8(%ebp),%eax
c00331e1:	89 04 24             	mov    %eax,(%esp)
c00331e4:	e8 b7 39 00 00       	call   c0036ba0 <__ssprint_r>
c00331e9:	85 c0                	test   %eax,%eax
c00331eb:	0f 85 ff ef ff ff    	jne    c00321f0 <_svfprintf_r+0x1d0>
c00331f1:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c00331f8:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00331fb:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033201:	e9 18 f7 ff ff       	jmp    c003291e <_svfprintf_r+0x8fe>
c0033206:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c003320c:	8d 73 ff             	lea    -0x1(%ebx),%esi
c003320f:	85 f6                	test   %esi,%esi
c0033211:	0f 8e f0 fc ff ff    	jle    c0032f07 <_svfprintf_r+0xee7>
c0033217:	83 fe 10             	cmp    $0x10,%esi
c003321a:	7e 70                	jle    c003328c <_svfprintf_r+0x126c>
c003321c:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0033222:	eb 0c                	jmp    c0033230 <_svfprintf_r+0x1210>
c0033224:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033228:	83 ee 10             	sub    $0x10,%esi
c003322b:	83 fe 10             	cmp    $0x10,%esi
c003322e:	7e 5c                	jle    c003328c <_svfprintf_r+0x126c>
c0033230:	83 c0 01             	add    $0x1,%eax
c0033233:	83 c2 10             	add    $0x10,%edx
c0033236:	c7 07 98 99 03 c0    	movl   $0xc0039998,(%edi)
c003323c:	83 c7 08             	add    $0x8,%edi
c003323f:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0033246:	83 f8 07             	cmp    $0x7,%eax
c0033249:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c003324f:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033255:	7e d1                	jle    c0033228 <_svfprintf_r+0x1208>
c0033257:	8b 45 0c             	mov    0xc(%ebp),%eax
c003325a:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c003325e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033262:	8b 45 08             	mov    0x8(%ebp),%eax
c0033265:	89 04 24             	mov    %eax,(%esp)
c0033268:	e8 33 39 00 00       	call   c0036ba0 <__ssprint_r>
c003326d:	85 c0                	test   %eax,%eax
c003326f:	0f 85 7b ef ff ff    	jne    c00321f0 <_svfprintf_r+0x1d0>
c0033275:	83 ee 10             	sub    $0x10,%esi
c0033278:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003327e:	83 fe 10             	cmp    $0x10,%esi
c0033281:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033287:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003328a:	7f a4                	jg     c0033230 <_svfprintf_r+0x1210>
c003328c:	c7 07 98 99 03 c0    	movl   $0xc0039998,(%edi)
c0033292:	01 f2                	add    %esi,%edx
c0033294:	89 77 04             	mov    %esi,0x4(%edi)
c0033297:	e9 50 fc ff ff       	jmp    c0032eec <_svfprintf_r+0xecc>
c003329c:	c7 07 98 99 03 c0    	movl   $0xc0039998,(%edi)
c00332a2:	01 f1                	add    %esi,%ecx
c00332a4:	89 77 04             	mov    %esi,0x4(%edi)
c00332a7:	e9 6f fc ff ff       	jmp    c0032f1b <_svfprintf_r+0xefb>
c00332ac:	8b 45 14             	mov    0x14(%ebp),%eax
c00332af:	8b 95 34 ff ff ff    	mov    -0xcc(%ebp),%edx
c00332b5:	8b 00                	mov    (%eax),%eax
c00332b7:	89 10                	mov    %edx,(%eax)
c00332b9:	8b 45 14             	mov    0x14(%ebp),%eax
c00332bc:	83 c0 04             	add    $0x4,%eax
c00332bf:	89 45 14             	mov    %eax,0x14(%ebp)
c00332c2:	e9 f4 ed ff ff       	jmp    c00320bb <_svfprintf_r+0x9b>
c00332c7:	83 c0 01             	add    $0x1,%eax
c00332ca:	01 f1                	add    %esi,%ecx
c00332cc:	c7 07 98 99 03 c0    	movl   $0xc0039998,(%edi)
c00332d2:	83 c7 08             	add    $0x8,%edi
c00332d5:	89 77 fc             	mov    %esi,-0x4(%edi)
c00332d8:	83 f8 07             	cmp    $0x7,%eax
c00332db:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00332e1:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00332e7:	7e 2d                	jle    c0033316 <_svfprintf_r+0x12f6>
c00332e9:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00332ef:	89 44 24 08          	mov    %eax,0x8(%esp)
c00332f3:	8b 45 0c             	mov    0xc(%ebp),%eax
c00332f6:	89 44 24 04          	mov    %eax,0x4(%esp)
c00332fa:	8b 45 08             	mov    0x8(%ebp),%eax
c00332fd:	89 04 24             	mov    %eax,(%esp)
c0033300:	e8 9b 38 00 00       	call   c0036ba0 <__ssprint_r>
c0033305:	85 c0                	test   %eax,%eax
c0033307:	0f 85 e3 ee ff ff    	jne    c00321f0 <_svfprintf_r+0x1d0>
c003330d:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033313:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033316:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c003331c:	8b 95 5c ff ff ff    	mov    -0xa4(%ebp),%edx
c0033322:	03 85 20 ff ff ff    	add    -0xe0(%ebp),%eax
c0033328:	3b 95 1c ff ff ff    	cmp    -0xe4(%ebp),%edx
c003332e:	89 c6                	mov    %eax,%esi
c0033330:	7c 0d                	jl     c003333f <_svfprintf_r+0x131f>
c0033332:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0033339:	0f 84 5e 05 00 00    	je     c003389d <_svfprintf_r+0x187d>
c003333f:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
c0033345:	89 07                	mov    %eax,(%edi)
c0033347:	8b 85 08 ff ff ff    	mov    -0xf8(%ebp),%eax
c003334d:	01 c1                	add    %eax,%ecx
c003334f:	89 47 04             	mov    %eax,0x4(%edi)
c0033352:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033358:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c003335e:	83 c0 01             	add    $0x1,%eax
c0033361:	83 f8 07             	cmp    $0x7,%eax
c0033364:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003336a:	0f 8f d9 06 00 00    	jg     c0033a49 <_svfprintf_r+0x1a29>
c0033370:	83 c7 08             	add    $0x8,%edi
c0033373:	89 d0                	mov    %edx,%eax
c0033375:	8b 9d 44 ff ff ff    	mov    -0xbc(%ebp),%ebx
c003337b:	89 f2                	mov    %esi,%edx
c003337d:	29 f3                	sub    %esi,%ebx
c003337f:	8b b5 1c ff ff ff    	mov    -0xe4(%ebp),%esi
c0033385:	29 c6                	sub    %eax,%esi
c0033387:	39 de                	cmp    %ebx,%esi
c0033389:	0f 4e de             	cmovle %esi,%ebx
c003338c:	85 db                	test   %ebx,%ebx
c003338e:	7e 29                	jle    c00333b9 <_svfprintf_r+0x1399>
c0033390:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033396:	01 d9                	add    %ebx,%ecx
c0033398:	83 c7 08             	add    $0x8,%edi
c003339b:	89 57 f8             	mov    %edx,-0x8(%edi)
c003339e:	89 5f fc             	mov    %ebx,-0x4(%edi)
c00333a1:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00333a7:	83 c0 01             	add    $0x1,%eax
c00333aa:	83 f8 07             	cmp    $0x7,%eax
c00333ad:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00333b3:	0f 8f c8 06 00 00    	jg     c0033a81 <_svfprintf_r+0x1a61>
c00333b9:	31 c0                	xor    %eax,%eax
c00333bb:	85 db                	test   %ebx,%ebx
c00333bd:	0f 49 c3             	cmovns %ebx,%eax
c00333c0:	29 c6                	sub    %eax,%esi
c00333c2:	85 f6                	test   %esi,%esi
c00333c4:	0f 8e 02 f7 ff ff    	jle    c0032acc <_svfprintf_r+0xaac>
c00333ca:	83 fe 10             	cmp    $0x10,%esi
c00333cd:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00333d3:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c00333d9:	7f 11                	jg     c00333ec <_svfprintf_r+0x13cc>
c00333db:	e9 bc fe ff ff       	jmp    c003329c <_svfprintf_r+0x127c>
c00333e0:	83 ee 10             	sub    $0x10,%esi
c00333e3:	83 fe 10             	cmp    $0x10,%esi
c00333e6:	0f 8e b0 fe ff ff    	jle    c003329c <_svfprintf_r+0x127c>
c00333ec:	83 c0 01             	add    $0x1,%eax
c00333ef:	83 c1 10             	add    $0x10,%ecx
c00333f2:	c7 07 98 99 03 c0    	movl   $0xc0039998,(%edi)
c00333f8:	83 c7 08             	add    $0x8,%edi
c00333fb:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0033402:	83 f8 07             	cmp    $0x7,%eax
c0033405:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c003340b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033411:	7e cd                	jle    c00333e0 <_svfprintf_r+0x13c0>
c0033413:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033416:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c003341a:	89 44 24 04          	mov    %eax,0x4(%esp)
c003341e:	8b 45 08             	mov    0x8(%ebp),%eax
c0033421:	89 04 24             	mov    %eax,(%esp)
c0033424:	e8 77 37 00 00       	call   c0036ba0 <__ssprint_r>
c0033429:	85 c0                	test   %eax,%eax
c003342b:	0f 85 bf ed ff ff    	jne    c00321f0 <_svfprintf_r+0x1d0>
c0033431:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033437:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003343a:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033440:	eb 9e                	jmp    c00333e0 <_svfprintf_r+0x13c0>
c0033442:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0033449:	0f 85 14 fa ff ff    	jne    c0032e63 <_svfprintf_r+0xe43>
c003344f:	89 07                	mov    %eax,(%edi)
c0033451:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033457:	8d 51 01             	lea    0x1(%ecx),%edx
c003345a:	c7 47 04 01 00 00 00 	movl   $0x1,0x4(%edi)
c0033461:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0033467:	83 c0 01             	add    $0x1,%eax
c003346a:	83 f8 07             	cmp    $0x7,%eax
c003346d:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033473:	0f 8e 8b fa ff ff    	jle    c0032f04 <_svfprintf_r+0xee4>
c0033479:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003347f:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033483:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033486:	89 44 24 04          	mov    %eax,0x4(%esp)
c003348a:	8b 45 08             	mov    0x8(%ebp),%eax
c003348d:	89 04 24             	mov    %eax,(%esp)
c0033490:	e8 0b 37 00 00       	call   c0036ba0 <__ssprint_r>
c0033495:	85 c0                	test   %eax,%eax
c0033497:	0f 85 53 ed ff ff    	jne    c00321f0 <_svfprintf_r+0x1d0>
c003349d:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00334a3:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00334a6:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00334ac:	e9 56 fa ff ff       	jmp    c0032f07 <_svfprintf_r+0xee7>
c00334b1:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00334b7:	89 44 24 08          	mov    %eax,0x8(%esp)
c00334bb:	8b 45 0c             	mov    0xc(%ebp),%eax
c00334be:	89 44 24 04          	mov    %eax,0x4(%esp)
c00334c2:	8b 45 08             	mov    0x8(%ebp),%eax
c00334c5:	89 04 24             	mov    %eax,(%esp)
c00334c8:	e8 d3 36 00 00       	call   c0036ba0 <__ssprint_r>
c00334cd:	85 c0                	test   %eax,%eax
c00334cf:	0f 85 1b ed ff ff    	jne    c00321f0 <_svfprintf_r+0x1d0>
c00334d5:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00334db:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00334de:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00334e4:	e9 d6 f9 ff ff       	jmp    c0032ebf <_svfprintf_r+0xe9f>
c00334e9:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00334ef:	89 44 24 08          	mov    %eax,0x8(%esp)
c00334f3:	8b 45 0c             	mov    0xc(%ebp),%eax
c00334f6:	89 44 24 04          	mov    %eax,0x4(%esp)
c00334fa:	8b 45 08             	mov    0x8(%ebp),%eax
c00334fd:	89 04 24             	mov    %eax,(%esp)
c0033500:	e8 9b 36 00 00       	call   c0036ba0 <__ssprint_r>
c0033505:	85 c0                	test   %eax,%eax
c0033507:	0f 85 e3 ec ff ff    	jne    c00321f0 <_svfprintf_r+0x1d0>
c003350d:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0033513:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033516:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003351c:	e9 6f f9 ff ff       	jmp    c0032e90 <_svfprintf_r+0xe70>
c0033521:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0033527:	dd 1c 24             	fstpl  (%esp)
c003352a:	e8 11 35 00 00       	call   c0036a40 <__fpclassifyd>
c003352f:	85 c0                	test   %eax,%eax
c0033531:	0f 85 a3 01 00 00    	jne    c00336da <_svfprintf_r+0x16ba>
c0033537:	83 bd 24 ff ff ff 47 	cmpl   $0x47,-0xdc(%ebp)
c003353e:	ba fe 97 03 c0       	mov    $0xc00397fe,%edx
c0033543:	b8 02 98 03 c0       	mov    $0xc0039802,%eax
c0033548:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c003354f:	c7 85 48 ff ff ff 03 	movl   $0x3,-0xb8(%ebp)
c0033556:	00 00 00 
c0033559:	0f 4e c2             	cmovle %edx,%eax
c003355c:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0033562:	81 a5 4c ff ff ff 7f 	andl   $0xffffff7f,-0xb4(%ebp)
c0033569:	ff ff ff 
c003356c:	c7 85 38 ff ff ff 03 	movl   $0x3,-0xc8(%ebp)
c0033573:	00 00 00 
c0033576:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c003357d:	00 00 00 
c0033580:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0033587:	00 00 00 
c003358a:	e9 29 ed ff ff       	jmp    c00322b8 <_svfprintf_r+0x298>
c003358f:	dd 00                	fldl   (%eax)
c0033591:	83 c0 08             	add    $0x8,%eax
c0033594:	dd 9d 10 ff ff ff    	fstpl  -0xf0(%ebp)
c003359a:	89 45 14             	mov    %eax,0x14(%ebp)
c003359d:	e9 e6 ef ff ff       	jmp    c0032588 <_svfprintf_r+0x568>
c00335a2:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00335a8:	89 44 24 08          	mov    %eax,0x8(%esp)
c00335ac:	8b 45 0c             	mov    0xc(%ebp),%eax
c00335af:	89 44 24 04          	mov    %eax,0x4(%esp)
c00335b3:	8b 45 08             	mov    0x8(%ebp),%eax
c00335b6:	89 04 24             	mov    %eax,(%esp)
c00335b9:	e8 e2 35 00 00       	call   c0036ba0 <__ssprint_r>
c00335be:	85 c0                	test   %eax,%eax
c00335c0:	0f 85 2a ec ff ff    	jne    c00321f0 <_svfprintf_r+0x1d0>
c00335c6:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00335cc:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00335cf:	e9 6b f6 ff ff       	jmp    c0032c3f <_svfprintf_r+0xc1f>
c00335d4:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00335da:	83 c1 01             	add    $0x1,%ecx
c00335dd:	83 c7 08             	add    $0x8,%edi
c00335e0:	c7 47 f8 2f 98 03 c0 	movl   $0xc003982f,-0x8(%edi)
c00335e7:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
c00335ee:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00335f4:	83 c0 01             	add    $0x1,%eax
c00335f7:	83 f8 07             	cmp    $0x7,%eax
c00335fa:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033600:	0f 8f ef 02 00 00    	jg     c00338f5 <_svfprintf_r+0x18d5>
c0033606:	85 db                	test   %ebx,%ebx
c0033608:	75 17                	jne    c0033621 <_svfprintf_r+0x1601>
c003360a:	8b 95 1c ff ff ff    	mov    -0xe4(%ebp),%edx
c0033610:	85 d2                	test   %edx,%edx
c0033612:	75 0d                	jne    c0033621 <_svfprintf_r+0x1601>
c0033614:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c003361b:	0f 84 ab f4 ff ff    	je     c0032acc <_svfprintf_r+0xaac>
c0033621:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
c0033627:	83 c7 08             	add    $0x8,%edi
c003362a:	89 47 f8             	mov    %eax,-0x8(%edi)
c003362d:	8b 85 08 ff ff ff    	mov    -0xf8(%ebp),%eax
c0033633:	89 47 fc             	mov    %eax,-0x4(%edi)
c0033636:	8d 14 01             	lea    (%ecx,%eax,1),%edx
c0033639:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003363f:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0033645:	83 c0 01             	add    $0x1,%eax
c0033648:	83 f8 07             	cmp    $0x7,%eax
c003364b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033651:	0f 8f 60 03 00 00    	jg     c00339b7 <_svfprintf_r+0x1997>
c0033657:	f7 db                	neg    %ebx
c0033659:	85 db                	test   %ebx,%ebx
c003365b:	0f 8e 21 03 00 00    	jle    c0033982 <_svfprintf_r+0x1962>
c0033661:	83 fb 10             	cmp    $0x10,%ebx
c0033664:	0f 8e c3 02 00 00    	jle    c003392d <_svfprintf_r+0x190d>
c003366a:	8d b5 74 ff ff ff    	lea    -0x8c(%ebp),%esi
c0033670:	eb 12                	jmp    c0033684 <_svfprintf_r+0x1664>
c0033672:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0033678:	83 eb 10             	sub    $0x10,%ebx
c003367b:	83 fb 10             	cmp    $0x10,%ebx
c003367e:	0f 8e a9 02 00 00    	jle    c003392d <_svfprintf_r+0x190d>
c0033684:	83 c0 01             	add    $0x1,%eax
c0033687:	83 c2 10             	add    $0x10,%edx
c003368a:	c7 07 98 99 03 c0    	movl   $0xc0039998,(%edi)
c0033690:	83 c7 08             	add    $0x8,%edi
c0033693:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c003369a:	83 f8 07             	cmp    $0x7,%eax
c003369d:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00336a3:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00336a9:	7e cd                	jle    c0033678 <_svfprintf_r+0x1658>
c00336ab:	8b 45 0c             	mov    0xc(%ebp),%eax
c00336ae:	89 74 24 08          	mov    %esi,0x8(%esp)
c00336b2:	89 44 24 04          	mov    %eax,0x4(%esp)
c00336b6:	8b 45 08             	mov    0x8(%ebp),%eax
c00336b9:	89 04 24             	mov    %eax,(%esp)
c00336bc:	e8 df 34 00 00       	call   c0036ba0 <__ssprint_r>
c00336c1:	85 c0                	test   %eax,%eax
c00336c3:	0f 85 27 eb ff ff    	jne    c00321f0 <_svfprintf_r+0x1d0>
c00336c9:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00336cf:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00336d2:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00336d8:	eb 9e                	jmp    c0033678 <_svfprintf_r+0x1658>
c00336da:	8b 9d 24 ff ff ff    	mov    -0xdc(%ebp),%ebx
c00336e0:	83 e3 df             	and    $0xffffffdf,%ebx
c00336e3:	83 bd 44 ff ff ff ff 	cmpl   $0xffffffff,-0xbc(%ebp)
c00336ea:	0f 84 05 03 00 00    	je     c00339f5 <_svfprintf_r+0x19d5>
c00336f0:	83 fb 47             	cmp    $0x47,%ebx
c00336f3:	75 16                	jne    c003370b <_svfprintf_r+0x16eb>
c00336f5:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c00336fb:	b8 01 00 00 00       	mov    $0x1,%eax
c0033700:	85 d2                	test   %edx,%edx
c0033702:	0f 45 c2             	cmovne %edx,%eax
c0033705:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%ebp)
c003370b:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
c0033711:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0033717:	dd 95 38 ff ff ff    	fstl   -0xc8(%ebp)
c003371d:	80 cc 01             	or     $0x1,%ah
c0033720:	89 85 30 ff ff ff    	mov    %eax,-0xd0(%ebp)
c0033726:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
c003372c:	c6 85 48 ff ff ff 00 	movb   $0x0,-0xb8(%ebp)
c0033733:	85 c0                	test   %eax,%eax
c0033735:	0f 88 ba 05 00 00    	js     c0033cf5 <_svfprintf_r+0x1cd5>
c003373b:	83 fb 46             	cmp    $0x46,%ebx
c003373e:	0f 94 c0             	sete   %al
c0033741:	89 c6                	mov    %eax,%esi
c0033743:	0f 84 d4 03 00 00    	je     c0033b1d <_svfprintf_r+0x1afd>
c0033749:	83 fb 45             	cmp    $0x45,%ebx
c003374c:	0f 85 99 05 00 00    	jne    c0033ceb <_svfprintf_r+0x1ccb>
c0033752:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c0033758:	dd 54 24 04          	fstl   0x4(%esp)
c003375c:	c7 44 24 0c 02 00 00 	movl   $0x2,0xc(%esp)
c0033763:	00 
c0033764:	dd 9d 38 ff ff ff    	fstpl  -0xc8(%ebp)
c003376a:	8d 70 01             	lea    0x1(%eax),%esi
c003376d:	8d 85 6c ff ff ff    	lea    -0x94(%ebp),%eax
c0033773:	89 44 24 1c          	mov    %eax,0x1c(%esp)
c0033777:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
c003377d:	89 44 24 18          	mov    %eax,0x18(%esp)
c0033781:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
c0033787:	89 44 24 14          	mov    %eax,0x14(%esp)
c003378b:	8b 45 08             	mov    0x8(%ebp),%eax
c003378e:	89 74 24 10          	mov    %esi,0x10(%esp)
c0033792:	89 04 24             	mov    %eax,(%esp)
c0033795:	e8 56 09 00 00       	call   c00340f0 <_dtoa_r>
c003379a:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c00337a0:	8d 0c 30             	lea    (%eax,%esi,1),%ecx
c00337a3:	dd 85 38 ff ff ff    	fldl   -0xc8(%ebp)
c00337a9:	d9 ee                	fldz   
c00337ab:	d9 c9                	fxch   %st(1)
c00337ad:	df e9                	fucomip %st(1),%st
c00337af:	dd d8                	fstp   %st(0)
c00337b1:	0f 8a fd 00 00 00    	jp     c00338b4 <_svfprintf_r+0x1894>
c00337b7:	89 c8                	mov    %ecx,%eax
c00337b9:	0f 85 f5 00 00 00    	jne    c00338b4 <_svfprintf_r+0x1894>
c00337bf:	2b 85 28 ff ff ff    	sub    -0xd8(%ebp),%eax
c00337c5:	83 fb 47             	cmp    $0x47,%ebx
c00337c8:	89 85 1c ff ff ff    	mov    %eax,-0xe4(%ebp)
c00337ce:	0f 84 1e 04 00 00    	je     c0033bf2 <_svfprintf_r+0x1bd2>
c00337d4:	83 bd 24 ff ff ff 65 	cmpl   $0x65,-0xdc(%ebp)
c00337db:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c00337e1:	0f 8e 65 04 00 00    	jle    c0033c4c <_svfprintf_r+0x1c2c>
c00337e7:	83 bd 24 ff ff ff 66 	cmpl   $0x66,-0xdc(%ebp)
c00337ee:	89 85 20 ff ff ff    	mov    %eax,-0xe0(%ebp)
c00337f4:	0f 84 3c 05 00 00    	je     c0033d36 <_svfprintf_r+0x1d16>
c00337fa:	8b 85 20 ff ff ff    	mov    -0xe0(%ebp),%eax
c0033800:	39 85 1c ff ff ff    	cmp    %eax,-0xe4(%ebp)
c0033806:	0f 8f f7 04 00 00    	jg     c0033d03 <_svfprintf_r+0x1ce3>
c003380c:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
c0033812:	83 e0 01             	and    $0x1,%eax
c0033815:	0f 85 e2 05 00 00    	jne    c0033dfd <_svfprintf_r+0x1ddd>
c003381b:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c0033821:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
c0033828:	00 00 00 
c003382b:	85 d2                	test   %edx,%edx
c003382d:	0f 49 c2             	cmovns %edx,%eax
c0033830:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0033836:	80 bd 48 ff ff ff 00 	cmpb   $0x0,-0xb8(%ebp)
c003383d:	0f 85 68 03 00 00    	jne    c0033bab <_svfprintf_r+0x1b8b>
c0033843:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0033849:	8b 85 30 ff ff ff    	mov    -0xd0(%ebp),%eax
c003384f:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0033856:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c003385d:	00 00 00 
c0033860:	89 85 4c ff ff ff    	mov    %eax,-0xb4(%ebp)
c0033866:	e9 4d ea ff ff       	jmp    c00322b8 <_svfprintf_r+0x298>
c003386b:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033871:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033875:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033878:	89 44 24 04          	mov    %eax,0x4(%esp)
c003387c:	8b 45 08             	mov    0x8(%ebp),%eax
c003387f:	89 04 24             	mov    %eax,(%esp)
c0033882:	e8 19 33 00 00       	call   c0036ba0 <__ssprint_r>
c0033887:	85 c0                	test   %eax,%eax
c0033889:	0f 85 61 e9 ff ff    	jne    c00321f0 <_svfprintf_r+0x1d0>
c003388f:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033895:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033898:	e9 f2 f3 ff ff       	jmp    c0032c8f <_svfprintf_r+0xc6f>
c003389d:	89 d0                	mov    %edx,%eax
c003389f:	e9 d1 fa ff ff       	jmp    c0033375 <_svfprintf_r+0x1355>
c00338a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00338a8:	8d 50 01             	lea    0x1(%eax),%edx
c00338ab:	89 95 6c ff ff ff    	mov    %edx,-0x94(%ebp)
c00338b1:	c6 00 30             	movb   $0x30,(%eax)
c00338b4:	8b 85 6c ff ff ff    	mov    -0x94(%ebp),%eax
c00338ba:	39 c1                	cmp    %eax,%ecx
c00338bc:	77 ea                	ja     c00338a8 <_svfprintf_r+0x1888>
c00338be:	e9 fc fe ff ff       	jmp    c00337bf <_svfprintf_r+0x179f>
c00338c3:	8b 45 08             	mov    0x8(%ebp),%eax
c00338c6:	c7 44 24 04 40 00 00 	movl   $0x40,0x4(%esp)
c00338cd:	00 
c00338ce:	89 04 24             	mov    %eax,(%esp)
c00338d1:	e8 4a 1b 00 00       	call   c0035420 <_malloc_r>
c00338d6:	8b 55 0c             	mov    0xc(%ebp),%edx
c00338d9:	85 c0                	test   %eax,%eax
c00338db:	89 02                	mov    %eax,(%edx)
c00338dd:	89 42 10             	mov    %eax,0x10(%edx)
c00338e0:	0f 84 15 06 00 00    	je     c0033efb <_svfprintf_r+0x1edb>
c00338e6:	8b 45 0c             	mov    0xc(%ebp),%eax
c00338e9:	c7 40 14 40 00 00 00 	movl   $0x40,0x14(%eax)
c00338f0:	e9 6c e7 ff ff       	jmp    c0032061 <_svfprintf_r+0x41>
c00338f5:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00338fb:	89 44 24 08          	mov    %eax,0x8(%esp)
c00338ff:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033902:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033906:	8b 45 08             	mov    0x8(%ebp),%eax
c0033909:	89 04 24             	mov    %eax,(%esp)
c003390c:	e8 8f 32 00 00       	call   c0036ba0 <__ssprint_r>
c0033911:	85 c0                	test   %eax,%eax
c0033913:	0f 85 d7 e8 ff ff    	jne    c00321f0 <_svfprintf_r+0x1d0>
c0033919:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c003391f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033922:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033928:	e9 d9 fc ff ff       	jmp    c0033606 <_svfprintf_r+0x15e6>
c003392d:	83 c0 01             	add    $0x1,%eax
c0033930:	01 da                	add    %ebx,%edx
c0033932:	c7 07 98 99 03 c0    	movl   $0xc0039998,(%edi)
c0033938:	83 c7 08             	add    $0x8,%edi
c003393b:	89 5f fc             	mov    %ebx,-0x4(%edi)
c003393e:	83 f8 07             	cmp    $0x7,%eax
c0033941:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0033947:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003394d:	7e 33                	jle    c0033982 <_svfprintf_r+0x1962>
c003394f:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033955:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033959:	8b 45 0c             	mov    0xc(%ebp),%eax
c003395c:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033960:	8b 45 08             	mov    0x8(%ebp),%eax
c0033963:	89 04 24             	mov    %eax,(%esp)
c0033966:	e8 35 32 00 00       	call   c0036ba0 <__ssprint_r>
c003396b:	85 c0                	test   %eax,%eax
c003396d:	0f 85 7d e8 ff ff    	jne    c00321f0 <_svfprintf_r+0x1d0>
c0033973:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0033979:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003397c:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033982:	8b 9d 28 ff ff ff    	mov    -0xd8(%ebp),%ebx
c0033988:	83 c0 01             	add    $0x1,%eax
c003398b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033991:	89 1f                	mov    %ebx,(%edi)
c0033993:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c0033999:	01 da                	add    %ebx,%edx
c003399b:	83 f8 07             	cmp    $0x7,%eax
c003399e:	89 5f 04             	mov    %ebx,0x4(%edi)
c00339a1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00339a7:	0f 8f 86 f5 ff ff    	jg     c0032f33 <_svfprintf_r+0xf13>
c00339ad:	83 c7 08             	add    $0x8,%edi
c00339b0:	89 d1                	mov    %edx,%ecx
c00339b2:	e9 15 f1 ff ff       	jmp    c0032acc <_svfprintf_r+0xaac>
c00339b7:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00339bd:	89 44 24 08          	mov    %eax,0x8(%esp)
c00339c1:	8b 45 0c             	mov    0xc(%ebp),%eax
c00339c4:	89 44 24 04          	mov    %eax,0x4(%esp)
c00339c8:	8b 45 08             	mov    0x8(%ebp),%eax
c00339cb:	89 04 24             	mov    %eax,(%esp)
c00339ce:	e8 cd 31 00 00       	call   c0036ba0 <__ssprint_r>
c00339d3:	85 c0                	test   %eax,%eax
c00339d5:	0f 85 15 e8 ff ff    	jne    c00321f0 <_svfprintf_r+0x1d0>
c00339db:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c00339e1:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00339e4:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00339ea:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00339f0:	e9 62 fc ff ff       	jmp    c0033657 <_svfprintf_r+0x1637>
c00339f5:	c7 85 44 ff ff ff 06 	movl   $0x6,-0xbc(%ebp)
c00339fc:	00 00 00 
c00339ff:	e9 07 fd ff ff       	jmp    c003370b <_svfprintf_r+0x16eb>
c0033a04:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c0033a0a:	89 04 24             	mov    %eax,(%esp)
c0033a0d:	e8 0e 31 00 00       	call   c0036b20 <strlen>
c0033a12:	e9 6a e8 ff ff       	jmp    c0032281 <_svfprintf_r+0x261>
c0033a17:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033a1d:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033a21:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033a24:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033a28:	8b 45 08             	mov    0x8(%ebp),%eax
c0033a2b:	89 04 24             	mov    %eax,(%esp)
c0033a2e:	e8 6d 31 00 00       	call   c0036ba0 <__ssprint_r>
c0033a33:	85 c0                	test   %eax,%eax
c0033a35:	0f 85 b5 e7 ff ff    	jne    c00321f0 <_svfprintf_r+0x1d0>
c0033a3b:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033a41:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033a44:	e9 76 f6 ff ff       	jmp    c00330bf <_svfprintf_r+0x109f>
c0033a49:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033a4f:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033a53:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033a56:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033a5a:	8b 45 08             	mov    0x8(%ebp),%eax
c0033a5d:	89 04 24             	mov    %eax,(%esp)
c0033a60:	e8 3b 31 00 00       	call   c0036ba0 <__ssprint_r>
c0033a65:	85 c0                	test   %eax,%eax
c0033a67:	0f 85 83 e7 ff ff    	jne    c00321f0 <_svfprintf_r+0x1d0>
c0033a6d:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0033a73:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033a76:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033a7c:	e9 f4 f8 ff ff       	jmp    c0033375 <_svfprintf_r+0x1355>
c0033a81:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033a87:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033a8b:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033a8e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033a92:	8b 45 08             	mov    0x8(%ebp),%eax
c0033a95:	89 04 24             	mov    %eax,(%esp)
c0033a98:	e8 03 31 00 00       	call   c0036ba0 <__ssprint_r>
c0033a9d:	85 c0                	test   %eax,%eax
c0033a9f:	0f 85 4b e7 ff ff    	jne    c00321f0 <_svfprintf_r+0x1d0>
c0033aa5:	8b b5 1c ff ff ff    	mov    -0xe4(%ebp),%esi
c0033aab:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033aae:	2b b5 5c ff ff ff    	sub    -0xa4(%ebp),%esi
c0033ab4:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033aba:	e9 fa f8 ff ff       	jmp    c00333b9 <_svfprintf_r+0x1399>
c0033abf:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c0033ac5:	b0 06                	mov    $0x6,%al
c0033ac7:	89 75 14             	mov    %esi,0x14(%ebp)
c0033aca:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0033ad1:	00 00 00 
c0033ad4:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0033adb:	00 00 00 
c0033ade:	83 fa 06             	cmp    $0x6,%edx
c0033ae1:	0f 46 c2             	cmovbe %edx,%eax
c0033ae4:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
c0033aea:	85 c0                	test   %eax,%eax
c0033aec:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0033af2:	c7 85 28 ff ff ff 28 	movl   $0xc0039828,-0xd8(%ebp)
c0033af9:	98 03 c0 
c0033afc:	0f 49 d0             	cmovns %eax,%edx
c0033aff:	31 db                	xor    %ebx,%ebx
c0033b01:	89 95 48 ff ff ff    	mov    %edx,-0xb8(%ebp)
c0033b07:	e9 b7 e7 ff ff       	jmp    c00322c3 <_svfprintf_r+0x2a3>
c0033b0c:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
c0033b13:	bb 2d 00 00 00       	mov    $0x2d,%ebx
c0033b18:	e9 9d ea ff ff       	jmp    c00325ba <_svfprintf_r+0x59a>
c0033b1d:	ba 03 00 00 00       	mov    $0x3,%edx
c0033b22:	8d 85 6c ff ff ff    	lea    -0x94(%ebp),%eax
c0033b28:	89 44 24 1c          	mov    %eax,0x1c(%esp)
c0033b2c:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
c0033b32:	89 44 24 18          	mov    %eax,0x18(%esp)
c0033b36:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
c0033b3c:	89 44 24 14          	mov    %eax,0x14(%esp)
c0033b40:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c0033b46:	dd 54 24 04          	fstl   0x4(%esp)
c0033b4a:	89 54 24 0c          	mov    %edx,0xc(%esp)
c0033b4e:	dd 9d 38 ff ff ff    	fstpl  -0xc8(%ebp)
c0033b54:	89 44 24 10          	mov    %eax,0x10(%esp)
c0033b58:	8b 45 08             	mov    0x8(%ebp),%eax
c0033b5b:	89 04 24             	mov    %eax,(%esp)
c0033b5e:	e8 8d 05 00 00       	call   c00340f0 <_dtoa_r>
c0033b63:	83 fb 47             	cmp    $0x47,%ebx
c0033b66:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0033b6c:	dd 85 38 ff ff ff    	fldl   -0xc8(%ebp)
c0033b72:	75 09                	jne    c0033b7d <_svfprintf_r+0x1b5d>
c0033b74:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0033b7b:	74 5b                	je     c0033bd8 <_svfprintf_r+0x1bb8>
c0033b7d:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
c0033b83:	89 f0                	mov    %esi,%eax
c0033b85:	8b 8d 44 ff ff ff    	mov    -0xbc(%ebp),%ecx
c0033b8b:	01 d1                	add    %edx,%ecx
c0033b8d:	84 c0                	test   %al,%al
c0033b8f:	0f 84 14 fc ff ff    	je     c00337a9 <_svfprintf_r+0x1789>
c0033b95:	80 3a 30             	cmpb   $0x30,(%edx)
c0033b98:	0f 84 37 02 00 00    	je     c0033dd5 <_svfprintf_r+0x1db5>
c0033b9e:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0033ba4:	01 c1                	add    %eax,%ecx
c0033ba6:	e9 fe fb ff ff       	jmp    c00337a9 <_svfprintf_r+0x1789>
c0033bab:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0033bb1:	8b 85 30 ff ff ff    	mov    -0xd0(%ebp),%eax
c0033bb7:	bb 2d 00 00 00       	mov    $0x2d,%ebx
c0033bbc:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
c0033bc3:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0033bca:	00 00 00 
c0033bcd:	89 85 4c ff ff ff    	mov    %eax,-0xb4(%ebp)
c0033bd3:	e9 e4 e6 ff ff       	jmp    c00322bc <_svfprintf_r+0x29c>
c0033bd8:	dd d8                	fstp   %st(0)
c0033bda:	8b 85 6c ff ff ff    	mov    -0x94(%ebp),%eax
c0033be0:	89 85 1c ff ff ff    	mov    %eax,-0xe4(%ebp)
c0033be6:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c0033bec:	29 85 1c ff ff ff    	sub    %eax,-0xe4(%ebp)
c0033bf2:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0033bf8:	83 f8 fd             	cmp    $0xfffffffd,%eax
c0033bfb:	7c 48                	jl     c0033c45 <_svfprintf_r+0x1c25>
c0033bfd:	39 85 44 ff ff ff    	cmp    %eax,-0xbc(%ebp)
c0033c03:	7c 40                	jl     c0033c45 <_svfprintf_r+0x1c25>
c0033c05:	89 85 20 ff ff ff    	mov    %eax,-0xe0(%ebp)
c0033c0b:	e9 ea fb ff ff       	jmp    c00337fa <_svfprintf_r+0x17da>
c0033c10:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c0033c16:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0033c1d:	89 75 14             	mov    %esi,0x14(%ebp)
c0033c20:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0033c27:	00 00 00 
c0033c2a:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0033c30:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0033c36:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0033c3d:	00 00 00 
c0033c40:	e9 73 e6 ff ff       	jmp    c00322b8 <_svfprintf_r+0x298>
c0033c45:	83 ad 24 ff ff ff 02 	subl   $0x2,-0xdc(%ebp)
c0033c4c:	8d 48 ff             	lea    -0x1(%eax),%ecx
c0033c4f:	0f b6 85 24 ff ff ff 	movzbl -0xdc(%ebp),%eax
c0033c56:	85 c9                	test   %ecx,%ecx
c0033c58:	89 8d 5c ff ff ff    	mov    %ecx,-0xa4(%ebp)
c0033c5e:	88 85 65 ff ff ff    	mov    %al,-0x9b(%ebp)
c0033c64:	0f 88 2c 02 00 00    	js     c0033e96 <_svfprintf_r+0x1e76>
c0033c6a:	c6 85 66 ff ff ff 2b 	movb   $0x2b,-0x9a(%ebp)
c0033c71:	83 f9 09             	cmp    $0x9,%ecx
c0033c74:	0f 8f ea 00 00 00    	jg     c0033d64 <_svfprintf_r+0x1d44>
c0033c7a:	83 c1 30             	add    $0x30,%ecx
c0033c7d:	c6 85 67 ff ff ff 30 	movb   $0x30,-0x99(%ebp)
c0033c84:	8d 85 69 ff ff ff    	lea    -0x97(%ebp),%eax
c0033c8a:	88 8d 68 ff ff ff    	mov    %cl,-0x98(%ebp)
c0033c90:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c0033c96:	8d 95 65 ff ff ff    	lea    -0x9b(%ebp),%edx
c0033c9c:	29 d0                	sub    %edx,%eax
c0033c9e:	89 85 04 ff ff ff    	mov    %eax,-0xfc(%ebp)
c0033ca4:	89 da                	mov    %ebx,%edx
c0033ca6:	01 c2                	add    %eax,%edx
c0033ca8:	83 fb 01             	cmp    $0x1,%ebx
c0033cab:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0033cb1:	0f 8e 21 02 00 00    	jle    c0033ed8 <_svfprintf_r+0x1eb8>
c0033cb7:	31 c0                	xor    %eax,%eax
c0033cb9:	83 85 38 ff ff ff 01 	addl   $0x1,-0xc8(%ebp)
c0033cc0:	0f 49 85 38 ff ff ff 	cmovns -0xc8(%ebp),%eax
c0033cc7:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0033cce:	00 00 00 
c0033cd1:	e9 60 fb ff ff       	jmp    c0033836 <_svfprintf_r+0x1816>
c0033cd6:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c0033cdc:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0033ce3:	00 00 00 
c0033ce6:	e9 68 e4 ff ff       	jmp    c0032153 <_svfprintf_r+0x133>
c0033ceb:	ba 02 00 00 00       	mov    $0x2,%edx
c0033cf0:	e9 2d fe ff ff       	jmp    c0033b22 <_svfprintf_r+0x1b02>
c0033cf5:	d9 e0                	fchs   
c0033cf7:	c6 85 48 ff ff ff 2d 	movb   $0x2d,-0xb8(%ebp)
c0033cfe:	e9 38 fa ff ff       	jmp    c003373b <_svfprintf_r+0x171b>
c0033d03:	8b 8d 20 ff ff ff    	mov    -0xe0(%ebp),%ecx
c0033d09:	ba 01 00 00 00       	mov    $0x1,%edx
c0033d0e:	85 c9                	test   %ecx,%ecx
c0033d10:	0f 8e 5a 01 00 00    	jle    c0033e70 <_svfprintf_r+0x1e50>
c0033d16:	31 c0                	xor    %eax,%eax
c0033d18:	03 95 1c ff ff ff    	add    -0xe4(%ebp),%edx
c0033d1e:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
c0033d25:	00 00 00 
c0033d28:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0033d2e:	0f 49 c2             	cmovns %edx,%eax
c0033d31:	e9 00 fb ff ff       	jmp    c0033836 <_svfprintf_r+0x1816>
c0033d36:	85 c0                	test   %eax,%eax
c0033d38:	0f 8e 06 01 00 00    	jle    c0033e44 <_svfprintf_r+0x1e24>
c0033d3e:	8b b5 44 ff ff ff    	mov    -0xbc(%ebp),%esi
c0033d44:	85 f6                	test   %esi,%esi
c0033d46:	0f 85 d4 00 00 00    	jne    c0033e20 <_svfprintf_r+0x1e00>
c0033d4c:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0033d53:	0f 85 c7 00 00 00    	jne    c0033e20 <_svfprintf_r+0x1e00>
c0033d59:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0033d5f:	e9 d2 fa ff ff       	jmp    c0033836 <_svfprintf_r+0x1816>
c0033d64:	8d b5 73 ff ff ff    	lea    -0x8d(%ebp),%esi
c0033d6a:	89 f3                	mov    %esi,%ebx
c0033d6c:	b8 67 66 66 66       	mov    $0x66666667,%eax
c0033d71:	83 eb 01             	sub    $0x1,%ebx
c0033d74:	f7 e9                	imul   %ecx
c0033d76:	89 c8                	mov    %ecx,%eax
c0033d78:	c1 f8 1f             	sar    $0x1f,%eax
c0033d7b:	c1 fa 02             	sar    $0x2,%edx
c0033d7e:	29 c2                	sub    %eax,%edx
c0033d80:	8d 04 92             	lea    (%edx,%edx,4),%eax
c0033d83:	01 c0                	add    %eax,%eax
c0033d85:	29 c1                	sub    %eax,%ecx
c0033d87:	83 fa 09             	cmp    $0x9,%edx
c0033d8a:	8d 41 30             	lea    0x30(%ecx),%eax
c0033d8d:	89 d1                	mov    %edx,%ecx
c0033d8f:	88 03                	mov    %al,(%ebx)
c0033d91:	7f d9                	jg     c0033d6c <_svfprintf_r+0x1d4c>
c0033d93:	8d 43 ff             	lea    -0x1(%ebx),%eax
c0033d96:	83 c1 30             	add    $0x30,%ecx
c0033d99:	39 f0                	cmp    %esi,%eax
c0033d9b:	88 4b ff             	mov    %cl,-0x1(%ebx)
c0033d9e:	0f 83 6a 01 00 00    	jae    c0033f0e <_svfprintf_r+0x1eee>
c0033da4:	8d 95 67 ff ff ff    	lea    -0x99(%ebp),%edx
c0033daa:	eb 07                	jmp    c0033db3 <_svfprintf_r+0x1d93>
c0033dac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033db0:	0f b6 08             	movzbl (%eax),%ecx
c0033db3:	83 c0 01             	add    $0x1,%eax
c0033db6:	83 c2 01             	add    $0x1,%edx
c0033db9:	39 f0                	cmp    %esi,%eax
c0033dbb:	88 4a ff             	mov    %cl,-0x1(%edx)
c0033dbe:	75 f0                	jne    c0033db0 <_svfprintf_r+0x1d90>
c0033dc0:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033dc6:	29 d8                	sub    %ebx,%eax
c0033dc8:	8d 95 67 ff ff ff    	lea    -0x99(%ebp),%edx
c0033dce:	01 d0                	add    %edx,%eax
c0033dd0:	e9 bb fe ff ff       	jmp    c0033c90 <_svfprintf_r+0x1c70>
c0033dd5:	d9 ee                	fldz   
c0033dd7:	d9 c9                	fxch   %st(1)
c0033dd9:	db e9                	fucomi %st(1),%st
c0033ddb:	dd d9                	fstp   %st(1)
c0033ddd:	7a 06                	jp     c0033de5 <_svfprintf_r+0x1dc5>
c0033ddf:	0f 84 b9 fd ff ff    	je     c0033b9e <_svfprintf_r+0x1b7e>
c0033de5:	b8 01 00 00 00       	mov    $0x1,%eax
c0033dea:	2b 85 44 ff ff ff    	sub    -0xbc(%ebp),%eax
c0033df0:	89 85 5c ff ff ff    	mov    %eax,-0xa4(%ebp)
c0033df6:	01 c1                	add    %eax,%ecx
c0033df8:	e9 ac f9 ff ff       	jmp    c00337a9 <_svfprintf_r+0x1789>
c0033dfd:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c0033e03:	31 c0                	xor    %eax,%eax
c0033e05:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
c0033e0c:	00 00 00 
c0033e0f:	83 c2 01             	add    $0x1,%edx
c0033e12:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0033e18:	0f 49 c2             	cmovns %edx,%eax
c0033e1b:	e9 16 fa ff ff       	jmp    c0033836 <_svfprintf_r+0x1816>
c0033e20:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c0033e26:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c0033e2c:	8d 44 10 01          	lea    0x1(%eax,%edx,1),%eax
c0033e30:	89 c2                	mov    %eax,%edx
c0033e32:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0033e38:	31 c0                	xor    %eax,%eax
c0033e3a:	85 d2                	test   %edx,%edx
c0033e3c:	0f 49 c2             	cmovns %edx,%eax
c0033e3f:	e9 f2 f9 ff ff       	jmp    c0033836 <_svfprintf_r+0x1816>
c0033e44:	8b 9d 44 ff ff ff    	mov    -0xbc(%ebp),%ebx
c0033e4a:	85 db                	test   %ebx,%ebx
c0033e4c:	75 2f                	jne    c0033e7d <_svfprintf_r+0x1e5d>
c0033e4e:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0033e55:	75 26                	jne    c0033e7d <_svfprintf_r+0x1e5d>
c0033e57:	b8 01 00 00 00       	mov    $0x1,%eax
c0033e5c:	c7 85 38 ff ff ff 01 	movl   $0x1,-0xc8(%ebp)
c0033e63:	00 00 00 
c0033e66:	e9 cb f9 ff ff       	jmp    c0033836 <_svfprintf_r+0x1816>
c0033e6b:	90                   	nop
c0033e6c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033e70:	b2 02                	mov    $0x2,%dl
c0033e72:	2b 95 20 ff ff ff    	sub    -0xe0(%ebp),%edx
c0033e78:	e9 99 fe ff ff       	jmp    c0033d16 <_svfprintf_r+0x1cf6>
c0033e7d:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c0033e83:	31 c0                	xor    %eax,%eax
c0033e85:	83 c2 02             	add    $0x2,%edx
c0033e88:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0033e8e:	0f 49 c2             	cmovns %edx,%eax
c0033e91:	e9 a0 f9 ff ff       	jmp    c0033836 <_svfprintf_r+0x1816>
c0033e96:	f7 d9                	neg    %ecx
c0033e98:	c6 85 66 ff ff ff 2d 	movb   $0x2d,-0x9a(%ebp)
c0033e9f:	e9 cd fd ff ff       	jmp    c0033c71 <_svfprintf_r+0x1c51>
c0033ea4:	8b 55 14             	mov    0x14(%ebp),%edx
c0033ea7:	8b 45 14             	mov    0x14(%ebp),%eax
c0033eaa:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c0033eb0:	8b 12                	mov    (%edx),%edx
c0033eb2:	83 c0 04             	add    $0x4,%eax
c0033eb5:	89 45 14             	mov    %eax,0x14(%ebp)
c0033eb8:	85 d2                	test   %edx,%edx
c0033eba:	89 95 44 ff ff ff    	mov    %edx,-0xbc(%ebp)
c0033ec0:	0f 89 a9 e2 ff ff    	jns    c003216f <_svfprintf_r+0x14f>
c0033ec6:	c7 85 44 ff ff ff ff 	movl   $0xffffffff,-0xbc(%ebp)
c0033ecd:	ff ff ff 
c0033ed0:	89 c8                	mov    %ecx,%eax
c0033ed2:	e9 76 e2 ff ff       	jmp    c003214d <_svfprintf_r+0x12d>
c0033ed7:	90                   	nop
c0033ed8:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
c0033ede:	83 e0 01             	and    $0x1,%eax
c0033ee1:	0f 85 d0 fd ff ff    	jne    c0033cb7 <_svfprintf_r+0x1c97>
c0033ee7:	85 d2                	test   %edx,%edx
c0033ee9:	0f 49 c2             	cmovns %edx,%eax
c0033eec:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0033ef3:	00 00 00 
c0033ef6:	e9 3b f9 ff ff       	jmp    c0033836 <_svfprintf_r+0x1816>
c0033efb:	8b 45 08             	mov    0x8(%ebp),%eax
c0033efe:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0033f04:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0033f09:	e9 f5 e2 ff ff       	jmp    c0032203 <_svfprintf_r+0x1e3>
c0033f0e:	8d 85 67 ff ff ff    	lea    -0x99(%ebp),%eax
c0033f14:	e9 77 fd ff ff       	jmp    c0033c90 <_svfprintf_r+0x1c70>
c0033f19:	66 90                	xchg   %ax,%ax
c0033f1b:	66 90                	xchg   %ax,%ax
c0033f1d:	66 90                	xchg   %ax,%ax
c0033f1f:	90                   	nop

c0033f20 <quorem>:
c0033f20:	55                   	push   %ebp
c0033f21:	89 c1                	mov    %eax,%ecx
c0033f23:	89 e5                	mov    %esp,%ebp
c0033f25:	57                   	push   %edi
c0033f26:	89 d7                	mov    %edx,%edi
c0033f28:	56                   	push   %esi
c0033f29:	53                   	push   %ebx
c0033f2a:	83 ec 3c             	sub    $0x3c,%esp
c0033f2d:	89 45 d0             	mov    %eax,-0x30(%ebp)
c0033f30:	8b 42 10             	mov    0x10(%edx),%eax
c0033f33:	3b 41 10             	cmp    0x10(%ecx),%eax
c0033f36:	89 55 c8             	mov    %edx,-0x38(%ebp)
c0033f39:	89 ca                	mov    %ecx,%edx
c0033f3b:	0f 8f 9f 01 00 00    	jg     c00340e0 <quorem+0x1c0>
c0033f41:	83 e8 01             	sub    $0x1,%eax
c0033f44:	83 c7 14             	add    $0x14,%edi
c0033f47:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0033f4a:	c1 e0 02             	shl    $0x2,%eax
c0033f4d:	83 c2 14             	add    $0x14,%edx
c0033f50:	8d 1c 07             	lea    (%edi,%eax,1),%ebx
c0033f53:	01 d0                	add    %edx,%eax
c0033f55:	89 55 d8             	mov    %edx,-0x28(%ebp)
c0033f58:	8b 13                	mov    (%ebx),%edx
c0033f5a:	89 45 c4             	mov    %eax,-0x3c(%ebp)
c0033f5d:	8b 00                	mov    (%eax),%eax
c0033f5f:	89 5d e4             	mov    %ebx,-0x1c(%ebp)
c0033f62:	8d 4a 01             	lea    0x1(%edx),%ecx
c0033f65:	31 d2                	xor    %edx,%edx
c0033f67:	f7 f1                	div    %ecx
c0033f69:	85 c0                	test   %eax,%eax
c0033f6b:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0033f6e:	89 45 cc             	mov    %eax,-0x34(%ebp)
c0033f71:	0f 84 b5 00 00 00    	je     c003402c <quorem+0x10c>
c0033f77:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0033f7a:	31 f6                	xor    %esi,%esi
c0033f7c:	89 fa                	mov    %edi,%edx
c0033f7e:	89 7d c0             	mov    %edi,-0x40(%ebp)
c0033f81:	89 f7                	mov    %esi,%edi
c0033f83:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
c0033f8a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0033f90:	83 c2 04             	add    $0x4,%edx
c0033f93:	8b 72 fc             	mov    -0x4(%edx),%esi
c0033f96:	83 c0 04             	add    $0x4,%eax
c0033f99:	0f b7 ce             	movzwl %si,%ecx
c0033f9c:	0f af 4d e0          	imul   -0x20(%ebp),%ecx
c0033fa0:	03 4d dc             	add    -0x24(%ebp),%ecx
c0033fa3:	c1 ee 10             	shr    $0x10,%esi
c0033fa6:	0f af 75 e0          	imul   -0x20(%ebp),%esi
c0033faa:	89 cb                	mov    %ecx,%ebx
c0033fac:	0f b7 c9             	movzwl %cx,%ecx
c0033faf:	c1 eb 10             	shr    $0x10,%ebx
c0033fb2:	29 cf                	sub    %ecx,%edi
c0033fb4:	01 f3                	add    %esi,%ebx
c0033fb6:	89 de                	mov    %ebx,%esi
c0033fb8:	0f b7 db             	movzwl %bx,%ebx
c0033fbb:	c1 ee 10             	shr    $0x10,%esi
c0033fbe:	89 75 dc             	mov    %esi,-0x24(%ebp)
c0033fc1:	8b 70 fc             	mov    -0x4(%eax),%esi
c0033fc4:	0f b7 ce             	movzwl %si,%ecx
c0033fc7:	01 f9                	add    %edi,%ecx
c0033fc9:	c1 ee 10             	shr    $0x10,%esi
c0033fcc:	29 de                	sub    %ebx,%esi
c0033fce:	89 cb                	mov    %ecx,%ebx
c0033fd0:	c1 fb 10             	sar    $0x10,%ebx
c0033fd3:	0f b7 c9             	movzwl %cx,%ecx
c0033fd6:	01 de                	add    %ebx,%esi
c0033fd8:	89 f7                	mov    %esi,%edi
c0033fda:	c1 e6 10             	shl    $0x10,%esi
c0033fdd:	09 ce                	or     %ecx,%esi
c0033fdf:	c1 ff 10             	sar    $0x10,%edi
c0033fe2:	39 55 e4             	cmp    %edx,-0x1c(%ebp)
c0033fe5:	89 70 fc             	mov    %esi,-0x4(%eax)
c0033fe8:	73 a6                	jae    c0033f90 <quorem+0x70>
c0033fea:	8b 45 c4             	mov    -0x3c(%ebp),%eax
c0033fed:	8b 7d c0             	mov    -0x40(%ebp),%edi
c0033ff0:	8b 10                	mov    (%eax),%edx
c0033ff2:	85 d2                	test   %edx,%edx
c0033ff4:	75 36                	jne    c003402c <quorem+0x10c>
c0033ff6:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c0033ff9:	89 c2                	mov    %eax,%edx
c0033ffb:	83 e8 04             	sub    $0x4,%eax
c0033ffe:	39 c1                	cmp    %eax,%ecx
c0034000:	73 21                	jae    c0034023 <quorem+0x103>
c0034002:	8b 72 fc             	mov    -0x4(%edx),%esi
c0034005:	85 f6                	test   %esi,%esi
c0034007:	75 1a                	jne    c0034023 <quorem+0x103>
c0034009:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c003400c:	eb 08                	jmp    c0034016 <quorem+0xf6>
c003400e:	66 90                	xchg   %ax,%ax
c0034010:	8b 18                	mov    (%eax),%ebx
c0034012:	85 db                	test   %ebx,%ebx
c0034014:	75 0a                	jne    c0034020 <quorem+0x100>
c0034016:	83 e8 04             	sub    $0x4,%eax
c0034019:	83 ea 01             	sub    $0x1,%edx
c003401c:	39 c1                	cmp    %eax,%ecx
c003401e:	72 f0                	jb     c0034010 <quorem+0xf0>
c0034020:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c0034023:	8b 45 d0             	mov    -0x30(%ebp),%eax
c0034026:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c0034029:	89 50 10             	mov    %edx,0x10(%eax)
c003402c:	8b 45 c8             	mov    -0x38(%ebp),%eax
c003402f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034033:	8b 45 d0             	mov    -0x30(%ebp),%eax
c0034036:	89 04 24             	mov    %eax,(%esp)
c0034039:	e8 a2 23 00 00       	call   c00363e0 <__mcmp>
c003403e:	85 c0                	test   %eax,%eax
c0034040:	0f 88 8e 00 00 00    	js     c00340d4 <quorem+0x1b4>
c0034046:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0034049:	31 f6                	xor    %esi,%esi
c003404b:	83 c0 01             	add    $0x1,%eax
c003404e:	89 45 cc             	mov    %eax,-0x34(%ebp)
c0034051:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0034054:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034058:	83 c7 04             	add    $0x4,%edi
c003405b:	8b 4f fc             	mov    -0x4(%edi),%ecx
c003405e:	83 c0 04             	add    $0x4,%eax
c0034061:	8b 58 fc             	mov    -0x4(%eax),%ebx
c0034064:	0f b7 d1             	movzwl %cx,%edx
c0034067:	29 d6                	sub    %edx,%esi
c0034069:	0f b7 d3             	movzwl %bx,%edx
c003406c:	01 f2                	add    %esi,%edx
c003406e:	c1 e9 10             	shr    $0x10,%ecx
c0034071:	c1 eb 10             	shr    $0x10,%ebx
c0034074:	29 cb                	sub    %ecx,%ebx
c0034076:	89 d1                	mov    %edx,%ecx
c0034078:	c1 f9 10             	sar    $0x10,%ecx
c003407b:	0f b7 d2             	movzwl %dx,%edx
c003407e:	01 cb                	add    %ecx,%ebx
c0034080:	89 de                	mov    %ebx,%esi
c0034082:	c1 e3 10             	shl    $0x10,%ebx
c0034085:	09 d3                	or     %edx,%ebx
c0034087:	c1 fe 10             	sar    $0x10,%esi
c003408a:	39 7d e4             	cmp    %edi,-0x1c(%ebp)
c003408d:	89 58 fc             	mov    %ebx,-0x4(%eax)
c0034090:	73 c6                	jae    c0034058 <quorem+0x138>
c0034092:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0034095:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c0034098:	8d 14 b8             	lea    (%eax,%edi,4),%edx
c003409b:	8b 02                	mov    (%edx),%eax
c003409d:	85 c0                	test   %eax,%eax
c003409f:	75 33                	jne    c00340d4 <quorem+0x1b4>
c00340a1:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c00340a4:	8d 42 fc             	lea    -0x4(%edx),%eax
c00340a7:	39 c1                	cmp    %eax,%ecx
c00340a9:	73 20                	jae    c00340cb <quorem+0x1ab>
c00340ab:	8b 72 fc             	mov    -0x4(%edx),%esi
c00340ae:	85 f6                	test   %esi,%esi
c00340b0:	75 19                	jne    c00340cb <quorem+0x1ab>
c00340b2:	89 fa                	mov    %edi,%edx
c00340b4:	eb 08                	jmp    c00340be <quorem+0x19e>
c00340b6:	66 90                	xchg   %ax,%ax
c00340b8:	8b 18                	mov    (%eax),%ebx
c00340ba:	85 db                	test   %ebx,%ebx
c00340bc:	75 0a                	jne    c00340c8 <quorem+0x1a8>
c00340be:	83 e8 04             	sub    $0x4,%eax
c00340c1:	83 ea 01             	sub    $0x1,%edx
c00340c4:	39 c1                	cmp    %eax,%ecx
c00340c6:	72 f0                	jb     c00340b8 <quorem+0x198>
c00340c8:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c00340cb:	8b 45 d0             	mov    -0x30(%ebp),%eax
c00340ce:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c00340d1:	89 78 10             	mov    %edi,0x10(%eax)
c00340d4:	8b 45 cc             	mov    -0x34(%ebp),%eax
c00340d7:	83 c4 3c             	add    $0x3c,%esp
c00340da:	5b                   	pop    %ebx
c00340db:	5e                   	pop    %esi
c00340dc:	5f                   	pop    %edi
c00340dd:	5d                   	pop    %ebp
c00340de:	c3                   	ret    
c00340df:	90                   	nop
c00340e0:	83 c4 3c             	add    $0x3c,%esp
c00340e3:	31 c0                	xor    %eax,%eax
c00340e5:	5b                   	pop    %ebx
c00340e6:	5e                   	pop    %esi
c00340e7:	5f                   	pop    %edi
c00340e8:	5d                   	pop    %ebp
c00340e9:	c3                   	ret    
c00340ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c00340f0 <_dtoa_r>:
c00340f0:	55                   	push   %ebp
c00340f1:	89 e5                	mov    %esp,%ebp
c00340f3:	57                   	push   %edi
c00340f4:	56                   	push   %esi
c00340f5:	53                   	push   %ebx
c00340f6:	81 ec 8c 00 00 00    	sub    $0x8c,%esp
c00340fc:	8b 75 08             	mov    0x8(%ebp),%esi
c00340ff:	dd 45 0c             	fldl   0xc(%ebp)
c0034102:	8b 5d 20             	mov    0x20(%ebp),%ebx
c0034105:	dd 5d c0             	fstpl  -0x40(%ebp)
c0034108:	8b 46 40             	mov    0x40(%esi),%eax
c003410b:	85 c0                	test   %eax,%eax
c003410d:	74 23                	je     c0034132 <_dtoa_r+0x42>
c003410f:	8b 4e 44             	mov    0x44(%esi),%ecx
c0034112:	ba 01 00 00 00       	mov    $0x1,%edx
c0034117:	d3 e2                	shl    %cl,%edx
c0034119:	89 48 04             	mov    %ecx,0x4(%eax)
c003411c:	89 50 08             	mov    %edx,0x8(%eax)
c003411f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034123:	89 34 24             	mov    %esi,(%esp)
c0034126:	e8 95 1b 00 00       	call   c0035cc0 <_Bfree>
c003412b:	c7 46 40 00 00 00 00 	movl   $0x0,0x40(%esi)
c0034132:	8b 7d c4             	mov    -0x3c(%ebp),%edi
c0034135:	85 ff                	test   %edi,%edi
c0034137:	0f 88 3b 02 00 00    	js     c0034378 <_dtoa_r+0x288>
c003413d:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
c0034143:	89 f8                	mov    %edi,%eax
c0034145:	25 00 00 f0 7f       	and    $0x7ff00000,%eax
c003414a:	3d 00 00 f0 7f       	cmp    $0x7ff00000,%eax
c003414f:	0f 84 e3 01 00 00    	je     c0034338 <_dtoa_r+0x248>
c0034155:	dd 45 c0             	fldl   -0x40(%ebp)
c0034158:	d9 ee                	fldz   
c003415a:	d9 c9                	fxch   %st(1)
c003415c:	db e9                	fucomi %st(1),%st
c003415e:	dd d9                	fstp   %st(1)
c0034160:	7a 36                	jp     c0034198 <_dtoa_r+0xa8>
c0034162:	75 34                	jne    c0034198 <_dtoa_r+0xa8>
c0034164:	dd d8                	fstp   %st(0)
c0034166:	8b 4d 24             	mov    0x24(%ebp),%ecx
c0034169:	8b 45 1c             	mov    0x1c(%ebp),%eax
c003416c:	85 c9                	test   %ecx,%ecx
c003416e:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
c0034174:	0f 84 4e 02 00 00    	je     c00343c8 <_dtoa_r+0x2d8>
c003417a:	8b 45 24             	mov    0x24(%ebp),%eax
c003417d:	c7 00 30 98 03 c0    	movl   $0xc0039830,(%eax)
c0034183:	b8 2f 98 03 c0       	mov    $0xc003982f,%eax
c0034188:	81 c4 8c 00 00 00    	add    $0x8c,%esp
c003418e:	5b                   	pop    %ebx
c003418f:	5e                   	pop    %esi
c0034190:	5f                   	pop    %edi
c0034191:	5d                   	pop    %ebp
c0034192:	c3                   	ret    
c0034193:	90                   	nop
c0034194:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034198:	8d 45 e0             	lea    -0x20(%ebp),%eax
c003419b:	89 fb                	mov    %edi,%ebx
c003419d:	89 44 24 10          	mov    %eax,0x10(%esp)
c00341a1:	8d 45 e4             	lea    -0x1c(%ebp),%eax
c00341a4:	dd 54 24 04          	fstl   0x4(%esp)
c00341a8:	89 44 24 0c          	mov    %eax,0xc(%esp)
c00341ac:	dd 5d b8             	fstpl  -0x48(%ebp)
c00341af:	89 34 24             	mov    %esi,(%esp)
c00341b2:	c1 eb 14             	shr    $0x14,%ebx
c00341b5:	e8 76 25 00 00       	call   c0036730 <__d2b>
c00341ba:	85 db                	test   %ebx,%ebx
c00341bc:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c00341bf:	0f 85 db 01 00 00    	jne    c00343a0 <_dtoa_r+0x2b0>
c00341c5:	8b 45 e0             	mov    -0x20(%ebp),%eax
c00341c8:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
c00341cb:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c00341ce:	01 c3                	add    %eax,%ebx
c00341d0:	81 fb ef fb ff ff    	cmp    $0xfffffbef,%ebx
c00341d6:	0f 8c ec 07 00 00    	jl     c00349c8 <_dtoa_r+0x8d8>
c00341dc:	8b 55 c0             	mov    -0x40(%ebp),%edx
c00341df:	b9 0e fc ff ff       	mov    $0xfffffc0e,%ecx
c00341e4:	89 f8                	mov    %edi,%eax
c00341e6:	29 d9                	sub    %ebx,%ecx
c00341e8:	d3 e0                	shl    %cl,%eax
c00341ea:	8d 8b 12 04 00 00    	lea    0x412(%ebx),%ecx
c00341f0:	d3 ea                	shr    %cl,%edx
c00341f2:	09 d0                	or     %edx,%eax
c00341f4:	31 d2                	xor    %edx,%edx
c00341f6:	83 eb 01             	sub    $0x1,%ebx
c00341f9:	89 55 cc             	mov    %edx,-0x34(%ebp)
c00341fc:	8b 55 b4             	mov    -0x4c(%ebp),%edx
c00341ff:	89 45 c8             	mov    %eax,-0x38(%ebp)
c0034202:	df 6d c8             	fildll -0x38(%ebp)
c0034205:	dd 5d b8             	fstpl  -0x48(%ebp)
c0034208:	81 6d bc 00 00 f0 01 	subl   $0x1f00000,-0x44(%ebp)
c003420f:	c7 45 8c 01 00 00 00 	movl   $0x1,-0x74(%ebp)
c0034216:	dd 45 b8             	fldl   -0x48(%ebp)
c0034219:	d8 25 c8 99 03 c0    	fsubs  0xc00399c8
c003421f:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
c0034222:	d9 7d d2             	fnstcw -0x2e(%ebp)
c0034225:	dc 0d e0 99 03 c0    	fmull  0xc00399e0
c003422b:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c003422f:	b4 0c                	mov    $0xc,%ah
c0034231:	dc 05 e8 99 03 c0    	faddl  0xc00399e8
c0034237:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c003423b:	db 45 d4             	fildl  -0x2c(%ebp)
c003423e:	dc 0d f0 99 03 c0    	fmull  0xc00399f0
c0034244:	de c1                	faddp  %st,%st(1)
c0034246:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034249:	db 55 b8             	fistl  -0x48(%ebp)
c003424c:	d9 6d d2             	fldcw  -0x2e(%ebp)
c003424f:	d9 ee                	fldz   
c0034251:	df e9                	fucomip %st(1),%st
c0034253:	0f 87 27 07 00 00    	ja     c0034980 <_dtoa_r+0x890>
c0034259:	dd d8                	fstp   %st(0)
c003425b:	83 7d b8 16          	cmpl   $0x16,-0x48(%ebp)
c003425f:	c7 45 9c 01 00 00 00 	movl   $0x1,-0x64(%ebp)
c0034266:	77 24                	ja     c003428c <_dtoa_r+0x19c>
c0034268:	8b 45 b8             	mov    -0x48(%ebp),%eax
c003426b:	dd 04 c5 a0 9a 03 c0 	fldl   -0x3ffc6560(,%eax,8)
c0034272:	dd 45 c0             	fldl   -0x40(%ebp)
c0034275:	d9 c9                	fxch   %st(1)
c0034277:	df e9                	fucomip %st(1),%st
c0034279:	dd d8                	fstp   %st(0)
c003427b:	0f 86 5f 07 00 00    	jbe    c00349e0 <_dtoa_r+0x8f0>
c0034281:	83 6d b8 01          	subl   $0x1,-0x48(%ebp)
c0034285:	c7 45 9c 00 00 00 00 	movl   $0x0,-0x64(%ebp)
c003428c:	89 d0                	mov    %edx,%eax
c003428e:	29 d8                	sub    %ebx,%eax
c0034290:	83 e8 01             	sub    $0x1,%eax
c0034293:	c7 45 a0 00 00 00 00 	movl   $0x0,-0x60(%ebp)
c003429a:	89 45 ac             	mov    %eax,-0x54(%ebp)
c003429d:	0f 88 0d 07 00 00    	js     c00349b0 <_dtoa_r+0x8c0>
c00342a3:	8b 45 b8             	mov    -0x48(%ebp),%eax
c00342a6:	85 c0                	test   %eax,%eax
c00342a8:	0f 88 ea 06 00 00    	js     c0034998 <_dtoa_r+0x8a8>
c00342ae:	01 45 ac             	add    %eax,-0x54(%ebp)
c00342b1:	89 45 94             	mov    %eax,-0x6c(%ebp)
c00342b4:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c00342bb:	83 7d 14 09          	cmpl   $0x9,0x14(%ebp)
c00342bf:	0f 87 0b 03 00 00    	ja     c00345d0 <_dtoa_r+0x4e0>
c00342c5:	83 7d 14 05          	cmpl   $0x5,0x14(%ebp)
c00342c9:	0f 8e 23 10 00 00    	jle    c00352f2 <_dtoa_r+0x1202>
c00342cf:	83 6d 14 04          	subl   $0x4,0x14(%ebp)
c00342d3:	31 c0                	xor    %eax,%eax
c00342d5:	83 7d 14 03          	cmpl   $0x3,0x14(%ebp)
c00342d9:	0f 84 43 0d 00 00    	je     c0035022 <_dtoa_r+0xf32>
c00342df:	0f 8e f3 00 00 00    	jle    c00343d8 <_dtoa_r+0x2e8>
c00342e5:	83 7d 14 04          	cmpl   $0x4,0x14(%ebp)
c00342e9:	c7 45 98 01 00 00 00 	movl   $0x1,-0x68(%ebp)
c00342f0:	0f 84 f3 00 00 00    	je     c00343e9 <_dtoa_r+0x2f9>
c00342f6:	83 7d 14 05          	cmpl   $0x5,0x14(%ebp)
c00342fa:	0f 85 d7 02 00 00    	jne    c00345d7 <_dtoa_r+0x4e7>
c0034300:	8b 5d b8             	mov    -0x48(%ebp),%ebx
c0034303:	03 5d 18             	add    0x18(%ebp),%ebx
c0034306:	89 5d 90             	mov    %ebx,-0x70(%ebp)
c0034309:	83 c3 01             	add    $0x1,%ebx
c003430c:	83 fb 0e             	cmp    $0xe,%ebx
c003430f:	0f 96 c2             	setbe  %dl
c0034312:	85 db                	test   %ebx,%ebx
c0034314:	89 5d a8             	mov    %ebx,-0x58(%ebp)
c0034317:	0f 8e a7 08 00 00    	jle    c0034bc4 <_dtoa_r+0xad4>
c003431d:	8b 5d a8             	mov    -0x58(%ebp),%ebx
c0034320:	83 fb 0e             	cmp    $0xe,%ebx
c0034323:	89 df                	mov    %ebx,%edi
c0034325:	0f 96 45 b4          	setbe  -0x4c(%ebp)
c0034329:	20 45 b4             	and    %al,-0x4c(%ebp)
c003432c:	e9 d6 00 00 00       	jmp    c0034407 <_dtoa_r+0x317>
c0034331:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034338:	8b 55 c0             	mov    -0x40(%ebp),%edx
c003433b:	8b 45 1c             	mov    0x1c(%ebp),%eax
c003433e:	85 d2                	test   %edx,%edx
c0034340:	c7 00 0f 27 00 00    	movl   $0x270f,(%eax)
c0034346:	b8 c1 99 03 c0       	mov    $0xc00399c1,%eax
c003434b:	74 43                	je     c0034390 <_dtoa_r+0x2a0>
c003434d:	8b 5d 24             	mov    0x24(%ebp),%ebx
c0034350:	85 db                	test   %ebx,%ebx
c0034352:	0f 84 30 fe ff ff    	je     c0034188 <_dtoa_r+0x98>
c0034358:	8b 75 24             	mov    0x24(%ebp),%esi
c003435b:	8d 50 08             	lea    0x8(%eax),%edx
c003435e:	80 78 03 00          	cmpb   $0x0,0x3(%eax)
c0034362:	8d 48 03             	lea    0x3(%eax),%ecx
c0034365:	0f 44 d1             	cmove  %ecx,%edx
c0034368:	89 16                	mov    %edx,(%esi)
c003436a:	81 c4 8c 00 00 00    	add    $0x8c,%esp
c0034370:	5b                   	pop    %ebx
c0034371:	5e                   	pop    %esi
c0034372:	5f                   	pop    %edi
c0034373:	5d                   	pop    %ebp
c0034374:	c3                   	ret    
c0034375:	8d 76 00             	lea    0x0(%esi),%esi
c0034378:	81 e7 ff ff ff 7f    	and    $0x7fffffff,%edi
c003437e:	c7 03 01 00 00 00    	movl   $0x1,(%ebx)
c0034384:	89 7d c4             	mov    %edi,-0x3c(%ebp)
c0034387:	e9 b7 fd ff ff       	jmp    c0034143 <_dtoa_r+0x53>
c003438c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034390:	81 e7 ff ff 0f 00    	and    $0xfffff,%edi
c0034396:	ba b8 99 03 c0       	mov    $0xc00399b8,%edx
c003439b:	0f 44 c2             	cmove  %edx,%eax
c003439e:	eb ad                	jmp    c003434d <_dtoa_r+0x25d>
c00343a0:	8b 45 bc             	mov    -0x44(%ebp),%eax
c00343a3:	81 eb ff 03 00 00    	sub    $0x3ff,%ebx
c00343a9:	8b 55 e0             	mov    -0x20(%ebp),%edx
c00343ac:	c7 45 8c 00 00 00 00 	movl   $0x0,-0x74(%ebp)
c00343b3:	25 ff ff 0f 00       	and    $0xfffff,%eax
c00343b8:	0d 00 00 f0 3f       	or     $0x3ff00000,%eax
c00343bd:	89 45 bc             	mov    %eax,-0x44(%ebp)
c00343c0:	e9 51 fe ff ff       	jmp    c0034216 <_dtoa_r+0x126>
c00343c5:	8d 76 00             	lea    0x0(%esi),%esi
c00343c8:	b8 2f 98 03 c0       	mov    $0xc003982f,%eax
c00343cd:	e9 b6 fd ff ff       	jmp    c0034188 <_dtoa_r+0x98>
c00343d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00343d8:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c00343dc:	c7 45 98 00 00 00 00 	movl   $0x0,-0x68(%ebp)
c00343e3:	0f 85 ee 01 00 00    	jne    c00345d7 <_dtoa_r+0x4e7>
c00343e9:	8b 55 18             	mov    0x18(%ebp),%edx
c00343ec:	85 d2                	test   %edx,%edx
c00343ee:	0f 8e b6 07 00 00    	jle    c0034baa <_dtoa_r+0xaba>
c00343f4:	8b 7d 18             	mov    0x18(%ebp),%edi
c00343f7:	83 ff 0e             	cmp    $0xe,%edi
c00343fa:	0f 96 45 b4          	setbe  -0x4c(%ebp)
c00343fe:	20 45 b4             	and    %al,-0x4c(%ebp)
c0034401:	89 7d 90             	mov    %edi,-0x70(%ebp)
c0034404:	89 7d a8             	mov    %edi,-0x58(%ebp)
c0034407:	83 ff 17             	cmp    $0x17,%edi
c003440a:	c7 46 44 00 00 00 00 	movl   $0x0,0x44(%esi)
c0034411:	0f 86 e5 0e 00 00    	jbe    c00352fc <_dtoa_r+0x120c>
c0034417:	b9 01 00 00 00       	mov    $0x1,%ecx
c003441c:	b8 04 00 00 00       	mov    $0x4,%eax
c0034421:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034428:	01 c0                	add    %eax,%eax
c003442a:	89 ca                	mov    %ecx,%edx
c003442c:	8d 58 14             	lea    0x14(%eax),%ebx
c003442f:	39 fb                	cmp    %edi,%ebx
c0034431:	8d 49 01             	lea    0x1(%ecx),%ecx
c0034434:	76 f2                	jbe    c0034428 <_dtoa_r+0x338>
c0034436:	89 56 44             	mov    %edx,0x44(%esi)
c0034439:	89 54 24 04          	mov    %edx,0x4(%esp)
c003443d:	89 34 24             	mov    %esi,(%esp)
c0034440:	e8 db 17 00 00       	call   c0035c20 <_Balloc>
c0034445:	80 7d b4 00          	cmpb   $0x0,-0x4c(%ebp)
c0034449:	89 c7                	mov    %eax,%edi
c003444b:	89 46 40             	mov    %eax,0x40(%esi)
c003444e:	0f 84 bb 01 00 00    	je     c003460f <_dtoa_r+0x51f>
c0034454:	8b 5d b8             	mov    -0x48(%ebp),%ebx
c0034457:	dd 45 c0             	fldl   -0x40(%ebp)
c003445a:	85 db                	test   %ebx,%ebx
c003445c:	0f 8e de 07 00 00    	jle    c0034c40 <_dtoa_r+0xb50>
c0034462:	89 d8                	mov    %ebx,%eax
c0034464:	83 e0 0f             	and    $0xf,%eax
c0034467:	dd 04 c5 a0 9a 03 c0 	fldl   -0x3ffc6560(,%eax,8)
c003446e:	89 d8                	mov    %ebx,%eax
c0034470:	c1 f8 04             	sar    $0x4,%eax
c0034473:	a8 10                	test   $0x10,%al
c0034475:	0f 84 cd 05 00 00    	je     c0034a48 <_dtoa_r+0x958>
c003447b:	dd 05 80 9a 03 c0    	fldl   0xc0039a80
c0034481:	83 e0 0f             	and    $0xf,%eax
c0034484:	b9 03 00 00 00       	mov    $0x3,%ecx
c0034489:	d8 fa                	fdivr  %st(2),%st
c003448b:	85 c0                	test   %eax,%eax
c003448d:	74 22                	je     c00344b1 <_dtoa_r+0x3c1>
c003448f:	31 d2                	xor    %edx,%edx
c0034491:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034498:	a8 01                	test   $0x1,%al
c003449a:	74 0e                	je     c00344aa <_dtoa_r+0x3ba>
c003449c:	d9 c9                	fxch   %st(1)
c003449e:	dc 0c d5 60 9a 03 c0 	fmull  -0x3ffc65a0(,%edx,8)
c00344a5:	d9 c9                	fxch   %st(1)
c00344a7:	83 c1 01             	add    $0x1,%ecx
c00344aa:	83 c2 01             	add    $0x1,%edx
c00344ad:	d1 f8                	sar    %eax
c00344af:	75 e7                	jne    c0034498 <_dtoa_r+0x3a8>
c00344b1:	de f1                	fdivp  %st,%st(1)
c00344b3:	8b 45 9c             	mov    -0x64(%ebp),%eax
c00344b6:	85 c0                	test   %eax,%eax
c00344b8:	74 0a                	je     c00344c4 <_dtoa_r+0x3d4>
c00344ba:	d9 e8                	fld1   
c00344bc:	df e9                	fucomip %st(1),%st
c00344be:	0f 87 92 0b 00 00    	ja     c0035056 <_dtoa_r+0xf66>
c00344c4:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c00344c7:	8b 45 a8             	mov    -0x58(%ebp),%eax
c00344ca:	db 45 d4             	fildl  -0x2c(%ebp)
c00344cd:	d8 c9                	fmul   %st(1),%st
c00344cf:	d8 05 d4 99 03 c0    	fadds  0xc00399d4
c00344d5:	dd 5d c0             	fstpl  -0x40(%ebp)
c00344d8:	81 6d c4 00 00 40 03 	subl   $0x3400000,-0x3c(%ebp)
c00344df:	85 c0                	test   %eax,%eax
c00344e1:	0f 84 89 05 00 00    	je     c0034a70 <_dtoa_r+0x980>
c00344e7:	8b 45 b8             	mov    -0x48(%ebp),%eax
c00344ea:	8b 4d a8             	mov    -0x58(%ebp),%ecx
c00344ed:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c00344f0:	8b 45 98             	mov    -0x68(%ebp),%eax
c00344f3:	85 c0                	test   %eax,%eax
c00344f5:	0f 84 b5 07 00 00    	je     c0034cb0 <_dtoa_r+0xbc0>
c00344fb:	d9 05 dc 99 03 c0    	flds   0xc00399dc
c0034501:	8d 57 01             	lea    0x1(%edi),%edx
c0034504:	dc 34 cd 98 9a 03 c0 	fdivl  -0x3ffc6568(,%ecx,8)
c003450b:	d9 7d d2             	fnstcw -0x2e(%ebp)
c003450e:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c0034512:	b4 0c                	mov    $0xc,%ah
c0034514:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c0034518:	dc 65 c0             	fsubl  -0x40(%ebp)
c003451b:	d9 c9                	fxch   %st(1)
c003451d:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034520:	db 55 d4             	fistl  -0x2c(%ebp)
c0034523:	d9 6d d2             	fldcw  -0x2e(%ebp)
c0034526:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c0034529:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c003452c:	83 c0 30             	add    $0x30,%eax
c003452f:	db 45 d4             	fildl  -0x2c(%ebp)
c0034532:	de e9                	fsubrp %st,%st(1)
c0034534:	d9 c9                	fxch   %st(1)
c0034536:	88 07                	mov    %al,(%edi)
c0034538:	db e9                	fucomi %st(1),%st
c003453a:	77 7f                	ja     c00345bb <_dtoa_r+0x4cb>
c003453c:	d9 c1                	fld    %st(1)
c003453e:	d8 2d cc 99 03 c0    	fsubrs 0xc00399cc
c0034544:	d9 c9                	fxch   %st(1)
c0034546:	db e9                	fucomi %st(1),%st
c0034548:	dd d9                	fstp   %st(1)
c003454a:	0f 87 33 0c 00 00    	ja     c0035183 <_dtoa_r+0x1093>
c0034550:	83 f9 01             	cmp    $0x1,%ecx
c0034553:	0f 8e c4 06 00 00    	jle    c0034c1d <_dtoa_r+0xb2d>
c0034559:	01 f9                	add    %edi,%ecx
c003455b:	d9 05 d0 99 03 c0    	flds   0xc00399d0
c0034561:	eb 25                	jmp    c0034588 <_dtoa_r+0x498>
c0034563:	90                   	nop
c0034564:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034568:	d9 c1                	fld    %st(1)
c003456a:	d8 2d cc 99 03 c0    	fsubrs 0xc00399cc
c0034570:	d9 c9                	fxch   %st(1)
c0034572:	db e9                	fucomi %st(1),%st
c0034574:	dd d9                	fstp   %st(1)
c0034576:	0f 87 14 0c 00 00    	ja     c0035190 <_dtoa_r+0x10a0>
c003457c:	39 ca                	cmp    %ecx,%edx
c003457e:	0f 84 a4 06 00 00    	je     c0034c28 <_dtoa_r+0xb38>
c0034584:	d9 c9                	fxch   %st(1)
c0034586:	d9 ca                	fxch   %st(2)
c0034588:	dc c9                	fmul   %st,%st(1)
c003458a:	83 c2 01             	add    $0x1,%edx
c003458d:	dc ca                	fmul   %st,%st(2)
c003458f:	d9 ca                	fxch   %st(2)
c0034591:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034594:	db 55 d4             	fistl  -0x2c(%ebp)
c0034597:	d9 6d d2             	fldcw  -0x2e(%ebp)
c003459a:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c003459d:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c00345a0:	83 c0 30             	add    $0x30,%eax
c00345a3:	db 45 d4             	fildl  -0x2c(%ebp)
c00345a6:	de e9                	fsubrp %st,%st(1)
c00345a8:	d9 c9                	fxch   %st(1)
c00345aa:	88 42 ff             	mov    %al,-0x1(%edx)
c00345ad:	db e9                	fucomi %st(1),%st
c00345af:	76 b7                	jbe    c0034568 <_dtoa_r+0x478>
c00345b1:	dd d8                	fstp   %st(0)
c00345b3:	dd d8                	fstp   %st(0)
c00345b5:	dd d8                	fstp   %st(0)
c00345b7:	dd d8                	fstp   %st(0)
c00345b9:	eb 06                	jmp    c00345c1 <_dtoa_r+0x4d1>
c00345bb:	dd d8                	fstp   %st(0)
c00345bd:	dd d8                	fstp   %st(0)
c00345bf:	dd d8                	fstp   %st(0)
c00345c1:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c00345c4:	89 fb                	mov    %edi,%ebx
c00345c6:	89 d7                	mov    %edx,%edi
c00345c8:	89 45 b8             	mov    %eax,-0x48(%ebp)
c00345cb:	e9 70 03 00 00       	jmp    c0034940 <_dtoa_r+0x850>
c00345d0:	c7 45 14 00 00 00 00 	movl   $0x0,0x14(%ebp)
c00345d7:	c7 46 44 00 00 00 00 	movl   $0x0,0x44(%esi)
c00345de:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c00345e5:	00 
c00345e6:	89 34 24             	mov    %esi,(%esp)
c00345e9:	e8 32 16 00 00       	call   c0035c20 <_Balloc>
c00345ee:	c7 45 98 01 00 00 00 	movl   $0x1,-0x68(%ebp)
c00345f5:	c7 45 a8 ff ff ff ff 	movl   $0xffffffff,-0x58(%ebp)
c00345fc:	c7 45 90 ff ff ff ff 	movl   $0xffffffff,-0x70(%ebp)
c0034603:	c7 45 18 00 00 00 00 	movl   $0x0,0x18(%ebp)
c003460a:	89 c7                	mov    %eax,%edi
c003460c:	89 46 40             	mov    %eax,0x40(%esi)
c003460f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0034612:	85 c0                	test   %eax,%eax
c0034614:	0f 88 2e 01 00 00    	js     c0034748 <_dtoa_r+0x658>
c003461a:	83 7d b8 0e          	cmpl   $0xe,-0x48(%ebp)
c003461e:	0f 8f 24 01 00 00    	jg     c0034748 <_dtoa_r+0x658>
c0034624:	8b 45 b8             	mov    -0x48(%ebp),%eax
c0034627:	dd 04 c5 a0 9a 03 c0 	fldl   -0x3ffc6560(,%eax,8)
c003462e:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034631:	85 c0                	test   %eax,%eax
c0034633:	7f 0e                	jg     c0034643 <_dtoa_r+0x553>
c0034635:	8b 45 18             	mov    0x18(%ebp),%eax
c0034638:	c1 e8 1f             	shr    $0x1f,%eax
c003463b:	84 c0                	test   %al,%al
c003463d:	0f 85 9d 07 00 00    	jne    c0034de0 <_dtoa_r+0xcf0>
c0034643:	dd 45 c0             	fldl   -0x40(%ebp)
c0034646:	d9 c0                	fld    %st(0)
c0034648:	d8 f2                	fdiv   %st(2),%st
c003464a:	d9 7d d2             	fnstcw -0x2e(%ebp)
c003464d:	83 7d a8 01          	cmpl   $0x1,-0x58(%ebp)
c0034651:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c0034655:	b4 0c                	mov    $0xc,%ah
c0034657:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c003465b:	8d 47 01             	lea    0x1(%edi),%eax
c003465e:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0034661:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034664:	db 5d d4             	fistpl -0x2c(%ebp)
c0034667:	d9 6d d2             	fldcw  -0x2e(%ebp)
c003466a:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c003466d:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c0034670:	8d 42 30             	lea    0x30(%edx),%eax
c0034673:	db 45 d4             	fildl  -0x2c(%ebp)
c0034676:	d8 ca                	fmul   %st(2),%st
c0034678:	88 07                	mov    %al,(%edi)
c003467a:	de e9                	fsubrp %st,%st(1)
c003467c:	74 66                	je     c00346e4 <_dtoa_r+0x5f4>
c003467e:	d8 0d d0 99 03 c0    	fmuls  0xc00399d0
c0034684:	d9 ee                	fldz   
c0034686:	d9 c9                	fxch   %st(1)
c0034688:	db e9                	fucomi %st(1),%st
c003468a:	dd d9                	fstp   %st(1)
c003468c:	0f 8b 33 0c 00 00    	jnp    c00352c5 <_dtoa_r+0x11d5>
c0034692:	8b 5d a8             	mov    -0x58(%ebp),%ebx
c0034695:	8d 47 02             	lea    0x2(%edi),%eax
c0034698:	d9 05 d0 99 03 c0    	flds   0xc00399d0
c003469e:	01 fb                	add    %edi,%ebx
c00346a0:	eb 19                	jmp    c00346bb <_dtoa_r+0x5cb>
c00346a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00346a8:	dc c9                	fmul   %st,%st(1)
c00346aa:	83 c0 01             	add    $0x1,%eax
c00346ad:	d9 ee                	fldz   
c00346af:	d9 ca                	fxch   %st(2)
c00346b1:	db ea                	fucomi %st(2),%st
c00346b3:	dd da                	fstp   %st(2)
c00346b5:	0f 8b 73 09 00 00    	jnp    c003502e <_dtoa_r+0xf3e>
c00346bb:	d9 c1                	fld    %st(1)
c00346bd:	39 d8                	cmp    %ebx,%eax
c00346bf:	d8 f3                	fdiv   %st(3),%st
c00346c1:	89 45 c0             	mov    %eax,-0x40(%ebp)
c00346c4:	d9 6d d0             	fldcw  -0x30(%ebp)
c00346c7:	db 5d d4             	fistpl -0x2c(%ebp)
c00346ca:	d9 6d d2             	fldcw  -0x2e(%ebp)
c00346cd:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c00346d0:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c00346d3:	8d 4a 30             	lea    0x30(%edx),%ecx
c00346d6:	db 45 d4             	fildl  -0x2c(%ebp)
c00346d9:	d8 cb                	fmul   %st(3),%st
c00346db:	88 48 ff             	mov    %cl,-0x1(%eax)
c00346de:	de ea                	fsubrp %st,%st(2)
c00346e0:	75 c6                	jne    c00346a8 <_dtoa_r+0x5b8>
c00346e2:	dd d8                	fstp   %st(0)
c00346e4:	d8 c0                	fadd   %st(0),%st
c00346e6:	db e9                	fucomi %st(1),%st
c00346e8:	77 1e                	ja     c0034708 <_dtoa_r+0x618>
c00346ea:	d9 c9                	fxch   %st(1)
c00346ec:	df e9                	fucomip %st(1),%st
c00346ee:	dd d8                	fstp   %st(0)
c00346f0:	0f 8a 44 09 00 00    	jp     c003503a <_dtoa_r+0xf4a>
c00346f6:	0f 85 3e 09 00 00    	jne    c003503a <_dtoa_r+0xf4a>
c00346fc:	83 e2 01             	and    $0x1,%edx
c00346ff:	90                   	nop
c0034700:	0f 84 34 09 00 00    	je     c003503a <_dtoa_r+0xf4a>
c0034706:	eb 04                	jmp    c003470c <_dtoa_r+0x61c>
c0034708:	dd d8                	fstp   %st(0)
c003470a:	dd d8                	fstp   %st(0)
c003470c:	8b 4d c0             	mov    -0x40(%ebp),%ecx
c003470f:	89 fb                	mov    %edi,%ebx
c0034711:	0f b6 41 ff          	movzbl -0x1(%ecx),%eax
c0034715:	89 cf                	mov    %ecx,%edi
c0034717:	8b 4d b8             	mov    -0x48(%ebp),%ecx
c003471a:	89 4d b4             	mov    %ecx,-0x4c(%ebp)
c003471d:	eb 0f                	jmp    c003472e <_dtoa_r+0x63e>
c003471f:	90                   	nop
c0034720:	39 d3                	cmp    %edx,%ebx
c0034722:	0f 84 75 09 00 00    	je     c003509d <_dtoa_r+0xfad>
c0034728:	0f b6 42 ff          	movzbl -0x1(%edx),%eax
c003472c:	89 d7                	mov    %edx,%edi
c003472e:	3c 39                	cmp    $0x39,%al
c0034730:	8d 57 ff             	lea    -0x1(%edi),%edx
c0034733:	74 eb                	je     c0034720 <_dtoa_r+0x630>
c0034735:	8b 4d b4             	mov    -0x4c(%ebp),%ecx
c0034738:	83 c0 01             	add    $0x1,%eax
c003473b:	88 02                	mov    %al,(%edx)
c003473d:	89 4d b8             	mov    %ecx,-0x48(%ebp)
c0034740:	e9 fb 01 00 00       	jmp    c0034940 <_dtoa_r+0x850>
c0034745:	8d 76 00             	lea    0x0(%esi),%esi
c0034748:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c003474b:	85 c9                	test   %ecx,%ecx
c003474d:	0f 85 9d 02 00 00    	jne    c00349f0 <_dtoa_r+0x900>
c0034753:	8b 55 b0             	mov    -0x50(%ebp),%edx
c0034756:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c0034759:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c0034760:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0034763:	85 c0                	test   %eax,%eax
c0034765:	7e 14                	jle    c003477b <_dtoa_r+0x68b>
c0034767:	85 db                	test   %ebx,%ebx
c0034769:	7e 10                	jle    c003477b <_dtoa_r+0x68b>
c003476b:	8b 45 ac             	mov    -0x54(%ebp),%eax
c003476e:	39 d8                	cmp    %ebx,%eax
c0034770:	0f 4f c3             	cmovg  %ebx,%eax
c0034773:	29 45 a0             	sub    %eax,-0x60(%ebp)
c0034776:	29 c3                	sub    %eax,%ebx
c0034778:	29 45 ac             	sub    %eax,-0x54(%ebp)
c003477b:	8b 45 b0             	mov    -0x50(%ebp),%eax
c003477e:	85 c0                	test   %eax,%eax
c0034780:	7e 61                	jle    c00347e3 <_dtoa_r+0x6f3>
c0034782:	8b 45 98             	mov    -0x68(%ebp),%eax
c0034785:	85 c0                	test   %eax,%eax
c0034787:	0f 84 72 04 00 00    	je     c0034bff <_dtoa_r+0xb0f>
c003478d:	85 d2                	test   %edx,%edx
c003478f:	7e 47                	jle    c00347d8 <_dtoa_r+0x6e8>
c0034791:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034794:	89 54 24 08          	mov    %edx,0x8(%esp)
c0034798:	89 34 24             	mov    %esi,(%esp)
c003479b:	89 55 88             	mov    %edx,-0x78(%ebp)
c003479e:	89 44 24 04          	mov    %eax,0x4(%esp)
c00347a2:	e8 f9 19 00 00       	call   c00361a0 <__pow5mult>
c00347a7:	8b 4d a4             	mov    -0x5c(%ebp),%ecx
c00347aa:	89 34 24             	mov    %esi,(%esp)
c00347ad:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c00347b1:	89 44 24 04          	mov    %eax,0x4(%esp)
c00347b5:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c00347b8:	e8 13 18 00 00       	call   c0035fd0 <__multiply>
c00347bd:	8b 4d a4             	mov    -0x5c(%ebp),%ecx
c00347c0:	89 34 24             	mov    %esi,(%esp)
c00347c3:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c00347c7:	89 45 8c             	mov    %eax,-0x74(%ebp)
c00347ca:	e8 f1 14 00 00       	call   c0035cc0 <_Bfree>
c00347cf:	8b 45 8c             	mov    -0x74(%ebp),%eax
c00347d2:	8b 55 88             	mov    -0x78(%ebp),%edx
c00347d5:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c00347d8:	8b 45 b0             	mov    -0x50(%ebp),%eax
c00347db:	29 d0                	sub    %edx,%eax
c00347dd:	0f 85 1f 04 00 00    	jne    c0034c02 <_dtoa_r+0xb12>
c00347e3:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c00347ea:	00 
c00347eb:	89 34 24             	mov    %esi,(%esp)
c00347ee:	e8 ad 17 00 00       	call   c0035fa0 <__i2b>
c00347f3:	8b 4d 94             	mov    -0x6c(%ebp),%ecx
c00347f6:	85 c9                	test   %ecx,%ecx
c00347f8:	89 45 b0             	mov    %eax,-0x50(%ebp)
c00347fb:	7e 13                	jle    c0034810 <_dtoa_r+0x720>
c00347fd:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c0034801:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034805:	89 34 24             	mov    %esi,(%esp)
c0034808:	e8 93 19 00 00       	call   c00361a0 <__pow5mult>
c003480d:	89 45 b0             	mov    %eax,-0x50(%ebp)
c0034810:	83 7d 14 01          	cmpl   $0x1,0x14(%ebp)
c0034814:	c7 45 8c 00 00 00 00 	movl   $0x0,-0x74(%ebp)
c003481b:	0f 8e f7 05 00 00    	jle    c0034e18 <_dtoa_r+0xd28>
c0034821:	8b 45 94             	mov    -0x6c(%ebp),%eax
c0034824:	ba 01 00 00 00       	mov    $0x1,%edx
c0034829:	85 c0                	test   %eax,%eax
c003482b:	0f 85 27 05 00 00    	jne    c0034d58 <_dtoa_r+0xc68>
c0034831:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0034834:	01 d0                	add    %edx,%eax
c0034836:	83 e0 1f             	and    $0x1f,%eax
c0034839:	89 c2                	mov    %eax,%edx
c003483b:	0f 84 57 03 00 00    	je     c0034b98 <_dtoa_r+0xaa8>
c0034841:	b8 20 00 00 00       	mov    $0x20,%eax
c0034846:	29 d0                	sub    %edx,%eax
c0034848:	83 f8 04             	cmp    $0x4,%eax
c003484b:	0f 8e 8c 0a 00 00    	jle    c00352dd <_dtoa_r+0x11ed>
c0034851:	b8 1c 00 00 00       	mov    $0x1c,%eax
c0034856:	29 d0                	sub    %edx,%eax
c0034858:	01 45 a0             	add    %eax,-0x60(%ebp)
c003485b:	01 c3                	add    %eax,%ebx
c003485d:	01 45 ac             	add    %eax,-0x54(%ebp)
c0034860:	8b 45 a0             	mov    -0x60(%ebp),%eax
c0034863:	85 c0                	test   %eax,%eax
c0034865:	7e 16                	jle    c003487d <_dtoa_r+0x78d>
c0034867:	89 44 24 08          	mov    %eax,0x8(%esp)
c003486b:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c003486e:	89 34 24             	mov    %esi,(%esp)
c0034871:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034875:	e8 46 1a 00 00       	call   c00362c0 <__lshift>
c003487a:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c003487d:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0034880:	85 c0                	test   %eax,%eax
c0034882:	7e 16                	jle    c003489a <_dtoa_r+0x7aa>
c0034884:	89 44 24 08          	mov    %eax,0x8(%esp)
c0034888:	8b 45 b0             	mov    -0x50(%ebp),%eax
c003488b:	89 34 24             	mov    %esi,(%esp)
c003488e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034892:	e8 29 1a 00 00       	call   c00362c0 <__lshift>
c0034897:	89 45 b0             	mov    %eax,-0x50(%ebp)
c003489a:	8b 45 9c             	mov    -0x64(%ebp),%eax
c003489d:	85 c0                	test   %eax,%eax
c003489f:	0f 85 d3 04 00 00    	jne    c0034d78 <_dtoa_r+0xc88>
c00348a5:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c00348a9:	0f 8e 11 02 00 00    	jle    c0034ac0 <_dtoa_r+0x9d0>
c00348af:	8b 45 a8             	mov    -0x58(%ebp),%eax
c00348b2:	85 c0                	test   %eax,%eax
c00348b4:	0f 8f 06 02 00 00    	jg     c0034ac0 <_dtoa_r+0x9d0>
c00348ba:	8b 45 a8             	mov    -0x58(%ebp),%eax
c00348bd:	85 c0                	test   %eax,%eax
c00348bf:	0f 85 e0 01 00 00    	jne    c0034aa5 <_dtoa_r+0x9b5>
c00348c5:	8b 45 b0             	mov    -0x50(%ebp),%eax
c00348c8:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c00348cf:	00 
c00348d0:	c7 44 24 08 05 00 00 	movl   $0x5,0x8(%esp)
c00348d7:	00 
c00348d8:	89 34 24             	mov    %esi,(%esp)
c00348db:	89 44 24 04          	mov    %eax,0x4(%esp)
c00348df:	e8 fc 13 00 00       	call   c0035ce0 <__multadd>
c00348e4:	89 45 b0             	mov    %eax,-0x50(%ebp)
c00348e7:	89 44 24 04          	mov    %eax,0x4(%esp)
c00348eb:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c00348ee:	89 04 24             	mov    %eax,(%esp)
c00348f1:	e8 ea 1a 00 00       	call   c00363e0 <__mcmp>
c00348f6:	85 c0                	test   %eax,%eax
c00348f8:	0f 8e a7 01 00 00    	jle    c0034aa5 <_dtoa_r+0x9b5>
c00348fe:	83 45 b8 01          	addl   $0x1,-0x48(%ebp)
c0034902:	89 fb                	mov    %edi,%ebx
c0034904:	83 c7 01             	add    $0x1,%edi
c0034907:	c6 47 ff 31          	movb   $0x31,-0x1(%edi)
c003490b:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
c0034912:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034915:	89 34 24             	mov    %esi,(%esp)
c0034918:	89 44 24 04          	mov    %eax,0x4(%esp)
c003491c:	e8 9f 13 00 00       	call   c0035cc0 <_Bfree>
c0034921:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034924:	85 c0                	test   %eax,%eax
c0034926:	74 18                	je     c0034940 <_dtoa_r+0x850>
c0034928:	39 45 c0             	cmp    %eax,-0x40(%ebp)
c003492b:	0f 85 a7 02 00 00    	jne    c0034bd8 <_dtoa_r+0xae8>
c0034931:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034934:	89 34 24             	mov    %esi,(%esp)
c0034937:	89 44 24 04          	mov    %eax,0x4(%esp)
c003493b:	e8 80 13 00 00       	call   c0035cc0 <_Bfree>
c0034940:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034943:	89 34 24             	mov    %esi,(%esp)
c0034946:	89 44 24 04          	mov    %eax,0x4(%esp)
c003494a:	e8 71 13 00 00       	call   c0035cc0 <_Bfree>
c003494f:	8b 45 b8             	mov    -0x48(%ebp),%eax
c0034952:	8b 75 1c             	mov    0x1c(%ebp),%esi
c0034955:	c6 07 00             	movb   $0x0,(%edi)
c0034958:	83 c0 01             	add    $0x1,%eax
c003495b:	89 06                	mov    %eax,(%esi)
c003495d:	8b 45 24             	mov    0x24(%ebp),%eax
c0034960:	85 c0                	test   %eax,%eax
c0034962:	0f 84 90 02 00 00    	je     c0034bf8 <_dtoa_r+0xb08>
c0034968:	8b 45 24             	mov    0x24(%ebp),%eax
c003496b:	89 38                	mov    %edi,(%eax)
c003496d:	81 c4 8c 00 00 00    	add    $0x8c,%esp
c0034973:	89 d8                	mov    %ebx,%eax
c0034975:	5b                   	pop    %ebx
c0034976:	5e                   	pop    %esi
c0034977:	5f                   	pop    %edi
c0034978:	5d                   	pop    %ebp
c0034979:	c3                   	ret    
c003497a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034980:	db 45 b8             	fildl  -0x48(%ebp)
c0034983:	df e9                	fucomip %st(1),%st
c0034985:	dd d8                	fstp   %st(0)
c0034987:	7a 06                	jp     c003498f <_dtoa_r+0x89f>
c0034989:	0f 84 cc f8 ff ff    	je     c003425b <_dtoa_r+0x16b>
c003498f:	83 6d b8 01          	subl   $0x1,-0x48(%ebp)
c0034993:	e9 c3 f8 ff ff       	jmp    c003425b <_dtoa_r+0x16b>
c0034998:	8b 45 b8             	mov    -0x48(%ebp),%eax
c003499b:	29 45 a0             	sub    %eax,-0x60(%ebp)
c003499e:	c7 45 94 00 00 00 00 	movl   $0x0,-0x6c(%ebp)
c00349a5:	f7 d8                	neg    %eax
c00349a7:	89 45 b0             	mov    %eax,-0x50(%ebp)
c00349aa:	e9 0c f9 ff ff       	jmp    c00342bb <_dtoa_r+0x1cb>
c00349af:	90                   	nop
c00349b0:	f7 d8                	neg    %eax
c00349b2:	89 45 a0             	mov    %eax,-0x60(%ebp)
c00349b5:	c7 45 ac 00 00 00 00 	movl   $0x0,-0x54(%ebp)
c00349bc:	e9 e2 f8 ff ff       	jmp    c00342a3 <_dtoa_r+0x1b3>
c00349c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00349c8:	8b 45 c0             	mov    -0x40(%ebp),%eax
c00349cb:	b9 ee fb ff ff       	mov    $0xfffffbee,%ecx
c00349d0:	29 d9                	sub    %ebx,%ecx
c00349d2:	d3 e0                	shl    %cl,%eax
c00349d4:	e9 1b f8 ff ff       	jmp    c00341f4 <_dtoa_r+0x104>
c00349d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00349e0:	c7 45 9c 00 00 00 00 	movl   $0x0,-0x64(%ebp)
c00349e7:	e9 a0 f8 ff ff       	jmp    c003428c <_dtoa_r+0x19c>
c00349ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00349f0:	83 7d 14 01          	cmpl   $0x1,0x14(%ebp)
c00349f4:	0f 8e fe 06 00 00    	jle    c00350f8 <_dtoa_r+0x1008>
c00349fa:	8b 45 a8             	mov    -0x58(%ebp),%eax
c00349fd:	83 e8 01             	sub    $0x1,%eax
c0034a00:	39 45 b0             	cmp    %eax,-0x50(%ebp)
c0034a03:	0f 8c 3b 06 00 00    	jl     c0035044 <_dtoa_r+0xf54>
c0034a09:	8b 55 b0             	mov    -0x50(%ebp),%edx
c0034a0c:	29 c2                	sub    %eax,%edx
c0034a0e:	8b 4d a8             	mov    -0x58(%ebp),%ecx
c0034a11:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c0034a14:	85 c9                	test   %ecx,%ecx
c0034a16:	89 c8                	mov    %ecx,%eax
c0034a18:	0f 88 83 07 00 00    	js     c00351a1 <_dtoa_r+0x10b1>
c0034a1e:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0034a25:	00 
c0034a26:	89 34 24             	mov    %esi,(%esp)
c0034a29:	89 55 8c             	mov    %edx,-0x74(%ebp)
c0034a2c:	01 45 a0             	add    %eax,-0x60(%ebp)
c0034a2f:	01 45 ac             	add    %eax,-0x54(%ebp)
c0034a32:	e8 69 15 00 00       	call   c0035fa0 <__i2b>
c0034a37:	8b 55 8c             	mov    -0x74(%ebp),%edx
c0034a3a:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034a3d:	e9 1e fd ff ff       	jmp    c0034760 <_dtoa_r+0x670>
c0034a42:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034a48:	d9 c1                	fld    %st(1)
c0034a4a:	b9 02 00 00 00       	mov    $0x2,%ecx
c0034a4f:	e9 37 fa ff ff       	jmp    c003448b <_dtoa_r+0x39b>
c0034a54:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c0034a57:	db 45 d4             	fildl  -0x2c(%ebp)
c0034a5a:	d8 c9                	fmul   %st(1),%st
c0034a5c:	d8 05 d4 99 03 c0    	fadds  0xc00399d4
c0034a62:	dd 5d c0             	fstpl  -0x40(%ebp)
c0034a65:	81 6d c4 00 00 40 03 	subl   $0x3400000,-0x3c(%ebp)
c0034a6c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034a70:	d8 25 d8 99 03 c0    	fsubs  0xc00399d8
c0034a76:	dd 45 c0             	fldl   -0x40(%ebp)
c0034a79:	d9 c9                	fxch   %st(1)
c0034a7b:	db e9                	fucomi %st(1),%st
c0034a7d:	0f 87 0d 02 00 00    	ja     c0034c90 <_dtoa_r+0xba0>
c0034a83:	d9 c9                	fxch   %st(1)
c0034a85:	d9 e0                	fchs   
c0034a87:	df e9                	fucomip %st(1),%st
c0034a89:	dd d8                	fstp   %st(0)
c0034a8b:	0f 86 a7 01 00 00    	jbe    c0034c38 <_dtoa_r+0xb48>
c0034a91:	dd d8                	fstp   %st(0)
c0034a93:	eb 02                	jmp    c0034a97 <_dtoa_r+0x9a7>
c0034a95:	dd d8                	fstp   %st(0)
c0034a97:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c0034a9e:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c0034aa5:	8b 45 18             	mov    0x18(%ebp),%eax
c0034aa8:	89 fb                	mov    %edi,%ebx
c0034aaa:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
c0034ab1:	f7 d0                	not    %eax
c0034ab3:	89 45 b8             	mov    %eax,-0x48(%ebp)
c0034ab6:	e9 57 fe ff ff       	jmp    c0034912 <_dtoa_r+0x822>
c0034abb:	90                   	nop
c0034abc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034ac0:	8b 45 98             	mov    -0x68(%ebp),%eax
c0034ac3:	85 c0                	test   %eax,%eax
c0034ac5:	0f 85 c5 03 00 00    	jne    c0034e90 <_dtoa_r+0xda0>
c0034acb:	89 75 08             	mov    %esi,0x8(%ebp)
c0034ace:	bb 01 00 00 00       	mov    $0x1,%ebx
c0034ad3:	8b 75 a4             	mov    -0x5c(%ebp),%esi
c0034ad6:	eb 24                	jmp    c0034afc <_dtoa_r+0xa0c>
c0034ad8:	8b 45 08             	mov    0x8(%ebp),%eax
c0034adb:	83 c3 01             	add    $0x1,%ebx
c0034ade:	89 74 24 04          	mov    %esi,0x4(%esp)
c0034ae2:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034ae9:	00 
c0034aea:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034af1:	00 
c0034af2:	89 04 24             	mov    %eax,(%esp)
c0034af5:	e8 e6 11 00 00       	call   c0035ce0 <__multadd>
c0034afa:	89 c6                	mov    %eax,%esi
c0034afc:	8b 55 b0             	mov    -0x50(%ebp),%edx
c0034aff:	89 f0                	mov    %esi,%eax
c0034b01:	e8 1a f4 ff ff       	call   c0033f20 <quorem>
c0034b06:	83 c0 30             	add    $0x30,%eax
c0034b09:	3b 5d a8             	cmp    -0x58(%ebp),%ebx
c0034b0c:	88 44 1f ff          	mov    %al,-0x1(%edi,%ebx,1)
c0034b10:	7c c6                	jl     c0034ad8 <_dtoa_r+0x9e8>
c0034b12:	89 45 a0             	mov    %eax,-0x60(%ebp)
c0034b15:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034b18:	ba 01 00 00 00       	mov    $0x1,%edx
c0034b1d:	89 75 a4             	mov    %esi,-0x5c(%ebp)
c0034b20:	8b 75 08             	mov    0x8(%ebp),%esi
c0034b23:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
c0034b2a:	85 c0                	test   %eax,%eax
c0034b2c:	0f 4f d0             	cmovg  %eax,%edx
c0034b2f:	01 fa                	add    %edi,%edx
c0034b31:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034b34:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
c0034b3b:	00 
c0034b3c:	89 34 24             	mov    %esi,(%esp)
c0034b3f:	89 55 ac             	mov    %edx,-0x54(%ebp)
c0034b42:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034b46:	e8 75 17 00 00       	call   c00362c0 <__lshift>
c0034b4b:	8b 5d b0             	mov    -0x50(%ebp),%ebx
c0034b4e:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c0034b52:	89 04 24             	mov    %eax,(%esp)
c0034b55:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0034b58:	e8 83 18 00 00       	call   c00363e0 <__mcmp>
c0034b5d:	8b 55 ac             	mov    -0x54(%ebp),%edx
c0034b60:	83 f8 00             	cmp    $0x0,%eax
c0034b63:	0f 8e 41 06 00 00    	jle    c00351aa <_dtoa_r+0x10ba>
c0034b69:	0f b6 4a ff          	movzbl -0x1(%edx),%ecx
c0034b6d:	eb 0f                	jmp    c0034b7e <_dtoa_r+0xa8e>
c0034b6f:	90                   	nop
c0034b70:	39 c7                	cmp    %eax,%edi
c0034b72:	0f 84 70 05 00 00    	je     c00350e8 <_dtoa_r+0xff8>
c0034b78:	0f b6 48 ff          	movzbl -0x1(%eax),%ecx
c0034b7c:	89 c2                	mov    %eax,%edx
c0034b7e:	80 f9 39             	cmp    $0x39,%cl
c0034b81:	8d 42 ff             	lea    -0x1(%edx),%eax
c0034b84:	74 ea                	je     c0034b70 <_dtoa_r+0xa80>
c0034b86:	83 c1 01             	add    $0x1,%ecx
c0034b89:	89 fb                	mov    %edi,%ebx
c0034b8b:	88 08                	mov    %cl,(%eax)
c0034b8d:	89 d7                	mov    %edx,%edi
c0034b8f:	e9 7e fd ff ff       	jmp    c0034912 <_dtoa_r+0x822>
c0034b94:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034b98:	b8 1c 00 00 00       	mov    $0x1c,%eax
c0034b9d:	01 45 a0             	add    %eax,-0x60(%ebp)
c0034ba0:	01 c3                	add    %eax,%ebx
c0034ba2:	01 45 ac             	add    %eax,-0x54(%ebp)
c0034ba5:	e9 b6 fc ff ff       	jmp    c0034860 <_dtoa_r+0x770>
c0034baa:	ba 01 00 00 00       	mov    $0x1,%edx
c0034baf:	c7 45 90 01 00 00 00 	movl   $0x1,-0x70(%ebp)
c0034bb6:	c7 45 a8 01 00 00 00 	movl   $0x1,-0x58(%ebp)
c0034bbd:	c7 45 18 01 00 00 00 	movl   $0x1,0x18(%ebp)
c0034bc4:	21 c2                	and    %eax,%edx
c0034bc6:	88 55 b4             	mov    %dl,-0x4c(%ebp)
c0034bc9:	31 d2                	xor    %edx,%edx
c0034bcb:	c7 46 44 00 00 00 00 	movl   $0x0,0x44(%esi)
c0034bd2:	e9 62 f8 ff ff       	jmp    c0034439 <_dtoa_r+0x349>
c0034bd7:	90                   	nop
c0034bd8:	8b 55 c0             	mov    -0x40(%ebp),%edx
c0034bdb:	85 d2                	test   %edx,%edx
c0034bdd:	0f 84 4e fd ff ff    	je     c0034931 <_dtoa_r+0x841>
c0034be3:	8b 45 c0             	mov    -0x40(%ebp),%eax
c0034be6:	89 34 24             	mov    %esi,(%esp)
c0034be9:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034bed:	e8 ce 10 00 00       	call   c0035cc0 <_Bfree>
c0034bf2:	e9 3a fd ff ff       	jmp    c0034931 <_dtoa_r+0x841>
c0034bf7:	90                   	nop
c0034bf8:	89 d8                	mov    %ebx,%eax
c0034bfa:	e9 89 f5 ff ff       	jmp    c0034188 <_dtoa_r+0x98>
c0034bff:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034c02:	89 44 24 08          	mov    %eax,0x8(%esp)
c0034c06:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034c09:	89 34 24             	mov    %esi,(%esp)
c0034c0c:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034c10:	e8 8b 15 00 00       	call   c00361a0 <__pow5mult>
c0034c15:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0034c18:	e9 c6 fb ff ff       	jmp    c00347e3 <_dtoa_r+0x6f3>
c0034c1d:	dd d8                	fstp   %st(0)
c0034c1f:	dd d8                	fstp   %st(0)
c0034c21:	eb 15                	jmp    c0034c38 <_dtoa_r+0xb48>
c0034c23:	90                   	nop
c0034c24:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034c28:	dd d8                	fstp   %st(0)
c0034c2a:	dd d8                	fstp   %st(0)
c0034c2c:	dd d8                	fstp   %st(0)
c0034c2e:	eb 08                	jmp    c0034c38 <_dtoa_r+0xb48>
c0034c30:	dd d8                	fstp   %st(0)
c0034c32:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034c38:	dd 5d c0             	fstpl  -0x40(%ebp)
c0034c3b:	e9 cf f9 ff ff       	jmp    c003460f <_dtoa_r+0x51f>
c0034c40:	8b 45 b8             	mov    -0x48(%ebp),%eax
c0034c43:	f7 d8                	neg    %eax
c0034c45:	0f 84 6a 04 00 00    	je     c00350b5 <_dtoa_r+0xfc5>
c0034c4b:	89 c2                	mov    %eax,%edx
c0034c4d:	b9 02 00 00 00       	mov    $0x2,%ecx
c0034c52:	83 e2 0f             	and    $0xf,%edx
c0034c55:	c1 f8 04             	sar    $0x4,%eax
c0034c58:	dd 04 d5 a0 9a 03 c0 	fldl   -0x3ffc6560(,%edx,8)
c0034c5f:	85 c0                	test   %eax,%eax
c0034c61:	d8 c9                	fmul   %st(1),%st
c0034c63:	0f 84 4a f8 ff ff    	je     c00344b3 <_dtoa_r+0x3c3>
c0034c69:	31 d2                	xor    %edx,%edx
c0034c6b:	90                   	nop
c0034c6c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034c70:	a8 01                	test   $0x1,%al
c0034c72:	74 0a                	je     c0034c7e <_dtoa_r+0xb8e>
c0034c74:	dc 0c d5 60 9a 03 c0 	fmull  -0x3ffc65a0(,%edx,8)
c0034c7b:	83 c1 01             	add    $0x1,%ecx
c0034c7e:	83 c2 01             	add    $0x1,%edx
c0034c81:	d1 f8                	sar    %eax
c0034c83:	75 eb                	jne    c0034c70 <_dtoa_r+0xb80>
c0034c85:	e9 29 f8 ff ff       	jmp    c00344b3 <_dtoa_r+0x3c3>
c0034c8a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034c90:	dd d8                	fstp   %st(0)
c0034c92:	dd d8                	fstp   %st(0)
c0034c94:	dd d8                	fstp   %st(0)
c0034c96:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c0034c9d:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c0034ca4:	e9 55 fc ff ff       	jmp    c00348fe <_dtoa_r+0x80e>
c0034ca9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034cb0:	d9 7d d2             	fnstcw -0x2e(%ebp)
c0034cb3:	8d 41 ff             	lea    -0x1(%ecx),%eax
c0034cb6:	dd 45 c0             	fldl   -0x40(%ebp)
c0034cb9:	dc 0c c5 a0 9a 03 c0 	fmull  -0x3ffc6560(,%eax,8)
c0034cc0:	d9 c9                	fxch   %st(1)
c0034cc2:	89 45 88             	mov    %eax,-0x78(%ebp)
c0034cc5:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c0034cc9:	8d 57 01             	lea    0x1(%edi),%edx
c0034ccc:	8d 1c 0f             	lea    (%edi,%ecx,1),%ebx
c0034ccf:	b4 0c                	mov    $0xc,%ah
c0034cd1:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c0034cd5:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034cd8:	db 55 d4             	fistl  -0x2c(%ebp)
c0034cdb:	d9 6d d2             	fldcw  -0x2e(%ebp)
c0034cde:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c0034ce1:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0034ce4:	83 c0 30             	add    $0x30,%eax
c0034ce7:	83 f9 01             	cmp    $0x1,%ecx
c0034cea:	db 45 d4             	fildl  -0x2c(%ebp)
c0034ced:	de e9                	fsubrp %st,%st(1)
c0034cef:	88 07                	mov    %al,(%edi)
c0034cf1:	89 d0                	mov    %edx,%eax
c0034cf3:	74 37                	je     c0034d2c <_dtoa_r+0xc3c>
c0034cf5:	d9 05 d0 99 03 c0    	flds   0xc00399d0
c0034cfb:	eb 05                	jmp    c0034d02 <_dtoa_r+0xc12>
c0034cfd:	8d 76 00             	lea    0x0(%esi),%esi
c0034d00:	d9 c9                	fxch   %st(1)
c0034d02:	dc c9                	fmul   %st,%st(1)
c0034d04:	d9 c9                	fxch   %st(1)
c0034d06:	83 c0 01             	add    $0x1,%eax
c0034d09:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034d0c:	db 55 d4             	fistl  -0x2c(%ebp)
c0034d0f:	d9 6d d2             	fldcw  -0x2e(%ebp)
c0034d12:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
c0034d15:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c0034d18:	83 c1 30             	add    $0x30,%ecx
c0034d1b:	39 d8                	cmp    %ebx,%eax
c0034d1d:	db 45 d4             	fildl  -0x2c(%ebp)
c0034d20:	de e9                	fsubrp %st,%st(1)
c0034d22:	88 48 ff             	mov    %cl,-0x1(%eax)
c0034d25:	75 d9                	jne    c0034d00 <_dtoa_r+0xc10>
c0034d27:	dd d9                	fstp   %st(1)
c0034d29:	03 55 88             	add    -0x78(%ebp),%edx
c0034d2c:	d9 05 dc 99 03 c0    	flds   0xc00399dc
c0034d32:	d9 c2                	fld    %st(2)
c0034d34:	d8 c1                	fadd   %st(1),%st
c0034d36:	d9 ca                	fxch   %st(2)
c0034d38:	db ea                	fucomi %st(2),%st
c0034d3a:	dd da                	fstp   %st(2)
c0034d3c:	0f 86 7f 03 00 00    	jbe    c00350c1 <_dtoa_r+0xfd1>
c0034d42:	dd d8                	fstp   %st(0)
c0034d44:	dd d8                	fstp   %st(0)
c0034d46:	dd d8                	fstp   %st(0)
c0034d48:	dd d8                	fstp   %st(0)
c0034d4a:	89 fb                	mov    %edi,%ebx
c0034d4c:	0f b6 42 ff          	movzbl -0x1(%edx),%eax
c0034d50:	89 d7                	mov    %edx,%edi
c0034d52:	e9 d7 f9 ff ff       	jmp    c003472e <_dtoa_r+0x63e>
c0034d57:	90                   	nop
c0034d58:	8b 4d b0             	mov    -0x50(%ebp),%ecx
c0034d5b:	8b 41 10             	mov    0x10(%ecx),%eax
c0034d5e:	8b 44 81 10          	mov    0x10(%ecx,%eax,4),%eax
c0034d62:	89 04 24             	mov    %eax,(%esp)
c0034d65:	e8 56 11 00 00       	call   c0035ec0 <__hi0bits>
c0034d6a:	ba 20 00 00 00       	mov    $0x20,%edx
c0034d6f:	29 c2                	sub    %eax,%edx
c0034d71:	e9 bb fa ff ff       	jmp    c0034831 <_dtoa_r+0x741>
c0034d76:	66 90                	xchg   %ax,%ax
c0034d78:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034d7b:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034d7f:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034d82:	89 04 24             	mov    %eax,(%esp)
c0034d85:	e8 56 16 00 00       	call   c00363e0 <__mcmp>
c0034d8a:	85 c0                	test   %eax,%eax
c0034d8c:	0f 89 13 fb ff ff    	jns    c00348a5 <_dtoa_r+0x7b5>
c0034d92:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034d95:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034d9c:	00 
c0034d9d:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034da4:	00 
c0034da5:	89 34 24             	mov    %esi,(%esp)
c0034da8:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034dac:	83 6d b8 01          	subl   $0x1,-0x48(%ebp)
c0034db0:	e8 2b 0f 00 00       	call   c0035ce0 <__multadd>
c0034db5:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c0034db8:	85 c9                	test   %ecx,%ecx
c0034dba:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0034dbd:	0f 85 8d 00 00 00    	jne    c0034e50 <_dtoa_r+0xd60>
c0034dc3:	83 7d 90 00          	cmpl   $0x0,-0x70(%ebp)
c0034dc7:	8b 45 90             	mov    -0x70(%ebp),%eax
c0034dca:	7f 0a                	jg     c0034dd6 <_dtoa_r+0xce6>
c0034dcc:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c0034dd0:	0f 8f ff 04 00 00    	jg     c00352d5 <_dtoa_r+0x11e5>
c0034dd6:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0034dd9:	e9 ed fc ff ff       	jmp    c0034acb <_dtoa_r+0x9db>
c0034dde:	66 90                	xchg   %ax,%ax
c0034de0:	8b 5d a8             	mov    -0x58(%ebp),%ebx
c0034de3:	85 db                	test   %ebx,%ebx
c0034de5:	0f 85 aa fc ff ff    	jne    c0034a95 <_dtoa_r+0x9a5>
c0034deb:	d8 0d d8 99 03 c0    	fmuls  0xc00399d8
c0034df1:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c0034df8:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c0034dff:	dd 45 c0             	fldl   -0x40(%ebp)
c0034e02:	d9 c9                	fxch   %st(1)
c0034e04:	df e9                	fucomip %st(1),%st
c0034e06:	dd d8                	fstp   %st(0)
c0034e08:	0f 83 97 fc ff ff    	jae    c0034aa5 <_dtoa_r+0x9b5>
c0034e0e:	e9 eb fa ff ff       	jmp    c00348fe <_dtoa_r+0x80e>
c0034e13:	90                   	nop
c0034e14:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034e18:	8b 45 c0             	mov    -0x40(%ebp),%eax
c0034e1b:	85 c0                	test   %eax,%eax
c0034e1d:	0f 85 fe f9 ff ff    	jne    c0034821 <_dtoa_r+0x731>
c0034e23:	8b 45 c4             	mov    -0x3c(%ebp),%eax
c0034e26:	a9 ff ff 0f 00       	test   $0xfffff,%eax
c0034e2b:	0f 85 f0 f9 ff ff    	jne    c0034821 <_dtoa_r+0x731>
c0034e31:	a9 00 00 f0 7f       	test   $0x7ff00000,%eax
c0034e36:	0f 84 e5 f9 ff ff    	je     c0034821 <_dtoa_r+0x731>
c0034e3c:	83 45 a0 01          	addl   $0x1,-0x60(%ebp)
c0034e40:	83 45 ac 01          	addl   $0x1,-0x54(%ebp)
c0034e44:	c7 45 8c 01 00 00 00 	movl   $0x1,-0x74(%ebp)
c0034e4b:	e9 d1 f9 ff ff       	jmp    c0034821 <_dtoa_r+0x731>
c0034e50:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034e53:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034e5a:	00 
c0034e5b:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034e62:	00 
c0034e63:	89 34 24             	mov    %esi,(%esp)
c0034e66:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034e6a:	e8 71 0e 00 00       	call   c0035ce0 <__multadd>
c0034e6f:	8b 55 90             	mov    -0x70(%ebp),%edx
c0034e72:	85 d2                	test   %edx,%edx
c0034e74:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034e77:	8b 45 90             	mov    -0x70(%ebp),%eax
c0034e7a:	7f 0a                	jg     c0034e86 <_dtoa_r+0xd96>
c0034e7c:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c0034e80:	0f 8f 4f 04 00 00    	jg     c00352d5 <_dtoa_r+0x11e5>
c0034e86:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0034e89:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034e90:	85 db                	test   %ebx,%ebx
c0034e92:	7e 16                	jle    c0034eaa <_dtoa_r+0xdba>
c0034e94:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034e97:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0034e9b:	89 34 24             	mov    %esi,(%esp)
c0034e9e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034ea2:	e8 19 14 00 00       	call   c00362c0 <__lshift>
c0034ea7:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034eaa:	8b 5d 8c             	mov    -0x74(%ebp),%ebx
c0034ead:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034eb0:	85 db                	test   %ebx,%ebx
c0034eb2:	89 45 ac             	mov    %eax,-0x54(%ebp)
c0034eb5:	0f 85 11 03 00 00    	jne    c00351cc <_dtoa_r+0x10dc>
c0034ebb:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034ebe:	8d 5f 01             	lea    0x1(%edi),%ebx
c0034ec1:	89 7d 8c             	mov    %edi,-0x74(%ebp)
c0034ec4:	01 f8                	add    %edi,%eax
c0034ec6:	8b 7d a4             	mov    -0x5c(%ebp),%edi
c0034ec9:	89 45 90             	mov    %eax,-0x70(%ebp)
c0034ecc:	8b 45 c0             	mov    -0x40(%ebp),%eax
c0034ecf:	83 e0 01             	and    $0x1,%eax
c0034ed2:	89 45 9c             	mov    %eax,-0x64(%ebp)
c0034ed5:	eb 2e                	jmp    c0034f05 <_dtoa_r+0xe15>
c0034ed7:	90                   	nop
c0034ed8:	e8 03 0e 00 00       	call   c0035ce0 <__multadd>
c0034edd:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034ee4:	00 
c0034ee5:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034eec:	00 
c0034eed:	89 34 24             	mov    %esi,(%esp)
c0034ef0:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034ef3:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0034ef6:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034efa:	e8 e1 0d 00 00       	call   c0035ce0 <__multadd>
c0034eff:	89 45 ac             	mov    %eax,-0x54(%ebp)
c0034f02:	83 c3 01             	add    $0x1,%ebx
c0034f05:	8b 55 b0             	mov    -0x50(%ebp),%edx
c0034f08:	8d 43 ff             	lea    -0x1(%ebx),%eax
c0034f0b:	89 45 98             	mov    %eax,-0x68(%ebp)
c0034f0e:	89 f8                	mov    %edi,%eax
c0034f10:	e8 0b f0 ff ff       	call   c0033f20 <quorem>
c0034f15:	89 3c 24             	mov    %edi,(%esp)
c0034f18:	8d 48 30             	lea    0x30(%eax),%ecx
c0034f1b:	89 4d a0             	mov    %ecx,-0x60(%ebp)
c0034f1e:	8b 4d b4             	mov    -0x4c(%ebp),%ecx
c0034f21:	89 45 94             	mov    %eax,-0x6c(%ebp)
c0034f24:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c0034f28:	e8 b3 14 00 00       	call   c00363e0 <__mcmp>
c0034f2d:	8b 4d ac             	mov    -0x54(%ebp),%ecx
c0034f30:	89 34 24             	mov    %esi,(%esp)
c0034f33:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c0034f37:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0034f3a:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034f3d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034f41:	e8 ea 14 00 00       	call   c0036430 <__mdiff>
c0034f46:	8b 48 0c             	mov    0xc(%eax),%ecx
c0034f49:	89 c2                	mov    %eax,%edx
c0034f4b:	85 c9                	test   %ecx,%ecx
c0034f4d:	0f 85 c5 00 00 00    	jne    c0035018 <_dtoa_r+0xf28>
c0034f53:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034f57:	89 3c 24             	mov    %edi,(%esp)
c0034f5a:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0034f5d:	e8 7e 14 00 00       	call   c00363e0 <__mcmp>
c0034f62:	8b 55 a8             	mov    -0x58(%ebp),%edx
c0034f65:	89 54 24 04          	mov    %edx,0x4(%esp)
c0034f69:	89 34 24             	mov    %esi,(%esp)
c0034f6c:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0034f6f:	e8 4c 0d 00 00       	call   c0035cc0 <_Bfree>
c0034f74:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034f77:	89 c1                	mov    %eax,%ecx
c0034f79:	0b 4d 14             	or     0x14(%ebp),%ecx
c0034f7c:	75 0b                	jne    c0034f89 <_dtoa_r+0xe99>
c0034f7e:	8b 55 9c             	mov    -0x64(%ebp),%edx
c0034f81:	85 d2                	test   %edx,%edx
c0034f83:	0f 84 fb 02 00 00    	je     c0035284 <_dtoa_r+0x1194>
c0034f89:	8b 55 c0             	mov    -0x40(%ebp),%edx
c0034f8c:	85 d2                	test   %edx,%edx
c0034f8e:	0f 88 7f 01 00 00    	js     c0035113 <_dtoa_r+0x1023>
c0034f94:	8b 4d c0             	mov    -0x40(%ebp),%ecx
c0034f97:	0b 4d 14             	or     0x14(%ebp),%ecx
c0034f9a:	75 0b                	jne    c0034fa7 <_dtoa_r+0xeb7>
c0034f9c:	8b 4d 9c             	mov    -0x64(%ebp),%ecx
c0034f9f:	85 c9                	test   %ecx,%ecx
c0034fa1:	0f 84 6c 01 00 00    	je     c0035113 <_dtoa_r+0x1023>
c0034fa7:	85 c0                	test   %eax,%eax
c0034fa9:	0f 8f 82 02 00 00    	jg     c0035231 <_dtoa_r+0x1141>
c0034faf:	0f b6 45 a0          	movzbl -0x60(%ebp),%eax
c0034fb3:	89 da                	mov    %ebx,%edx
c0034fb5:	3b 5d 90             	cmp    -0x70(%ebp),%ebx
c0034fb8:	88 43 ff             	mov    %al,-0x1(%ebx)
c0034fbb:	0f 84 8d 02 00 00    	je     c003524e <_dtoa_r+0x115e>
c0034fc1:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0034fc5:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034fcc:	00 
c0034fcd:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034fd4:	00 
c0034fd5:	89 34 24             	mov    %esi,(%esp)
c0034fd8:	e8 03 0d 00 00       	call   c0035ce0 <__multadd>
c0034fdd:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034fe4:	00 
c0034fe5:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034fec:	00 
c0034fed:	89 34 24             	mov    %esi,(%esp)
c0034ff0:	89 c7                	mov    %eax,%edi
c0034ff2:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0034ff5:	39 45 b4             	cmp    %eax,-0x4c(%ebp)
c0034ff8:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034ffb:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034fff:	0f 85 d3 fe ff ff    	jne    c0034ed8 <_dtoa_r+0xde8>
c0035005:	e8 d6 0c 00 00       	call   c0035ce0 <__multadd>
c003500a:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c003500d:	89 45 ac             	mov    %eax,-0x54(%ebp)
c0035010:	e9 ed fe ff ff       	jmp    c0034f02 <_dtoa_r+0xe12>
c0035015:	8d 76 00             	lea    0x0(%esi),%esi
c0035018:	b8 01 00 00 00       	mov    $0x1,%eax
c003501d:	e9 43 ff ff ff       	jmp    c0034f65 <_dtoa_r+0xe75>
c0035022:	c7 45 98 00 00 00 00 	movl   $0x0,-0x68(%ebp)
c0035029:	e9 d2 f2 ff ff       	jmp    c0034300 <_dtoa_r+0x210>
c003502e:	0f 85 87 f6 ff ff    	jne    c00346bb <_dtoa_r+0x5cb>
c0035034:	dd d8                	fstp   %st(0)
c0035036:	dd d8                	fstp   %st(0)
c0035038:	dd d8                	fstp   %st(0)
c003503a:	89 fb                	mov    %edi,%ebx
c003503c:	8b 7d c0             	mov    -0x40(%ebp),%edi
c003503f:	e9 fc f8 ff ff       	jmp    c0034940 <_dtoa_r+0x850>
c0035044:	89 c2                	mov    %eax,%edx
c0035046:	2b 55 b0             	sub    -0x50(%ebp),%edx
c0035049:	89 45 b0             	mov    %eax,-0x50(%ebp)
c003504c:	01 55 94             	add    %edx,-0x6c(%ebp)
c003504f:	31 d2                	xor    %edx,%edx
c0035051:	e9 b8 f9 ff ff       	jmp    c0034a0e <_dtoa_r+0x91e>
c0035056:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0035059:	85 c0                	test   %eax,%eax
c003505b:	0f 84 f3 f9 ff ff    	je     c0034a54 <_dtoa_r+0x964>
c0035061:	8b 45 90             	mov    -0x70(%ebp),%eax
c0035064:	85 c0                	test   %eax,%eax
c0035066:	0f 8e c4 fb ff ff    	jle    c0034c30 <_dtoa_r+0xb40>
c003506c:	d8 0d d0 99 03 c0    	fmuls  0xc00399d0
c0035072:	83 c1 01             	add    $0x1,%ecx
c0035075:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c0035078:	8b 5d b8             	mov    -0x48(%ebp),%ebx
c003507b:	89 c1                	mov    %eax,%ecx
c003507d:	83 eb 01             	sub    $0x1,%ebx
c0035080:	db 45 d4             	fildl  -0x2c(%ebp)
c0035083:	d8 c9                	fmul   %st(1),%st
c0035085:	89 5d b4             	mov    %ebx,-0x4c(%ebp)
c0035088:	d8 05 d4 99 03 c0    	fadds  0xc00399d4
c003508e:	dd 5d c0             	fstpl  -0x40(%ebp)
c0035091:	81 6d c4 00 00 40 03 	subl   $0x3400000,-0x3c(%ebp)
c0035098:	e9 53 f4 ff ff       	jmp    c00344f0 <_dtoa_r+0x400>
c003509d:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c00350a0:	c6 03 30             	movb   $0x30,(%ebx)
c00350a3:	83 c0 01             	add    $0x1,%eax
c00350a6:	89 45 b8             	mov    %eax,-0x48(%ebp)
c00350a9:	b8 31 00 00 00       	mov    $0x31,%eax
c00350ae:	88 02                	mov    %al,(%edx)
c00350b0:	e9 8b f8 ff ff       	jmp    c0034940 <_dtoa_r+0x850>
c00350b5:	d9 c0                	fld    %st(0)
c00350b7:	b9 02 00 00 00       	mov    $0x2,%ecx
c00350bc:	e9 f2 f3 ff ff       	jmp    c00344b3 <_dtoa_r+0x3c3>
c00350c1:	de e2                	fsubp  %st,%st(2)
c00350c3:	d9 c9                	fxch   %st(1)
c00350c5:	df e9                	fucomip %st(1),%st
c00350c7:	dd d8                	fstp   %st(0)
c00350c9:	0f 86 69 fb ff ff    	jbe    c0034c38 <_dtoa_r+0xb48>
c00350cf:	dd d8                	fstp   %st(0)
c00350d1:	eb 07                	jmp    c00350da <_dtoa_r+0xfea>
c00350d3:	90                   	nop
c00350d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00350d8:	89 c2                	mov    %eax,%edx
c00350da:	80 7a ff 30          	cmpb   $0x30,-0x1(%edx)
c00350de:	8d 42 ff             	lea    -0x1(%edx),%eax
c00350e1:	74 f5                	je     c00350d8 <_dtoa_r+0xfe8>
c00350e3:	e9 d9 f4 ff ff       	jmp    c00345c1 <_dtoa_r+0x4d1>
c00350e8:	c6 07 31             	movb   $0x31,(%edi)
c00350eb:	89 fb                	mov    %edi,%ebx
c00350ed:	89 d7                	mov    %edx,%edi
c00350ef:	83 45 b8 01          	addl   $0x1,-0x48(%ebp)
c00350f3:	e9 1a f8 ff ff       	jmp    c0034912 <_dtoa_r+0x822>
c00350f8:	8b 55 8c             	mov    -0x74(%ebp),%edx
c00350fb:	85 d2                	test   %edx,%edx
c00350fd:	0f 84 1b 01 00 00    	je     c003521e <_dtoa_r+0x112e>
c0035103:	05 33 04 00 00       	add    $0x433,%eax
c0035108:	8b 55 b0             	mov    -0x50(%ebp),%edx
c003510b:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c003510e:	e9 0b f9 ff ff       	jmp    c0034a1e <_dtoa_r+0x92e>
c0035113:	85 c0                	test   %eax,%eax
c0035115:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c0035118:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c003511b:	7e 45                	jle    c0035162 <_dtoa_r+0x1072>
c003511d:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0035120:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
c0035127:	00 
c0035128:	89 34 24             	mov    %esi,(%esp)
c003512b:	89 44 24 04          	mov    %eax,0x4(%esp)
c003512f:	e8 8c 11 00 00       	call   c00362c0 <__lshift>
c0035134:	8b 5d b0             	mov    -0x50(%ebp),%ebx
c0035137:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c003513b:	89 04 24             	mov    %eax,(%esp)
c003513e:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0035141:	e8 9a 12 00 00       	call   c00363e0 <__mcmp>
c0035146:	83 f8 00             	cmp    $0x0,%eax
c0035149:	0f 8e 5b 01 00 00    	jle    c00352aa <_dtoa_r+0x11ba>
c003514f:	83 7d a0 39          	cmpl   $0x39,-0x60(%ebp)
c0035153:	0f 84 0c 01 00 00    	je     c0035265 <_dtoa_r+0x1175>
c0035159:	8b 45 94             	mov    -0x6c(%ebp),%eax
c003515c:	83 c0 31             	add    $0x31,%eax
c003515f:	89 45 a0             	mov    %eax,-0x60(%ebp)
c0035162:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c0035165:	0f b6 45 a0          	movzbl -0x60(%ebp),%eax
c0035169:	89 cb                	mov    %ecx,%ebx
c003516b:	88 03                	mov    %al,(%ebx)
c003516d:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0035170:	89 fb                	mov    %edi,%ebx
c0035172:	8d 79 01             	lea    0x1(%ecx),%edi
c0035175:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0035178:	8b 45 ac             	mov    -0x54(%ebp),%eax
c003517b:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c003517e:	e9 8f f7 ff ff       	jmp    c0034912 <_dtoa_r+0x822>
c0035183:	dd d8                	fstp   %st(0)
c0035185:	dd d8                	fstp   %st(0)
c0035187:	dd d8                	fstp   %st(0)
c0035189:	eb 0d                	jmp    c0035198 <_dtoa_r+0x10a8>
c003518b:	90                   	nop
c003518c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035190:	dd d8                	fstp   %st(0)
c0035192:	dd d8                	fstp   %st(0)
c0035194:	dd d8                	fstp   %st(0)
c0035196:	dd d8                	fstp   %st(0)
c0035198:	89 fb                	mov    %edi,%ebx
c003519a:	89 d7                	mov    %edx,%edi
c003519c:	e9 8d f5 ff ff       	jmp    c003472e <_dtoa_r+0x63e>
c00351a1:	29 cb                	sub    %ecx,%ebx
c00351a3:	31 c0                	xor    %eax,%eax
c00351a5:	e9 74 f8 ff ff       	jmp    c0034a1e <_dtoa_r+0x92e>
c00351aa:	75 0e                	jne    c00351ba <_dtoa_r+0x10ca>
c00351ac:	f6 45 a0 01          	testb  $0x1,-0x60(%ebp)
c00351b0:	74 08                	je     c00351ba <_dtoa_r+0x10ca>
c00351b2:	e9 b2 f9 ff ff       	jmp    c0034b69 <_dtoa_r+0xa79>
c00351b7:	90                   	nop
c00351b8:	89 c2                	mov    %eax,%edx
c00351ba:	80 7a ff 30          	cmpb   $0x30,-0x1(%edx)
c00351be:	8d 42 ff             	lea    -0x1(%edx),%eax
c00351c1:	74 f5                	je     c00351b8 <_dtoa_r+0x10c8>
c00351c3:	89 fb                	mov    %edi,%ebx
c00351c5:	89 d7                	mov    %edx,%edi
c00351c7:	e9 46 f7 ff ff       	jmp    c0034912 <_dtoa_r+0x822>
c00351cc:	8b 40 04             	mov    0x4(%eax),%eax
c00351cf:	89 34 24             	mov    %esi,(%esp)
c00351d2:	89 44 24 04          	mov    %eax,0x4(%esp)
c00351d6:	e8 45 0a 00 00       	call   c0035c20 <_Balloc>
c00351db:	8b 4d b4             	mov    -0x4c(%ebp),%ecx
c00351de:	89 c3                	mov    %eax,%ebx
c00351e0:	8b 41 10             	mov    0x10(%ecx),%eax
c00351e3:	8d 04 85 08 00 00 00 	lea    0x8(,%eax,4),%eax
c00351ea:	89 44 24 08          	mov    %eax,0x8(%esp)
c00351ee:	89 c8                	mov    %ecx,%eax
c00351f0:	83 c0 0c             	add    $0xc,%eax
c00351f3:	89 44 24 04          	mov    %eax,0x4(%esp)
c00351f7:	8d 43 0c             	lea    0xc(%ebx),%eax
c00351fa:	89 04 24             	mov    %eax,(%esp)
c00351fd:	e8 62 cc ff ff       	call   c0031e64 <memcpy>
c0035202:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
c0035209:	00 
c003520a:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c003520e:	89 34 24             	mov    %esi,(%esp)
c0035211:	e8 aa 10 00 00       	call   c00362c0 <__lshift>
c0035216:	89 45 ac             	mov    %eax,-0x54(%ebp)
c0035219:	e9 9d fc ff ff       	jmp    c0034ebb <_dtoa_r+0xdcb>
c003521e:	b8 36 00 00 00       	mov    $0x36,%eax
c0035223:	8b 55 b0             	mov    -0x50(%ebp),%edx
c0035226:	2b 45 e0             	sub    -0x20(%ebp),%eax
c0035229:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c003522c:	e9 ed f7 ff ff       	jmp    c0034a1e <_dtoa_r+0x92e>
c0035231:	83 7d a0 39          	cmpl   $0x39,-0x60(%ebp)
c0035235:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c0035238:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c003523b:	74 28                	je     c0035265 <_dtoa_r+0x1175>
c003523d:	0f b6 45 a0          	movzbl -0x60(%ebp),%eax
c0035241:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c0035244:	83 c0 01             	add    $0x1,%eax
c0035247:	89 cb                	mov    %ecx,%ebx
c0035249:	e9 1d ff ff ff       	jmp    c003516b <_dtoa_r+0x107b>
c003524e:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0035251:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c0035254:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c0035257:	89 45 c0             	mov    %eax,-0x40(%ebp)
c003525a:	8b 45 ac             	mov    -0x54(%ebp),%eax
c003525d:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0035260:	e9 cc f8 ff ff       	jmp    c0034b31 <_dtoa_r+0xa41>
c0035265:	8b 45 98             	mov    -0x68(%ebp),%eax
c0035268:	b9 39 00 00 00       	mov    $0x39,%ecx
c003526d:	8d 50 01             	lea    0x1(%eax),%edx
c0035270:	c6 00 39             	movb   $0x39,(%eax)
c0035273:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0035276:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0035279:	8b 45 ac             	mov    -0x54(%ebp),%eax
c003527c:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c003527f:	e9 fa f8 ff ff       	jmp    c0034b7e <_dtoa_r+0xa8e>
c0035284:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c0035287:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c003528a:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c003528d:	83 fb 39             	cmp    $0x39,%ebx
c0035290:	74 d3                	je     c0035265 <_dtoa_r+0x1175>
c0035292:	8b 4d c0             	mov    -0x40(%ebp),%ecx
c0035295:	8b 45 94             	mov    -0x6c(%ebp),%eax
c0035298:	83 c0 31             	add    $0x31,%eax
c003529b:	85 c9                	test   %ecx,%ecx
c003529d:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c00352a0:	0f 4e c3             	cmovle %ebx,%eax
c00352a3:	89 cb                	mov    %ecx,%ebx
c00352a5:	e9 c1 fe ff ff       	jmp    c003516b <_dtoa_r+0x107b>
c00352aa:	0f 85 b2 fe ff ff    	jne    c0035162 <_dtoa_r+0x1072>
c00352b0:	f6 45 a0 01          	testb  $0x1,-0x60(%ebp)
c00352b4:	0f 84 a8 fe ff ff    	je     c0035162 <_dtoa_r+0x1072>
c00352ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00352c0:	e9 8a fe ff ff       	jmp    c003514f <_dtoa_r+0x105f>
c00352c5:	0f 85 c7 f3 ff ff    	jne    c0034692 <_dtoa_r+0x5a2>
c00352cb:	dd d8                	fstp   %st(0)
c00352cd:	dd d8                	fstp   %st(0)
c00352cf:	90                   	nop
c00352d0:	e9 65 fd ff ff       	jmp    c003503a <_dtoa_r+0xf4a>
c00352d5:	89 45 a8             	mov    %eax,-0x58(%ebp)
c00352d8:	e9 dd f5 ff ff       	jmp    c00348ba <_dtoa_r+0x7ca>
c00352dd:	8d 76 00             	lea    0x0(%esi),%esi
c00352e0:	0f 84 7a f5 ff ff    	je     c0034860 <_dtoa_r+0x770>
c00352e6:	b8 3c 00 00 00       	mov    $0x3c,%eax
c00352eb:	29 d0                	sub    %edx,%eax
c00352ed:	e9 ab f8 ff ff       	jmp    c0034b9d <_dtoa_r+0xaad>
c00352f2:	b8 01 00 00 00       	mov    $0x1,%eax
c00352f7:	e9 d9 ef ff ff       	jmp    c00342d5 <_dtoa_r+0x1e5>
c00352fc:	31 d2                	xor    %edx,%edx
c00352fe:	e9 36 f1 ff ff       	jmp    c0034439 <_dtoa_r+0x349>
c0035303:	66 90                	xchg   %ax,%ax
c0035305:	66 90                	xchg   %ax,%ax
c0035307:	66 90                	xchg   %ax,%ax
c0035309:	66 90                	xchg   %ax,%ax
c003530b:	66 90                	xchg   %ax,%ax
c003530d:	66 90                	xchg   %ax,%ax
c003530f:	90                   	nop

c0035310 <_setlocale_r>:
c0035310:	55                   	push   %ebp
c0035311:	89 e5                	mov    %esp,%ebp
c0035313:	53                   	push   %ebx
c0035314:	83 ec 14             	sub    $0x14,%esp
c0035317:	8b 5d 10             	mov    0x10(%ebp),%ebx
c003531a:	85 db                	test   %ebx,%ebx
c003531c:	74 14                	je     c0035332 <_setlocale_r+0x22>
c003531e:	c7 44 24 04 f8 99 03 	movl   $0xc00399f8,0x4(%esp)
c0035325:	c0 
c0035326:	89 1c 24             	mov    %ebx,(%esp)
c0035329:	e8 82 17 00 00       	call   c0036ab0 <strcmp>
c003532e:	85 c0                	test   %eax,%eax
c0035330:	75 0e                	jne    c0035340 <_setlocale_r+0x30>
c0035332:	83 c4 14             	add    $0x14,%esp
c0035335:	b8 f4 97 03 c0       	mov    $0xc00397f4,%eax
c003533a:	5b                   	pop    %ebx
c003533b:	5d                   	pop    %ebp
c003533c:	c3                   	ret    
c003533d:	8d 76 00             	lea    0x0(%esi),%esi
c0035340:	c7 44 24 04 f4 97 03 	movl   $0xc00397f4,0x4(%esp)
c0035347:	c0 
c0035348:	89 1c 24             	mov    %ebx,(%esp)
c003534b:	e8 60 17 00 00       	call   c0036ab0 <strcmp>
c0035350:	85 c0                	test   %eax,%eax
c0035352:	74 de                	je     c0035332 <_setlocale_r+0x22>
c0035354:	89 1c 24             	mov    %ebx,(%esp)
c0035357:	c7 44 24 04 2e 98 03 	movl   $0xc003982e,0x4(%esp)
c003535e:	c0 
c003535f:	e8 4c 17 00 00       	call   c0036ab0 <strcmp>
c0035364:	89 c2                	mov    %eax,%edx
c0035366:	31 c0                	xor    %eax,%eax
c0035368:	85 d2                	test   %edx,%edx
c003536a:	ba f4 97 03 c0       	mov    $0xc00397f4,%edx
c003536f:	0f 44 c2             	cmove  %edx,%eax
c0035372:	83 c4 14             	add    $0x14,%esp
c0035375:	5b                   	pop    %ebx
c0035376:	5d                   	pop    %ebp
c0035377:	c3                   	ret    
c0035378:	90                   	nop
c0035379:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0035380 <__locale_charset>:
c0035380:	55                   	push   %ebp
c0035381:	b8 c0 d4 03 c0       	mov    $0xc003d4c0,%eax
c0035386:	89 e5                	mov    %esp,%ebp
c0035388:	5d                   	pop    %ebp
c0035389:	c3                   	ret    
c003538a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0035390 <__locale_mb_cur_max>:
c0035390:	55                   	push   %ebp
c0035391:	a1 18 d5 03 c0       	mov    0xc003d518,%eax
c0035396:	89 e5                	mov    %esp,%ebp
c0035398:	5d                   	pop    %ebp
c0035399:	c3                   	ret    
c003539a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c00353a0 <__locale_msgcharset>:
c00353a0:	55                   	push   %ebp
c00353a1:	b8 a0 d4 03 c0       	mov    $0xc003d4a0,%eax
c00353a6:	89 e5                	mov    %esp,%ebp
c00353a8:	5d                   	pop    %ebp
c00353a9:	c3                   	ret    
c00353aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c00353b0 <__locale_cjk_lang>:
c00353b0:	55                   	push   %ebp
c00353b1:	31 c0                	xor    %eax,%eax
c00353b3:	89 e5                	mov    %esp,%ebp
c00353b5:	5d                   	pop    %ebp
c00353b6:	c3                   	ret    
c00353b7:	89 f6                	mov    %esi,%esi
c00353b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c00353c0 <_localeconv_r>:
c00353c0:	55                   	push   %ebp
c00353c1:	b8 e0 d4 03 c0       	mov    $0xc003d4e0,%eax
c00353c6:	89 e5                	mov    %esp,%ebp
c00353c8:	5d                   	pop    %ebp
c00353c9:	c3                   	ret    
c00353ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c00353d0 <setlocale>:
c00353d0:	55                   	push   %ebp
c00353d1:	89 e5                	mov    %esp,%ebp
c00353d3:	83 ec 18             	sub    $0x18,%esp
c00353d6:	e8 35 cc ff ff       	call   c0032010 <__getreent>
c00353db:	8b 55 0c             	mov    0xc(%ebp),%edx
c00353de:	89 54 24 08          	mov    %edx,0x8(%esp)
c00353e2:	8b 55 08             	mov    0x8(%ebp),%edx
c00353e5:	89 04 24             	mov    %eax,(%esp)
c00353e8:	89 54 24 04          	mov    %edx,0x4(%esp)
c00353ec:	e8 1f ff ff ff       	call   c0035310 <_setlocale_r>
c00353f1:	c9                   	leave  
c00353f2:	c3                   	ret    
c00353f3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00353f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0035400 <localeconv>:
c0035400:	55                   	push   %ebp
c0035401:	89 e5                	mov    %esp,%ebp
c0035403:	83 ec 08             	sub    $0x8,%esp
c0035406:	e8 05 cc ff ff       	call   c0032010 <__getreent>
c003540b:	b8 e0 d4 03 c0       	mov    $0xc003d4e0,%eax
c0035410:	c9                   	leave  
c0035411:	c3                   	ret    
c0035412:	66 90                	xchg   %ax,%ax
c0035414:	66 90                	xchg   %ax,%ax
c0035416:	66 90                	xchg   %ax,%ax
c0035418:	66 90                	xchg   %ax,%ax
c003541a:	66 90                	xchg   %ax,%ax
c003541c:	66 90                	xchg   %ax,%ax
c003541e:	66 90                	xchg   %ax,%ax

c0035420 <_malloc_r>:
c0035420:	55                   	push   %ebp
c0035421:	89 e5                	mov    %esp,%ebp
c0035423:	57                   	push   %edi
c0035424:	56                   	push   %esi
c0035425:	53                   	push   %ebx
c0035426:	83 ec 2c             	sub    $0x2c,%esp
c0035429:	8b 45 0c             	mov    0xc(%ebp),%eax
c003542c:	8d 50 0b             	lea    0xb(%eax),%edx
c003542f:	83 fa 16             	cmp    $0x16,%edx
c0035432:	76 6c                	jbe    c00354a0 <_malloc_r+0x80>
c0035434:	89 d7                	mov    %edx,%edi
c0035436:	83 e7 f8             	and    $0xfffffff8,%edi
c0035439:	89 fe                	mov    %edi,%esi
c003543b:	c1 ee 1f             	shr    $0x1f,%esi
c003543e:	39 c7                	cmp    %eax,%edi
c0035440:	8b 45 08             	mov    0x8(%ebp),%eax
c0035443:	89 f2                	mov    %esi,%edx
c0035445:	72 67                	jb     c00354ae <_malloc_r+0x8e>
c0035447:	84 d2                	test   %dl,%dl
c0035449:	75 63                	jne    c00354ae <_malloc_r+0x8e>
c003544b:	89 04 24             	mov    %eax,(%esp)
c003544e:	e8 ad 07 00 00       	call   c0035c00 <__malloc_lock>
c0035453:	81 ff f7 01 00 00    	cmp    $0x1f7,%edi
c0035459:	77 65                	ja     c00354c0 <_malloc_r+0xa0>
c003545b:	89 fa                	mov    %edi,%edx
c003545d:	c1 ea 03             	shr    $0x3,%edx
c0035460:	8d 04 d5 40 d5 03 c0 	lea    -0x3ffc2ac0(,%edx,8),%eax
c0035467:	8b 58 0c             	mov    0xc(%eax),%ebx
c003546a:	39 c3                	cmp    %eax,%ebx
c003546c:	0f 84 3e 05 00 00    	je     c00359b0 <_malloc_r+0x590>
c0035472:	8b 43 04             	mov    0x4(%ebx),%eax
c0035475:	83 e0 fc             	and    $0xfffffffc,%eax
c0035478:	8b 53 0c             	mov    0xc(%ebx),%edx
c003547b:	8b 4b 08             	mov    0x8(%ebx),%ecx
c003547e:	89 51 0c             	mov    %edx,0xc(%ecx)
c0035481:	89 4a 08             	mov    %ecx,0x8(%edx)
c0035484:	83 4c 03 04 01       	orl    $0x1,0x4(%ebx,%eax,1)
c0035489:	8b 45 08             	mov    0x8(%ebp),%eax
c003548c:	89 04 24             	mov    %eax,(%esp)
c003548f:	e8 7c 07 00 00       	call   c0035c10 <__malloc_unlock>
c0035494:	8d 43 08             	lea    0x8(%ebx),%eax
c0035497:	83 c4 2c             	add    $0x2c,%esp
c003549a:	5b                   	pop    %ebx
c003549b:	5e                   	pop    %esi
c003549c:	5f                   	pop    %edi
c003549d:	5d                   	pop    %ebp
c003549e:	c3                   	ret    
c003549f:	90                   	nop
c00354a0:	bf 10 00 00 00       	mov    $0x10,%edi
c00354a5:	31 d2                	xor    %edx,%edx
c00354a7:	39 c7                	cmp    %eax,%edi
c00354a9:	8b 45 08             	mov    0x8(%ebp),%eax
c00354ac:	73 99                	jae    c0035447 <_malloc_r+0x27>
c00354ae:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c00354b4:	83 c4 2c             	add    $0x2c,%esp
c00354b7:	31 c0                	xor    %eax,%eax
c00354b9:	5b                   	pop    %ebx
c00354ba:	5e                   	pop    %esi
c00354bb:	5f                   	pop    %edi
c00354bc:	5d                   	pop    %ebp
c00354bd:	c3                   	ret    
c00354be:	66 90                	xchg   %ax,%ax
c00354c0:	89 fe                	mov    %edi,%esi
c00354c2:	c1 ee 09             	shr    $0x9,%esi
c00354c5:	85 f6                	test   %esi,%esi
c00354c7:	0f 84 ab 01 00 00    	je     c0035678 <_malloc_r+0x258>
c00354cd:	83 fe 04             	cmp    $0x4,%esi
c00354d0:	0f 87 8a 03 00 00    	ja     c0035860 <_malloc_r+0x440>
c00354d6:	89 fe                	mov    %edi,%esi
c00354d8:	c1 ee 06             	shr    $0x6,%esi
c00354db:	83 c6 38             	add    $0x38,%esi
c00354de:	8d 04 36             	lea    (%esi,%esi,1),%eax
c00354e1:	8d 0c 85 40 d5 03 c0 	lea    -0x3ffc2ac0(,%eax,4),%ecx
c00354e8:	8b 59 0c             	mov    0xc(%ecx),%ebx
c00354eb:	39 d9                	cmp    %ebx,%ecx
c00354ed:	75 18                	jne    c0035507 <_malloc_r+0xe7>
c00354ef:	eb 28                	jmp    c0035519 <_malloc_r+0xf9>
c00354f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00354f8:	85 d2                	test   %edx,%edx
c00354fa:	0f 89 78 ff ff ff    	jns    c0035478 <_malloc_r+0x58>
c0035500:	8b 5b 0c             	mov    0xc(%ebx),%ebx
c0035503:	39 d9                	cmp    %ebx,%ecx
c0035505:	74 12                	je     c0035519 <_malloc_r+0xf9>
c0035507:	8b 43 04             	mov    0x4(%ebx),%eax
c003550a:	83 e0 fc             	and    $0xfffffffc,%eax
c003550d:	89 c2                	mov    %eax,%edx
c003550f:	29 fa                	sub    %edi,%edx
c0035511:	83 fa 0f             	cmp    $0xf,%edx
c0035514:	7e e2                	jle    c00354f8 <_malloc_r+0xd8>
c0035516:	83 ee 01             	sub    $0x1,%esi
c0035519:	8d 46 01             	lea    0x1(%esi),%eax
c003551c:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c003551f:	8b 1d 50 d5 03 c0    	mov    0xc003d550,%ebx
c0035525:	a1 44 d5 03 c0       	mov    0xc003d544,%eax
c003552a:	81 fb 48 d5 03 c0    	cmp    $0xc003d548,%ebx
c0035530:	74 6b                	je     c003559d <_malloc_r+0x17d>
c0035532:	8b 73 04             	mov    0x4(%ebx),%esi
c0035535:	83 e6 fc             	and    $0xfffffffc,%esi
c0035538:	89 f0                	mov    %esi,%eax
c003553a:	29 f8                	sub    %edi,%eax
c003553c:	83 f8 0f             	cmp    $0xf,%eax
c003553f:	0f 8f a3 03 00 00    	jg     c00358e8 <_malloc_r+0x4c8>
c0035545:	85 c0                	test   %eax,%eax
c0035547:	c7 05 54 d5 03 c0 48 	movl   $0xc003d548,0xc003d554
c003554e:	d5 03 c0 
c0035551:	c7 05 50 d5 03 c0 48 	movl   $0xc003d548,0xc003d550
c0035558:	d5 03 c0 
c003555b:	0f 89 27 01 00 00    	jns    c0035688 <_malloc_r+0x268>
c0035561:	81 fe ff 01 00 00    	cmp    $0x1ff,%esi
c0035567:	0f 87 1b 03 00 00    	ja     c0035888 <_malloc_r+0x468>
c003556d:	c1 ee 03             	shr    $0x3,%esi
c0035570:	b8 01 00 00 00       	mov    $0x1,%eax
c0035575:	89 f1                	mov    %esi,%ecx
c0035577:	8d 14 f5 40 d5 03 c0 	lea    -0x3ffc2ac0(,%esi,8),%edx
c003557e:	c1 f9 02             	sar    $0x2,%ecx
c0035581:	d3 e0                	shl    %cl,%eax
c0035583:	8b 4a 08             	mov    0x8(%edx),%ecx
c0035586:	0b 05 44 d5 03 c0    	or     0xc003d544,%eax
c003558c:	89 53 0c             	mov    %edx,0xc(%ebx)
c003558f:	89 4b 08             	mov    %ecx,0x8(%ebx)
c0035592:	a3 44 d5 03 c0       	mov    %eax,0xc003d544
c0035597:	89 5a 08             	mov    %ebx,0x8(%edx)
c003559a:	89 59 0c             	mov    %ebx,0xc(%ecx)
c003559d:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c00355a0:	be 01 00 00 00       	mov    $0x1,%esi
c00355a5:	c1 f9 02             	sar    $0x2,%ecx
c00355a8:	d3 e6                	shl    %cl,%esi
c00355aa:	39 c6                	cmp    %eax,%esi
c00355ac:	0f 87 f6 00 00 00    	ja     c00356a8 <_malloc_r+0x288>
c00355b2:	85 f0                	test   %esi,%eax
c00355b4:	0f 85 76 03 00 00    	jne    c0035930 <_malloc_r+0x510>
c00355ba:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c00355bd:	01 f6                	add    %esi,%esi
c00355bf:	83 e2 fc             	and    $0xfffffffc,%edx
c00355c2:	85 f0                	test   %esi,%eax
c00355c4:	8d 4a 04             	lea    0x4(%edx),%ecx
c00355c7:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c00355ca:	0f 85 60 03 00 00    	jne    c0035930 <_malloc_r+0x510>
c00355d0:	89 ca                	mov    %ecx,%edx
c00355d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00355d8:	01 f6                	add    %esi,%esi
c00355da:	83 c2 04             	add    $0x4,%edx
c00355dd:	85 f0                	test   %esi,%eax
c00355df:	74 f7                	je     c00355d8 <_malloc_r+0x1b8>
c00355e1:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c00355e4:	89 75 dc             	mov    %esi,-0x24(%ebp)
c00355e7:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c00355ea:	8d 34 c5 40 d5 03 c0 	lea    -0x3ffc2ac0(,%eax,8),%esi
c00355f1:	89 f1                	mov    %esi,%ecx
c00355f3:	89 45 e0             	mov    %eax,-0x20(%ebp)
c00355f6:	8b 59 0c             	mov    0xc(%ecx),%ebx
c00355f9:	39 d9                	cmp    %ebx,%ecx
c00355fb:	75 1e                	jne    c003561b <_malloc_r+0x1fb>
c00355fd:	e9 36 03 00 00       	jmp    c0035938 <_malloc_r+0x518>
c0035602:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035608:	85 d2                	test   %edx,%edx
c003560a:	0f 89 c0 03 00 00    	jns    c00359d0 <_malloc_r+0x5b0>
c0035610:	8b 5b 0c             	mov    0xc(%ebx),%ebx
c0035613:	39 d9                	cmp    %ebx,%ecx
c0035615:	0f 84 1d 03 00 00    	je     c0035938 <_malloc_r+0x518>
c003561b:	8b 43 04             	mov    0x4(%ebx),%eax
c003561e:	83 e0 fc             	and    $0xfffffffc,%eax
c0035621:	89 c2                	mov    %eax,%edx
c0035623:	29 fa                	sub    %edi,%edx
c0035625:	83 fa 0f             	cmp    $0xf,%edx
c0035628:	7e de                	jle    c0035608 <_malloc_r+0x1e8>
c003562a:	8b 4b 0c             	mov    0xc(%ebx),%ecx
c003562d:	8d 04 3b             	lea    (%ebx,%edi,1),%eax
c0035630:	83 cf 01             	or     $0x1,%edi
c0035633:	8b 73 08             	mov    0x8(%ebx),%esi
c0035636:	89 7b 04             	mov    %edi,0x4(%ebx)
c0035639:	89 4e 0c             	mov    %ecx,0xc(%esi)
c003563c:	89 71 08             	mov    %esi,0x8(%ecx)
c003563f:	89 d1                	mov    %edx,%ecx
c0035641:	83 c9 01             	or     $0x1,%ecx
c0035644:	a3 54 d5 03 c0       	mov    %eax,0xc003d554
c0035649:	a3 50 d5 03 c0       	mov    %eax,0xc003d550
c003564e:	c7 40 0c 48 d5 03 c0 	movl   $0xc003d548,0xc(%eax)
c0035655:	c7 40 08 48 d5 03 c0 	movl   $0xc003d548,0x8(%eax)
c003565c:	89 48 04             	mov    %ecx,0x4(%eax)
c003565f:	89 14 10             	mov    %edx,(%eax,%edx,1)
c0035662:	8b 45 08             	mov    0x8(%ebp),%eax
c0035665:	89 04 24             	mov    %eax,(%esp)
c0035668:	e8 a3 05 00 00       	call   c0035c10 <__malloc_unlock>
c003566d:	8d 43 08             	lea    0x8(%ebx),%eax
c0035670:	e9 22 fe ff ff       	jmp    c0035497 <_malloc_r+0x77>
c0035675:	8d 76 00             	lea    0x0(%esi),%esi
c0035678:	b8 7e 00 00 00       	mov    $0x7e,%eax
c003567d:	be 3f 00 00 00       	mov    $0x3f,%esi
c0035682:	e9 5a fe ff ff       	jmp    c00354e1 <_malloc_r+0xc1>
c0035687:	90                   	nop
c0035688:	8b 45 08             	mov    0x8(%ebp),%eax
c003568b:	83 4c 33 04 01       	orl    $0x1,0x4(%ebx,%esi,1)
c0035690:	89 04 24             	mov    %eax,(%esp)
c0035693:	e8 78 05 00 00       	call   c0035c10 <__malloc_unlock>
c0035698:	83 c4 2c             	add    $0x2c,%esp
c003569b:	8d 43 08             	lea    0x8(%ebx),%eax
c003569e:	5b                   	pop    %ebx
c003569f:	5e                   	pop    %esi
c00356a0:	5f                   	pop    %edi
c00356a1:	5d                   	pop    %ebp
c00356a2:	c3                   	ret    
c00356a3:	90                   	nop
c00356a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00356a8:	8b 1d 48 d5 03 c0    	mov    0xc003d548,%ebx
c00356ae:	8b 73 04             	mov    0x4(%ebx),%esi
c00356b1:	83 e6 fc             	and    $0xfffffffc,%esi
c00356b4:	39 f7                	cmp    %esi,%edi
c00356b6:	77 0d                	ja     c00356c5 <_malloc_r+0x2a5>
c00356b8:	89 f0                	mov    %esi,%eax
c00356ba:	29 f8                	sub    %edi,%eax
c00356bc:	83 f8 0f             	cmp    $0xf,%eax
c00356bf:	0f 8f 6b 01 00 00    	jg     c0035830 <_malloc_r+0x410>
c00356c5:	8b 0d 50 00 07 c0    	mov    0xc0070050,%ecx
c00356cb:	8d 04 33             	lea    (%ebx,%esi,1),%eax
c00356ce:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c00356d1:	01 f9                	add    %edi,%ecx
c00356d3:	8d 81 0f 10 00 00    	lea    0x100f(%ecx),%eax
c00356d9:	83 c1 10             	add    $0x10,%ecx
c00356dc:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c00356e1:	83 3d 20 d5 03 c0 ff 	cmpl   $0xffffffff,0xc003d520
c00356e8:	0f 44 c1             	cmove  %ecx,%eax
c00356eb:	89 45 e0             	mov    %eax,-0x20(%ebp)
c00356ee:	89 44 24 04          	mov    %eax,0x4(%esp)
c00356f2:	8b 45 08             	mov    0x8(%ebp),%eax
c00356f5:	89 04 24             	mov    %eax,(%esp)
c00356f8:	e8 03 13 00 00       	call   c0036a00 <_sbrk_r>
c00356fd:	83 f8 ff             	cmp    $0xffffffff,%eax
c0035700:	89 c1                	mov    %eax,%ecx
c0035702:	0f 84 17 03 00 00    	je     c0035a1f <_malloc_r+0x5ff>
c0035708:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
c003570b:	0f 87 02 03 00 00    	ja     c0035a13 <_malloc_r+0x5f3>
c0035711:	8b 55 e0             	mov    -0x20(%ebp),%edx
c0035714:	03 15 20 00 07 c0    	add    0xc0070020,%edx
c003571a:	39 4d e4             	cmp    %ecx,-0x1c(%ebp)
c003571d:	89 15 20 00 07 c0    	mov    %edx,0xc0070020
c0035723:	0f 84 a9 03 00 00    	je     c0035ad2 <_malloc_r+0x6b2>
c0035729:	83 3d 20 d5 03 c0 ff 	cmpl   $0xffffffff,0xc003d520
c0035730:	0f 84 ca 03 00 00    	je     c0035b00 <_malloc_r+0x6e0>
c0035736:	89 c8                	mov    %ecx,%eax
c0035738:	2b 45 e4             	sub    -0x1c(%ebp),%eax
c003573b:	01 d0                	add    %edx,%eax
c003573d:	a3 20 00 07 c0       	mov    %eax,0xc0070020
c0035742:	89 c8                	mov    %ecx,%eax
c0035744:	ba 00 10 00 00       	mov    $0x1000,%edx
c0035749:	83 e0 07             	and    $0x7,%eax
c003574c:	74 0c                	je     c003575a <_malloc_r+0x33a>
c003574e:	29 c1                	sub    %eax,%ecx
c0035750:	ba 08 10 00 00       	mov    $0x1008,%edx
c0035755:	8d 49 08             	lea    0x8(%ecx),%ecx
c0035758:	29 c2                	sub    %eax,%edx
c003575a:	8b 45 e0             	mov    -0x20(%ebp),%eax
c003575d:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0035760:	01 c8                	add    %ecx,%eax
c0035762:	25 ff 0f 00 00       	and    $0xfff,%eax
c0035767:	29 c2                	sub    %eax,%edx
c0035769:	8b 45 08             	mov    0x8(%ebp),%eax
c003576c:	89 54 24 04          	mov    %edx,0x4(%esp)
c0035770:	89 55 e0             	mov    %edx,-0x20(%ebp)
c0035773:	89 04 24             	mov    %eax,(%esp)
c0035776:	e8 85 12 00 00       	call   c0036a00 <_sbrk_r>
c003577b:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c003577e:	83 f8 ff             	cmp    $0xffffffff,%eax
c0035781:	0f 84 6d 03 00 00    	je     c0035af4 <_malloc_r+0x6d4>
c0035787:	8b 55 e0             	mov    -0x20(%ebp),%edx
c003578a:	29 c8                	sub    %ecx,%eax
c003578c:	01 d0                	add    %edx,%eax
c003578e:	83 c8 01             	or     $0x1,%eax
c0035791:	03 15 20 00 07 c0    	add    0xc0070020,%edx
c0035797:	81 fb 40 d5 03 c0    	cmp    $0xc003d540,%ebx
c003579d:	89 0d 48 d5 03 c0    	mov    %ecx,0xc003d548
c00357a3:	89 41 04             	mov    %eax,0x4(%ecx)
c00357a6:	89 15 20 00 07 c0    	mov    %edx,0xc0070020
c00357ac:	0f 84 f2 02 00 00    	je     c0035aa4 <_malloc_r+0x684>
c00357b2:	83 fe 0f             	cmp    $0xf,%esi
c00357b5:	0f 86 8d 02 00 00    	jbe    c0035a48 <_malloc_r+0x628>
c00357bb:	8b 43 04             	mov    0x4(%ebx),%eax
c00357be:	83 ee 0c             	sub    $0xc,%esi
c00357c1:	83 e6 f8             	and    $0xfffffff8,%esi
c00357c4:	83 e0 01             	and    $0x1,%eax
c00357c7:	09 f0                	or     %esi,%eax
c00357c9:	83 fe 0f             	cmp    $0xf,%esi
c00357cc:	89 43 04             	mov    %eax,0x4(%ebx)
c00357cf:	a1 48 d5 03 c0       	mov    0xc003d548,%eax
c00357d4:	c7 44 33 04 05 00 00 	movl   $0x5,0x4(%ebx,%esi,1)
c00357db:	00 
c00357dc:	c7 44 33 08 05 00 00 	movl   $0x5,0x8(%ebx,%esi,1)
c00357e3:	00 
c00357e4:	0f 87 a2 02 00 00    	ja     c0035a8c <_malloc_r+0x66c>
c00357ea:	3b 15 4c 00 07 c0    	cmp    0xc007004c,%edx
c00357f0:	76 06                	jbe    c00357f8 <_malloc_r+0x3d8>
c00357f2:	89 15 4c 00 07 c0    	mov    %edx,0xc007004c
c00357f8:	3b 15 48 00 07 c0    	cmp    0xc0070048,%edx
c00357fe:	76 06                	jbe    c0035806 <_malloc_r+0x3e6>
c0035800:	89 15 48 00 07 c0    	mov    %edx,0xc0070048
c0035806:	8b 50 04             	mov    0x4(%eax),%edx
c0035809:	89 c3                	mov    %eax,%ebx
c003580b:	83 e2 fc             	and    $0xfffffffc,%edx
c003580e:	89 d0                	mov    %edx,%eax
c0035810:	29 f8                	sub    %edi,%eax
c0035812:	39 d7                	cmp    %edx,%edi
c0035814:	77 05                	ja     c003581b <_malloc_r+0x3fb>
c0035816:	83 f8 0f             	cmp    $0xf,%eax
c0035819:	7f 15                	jg     c0035830 <_malloc_r+0x410>
c003581b:	8b 45 08             	mov    0x8(%ebp),%eax
c003581e:	89 04 24             	mov    %eax,(%esp)
c0035821:	e8 ea 03 00 00       	call   c0035c10 <__malloc_unlock>
c0035826:	31 c0                	xor    %eax,%eax
c0035828:	e9 6a fc ff ff       	jmp    c0035497 <_malloc_r+0x77>
c003582d:	8d 76 00             	lea    0x0(%esi),%esi
c0035830:	89 fa                	mov    %edi,%edx
c0035832:	83 c8 01             	or     $0x1,%eax
c0035835:	83 ca 01             	or     $0x1,%edx
c0035838:	89 53 04             	mov    %edx,0x4(%ebx)
c003583b:	8d 14 3b             	lea    (%ebx,%edi,1),%edx
c003583e:	89 15 48 d5 03 c0    	mov    %edx,0xc003d548
c0035844:	89 42 04             	mov    %eax,0x4(%edx)
c0035847:	8b 45 08             	mov    0x8(%ebp),%eax
c003584a:	89 04 24             	mov    %eax,(%esp)
c003584d:	e8 be 03 00 00       	call   c0035c10 <__malloc_unlock>
c0035852:	83 c4 2c             	add    $0x2c,%esp
c0035855:	8d 43 08             	lea    0x8(%ebx),%eax
c0035858:	5b                   	pop    %ebx
c0035859:	5e                   	pop    %esi
c003585a:	5f                   	pop    %edi
c003585b:	5d                   	pop    %ebp
c003585c:	c3                   	ret    
c003585d:	8d 76 00             	lea    0x0(%esi),%esi
c0035860:	83 fe 14             	cmp    $0x14,%esi
c0035863:	0f 86 8f 01 00 00    	jbe    c00359f8 <_malloc_r+0x5d8>
c0035869:	83 fe 54             	cmp    $0x54,%esi
c003586c:	0f 87 be 01 00 00    	ja     c0035a30 <_malloc_r+0x610>
c0035872:	89 fe                	mov    %edi,%esi
c0035874:	c1 ee 0c             	shr    $0xc,%esi
c0035877:	83 c6 6e             	add    $0x6e,%esi
c003587a:	8d 04 36             	lea    (%esi,%esi,1),%eax
c003587d:	e9 5f fc ff ff       	jmp    c00354e1 <_malloc_r+0xc1>
c0035882:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035888:	89 f1                	mov    %esi,%ecx
c003588a:	c1 e9 09             	shr    $0x9,%ecx
c003588d:	83 f9 04             	cmp    $0x4,%ecx
c0035890:	0f 86 6d 01 00 00    	jbe    c0035a03 <_malloc_r+0x5e3>
c0035896:	83 f9 14             	cmp    $0x14,%ecx
c0035899:	0f 87 0f 02 00 00    	ja     c0035aae <_malloc_r+0x68e>
c003589f:	83 c1 5b             	add    $0x5b,%ecx
c00358a2:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c00358a5:	8d 04 85 40 d5 03 c0 	lea    -0x3ffc2ac0(,%eax,4),%eax
c00358ac:	8b 50 08             	mov    0x8(%eax),%edx
c00358af:	39 c2                	cmp    %eax,%edx
c00358b1:	0f 84 a1 01 00 00    	je     c0035a58 <_malloc_r+0x638>
c00358b7:	90                   	nop
c00358b8:	8b 4a 04             	mov    0x4(%edx),%ecx
c00358bb:	83 e1 fc             	and    $0xfffffffc,%ecx
c00358be:	39 ce                	cmp    %ecx,%esi
c00358c0:	73 07                	jae    c00358c9 <_malloc_r+0x4a9>
c00358c2:	8b 52 08             	mov    0x8(%edx),%edx
c00358c5:	39 d0                	cmp    %edx,%eax
c00358c7:	75 ef                	jne    c00358b8 <_malloc_r+0x498>
c00358c9:	8b 4a 0c             	mov    0xc(%edx),%ecx
c00358cc:	a1 44 d5 03 c0       	mov    0xc003d544,%eax
c00358d1:	89 4b 0c             	mov    %ecx,0xc(%ebx)
c00358d4:	89 53 08             	mov    %edx,0x8(%ebx)
c00358d7:	89 59 08             	mov    %ebx,0x8(%ecx)
c00358da:	89 5a 0c             	mov    %ebx,0xc(%edx)
c00358dd:	e9 bb fc ff ff       	jmp    c003559d <_malloc_r+0x17d>
c00358e2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00358e8:	89 c1                	mov    %eax,%ecx
c00358ea:	8d 14 3b             	lea    (%ebx,%edi,1),%edx
c00358ed:	83 c9 01             	or     $0x1,%ecx
c00358f0:	83 cf 01             	or     $0x1,%edi
c00358f3:	89 7b 04             	mov    %edi,0x4(%ebx)
c00358f6:	89 15 54 d5 03 c0    	mov    %edx,0xc003d554
c00358fc:	89 15 50 d5 03 c0    	mov    %edx,0xc003d550
c0035902:	c7 42 0c 48 d5 03 c0 	movl   $0xc003d548,0xc(%edx)
c0035909:	c7 42 08 48 d5 03 c0 	movl   $0xc003d548,0x8(%edx)
c0035910:	89 4a 04             	mov    %ecx,0x4(%edx)
c0035913:	89 04 02             	mov    %eax,(%edx,%eax,1)
c0035916:	8b 45 08             	mov    0x8(%ebp),%eax
c0035919:	89 04 24             	mov    %eax,(%esp)
c003591c:	e8 ef 02 00 00       	call   c0035c10 <__malloc_unlock>
c0035921:	8d 43 08             	lea    0x8(%ebx),%eax
c0035924:	e9 6e fb ff ff       	jmp    c0035497 <_malloc_r+0x77>
c0035929:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0035930:	89 75 dc             	mov    %esi,-0x24(%ebp)
c0035933:	e9 af fc ff ff       	jmp    c00355e7 <_malloc_r+0x1c7>
c0035938:	83 45 e0 01          	addl   $0x1,-0x20(%ebp)
c003593c:	83 c1 08             	add    $0x8,%ecx
c003593f:	f6 45 e0 03          	testb  $0x3,-0x20(%ebp)
c0035943:	0f 85 ad fc ff ff    	jne    c00355f6 <_malloc_r+0x1d6>
c0035949:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c003594c:	eb 12                	jmp    c0035960 <_malloc_r+0x540>
c003594e:	66 90                	xchg   %ax,%ax
c0035950:	8d 56 f8             	lea    -0x8(%esi),%edx
c0035953:	8b 36                	mov    (%esi),%esi
c0035955:	83 e8 01             	sub    $0x1,%eax
c0035958:	39 d6                	cmp    %edx,%esi
c003595a:	0f 85 ea 01 00 00    	jne    c0035b4a <_malloc_r+0x72a>
c0035960:	a8 03                	test   $0x3,%al
c0035962:	75 ec                	jne    c0035950 <_malloc_r+0x530>
c0035964:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0035967:	f7 d0                	not    %eax
c0035969:	23 05 44 d5 03 c0    	and    0xc003d544,%eax
c003596f:	a3 44 d5 03 c0       	mov    %eax,0xc003d544
c0035974:	d1 65 dc             	shll   -0x24(%ebp)
c0035977:	8b 55 dc             	mov    -0x24(%ebp),%edx
c003597a:	39 c2                	cmp    %eax,%edx
c003597c:	0f 87 26 fd ff ff    	ja     c00356a8 <_malloc_r+0x288>
c0035982:	85 d2                	test   %edx,%edx
c0035984:	0f 84 1e fd ff ff    	je     c00356a8 <_malloc_r+0x288>
c003598a:	85 c2                	test   %eax,%edx
c003598c:	0f 85 c2 01 00 00    	jne    c0035b54 <_malloc_r+0x734>
c0035992:	8b 75 e0             	mov    -0x20(%ebp),%esi
c0035995:	89 f1                	mov    %esi,%ecx
c0035997:	01 d2                	add    %edx,%edx
c0035999:	83 c1 04             	add    $0x4,%ecx
c003599c:	85 d0                	test   %edx,%eax
c003599e:	74 f7                	je     c0035997 <_malloc_r+0x577>
c00359a0:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c00359a3:	89 55 dc             	mov    %edx,-0x24(%ebp)
c00359a6:	e9 3c fc ff ff       	jmp    c00355e7 <_malloc_r+0x1c7>
c00359ab:	90                   	nop
c00359ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00359b0:	8d 43 08             	lea    0x8(%ebx),%eax
c00359b3:	8b 5b 14             	mov    0x14(%ebx),%ebx
c00359b6:	39 d8                	cmp    %ebx,%eax
c00359b8:	0f 85 b4 fa ff ff    	jne    c0035472 <_malloc_r+0x52>
c00359be:	8d 42 02             	lea    0x2(%edx),%eax
c00359c1:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c00359c4:	e9 56 fb ff ff       	jmp    c003551f <_malloc_r+0xff>
c00359c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00359d0:	83 4c 03 04 01       	orl    $0x1,0x4(%ebx,%eax,1)
c00359d5:	8b 53 08             	mov    0x8(%ebx),%edx
c00359d8:	8b 43 0c             	mov    0xc(%ebx),%eax
c00359db:	89 42 0c             	mov    %eax,0xc(%edx)
c00359de:	89 50 08             	mov    %edx,0x8(%eax)
c00359e1:	8b 45 08             	mov    0x8(%ebp),%eax
c00359e4:	89 04 24             	mov    %eax,(%esp)
c00359e7:	e8 24 02 00 00       	call   c0035c10 <__malloc_unlock>
c00359ec:	8d 43 08             	lea    0x8(%ebx),%eax
c00359ef:	e9 a3 fa ff ff       	jmp    c0035497 <_malloc_r+0x77>
c00359f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00359f8:	83 c6 5b             	add    $0x5b,%esi
c00359fb:	8d 04 36             	lea    (%esi,%esi,1),%eax
c00359fe:	e9 de fa ff ff       	jmp    c00354e1 <_malloc_r+0xc1>
c0035a03:	89 f1                	mov    %esi,%ecx
c0035a05:	c1 e9 06             	shr    $0x6,%ecx
c0035a08:	83 c1 38             	add    $0x38,%ecx
c0035a0b:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c0035a0e:	e9 92 fe ff ff       	jmp    c00358a5 <_malloc_r+0x485>
c0035a13:	81 fb 40 d5 03 c0    	cmp    $0xc003d540,%ebx
c0035a19:	0f 84 f2 fc ff ff    	je     c0035711 <_malloc_r+0x2f1>
c0035a1f:	8b 1d 48 d5 03 c0    	mov    0xc003d548,%ebx
c0035a25:	8b 53 04             	mov    0x4(%ebx),%edx
c0035a28:	83 e2 fc             	and    $0xfffffffc,%edx
c0035a2b:	e9 de fd ff ff       	jmp    c003580e <_malloc_r+0x3ee>
c0035a30:	81 fe 54 01 00 00    	cmp    $0x154,%esi
c0035a36:	77 3c                	ja     c0035a74 <_malloc_r+0x654>
c0035a38:	89 fe                	mov    %edi,%esi
c0035a3a:	c1 ee 0f             	shr    $0xf,%esi
c0035a3d:	83 c6 77             	add    $0x77,%esi
c0035a40:	8d 04 36             	lea    (%esi,%esi,1),%eax
c0035a43:	e9 99 fa ff ff       	jmp    c00354e1 <_malloc_r+0xc1>
c0035a48:	c7 41 04 01 00 00 00 	movl   $0x1,0x4(%ecx)
c0035a4f:	89 cb                	mov    %ecx,%ebx
c0035a51:	31 d2                	xor    %edx,%edx
c0035a53:	e9 b6 fd ff ff       	jmp    c003580e <_malloc_r+0x3ee>
c0035a58:	c1 f9 02             	sar    $0x2,%ecx
c0035a5b:	b8 01 00 00 00       	mov    $0x1,%eax
c0035a60:	d3 e0                	shl    %cl,%eax
c0035a62:	89 d1                	mov    %edx,%ecx
c0035a64:	0b 05 44 d5 03 c0    	or     0xc003d544,%eax
c0035a6a:	a3 44 d5 03 c0       	mov    %eax,0xc003d544
c0035a6f:	e9 5d fe ff ff       	jmp    c00358d1 <_malloc_r+0x4b1>
c0035a74:	81 fe 54 05 00 00    	cmp    $0x554,%esi
c0035a7a:	77 47                	ja     c0035ac3 <_malloc_r+0x6a3>
c0035a7c:	89 fe                	mov    %edi,%esi
c0035a7e:	c1 ee 12             	shr    $0x12,%esi
c0035a81:	83 c6 7c             	add    $0x7c,%esi
c0035a84:	8d 04 36             	lea    (%esi,%esi,1),%eax
c0035a87:	e9 55 fa ff ff       	jmp    c00354e1 <_malloc_r+0xc1>
c0035a8c:	8b 45 08             	mov    0x8(%ebp),%eax
c0035a8f:	83 c3 08             	add    $0x8,%ebx
c0035a92:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c0035a96:	89 04 24             	mov    %eax,(%esp)
c0035a99:	e8 c2 22 00 00       	call   c0037d60 <_free_r>
c0035a9e:	8b 15 20 00 07 c0    	mov    0xc0070020,%edx
c0035aa4:	a1 48 d5 03 c0       	mov    0xc003d548,%eax
c0035aa9:	e9 3c fd ff ff       	jmp    c00357ea <_malloc_r+0x3ca>
c0035aae:	83 f9 54             	cmp    $0x54,%ecx
c0035ab1:	77 58                	ja     c0035b0b <_malloc_r+0x6eb>
c0035ab3:	89 f1                	mov    %esi,%ecx
c0035ab5:	c1 e9 0c             	shr    $0xc,%ecx
c0035ab8:	83 c1 6e             	add    $0x6e,%ecx
c0035abb:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c0035abe:	e9 e2 fd ff ff       	jmp    c00358a5 <_malloc_r+0x485>
c0035ac3:	b8 fc 00 00 00       	mov    $0xfc,%eax
c0035ac8:	be 7e 00 00 00       	mov    $0x7e,%esi
c0035acd:	e9 0f fa ff ff       	jmp    c00354e1 <_malloc_r+0xc1>
c0035ad2:	f7 45 e4 ff 0f 00 00 	testl  $0xfff,-0x1c(%ebp)
c0035ad9:	0f 85 4a fc ff ff    	jne    c0035729 <_malloc_r+0x309>
c0035adf:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0035ae2:	a1 48 d5 03 c0       	mov    0xc003d548,%eax
c0035ae7:	01 f1                	add    %esi,%ecx
c0035ae9:	83 c9 01             	or     $0x1,%ecx
c0035aec:	89 48 04             	mov    %ecx,0x4(%eax)
c0035aef:	e9 f6 fc ff ff       	jmp    c00357ea <_malloc_r+0x3ca>
c0035af4:	b8 01 00 00 00       	mov    $0x1,%eax
c0035af9:	31 d2                	xor    %edx,%edx
c0035afb:	e9 91 fc ff ff       	jmp    c0035791 <_malloc_r+0x371>
c0035b00:	89 0d 20 d5 03 c0    	mov    %ecx,0xc003d520
c0035b06:	e9 37 fc ff ff       	jmp    c0035742 <_malloc_r+0x322>
c0035b0b:	81 f9 54 01 00 00    	cmp    $0x154,%ecx
c0035b11:	77 10                	ja     c0035b23 <_malloc_r+0x703>
c0035b13:	89 f1                	mov    %esi,%ecx
c0035b15:	c1 e9 0f             	shr    $0xf,%ecx
c0035b18:	83 c1 77             	add    $0x77,%ecx
c0035b1b:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c0035b1e:	e9 82 fd ff ff       	jmp    c00358a5 <_malloc_r+0x485>
c0035b23:	81 f9 54 05 00 00    	cmp    $0x554,%ecx
c0035b29:	77 10                	ja     c0035b3b <_malloc_r+0x71b>
c0035b2b:	89 f1                	mov    %esi,%ecx
c0035b2d:	c1 e9 12             	shr    $0x12,%ecx
c0035b30:	83 c1 7c             	add    $0x7c,%ecx
c0035b33:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c0035b36:	e9 6a fd ff ff       	jmp    c00358a5 <_malloc_r+0x485>
c0035b3b:	b8 fc 00 00 00       	mov    $0xfc,%eax
c0035b40:	b9 7e 00 00 00       	mov    $0x7e,%ecx
c0035b45:	e9 5b fd ff ff       	jmp    c00358a5 <_malloc_r+0x485>
c0035b4a:	a1 44 d5 03 c0       	mov    0xc003d544,%eax
c0035b4f:	e9 20 fe ff ff       	jmp    c0035974 <_malloc_r+0x554>
c0035b54:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0035b57:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0035b5a:	e9 88 fa ff ff       	jmp    c00355e7 <_malloc_r+0x1c7>
c0035b5f:	90                   	nop

c0035b60 <memchr>:
c0035b60:	55                   	push   %ebp
c0035b61:	89 e5                	mov    %esp,%ebp
c0035b63:	57                   	push   %edi
c0035b64:	0f b6 45 0c          	movzbl 0xc(%ebp),%eax
c0035b68:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0035b6b:	8b 7d 08             	mov    0x8(%ebp),%edi
c0035b6e:	31 d2                	xor    %edx,%edx
c0035b70:	85 c9                	test   %ecx,%ecx
c0035b72:	74 79                	je     c0035bed <L20>
c0035b74:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0035b7a:	74 28                	je     c0035ba4 <L5>
c0035b7c:	3a 07                	cmp    (%edi),%al
c0035b7e:	74 6a                	je     c0035bea <L15>
c0035b80:	47                   	inc    %edi
c0035b81:	49                   	dec    %ecx
c0035b82:	74 69                	je     c0035bed <L20>
c0035b84:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0035b8a:	74 18                	je     c0035ba4 <L5>
c0035b8c:	3a 07                	cmp    (%edi),%al
c0035b8e:	74 5a                	je     c0035bea <L15>
c0035b90:	47                   	inc    %edi
c0035b91:	49                   	dec    %ecx
c0035b92:	74 59                	je     c0035bed <L20>
c0035b94:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0035b9a:	74 08                	je     c0035ba4 <L5>
c0035b9c:	3a 07                	cmp    (%edi),%al
c0035b9e:	74 4a                	je     c0035bea <L15>
c0035ba0:	47                   	inc    %edi
c0035ba1:	49                   	dec    %ecx
c0035ba2:	74 49                	je     c0035bed <L20>

c0035ba4 <L5>:
c0035ba4:	88 c4                	mov    %al,%ah
c0035ba6:	89 c2                	mov    %eax,%edx
c0035ba8:	c1 e2 10             	shl    $0x10,%edx
c0035bab:	09 d0                	or     %edx,%eax
c0035bad:	53                   	push   %ebx
c0035bae:	66 90                	xchg   %ax,%ax

c0035bb0 <L8>:
c0035bb0:	83 e9 04             	sub    $0x4,%ecx
c0035bb3:	72 1c                	jb     c0035bd1 <L9>
c0035bb5:	8b 17                	mov    (%edi),%edx
c0035bb7:	83 c7 04             	add    $0x4,%edi
c0035bba:	31 c2                	xor    %eax,%edx
c0035bbc:	8d 9a ff fe fe fe    	lea    -0x1010101(%edx),%ebx
c0035bc2:	f7 d2                	not    %edx
c0035bc4:	21 d3                	and    %edx,%ebx
c0035bc6:	f7 c3 80 80 80 80    	test   $0x80808080,%ebx
c0035bcc:	74 e2                	je     c0035bb0 <L8>
c0035bce:	83 ef 04             	sub    $0x4,%edi

c0035bd1 <L9>:
c0035bd1:	5b                   	pop    %ebx
c0035bd2:	31 d2                	xor    %edx,%edx
c0035bd4:	83 c1 04             	add    $0x4,%ecx
c0035bd7:	74 14                	je     c0035bed <L20>
c0035bd9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0035be0 <L10>:
c0035be0:	3a 07                	cmp    (%edi),%al
c0035be2:	74 06                	je     c0035bea <L15>
c0035be4:	47                   	inc    %edi
c0035be5:	49                   	dec    %ecx
c0035be6:	75 f8                	jne    c0035be0 <L10>
c0035be8:	31 ff                	xor    %edi,%edi

c0035bea <L15>:
c0035bea:	4a                   	dec    %edx
c0035beb:	21 fa                	and    %edi,%edx

c0035bed <L20>:
c0035bed:	89 d0                	mov    %edx,%eax
c0035bef:	8d 65 fc             	lea    -0x4(%ebp),%esp
c0035bf2:	5f                   	pop    %edi
c0035bf3:	c9                   	leave  
c0035bf4:	c3                   	ret    
c0035bf5:	66 90                	xchg   %ax,%ax
c0035bf7:	66 90                	xchg   %ax,%ax
c0035bf9:	66 90                	xchg   %ax,%ax
c0035bfb:	66 90                	xchg   %ax,%ax
c0035bfd:	66 90                	xchg   %ax,%ax
c0035bff:	90                   	nop

c0035c00 <__malloc_lock>:
c0035c00:	55                   	push   %ebp
c0035c01:	89 e5                	mov    %esp,%ebp
c0035c03:	5d                   	pop    %ebp
c0035c04:	c3                   	ret    
c0035c05:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035c09:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0035c10 <__malloc_unlock>:
c0035c10:	55                   	push   %ebp
c0035c11:	89 e5                	mov    %esp,%ebp
c0035c13:	5d                   	pop    %ebp
c0035c14:	c3                   	ret    
c0035c15:	66 90                	xchg   %ax,%ax
c0035c17:	66 90                	xchg   %ax,%ax
c0035c19:	66 90                	xchg   %ax,%ax
c0035c1b:	66 90                	xchg   %ax,%ax
c0035c1d:	66 90                	xchg   %ax,%ax
c0035c1f:	90                   	nop

c0035c20 <_Balloc>:
c0035c20:	55                   	push   %ebp
c0035c21:	89 e5                	mov    %esp,%ebp
c0035c23:	57                   	push   %edi
c0035c24:	56                   	push   %esi
c0035c25:	53                   	push   %ebx
c0035c26:	83 ec 1c             	sub    $0x1c,%esp
c0035c29:	8b 75 08             	mov    0x8(%ebp),%esi
c0035c2c:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c0035c2f:	8b 46 4c             	mov    0x4c(%esi),%eax
c0035c32:	85 c0                	test   %eax,%eax
c0035c34:	74 2a                	je     c0035c60 <_Balloc+0x40>
c0035c36:	8d 14 98             	lea    (%eax,%ebx,4),%edx
c0035c39:	8b 02                	mov    (%edx),%eax
c0035c3b:	85 c0                	test   %eax,%eax
c0035c3d:	74 49                	je     c0035c88 <_Balloc+0x68>
c0035c3f:	8b 08                	mov    (%eax),%ecx
c0035c41:	89 0a                	mov    %ecx,(%edx)
c0035c43:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%eax)
c0035c4a:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c0035c51:	83 c4 1c             	add    $0x1c,%esp
c0035c54:	5b                   	pop    %ebx
c0035c55:	5e                   	pop    %esi
c0035c56:	5f                   	pop    %edi
c0035c57:	5d                   	pop    %ebp
c0035c58:	c3                   	ret    
c0035c59:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0035c60:	c7 44 24 08 21 00 00 	movl   $0x21,0x8(%esp)
c0035c67:	00 
c0035c68:	c7 44 24 04 04 00 00 	movl   $0x4,0x4(%esp)
c0035c6f:	00 
c0035c70:	89 34 24             	mov    %esi,(%esp)
c0035c73:	e8 38 1f 00 00       	call   c0037bb0 <_calloc_r>
c0035c78:	85 c0                	test   %eax,%eax
c0035c7a:	89 46 4c             	mov    %eax,0x4c(%esi)
c0035c7d:	75 b7                	jne    c0035c36 <_Balloc+0x16>
c0035c7f:	31 c0                	xor    %eax,%eax
c0035c81:	eb ce                	jmp    c0035c51 <_Balloc+0x31>
c0035c83:	90                   	nop
c0035c84:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035c88:	89 d9                	mov    %ebx,%ecx
c0035c8a:	bf 01 00 00 00       	mov    $0x1,%edi
c0035c8f:	d3 e7                	shl    %cl,%edi
c0035c91:	8d 04 bd 14 00 00 00 	lea    0x14(,%edi,4),%eax
c0035c98:	89 44 24 08          	mov    %eax,0x8(%esp)
c0035c9c:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0035ca3:	00 
c0035ca4:	89 34 24             	mov    %esi,(%esp)
c0035ca7:	e8 04 1f 00 00       	call   c0037bb0 <_calloc_r>
c0035cac:	85 c0                	test   %eax,%eax
c0035cae:	74 cf                	je     c0035c7f <_Balloc+0x5f>
c0035cb0:	89 58 04             	mov    %ebx,0x4(%eax)
c0035cb3:	89 78 08             	mov    %edi,0x8(%eax)
c0035cb6:	eb 8b                	jmp    c0035c43 <_Balloc+0x23>
c0035cb8:	90                   	nop
c0035cb9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0035cc0 <_Bfree>:
c0035cc0:	55                   	push   %ebp
c0035cc1:	89 e5                	mov    %esp,%ebp
c0035cc3:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035cc6:	85 c0                	test   %eax,%eax
c0035cc8:	74 12                	je     c0035cdc <_Bfree+0x1c>
c0035cca:	8b 55 08             	mov    0x8(%ebp),%edx
c0035ccd:	8b 48 04             	mov    0x4(%eax),%ecx
c0035cd0:	8b 52 4c             	mov    0x4c(%edx),%edx
c0035cd3:	8d 14 8a             	lea    (%edx,%ecx,4),%edx
c0035cd6:	8b 0a                	mov    (%edx),%ecx
c0035cd8:	89 08                	mov    %ecx,(%eax)
c0035cda:	89 02                	mov    %eax,(%edx)
c0035cdc:	5d                   	pop    %ebp
c0035cdd:	c3                   	ret    
c0035cde:	66 90                	xchg   %ax,%ax

c0035ce0 <__multadd>:
c0035ce0:	55                   	push   %ebp
c0035ce1:	89 e5                	mov    %esp,%ebp
c0035ce3:	57                   	push   %edi
c0035ce4:	56                   	push   %esi
c0035ce5:	53                   	push   %ebx
c0035ce6:	83 ec 2c             	sub    $0x2c,%esp
c0035ce9:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035cec:	8b 5d 14             	mov    0x14(%ebp),%ebx
c0035cef:	8b 40 10             	mov    0x10(%eax),%eax
c0035cf2:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0035cf5:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035cf8:	8d 78 14             	lea    0x14(%eax),%edi
c0035cfb:	31 c0                	xor    %eax,%eax
c0035cfd:	8d 76 00             	lea    0x0(%esi),%esi
c0035d00:	8b 0c 87             	mov    (%edi,%eax,4),%ecx
c0035d03:	0f b7 d1             	movzwl %cx,%edx
c0035d06:	0f af 55 10          	imul   0x10(%ebp),%edx
c0035d0a:	c1 e9 10             	shr    $0x10,%ecx
c0035d0d:	0f af 4d 10          	imul   0x10(%ebp),%ecx
c0035d11:	01 da                	add    %ebx,%edx
c0035d13:	89 d3                	mov    %edx,%ebx
c0035d15:	0f b7 d2             	movzwl %dx,%edx
c0035d18:	c1 eb 10             	shr    $0x10,%ebx
c0035d1b:	01 d9                	add    %ebx,%ecx
c0035d1d:	89 ce                	mov    %ecx,%esi
c0035d1f:	c1 e1 10             	shl    $0x10,%ecx
c0035d22:	01 d1                	add    %edx,%ecx
c0035d24:	c1 ee 10             	shr    $0x10,%esi
c0035d27:	89 0c 87             	mov    %ecx,(%edi,%eax,4)
c0035d2a:	83 c0 01             	add    $0x1,%eax
c0035d2d:	89 f3                	mov    %esi,%ebx
c0035d2f:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
c0035d32:	7f cc                	jg     c0035d00 <__multadd+0x20>
c0035d34:	85 f6                	test   %esi,%esi
c0035d36:	74 1b                	je     c0035d53 <__multadd+0x73>
c0035d38:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035d3b:	8b 7d e4             	mov    -0x1c(%ebp),%edi
c0035d3e:	3b 78 08             	cmp    0x8(%eax),%edi
c0035d41:	7d 1d                	jge    c0035d60 <__multadd+0x80>
c0035d43:	8b 7d 0c             	mov    0xc(%ebp),%edi
c0035d46:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0035d49:	89 74 87 14          	mov    %esi,0x14(%edi,%eax,4)
c0035d4d:	83 c0 01             	add    $0x1,%eax
c0035d50:	89 47 10             	mov    %eax,0x10(%edi)
c0035d53:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035d56:	83 c4 2c             	add    $0x2c,%esp
c0035d59:	5b                   	pop    %ebx
c0035d5a:	5e                   	pop    %esi
c0035d5b:	5f                   	pop    %edi
c0035d5c:	5d                   	pop    %ebp
c0035d5d:	c3                   	ret    
c0035d5e:	66 90                	xchg   %ax,%ax
c0035d60:	8b 40 04             	mov    0x4(%eax),%eax
c0035d63:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0035d66:	83 c0 01             	add    $0x1,%eax
c0035d69:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035d6d:	8b 45 08             	mov    0x8(%ebp),%eax
c0035d70:	89 04 24             	mov    %eax,(%esp)
c0035d73:	e8 a8 fe ff ff       	call   c0035c20 <_Balloc>
c0035d78:	89 c3                	mov    %eax,%ebx
c0035d7a:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035d7d:	8b 40 10             	mov    0x10(%eax),%eax
c0035d80:	8d 04 85 08 00 00 00 	lea    0x8(,%eax,4),%eax
c0035d87:	89 44 24 08          	mov    %eax,0x8(%esp)
c0035d8b:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035d8e:	83 c0 0c             	add    $0xc,%eax
c0035d91:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035d95:	8d 43 0c             	lea    0xc(%ebx),%eax
c0035d98:	89 04 24             	mov    %eax,(%esp)
c0035d9b:	e8 c4 c0 ff ff       	call   c0031e64 <memcpy>
c0035da0:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035da3:	8b 7d 0c             	mov    0xc(%ebp),%edi
c0035da6:	89 5d 0c             	mov    %ebx,0xc(%ebp)
c0035da9:	8b 50 04             	mov    0x4(%eax),%edx
c0035dac:	8b 45 08             	mov    0x8(%ebp),%eax
c0035daf:	8b 40 4c             	mov    0x4c(%eax),%eax
c0035db2:	8d 04 90             	lea    (%eax,%edx,4),%eax
c0035db5:	8b 10                	mov    (%eax),%edx
c0035db7:	89 17                	mov    %edx,(%edi)
c0035db9:	89 38                	mov    %edi,(%eax)
c0035dbb:	eb 86                	jmp    c0035d43 <__multadd+0x63>
c0035dbd:	8d 76 00             	lea    0x0(%esi),%esi

c0035dc0 <__s2b>:
c0035dc0:	55                   	push   %ebp
c0035dc1:	ba 39 8e e3 38       	mov    $0x38e38e39,%edx
c0035dc6:	89 e5                	mov    %esp,%ebp
c0035dc8:	57                   	push   %edi
c0035dc9:	56                   	push   %esi
c0035dca:	53                   	push   %ebx
c0035dcb:	83 ec 2c             	sub    $0x2c,%esp
c0035dce:	8b 45 14             	mov    0x14(%ebp),%eax
c0035dd1:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0035dd4:	8b 75 0c             	mov    0xc(%ebp),%esi
c0035dd7:	8d 48 08             	lea    0x8(%eax),%ecx
c0035dda:	89 c8                	mov    %ecx,%eax
c0035ddc:	f7 ea                	imul   %edx
c0035dde:	c1 f9 1f             	sar    $0x1f,%ecx
c0035de1:	d1 fa                	sar    %edx
c0035de3:	29 ca                	sub    %ecx,%edx
c0035de5:	83 fa 01             	cmp    $0x1,%edx
c0035de8:	0f 8e be 00 00 00    	jle    c0035eac <__s2b+0xec>
c0035dee:	b8 01 00 00 00       	mov    $0x1,%eax
c0035df3:	31 c9                	xor    %ecx,%ecx
c0035df5:	8d 76 00             	lea    0x0(%esi),%esi
c0035df8:	01 c0                	add    %eax,%eax
c0035dfa:	83 c1 01             	add    $0x1,%ecx
c0035dfd:	39 c2                	cmp    %eax,%edx
c0035dff:	7f f7                	jg     c0035df8 <__s2b+0x38>
c0035e01:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c0035e05:	89 1c 24             	mov    %ebx,(%esp)
c0035e08:	e8 13 fe ff ff       	call   c0035c20 <_Balloc>
c0035e0d:	8b 55 18             	mov    0x18(%ebp),%edx
c0035e10:	83 7d 10 09          	cmpl   $0x9,0x10(%ebp)
c0035e14:	89 50 14             	mov    %edx,0x14(%eax)
c0035e17:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c0035e1e:	0f 8e 7c 00 00 00    	jle    c0035ea0 <__s2b+0xe0>
c0035e24:	8d 4e 09             	lea    0x9(%esi),%ecx
c0035e27:	03 75 10             	add    0x10(%ebp),%esi
c0035e2a:	89 cf                	mov    %ecx,%edi
c0035e2c:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0035e2f:	90                   	nop
c0035e30:	83 c7 01             	add    $0x1,%edi
c0035e33:	0f be 57 ff          	movsbl -0x1(%edi),%edx
c0035e37:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0035e3e:	00 
c0035e3f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035e43:	89 1c 24             	mov    %ebx,(%esp)
c0035e46:	83 ea 30             	sub    $0x30,%edx
c0035e49:	89 54 24 0c          	mov    %edx,0xc(%esp)
c0035e4d:	e8 8e fe ff ff       	call   c0035ce0 <__multadd>
c0035e52:	39 f7                	cmp    %esi,%edi
c0035e54:	75 da                	jne    c0035e30 <__s2b+0x70>
c0035e56:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0035e59:	8b 7d 10             	mov    0x10(%ebp),%edi
c0035e5c:	8d 74 39 f8          	lea    -0x8(%ecx,%edi,1),%esi
c0035e60:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0035e63:	39 4d 14             	cmp    %ecx,0x14(%ebp)
c0035e66:	7e 2e                	jle    c0035e96 <__s2b+0xd6>
c0035e68:	8b 7d 14             	mov    0x14(%ebp),%edi
c0035e6b:	29 cf                	sub    %ecx,%edi
c0035e6d:	01 f7                	add    %esi,%edi
c0035e6f:	90                   	nop
c0035e70:	83 c6 01             	add    $0x1,%esi
c0035e73:	0f be 56 ff          	movsbl -0x1(%esi),%edx
c0035e77:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0035e7e:	00 
c0035e7f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035e83:	89 1c 24             	mov    %ebx,(%esp)
c0035e86:	83 ea 30             	sub    $0x30,%edx
c0035e89:	89 54 24 0c          	mov    %edx,0xc(%esp)
c0035e8d:	e8 4e fe ff ff       	call   c0035ce0 <__multadd>
c0035e92:	39 fe                	cmp    %edi,%esi
c0035e94:	75 da                	jne    c0035e70 <__s2b+0xb0>
c0035e96:	83 c4 2c             	add    $0x2c,%esp
c0035e99:	5b                   	pop    %ebx
c0035e9a:	5e                   	pop    %esi
c0035e9b:	5f                   	pop    %edi
c0035e9c:	5d                   	pop    %ebp
c0035e9d:	c3                   	ret    
c0035e9e:	66 90                	xchg   %ax,%ax
c0035ea0:	83 c6 0a             	add    $0xa,%esi
c0035ea3:	c7 45 10 09 00 00 00 	movl   $0x9,0x10(%ebp)
c0035eaa:	eb b4                	jmp    c0035e60 <__s2b+0xa0>
c0035eac:	31 c9                	xor    %ecx,%ecx
c0035eae:	e9 4e ff ff ff       	jmp    c0035e01 <__s2b+0x41>
c0035eb3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035eb9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0035ec0 <__hi0bits>:
c0035ec0:	55                   	push   %ebp
c0035ec1:	31 c9                	xor    %ecx,%ecx
c0035ec3:	89 e5                	mov    %esp,%ebp
c0035ec5:	8b 55 08             	mov    0x8(%ebp),%edx
c0035ec8:	f7 c2 00 00 ff ff    	test   $0xffff0000,%edx
c0035ece:	75 05                	jne    c0035ed5 <__hi0bits+0x15>
c0035ed0:	c1 e2 10             	shl    $0x10,%edx
c0035ed3:	b1 10                	mov    $0x10,%cl
c0035ed5:	f7 c2 00 00 00 ff    	test   $0xff000000,%edx
c0035edb:	75 06                	jne    c0035ee3 <__hi0bits+0x23>
c0035edd:	83 c1 08             	add    $0x8,%ecx
c0035ee0:	c1 e2 08             	shl    $0x8,%edx
c0035ee3:	f7 c2 00 00 00 f0    	test   $0xf0000000,%edx
c0035ee9:	75 06                	jne    c0035ef1 <__hi0bits+0x31>
c0035eeb:	83 c1 04             	add    $0x4,%ecx
c0035eee:	c1 e2 04             	shl    $0x4,%edx
c0035ef1:	f7 c2 00 00 00 c0    	test   $0xc0000000,%edx
c0035ef7:	75 06                	jne    c0035eff <__hi0bits+0x3f>
c0035ef9:	83 c1 02             	add    $0x2,%ecx
c0035efc:	c1 e2 02             	shl    $0x2,%edx
c0035eff:	85 d2                	test   %edx,%edx
c0035f01:	89 c8                	mov    %ecx,%eax
c0035f03:	78 0d                	js     c0035f12 <__hi0bits+0x52>
c0035f05:	81 e2 00 00 00 40    	and    $0x40000000,%edx
c0035f0b:	b8 20 00 00 00       	mov    $0x20,%eax
c0035f10:	75 06                	jne    c0035f18 <__hi0bits+0x58>
c0035f12:	5d                   	pop    %ebp
c0035f13:	c3                   	ret    
c0035f14:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035f18:	8d 41 01             	lea    0x1(%ecx),%eax
c0035f1b:	5d                   	pop    %ebp
c0035f1c:	c3                   	ret    
c0035f1d:	8d 76 00             	lea    0x0(%esi),%esi

c0035f20 <__lo0bits>:
c0035f20:	55                   	push   %ebp
c0035f21:	89 e5                	mov    %esp,%ebp
c0035f23:	53                   	push   %ebx
c0035f24:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0035f27:	8b 13                	mov    (%ebx),%edx
c0035f29:	f6 c2 07             	test   $0x7,%dl
c0035f2c:	74 1a                	je     c0035f48 <__lo0bits+0x28>
c0035f2e:	31 c0                	xor    %eax,%eax
c0035f30:	f6 c2 01             	test   $0x1,%dl
c0035f33:	75 0f                	jne    c0035f44 <__lo0bits+0x24>
c0035f35:	f6 c2 02             	test   $0x2,%dl
c0035f38:	75 56                	jne    c0035f90 <__lo0bits+0x70>
c0035f3a:	c1 ea 02             	shr    $0x2,%edx
c0035f3d:	b8 02 00 00 00       	mov    $0x2,%eax
c0035f42:	89 13                	mov    %edx,(%ebx)
c0035f44:	5b                   	pop    %ebx
c0035f45:	5d                   	pop    %ebp
c0035f46:	c3                   	ret    
c0035f47:	90                   	nop
c0035f48:	31 c9                	xor    %ecx,%ecx
c0035f4a:	66 85 d2             	test   %dx,%dx
c0035f4d:	75 05                	jne    c0035f54 <__lo0bits+0x34>
c0035f4f:	c1 ea 10             	shr    $0x10,%edx
c0035f52:	b1 10                	mov    $0x10,%cl
c0035f54:	84 d2                	test   %dl,%dl
c0035f56:	75 06                	jne    c0035f5e <__lo0bits+0x3e>
c0035f58:	83 c1 08             	add    $0x8,%ecx
c0035f5b:	c1 ea 08             	shr    $0x8,%edx
c0035f5e:	f6 c2 0f             	test   $0xf,%dl
c0035f61:	75 06                	jne    c0035f69 <__lo0bits+0x49>
c0035f63:	83 c1 04             	add    $0x4,%ecx
c0035f66:	c1 ea 04             	shr    $0x4,%edx
c0035f69:	f6 c2 03             	test   $0x3,%dl
c0035f6c:	75 06                	jne    c0035f74 <__lo0bits+0x54>
c0035f6e:	83 c1 02             	add    $0x2,%ecx
c0035f71:	c1 ea 02             	shr    $0x2,%edx
c0035f74:	f6 c2 01             	test   $0x1,%dl
c0035f77:	75 0c                	jne    c0035f85 <__lo0bits+0x65>
c0035f79:	d1 ea                	shr    %edx
c0035f7b:	b8 20 00 00 00       	mov    $0x20,%eax
c0035f80:	74 c2                	je     c0035f44 <__lo0bits+0x24>
c0035f82:	83 c1 01             	add    $0x1,%ecx
c0035f85:	89 13                	mov    %edx,(%ebx)
c0035f87:	89 c8                	mov    %ecx,%eax
c0035f89:	5b                   	pop    %ebx
c0035f8a:	5d                   	pop    %ebp
c0035f8b:	c3                   	ret    
c0035f8c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035f90:	d1 ea                	shr    %edx
c0035f92:	b0 01                	mov    $0x1,%al
c0035f94:	89 13                	mov    %edx,(%ebx)
c0035f96:	5b                   	pop    %ebx
c0035f97:	5d                   	pop    %ebp
c0035f98:	c3                   	ret    
c0035f99:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0035fa0 <__i2b>:
c0035fa0:	55                   	push   %ebp
c0035fa1:	89 e5                	mov    %esp,%ebp
c0035fa3:	83 ec 18             	sub    $0x18,%esp
c0035fa6:	8b 45 08             	mov    0x8(%ebp),%eax
c0035fa9:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0035fb0:	00 
c0035fb1:	89 04 24             	mov    %eax,(%esp)
c0035fb4:	e8 67 fc ff ff       	call   c0035c20 <_Balloc>
c0035fb9:	8b 55 0c             	mov    0xc(%ebp),%edx
c0035fbc:	89 50 14             	mov    %edx,0x14(%eax)
c0035fbf:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c0035fc6:	c9                   	leave  
c0035fc7:	c3                   	ret    
c0035fc8:	90                   	nop
c0035fc9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0035fd0 <__multiply>:
c0035fd0:	55                   	push   %ebp
c0035fd1:	89 e5                	mov    %esp,%ebp
c0035fd3:	57                   	push   %edi
c0035fd4:	56                   	push   %esi
c0035fd5:	53                   	push   %ebx
c0035fd6:	83 ec 3c             	sub    $0x3c,%esp
c0035fd9:	8b 75 0c             	mov    0xc(%ebp),%esi
c0035fdc:	8b 45 10             	mov    0x10(%ebp),%eax
c0035fdf:	8b 7e 10             	mov    0x10(%esi),%edi
c0035fe2:	8b 58 10             	mov    0x10(%eax),%ebx
c0035fe5:	39 df                	cmp    %ebx,%edi
c0035fe7:	7d 0e                	jge    c0035ff7 <__multiply+0x27>
c0035fe9:	89 f8                	mov    %edi,%eax
c0035feb:	89 df                	mov    %ebx,%edi
c0035fed:	89 c3                	mov    %eax,%ebx
c0035fef:	89 f0                	mov    %esi,%eax
c0035ff1:	8b 75 10             	mov    0x10(%ebp),%esi
c0035ff4:	89 45 10             	mov    %eax,0x10(%ebp)
c0035ff7:	8d 04 1f             	lea    (%edi,%ebx,1),%eax
c0035ffa:	3b 46 08             	cmp    0x8(%esi),%eax
c0035ffd:	89 45 c8             	mov    %eax,-0x38(%ebp)
c0036000:	0f 9f c0             	setg   %al
c0036003:	0f b6 c0             	movzbl %al,%eax
c0036006:	03 46 04             	add    0x4(%esi),%eax
c0036009:	89 44 24 04          	mov    %eax,0x4(%esp)
c003600d:	8b 45 08             	mov    0x8(%ebp),%eax
c0036010:	89 04 24             	mov    %eax,(%esp)
c0036013:	e8 08 fc ff ff       	call   c0035c20 <_Balloc>
c0036018:	8b 55 c8             	mov    -0x38(%ebp),%edx
c003601b:	89 45 c0             	mov    %eax,-0x40(%ebp)
c003601e:	8d 40 14             	lea    0x14(%eax),%eax
c0036021:	8d 14 90             	lea    (%eax,%edx,4),%edx
c0036024:	89 d1                	mov    %edx,%ecx
c0036026:	39 c8                	cmp    %ecx,%eax
c0036028:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c003602b:	89 55 c4             	mov    %edx,-0x3c(%ebp)
c003602e:	73 15                	jae    c0036045 <__multiply+0x75>
c0036030:	8b 55 c4             	mov    -0x3c(%ebp),%edx
c0036033:	90                   	nop
c0036034:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036038:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c003603e:	83 c0 04             	add    $0x4,%eax
c0036041:	39 c2                	cmp    %eax,%edx
c0036043:	77 f3                	ja     c0036038 <__multiply+0x68>
c0036045:	8d 46 14             	lea    0x14(%esi),%eax
c0036048:	89 45 d0             	mov    %eax,-0x30(%ebp)
c003604b:	8d 04 b8             	lea    (%eax,%edi,4),%eax
c003604e:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0036051:	8b 45 10             	mov    0x10(%ebp),%eax
c0036054:	83 c0 14             	add    $0x14,%eax
c0036057:	8d 3c 98             	lea    (%eax,%ebx,4),%edi
c003605a:	39 f8                	cmp    %edi,%eax
c003605c:	89 45 d8             	mov    %eax,-0x28(%ebp)
c003605f:	89 7d cc             	mov    %edi,-0x34(%ebp)
c0036062:	0f 83 e8 00 00 00    	jae    c0036150 <__multiply+0x180>
c0036068:	8b 45 d8             	mov    -0x28(%ebp),%eax
c003606b:	8b 00                	mov    (%eax),%eax
c003606d:	0f b7 f8             	movzwl %ax,%edi
c0036070:	85 ff                	test   %edi,%edi
c0036072:	89 7d e4             	mov    %edi,-0x1c(%ebp)
c0036075:	74 5a                	je     c00360d1 <__multiply+0x101>
c0036077:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c003607a:	31 db                	xor    %ebx,%ebx
c003607c:	8b 75 d0             	mov    -0x30(%ebp),%esi
c003607f:	eb 09                	jmp    c003608a <__multiply+0xba>
c0036081:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036088:	89 fa                	mov    %edi,%edx
c003608a:	8b 0e                	mov    (%esi),%ecx
c003608c:	83 c6 04             	add    $0x4,%esi
c003608f:	0f b7 3a             	movzwl (%edx),%edi
c0036092:	0f b7 c1             	movzwl %cx,%eax
c0036095:	0f af 45 e4          	imul   -0x1c(%ebp),%eax
c0036099:	c1 e9 10             	shr    $0x10,%ecx
c003609c:	0f af 4d e4          	imul   -0x1c(%ebp),%ecx
c00360a0:	01 f8                	add    %edi,%eax
c00360a2:	01 d8                	add    %ebx,%eax
c00360a4:	8b 1a                	mov    (%edx),%ebx
c00360a6:	8d 7a 04             	lea    0x4(%edx),%edi
c00360a9:	c1 eb 10             	shr    $0x10,%ebx
c00360ac:	01 d9                	add    %ebx,%ecx
c00360ae:	89 c3                	mov    %eax,%ebx
c00360b0:	c1 eb 10             	shr    $0x10,%ebx
c00360b3:	0f b7 c0             	movzwl %ax,%eax
c00360b6:	01 d9                	add    %ebx,%ecx
c00360b8:	89 cb                	mov    %ecx,%ebx
c00360ba:	c1 e1 10             	shl    $0x10,%ecx
c00360bd:	09 c1                	or     %eax,%ecx
c00360bf:	c1 eb 10             	shr    $0x10,%ebx
c00360c2:	39 75 dc             	cmp    %esi,-0x24(%ebp)
c00360c5:	89 0a                	mov    %ecx,(%edx)
c00360c7:	77 bf                	ja     c0036088 <__multiply+0xb8>
c00360c9:	8b 45 d8             	mov    -0x28(%ebp),%eax
c00360cc:	89 5a 04             	mov    %ebx,0x4(%edx)
c00360cf:	8b 00                	mov    (%eax),%eax
c00360d1:	c1 e8 10             	shr    $0x10,%eax
c00360d4:	85 c0                	test   %eax,%eax
c00360d6:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c00360d9:	74 61                	je     c003613c <__multiply+0x16c>
c00360db:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c00360de:	31 ff                	xor    %edi,%edi
c00360e0:	89 fe                	mov    %edi,%esi
c00360e2:	8b 10                	mov    (%eax),%edx
c00360e4:	89 45 e0             	mov    %eax,-0x20(%ebp)
c00360e7:	8b 45 d0             	mov    -0x30(%ebp),%eax
c00360ea:	89 d3                	mov    %edx,%ebx
c00360ec:	eb 05                	jmp    c00360f3 <__multiply+0x123>
c00360ee:	66 90                	xchg   %ax,%ax
c00360f0:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c00360f3:	0f b7 08             	movzwl (%eax),%ecx
c00360f6:	c1 eb 10             	shr    $0x10,%ebx
c00360f9:	0f b7 d2             	movzwl %dx,%edx
c00360fc:	0f af 4d e4          	imul   -0x1c(%ebp),%ecx
c0036100:	83 c0 04             	add    $0x4,%eax
c0036103:	8d 3c 19             	lea    (%ecx,%ebx,1),%edi
c0036106:	01 f7                	add    %esi,%edi
c0036108:	8b 75 e0             	mov    -0x20(%ebp),%esi
c003610b:	89 fb                	mov    %edi,%ebx
c003610d:	c1 e3 10             	shl    $0x10,%ebx
c0036110:	09 d3                	or     %edx,%ebx
c0036112:	89 1e                	mov    %ebx,(%esi)
c0036114:	8b 5e 04             	mov    0x4(%esi),%ebx
c0036117:	8d 4e 04             	lea    0x4(%esi),%ecx
c003611a:	0f b7 50 fe          	movzwl -0x2(%eax),%edx
c003611e:	c1 ef 10             	shr    $0x10,%edi
c0036121:	0f af 55 e4          	imul   -0x1c(%ebp),%edx
c0036125:	0f b7 f3             	movzwl %bx,%esi
c0036128:	01 f2                	add    %esi,%edx
c003612a:	01 fa                	add    %edi,%edx
c003612c:	89 d6                	mov    %edx,%esi
c003612e:	c1 ee 10             	shr    $0x10,%esi
c0036131:	39 45 dc             	cmp    %eax,-0x24(%ebp)
c0036134:	77 ba                	ja     c00360f0 <__multiply+0x120>
c0036136:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0036139:	89 50 04             	mov    %edx,0x4(%eax)
c003613c:	83 45 d8 04          	addl   $0x4,-0x28(%ebp)
c0036140:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0036143:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
c0036147:	39 45 cc             	cmp    %eax,-0x34(%ebp)
c003614a:	0f 87 18 ff ff ff    	ja     c0036068 <__multiply+0x98>
c0036150:	8b 75 c8             	mov    -0x38(%ebp),%esi
c0036153:	85 f6                	test   %esi,%esi
c0036155:	7e 29                	jle    c0036180 <__multiply+0x1b0>
c0036157:	8b 7d c4             	mov    -0x3c(%ebp),%edi
c003615a:	8b 5f fc             	mov    -0x4(%edi),%ebx
c003615d:	85 db                	test   %ebx,%ebx
c003615f:	75 1f                	jne    c0036180 <__multiply+0x1b0>
c0036161:	8b 55 c8             	mov    -0x38(%ebp),%edx
c0036164:	89 d0                	mov    %edx,%eax
c0036166:	c1 e0 02             	shl    $0x2,%eax
c0036169:	29 c7                	sub    %eax,%edi
c003616b:	89 f8                	mov    %edi,%eax
c003616d:	eb 09                	jmp    c0036178 <__multiply+0x1a8>
c003616f:	90                   	nop
c0036170:	8b 4c 90 fc          	mov    -0x4(%eax,%edx,4),%ecx
c0036174:	85 c9                	test   %ecx,%ecx
c0036176:	75 05                	jne    c003617d <__multiply+0x1ad>
c0036178:	83 ea 01             	sub    $0x1,%edx
c003617b:	75 f3                	jne    c0036170 <__multiply+0x1a0>
c003617d:	89 55 c8             	mov    %edx,-0x38(%ebp)
c0036180:	8b 45 c0             	mov    -0x40(%ebp),%eax
c0036183:	8b 7d c8             	mov    -0x38(%ebp),%edi
c0036186:	89 78 10             	mov    %edi,0x10(%eax)
c0036189:	83 c4 3c             	add    $0x3c,%esp
c003618c:	5b                   	pop    %ebx
c003618d:	5e                   	pop    %esi
c003618e:	5f                   	pop    %edi
c003618f:	5d                   	pop    %ebp
c0036190:	c3                   	ret    
c0036191:	eb 0d                	jmp    c00361a0 <__pow5mult>
c0036193:	90                   	nop
c0036194:	90                   	nop
c0036195:	90                   	nop
c0036196:	90                   	nop
c0036197:	90                   	nop
c0036198:	90                   	nop
c0036199:	90                   	nop
c003619a:	90                   	nop
c003619b:	90                   	nop
c003619c:	90                   	nop
c003619d:	90                   	nop
c003619e:	90                   	nop
c003619f:	90                   	nop

c00361a0 <__pow5mult>:
c00361a0:	55                   	push   %ebp
c00361a1:	89 e5                	mov    %esp,%ebp
c00361a3:	57                   	push   %edi
c00361a4:	56                   	push   %esi
c00361a5:	53                   	push   %ebx
c00361a6:	83 ec 2c             	sub    $0x2c,%esp
c00361a9:	8b 5d 10             	mov    0x10(%ebp),%ebx
c00361ac:	8b 4d 08             	mov    0x8(%ebp),%ecx
c00361af:	8b 7d 0c             	mov    0xc(%ebp),%edi
c00361b2:	89 d8                	mov    %ebx,%eax
c00361b4:	83 e0 03             	and    $0x3,%eax
c00361b7:	0f 85 a3 00 00 00    	jne    c0036260 <__pow5mult+0xc0>
c00361bd:	c1 fb 02             	sar    $0x2,%ebx
c00361c0:	85 db                	test   %ebx,%ebx
c00361c2:	74 5c                	je     c0036220 <__pow5mult+0x80>
c00361c4:	8b 71 48             	mov    0x48(%ecx),%esi
c00361c7:	85 f6                	test   %esi,%esi
c00361c9:	0f 84 bd 00 00 00    	je     c003628c <__pow5mult+0xec>
c00361cf:	f6 c3 01             	test   $0x1,%bl
c00361d2:	75 15                	jne    c00361e9 <__pow5mult+0x49>
c00361d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00361d8:	d1 fb                	sar    %ebx
c00361da:	74 44                	je     c0036220 <__pow5mult+0x80>
c00361dc:	8b 06                	mov    (%esi),%eax
c00361de:	85 c0                	test   %eax,%eax
c00361e0:	74 4e                	je     c0036230 <__pow5mult+0x90>
c00361e2:	89 c6                	mov    %eax,%esi
c00361e4:	f6 c3 01             	test   $0x1,%bl
c00361e7:	74 ef                	je     c00361d8 <__pow5mult+0x38>
c00361e9:	89 0c 24             	mov    %ecx,(%esp)
c00361ec:	89 74 24 08          	mov    %esi,0x8(%esp)
c00361f0:	89 7c 24 04          	mov    %edi,0x4(%esp)
c00361f4:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c00361f7:	e8 d4 fd ff ff       	call   c0035fd0 <__multiply>
c00361fc:	85 ff                	test   %edi,%edi
c00361fe:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0036201:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0036204:	74 52                	je     c0036258 <__pow5mult+0xb8>
c0036206:	8b 57 04             	mov    0x4(%edi),%edx
c0036209:	d1 fb                	sar    %ebx
c003620b:	8b 41 4c             	mov    0x4c(%ecx),%eax
c003620e:	8d 04 90             	lea    (%eax,%edx,4),%eax
c0036211:	8b 10                	mov    (%eax),%edx
c0036213:	89 17                	mov    %edx,(%edi)
c0036215:	89 38                	mov    %edi,(%eax)
c0036217:	8b 7d e0             	mov    -0x20(%ebp),%edi
c003621a:	75 c0                	jne    c00361dc <__pow5mult+0x3c>
c003621c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036220:	83 c4 2c             	add    $0x2c,%esp
c0036223:	89 f8                	mov    %edi,%eax
c0036225:	5b                   	pop    %ebx
c0036226:	5e                   	pop    %esi
c0036227:	5f                   	pop    %edi
c0036228:	5d                   	pop    %ebp
c0036229:	c3                   	ret    
c003622a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036230:	89 74 24 08          	mov    %esi,0x8(%esp)
c0036234:	89 74 24 04          	mov    %esi,0x4(%esp)
c0036238:	89 0c 24             	mov    %ecx,(%esp)
c003623b:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c003623e:	e8 8d fd ff ff       	call   c0035fd0 <__multiply>
c0036243:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0036246:	89 06                	mov    %eax,(%esi)
c0036248:	89 c6                	mov    %eax,%esi
c003624a:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0036250:	eb 92                	jmp    c00361e4 <__pow5mult+0x44>
c0036252:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036258:	8b 7d e0             	mov    -0x20(%ebp),%edi
c003625b:	e9 78 ff ff ff       	jmp    c00361d8 <__pow5mult+0x38>
c0036260:	8b 04 85 fc 99 03 c0 	mov    -0x3ffc6604(,%eax,4),%eax
c0036267:	89 7c 24 04          	mov    %edi,0x4(%esp)
c003626b:	89 0c 24             	mov    %ecx,(%esp)
c003626e:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0036275:	00 
c0036276:	89 44 24 08          	mov    %eax,0x8(%esp)
c003627a:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c003627d:	e8 5e fa ff ff       	call   c0035ce0 <__multadd>
c0036282:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0036285:	89 c7                	mov    %eax,%edi
c0036287:	e9 31 ff ff ff       	jmp    c00361bd <__pow5mult+0x1d>
c003628c:	89 0c 24             	mov    %ecx,(%esp)
c003628f:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0036296:	00 
c0036297:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c003629a:	e8 81 f9 ff ff       	call   c0035c20 <_Balloc>
c003629f:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c00362a2:	c7 40 14 71 02 00 00 	movl   $0x271,0x14(%eax)
c00362a9:	89 c6                	mov    %eax,%esi
c00362ab:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c00362b2:	89 41 48             	mov    %eax,0x48(%ecx)
c00362b5:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c00362bb:	e9 0f ff ff ff       	jmp    c00361cf <__pow5mult+0x2f>

c00362c0 <__lshift>:
c00362c0:	55                   	push   %ebp
c00362c1:	89 e5                	mov    %esp,%ebp
c00362c3:	57                   	push   %edi
c00362c4:	56                   	push   %esi
c00362c5:	53                   	push   %ebx
c00362c6:	83 ec 2c             	sub    $0x2c,%esp
c00362c9:	8b 45 0c             	mov    0xc(%ebp),%eax
c00362cc:	8b 75 10             	mov    0x10(%ebp),%esi
c00362cf:	89 c7                	mov    %eax,%edi
c00362d1:	8b 50 04             	mov    0x4(%eax),%edx
c00362d4:	8b 40 10             	mov    0x10(%eax),%eax
c00362d7:	89 f3                	mov    %esi,%ebx
c00362d9:	c1 fb 05             	sar    $0x5,%ebx
c00362dc:	01 d8                	add    %ebx,%eax
c00362de:	89 45 d0             	mov    %eax,-0x30(%ebp)
c00362e1:	83 c0 01             	add    $0x1,%eax
c00362e4:	89 c1                	mov    %eax,%ecx
c00362e6:	89 45 d8             	mov    %eax,-0x28(%ebp)
c00362e9:	8b 47 08             	mov    0x8(%edi),%eax
c00362ec:	39 c1                	cmp    %eax,%ecx
c00362ee:	7e 09                	jle    c00362f9 <__lshift+0x39>
c00362f0:	01 c0                	add    %eax,%eax
c00362f2:	83 c2 01             	add    $0x1,%edx
c00362f5:	39 c1                	cmp    %eax,%ecx
c00362f7:	7f f7                	jg     c00362f0 <__lshift+0x30>
c00362f9:	8b 45 08             	mov    0x8(%ebp),%eax
c00362fc:	89 54 24 04          	mov    %edx,0x4(%esp)
c0036300:	89 04 24             	mov    %eax,(%esp)
c0036303:	e8 18 f9 ff ff       	call   c0035c20 <_Balloc>
c0036308:	85 db                	test   %ebx,%ebx
c003630a:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c003630d:	8d 50 14             	lea    0x14(%eax),%edx
c0036310:	7e 17                	jle    c0036329 <__lshift+0x69>
c0036312:	31 c0                	xor    %eax,%eax
c0036314:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036318:	c7 04 82 00 00 00 00 	movl   $0x0,(%edx,%eax,4)
c003631f:	83 c0 01             	add    $0x1,%eax
c0036322:	39 d8                	cmp    %ebx,%eax
c0036324:	75 f2                	jne    c0036318 <__lshift+0x58>
c0036326:	8d 14 82             	lea    (%edx,%eax,4),%edx
c0036329:	8b 7d 0c             	mov    0xc(%ebp),%edi
c003632c:	8b 45 0c             	mov    0xc(%ebp),%eax
c003632f:	8b 4f 10             	mov    0x10(%edi),%ecx
c0036332:	83 c0 14             	add    $0x14,%eax
c0036335:	83 e6 1f             	and    $0x1f,%esi
c0036338:	89 75 e0             	mov    %esi,-0x20(%ebp)
c003633b:	8d 3c 88             	lea    (%eax,%ecx,4),%edi
c003633e:	89 7d e4             	mov    %edi,-0x1c(%ebp)
c0036341:	74 7d                	je     c00363c0 <__lshift+0x100>
c0036343:	c7 45 dc 20 00 00 00 	movl   $0x20,-0x24(%ebp)
c003634a:	29 75 dc             	sub    %esi,-0x24(%ebp)
c003634d:	31 f6                	xor    %esi,%esi
c003634f:	eb 09                	jmp    c003635a <__lshift+0x9a>
c0036351:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036358:	89 fa                	mov    %edi,%edx
c003635a:	8b 18                	mov    (%eax),%ebx
c003635c:	83 c0 04             	add    $0x4,%eax
c003635f:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
c0036363:	8d 7a 04             	lea    0x4(%edx),%edi
c0036366:	d3 e3                	shl    %cl,%ebx
c0036368:	0f b6 4d dc          	movzbl -0x24(%ebp),%ecx
c003636c:	09 f3                	or     %esi,%ebx
c003636e:	89 1a                	mov    %ebx,(%edx)
c0036370:	8b 70 fc             	mov    -0x4(%eax),%esi
c0036373:	d3 ee                	shr    %cl,%esi
c0036375:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
c0036378:	77 de                	ja     c0036358 <__lshift+0x98>
c003637a:	8b 45 d0             	mov    -0x30(%ebp),%eax
c003637d:	89 72 04             	mov    %esi,0x4(%edx)
c0036380:	83 c0 02             	add    $0x2,%eax
c0036383:	85 f6                	test   %esi,%esi
c0036385:	0f 44 45 d8          	cmove  -0x28(%ebp),%eax
c0036389:	89 45 d8             	mov    %eax,-0x28(%ebp)
c003638c:	8b 45 d8             	mov    -0x28(%ebp),%eax
c003638f:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c0036392:	8b 75 0c             	mov    0xc(%ebp),%esi
c0036395:	83 e8 01             	sub    $0x1,%eax
c0036398:	89 47 10             	mov    %eax,0x10(%edi)
c003639b:	8b 45 0c             	mov    0xc(%ebp),%eax
c003639e:	8b 50 04             	mov    0x4(%eax),%edx
c00363a1:	8b 45 08             	mov    0x8(%ebp),%eax
c00363a4:	8b 40 4c             	mov    0x4c(%eax),%eax
c00363a7:	8d 04 90             	lea    (%eax,%edx,4),%eax
c00363aa:	8b 10                	mov    (%eax),%edx
c00363ac:	89 16                	mov    %edx,(%esi)
c00363ae:	89 30                	mov    %esi,(%eax)
c00363b0:	83 c4 2c             	add    $0x2c,%esp
c00363b3:	89 f8                	mov    %edi,%eax
c00363b5:	5b                   	pop    %ebx
c00363b6:	5e                   	pop    %esi
c00363b7:	5f                   	pop    %edi
c00363b8:	5d                   	pop    %ebp
c00363b9:	c3                   	ret    
c00363ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00363c0:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
c00363c3:	90                   	nop
c00363c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00363c8:	83 c0 04             	add    $0x4,%eax
c00363cb:	8b 48 fc             	mov    -0x4(%eax),%ecx
c00363ce:	83 c2 04             	add    $0x4,%edx
c00363d1:	39 c3                	cmp    %eax,%ebx
c00363d3:	89 4a fc             	mov    %ecx,-0x4(%edx)
c00363d6:	77 f0                	ja     c00363c8 <__lshift+0x108>
c00363d8:	eb b2                	jmp    c003638c <__lshift+0xcc>
c00363da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c00363e0 <__mcmp>:
c00363e0:	55                   	push   %ebp
c00363e1:	89 e5                	mov    %esp,%ebp
c00363e3:	8b 4d 08             	mov    0x8(%ebp),%ecx
c00363e6:	8b 55 0c             	mov    0xc(%ebp),%edx
c00363e9:	53                   	push   %ebx
c00363ea:	8b 41 10             	mov    0x10(%ecx),%eax
c00363ed:	8b 5a 10             	mov    0x10(%edx),%ebx
c00363f0:	29 d8                	sub    %ebx,%eax
c00363f2:	85 c0                	test   %eax,%eax
c00363f4:	75 27                	jne    c003641d <__mcmp+0x3d>
c00363f6:	c1 e3 02             	shl    $0x2,%ebx
c00363f9:	83 c1 14             	add    $0x14,%ecx
c00363fc:	8d 04 19             	lea    (%ecx,%ebx,1),%eax
c00363ff:	8d 54 1a 14          	lea    0x14(%edx,%ebx,1),%edx
c0036403:	eb 07                	jmp    c003640c <__mcmp+0x2c>
c0036405:	8d 76 00             	lea    0x0(%esi),%esi
c0036408:	39 c1                	cmp    %eax,%ecx
c003640a:	73 14                	jae    c0036420 <__mcmp+0x40>
c003640c:	83 ea 04             	sub    $0x4,%edx
c003640f:	83 e8 04             	sub    $0x4,%eax
c0036412:	8b 1a                	mov    (%edx),%ebx
c0036414:	39 18                	cmp    %ebx,(%eax)
c0036416:	74 f0                	je     c0036408 <__mcmp+0x28>
c0036418:	19 c0                	sbb    %eax,%eax
c003641a:	83 c8 01             	or     $0x1,%eax
c003641d:	5b                   	pop    %ebx
c003641e:	5d                   	pop    %ebp
c003641f:	c3                   	ret    
c0036420:	31 c0                	xor    %eax,%eax
c0036422:	5b                   	pop    %ebx
c0036423:	5d                   	pop    %ebp
c0036424:	c3                   	ret    
c0036425:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036429:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0036430 <__mdiff>:
c0036430:	55                   	push   %ebp
c0036431:	89 e5                	mov    %esp,%ebp
c0036433:	57                   	push   %edi
c0036434:	56                   	push   %esi
c0036435:	53                   	push   %ebx
c0036436:	83 ec 2c             	sub    $0x2c,%esp
c0036439:	8b 75 0c             	mov    0xc(%ebp),%esi
c003643c:	8b 5d 10             	mov    0x10(%ebp),%ebx
c003643f:	89 34 24             	mov    %esi,(%esp)
c0036442:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c0036446:	e8 95 ff ff ff       	call   c00363e0 <__mcmp>
c003644b:	85 c0                	test   %eax,%eax
c003644d:	0f 84 25 01 00 00    	je     c0036578 <__mdiff+0x148>
c0036453:	0f 88 0f 01 00 00    	js     c0036568 <__mdiff+0x138>
c0036459:	31 ff                	xor    %edi,%edi
c003645b:	8b 46 04             	mov    0x4(%esi),%eax
c003645e:	83 c6 14             	add    $0x14,%esi
c0036461:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036465:	8b 45 08             	mov    0x8(%ebp),%eax
c0036468:	89 04 24             	mov    %eax,(%esp)
c003646b:	e8 b0 f7 ff ff       	call   c0035c20 <_Balloc>
c0036470:	8d 4b 14             	lea    0x14(%ebx),%ecx
c0036473:	89 c2                	mov    %eax,%edx
c0036475:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0036478:	89 78 0c             	mov    %edi,0xc(%eax)
c003647b:	8b 46 fc             	mov    -0x4(%esi),%eax
c003647e:	89 75 e4             	mov    %esi,-0x1c(%ebp)
c0036481:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0036484:	8d 04 86             	lea    (%esi,%eax,4),%eax
c0036487:	89 45 d8             	mov    %eax,-0x28(%ebp)
c003648a:	8b 43 10             	mov    0x10(%ebx),%eax
c003648d:	31 db                	xor    %ebx,%ebx
c003648f:	8d 04 81             	lea    (%ecx,%eax,4),%eax
c0036492:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0036495:	89 d0                	mov    %edx,%eax
c0036497:	83 c0 14             	add    $0x14,%eax
c003649a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00364a0:	8b 75 e4             	mov    -0x1c(%ebp),%esi
c00364a3:	83 c0 04             	add    $0x4,%eax
c00364a6:	83 c1 04             	add    $0x4,%ecx
c00364a9:	83 45 e4 04          	addl   $0x4,-0x1c(%ebp)
c00364ad:	8b 3e                	mov    (%esi),%edi
c00364af:	8b 71 fc             	mov    -0x4(%ecx),%esi
c00364b2:	0f b7 d7             	movzwl %di,%edx
c00364b5:	01 da                	add    %ebx,%edx
c00364b7:	0f b7 de             	movzwl %si,%ebx
c00364ba:	29 da                	sub    %ebx,%edx
c00364bc:	c1 ef 10             	shr    $0x10,%edi
c00364bf:	89 d3                	mov    %edx,%ebx
c00364c1:	c1 ee 10             	shr    $0x10,%esi
c00364c4:	0f b7 d2             	movzwl %dx,%edx
c00364c7:	c1 fb 10             	sar    $0x10,%ebx
c00364ca:	29 f7                	sub    %esi,%edi
c00364cc:	01 df                	add    %ebx,%edi
c00364ce:	89 fb                	mov    %edi,%ebx
c00364d0:	c1 e7 10             	shl    $0x10,%edi
c00364d3:	09 d7                	or     %edx,%edi
c00364d5:	c1 fb 10             	sar    $0x10,%ebx
c00364d8:	39 4d e0             	cmp    %ecx,-0x20(%ebp)
c00364db:	89 78 fc             	mov    %edi,-0x4(%eax)
c00364de:	77 c0                	ja     c00364a0 <__mdiff+0x70>
c00364e0:	8b 75 e4             	mov    -0x1c(%ebp),%esi
c00364e3:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c00364e6:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c00364e9:	89 75 e0             	mov    %esi,-0x20(%ebp)
c00364ec:	39 f1                	cmp    %esi,%ecx
c00364ee:	76 3f                	jbe    c003652f <__mdiff+0xff>
c00364f0:	8b 3e                	mov    (%esi),%edi
c00364f2:	83 c6 04             	add    $0x4,%esi
c00364f5:	83 c0 04             	add    $0x4,%eax
c00364f8:	0f b7 d7             	movzwl %di,%edx
c00364fb:	01 da                	add    %ebx,%edx
c00364fd:	89 d3                	mov    %edx,%ebx
c00364ff:	0f b7 d2             	movzwl %dx,%edx
c0036502:	c1 fb 10             	sar    $0x10,%ebx
c0036505:	c1 ef 10             	shr    $0x10,%edi
c0036508:	01 df                	add    %ebx,%edi
c003650a:	89 fb                	mov    %edi,%ebx
c003650c:	c1 e7 10             	shl    $0x10,%edi
c003650f:	09 d7                	or     %edx,%edi
c0036511:	c1 fb 10             	sar    $0x10,%ebx
c0036514:	39 f1                	cmp    %esi,%ecx
c0036516:	89 78 fc             	mov    %edi,-0x4(%eax)
c0036519:	77 d5                	ja     c00364f0 <__mdiff+0xc0>
c003651b:	8b 45 e0             	mov    -0x20(%ebp),%eax
c003651e:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c0036521:	f7 d0                	not    %eax
c0036523:	01 c8                	add    %ecx,%eax
c0036525:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0036528:	c1 e8 02             	shr    $0x2,%eax
c003652b:	8d 44 81 04          	lea    0x4(%ecx,%eax,4),%eax
c003652f:	85 ff                	test   %edi,%edi
c0036531:	75 23                	jne    c0036556 <__mdiff+0x126>
c0036533:	8b 4d dc             	mov    -0x24(%ebp),%ecx
c0036536:	8d 14 8d 00 00 00 00 	lea    0x0(,%ecx,4),%edx
c003653d:	29 d0                	sub    %edx,%eax
c003653f:	89 ca                	mov    %ecx,%edx
c0036541:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036548:	83 ea 01             	sub    $0x1,%edx
c003654b:	8b 4c 90 fc          	mov    -0x4(%eax,%edx,4),%ecx
c003654f:	85 c9                	test   %ecx,%ecx
c0036551:	74 f5                	je     c0036548 <__mdiff+0x118>
c0036553:	89 55 dc             	mov    %edx,-0x24(%ebp)
c0036556:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c0036559:	8b 4d dc             	mov    -0x24(%ebp),%ecx
c003655c:	89 48 10             	mov    %ecx,0x10(%eax)
c003655f:	83 c4 2c             	add    $0x2c,%esp
c0036562:	5b                   	pop    %ebx
c0036563:	5e                   	pop    %esi
c0036564:	5f                   	pop    %edi
c0036565:	5d                   	pop    %ebp
c0036566:	c3                   	ret    
c0036567:	90                   	nop
c0036568:	89 f0                	mov    %esi,%eax
c003656a:	bf 01 00 00 00       	mov    $0x1,%edi
c003656f:	89 de                	mov    %ebx,%esi
c0036571:	89 c3                	mov    %eax,%ebx
c0036573:	e9 e3 fe ff ff       	jmp    c003645b <__mdiff+0x2b>
c0036578:	8b 45 08             	mov    0x8(%ebp),%eax
c003657b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0036582:	00 
c0036583:	89 04 24             	mov    %eax,(%esp)
c0036586:	e8 95 f6 ff ff       	call   c0035c20 <_Balloc>
c003658b:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c0036592:	c7 40 14 00 00 00 00 	movl   $0x0,0x14(%eax)
c0036599:	83 c4 2c             	add    $0x2c,%esp
c003659c:	5b                   	pop    %ebx
c003659d:	5e                   	pop    %esi
c003659e:	5f                   	pop    %edi
c003659f:	5d                   	pop    %ebp
c00365a0:	c3                   	ret    
c00365a1:	eb 0d                	jmp    c00365b0 <__ulp>
c00365a3:	90                   	nop
c00365a4:	90                   	nop
c00365a5:	90                   	nop
c00365a6:	90                   	nop
c00365a7:	90                   	nop
c00365a8:	90                   	nop
c00365a9:	90                   	nop
c00365aa:	90                   	nop
c00365ab:	90                   	nop
c00365ac:	90                   	nop
c00365ad:	90                   	nop
c00365ae:	90                   	nop
c00365af:	90                   	nop

c00365b0 <__ulp>:
c00365b0:	55                   	push   %ebp
c00365b1:	89 e5                	mov    %esp,%ebp
c00365b3:	83 ec 08             	sub    $0x8,%esp
c00365b6:	dd 45 08             	fldl   0x8(%ebp)
c00365b9:	dd 5d f8             	fstpl  -0x8(%ebp)
c00365bc:	8b 4d fc             	mov    -0x4(%ebp),%ecx
c00365bf:	81 e1 00 00 f0 7f    	and    $0x7ff00000,%ecx
c00365c5:	81 e9 00 00 40 03    	sub    $0x3400000,%ecx
c00365cb:	85 c9                	test   %ecx,%ecx
c00365cd:	7e 11                	jle    c00365e0 <__ulp+0x30>
c00365cf:	89 4d fc             	mov    %ecx,-0x4(%ebp)
c00365d2:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c00365d9:	dd 45 f8             	fldl   -0x8(%ebp)
c00365dc:	c9                   	leave  
c00365dd:	c3                   	ret    
c00365de:	66 90                	xchg   %ax,%ax
c00365e0:	f7 d9                	neg    %ecx
c00365e2:	c1 f9 14             	sar    $0x14,%ecx
c00365e5:	83 f9 13             	cmp    $0x13,%ecx
c00365e8:	7e 26                	jle    c0036610 <__ulp+0x60>
c00365ea:	83 f9 32             	cmp    $0x32,%ecx
c00365ed:	b8 01 00 00 00       	mov    $0x1,%eax
c00365f2:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c00365f9:	7f 0b                	jg     c0036606 <__ulp+0x56>
c00365fb:	ba 33 00 00 00       	mov    $0x33,%edx
c0036600:	29 ca                	sub    %ecx,%edx
c0036602:	89 d1                	mov    %edx,%ecx
c0036604:	d3 e0                	shl    %cl,%eax
c0036606:	89 45 f8             	mov    %eax,-0x8(%ebp)
c0036609:	dd 45 f8             	fldl   -0x8(%ebp)
c003660c:	c9                   	leave  
c003660d:	c3                   	ret    
c003660e:	66 90                	xchg   %ax,%ax
c0036610:	b8 00 00 08 00       	mov    $0x80000,%eax
c0036615:	d3 f8                	sar    %cl,%eax
c0036617:	89 45 fc             	mov    %eax,-0x4(%ebp)
c003661a:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0036621:	dd 45 f8             	fldl   -0x8(%ebp)
c0036624:	c9                   	leave  
c0036625:	c3                   	ret    
c0036626:	8d 76 00             	lea    0x0(%esi),%esi
c0036629:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0036630 <__b2d>:
c0036630:	55                   	push   %ebp
c0036631:	89 e5                	mov    %esp,%ebp
c0036633:	57                   	push   %edi
c0036634:	56                   	push   %esi
c0036635:	53                   	push   %ebx
c0036636:	83 ec 18             	sub    $0x18,%esp
c0036639:	8b 45 08             	mov    0x8(%ebp),%eax
c003663c:	8d 78 14             	lea    0x14(%eax),%edi
c003663f:	8b 40 10             	mov    0x10(%eax),%eax
c0036642:	8d 1c 87             	lea    (%edi,%eax,4),%ebx
c0036645:	8b 73 fc             	mov    -0x4(%ebx),%esi
c0036648:	8d 43 fc             	lea    -0x4(%ebx),%eax
c003664b:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c003664e:	89 34 24             	mov    %esi,(%esp)
c0036651:	e8 6a f8 ff ff       	call   c0035ec0 <__hi0bits>
c0036656:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c0036659:	ba 20 00 00 00       	mov    $0x20,%edx
c003665e:	29 c2                	sub    %eax,%edx
c0036660:	83 f8 0a             	cmp    $0xa,%eax
c0036663:	89 11                	mov    %edx,(%ecx)
c0036665:	7f 41                	jg     c00366a8 <__b2d+0x78>
c0036667:	b9 0b 00 00 00       	mov    $0xb,%ecx
c003666c:	89 f2                	mov    %esi,%edx
c003666e:	29 c1                	sub    %eax,%ecx
c0036670:	d3 ea                	shr    %cl,%edx
c0036672:	81 ca 00 00 f0 3f    	or     $0x3ff00000,%edx
c0036678:	89 55 ec             	mov    %edx,-0x14(%ebp)
c003667b:	31 d2                	xor    %edx,%edx
c003667d:	3b 7d e4             	cmp    -0x1c(%ebp),%edi
c0036680:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
c0036687:	73 05                	jae    c003668e <__b2d+0x5e>
c0036689:	8b 53 f8             	mov    -0x8(%ebx),%edx
c003668c:	d3 ea                	shr    %cl,%edx
c003668e:	8d 48 15             	lea    0x15(%eax),%ecx
c0036691:	d3 e6                	shl    %cl,%esi
c0036693:	09 f2                	or     %esi,%edx
c0036695:	89 55 e8             	mov    %edx,-0x18(%ebp)
c0036698:	dd 45 e8             	fldl   -0x18(%ebp)
c003669b:	83 c4 18             	add    $0x18,%esp
c003669e:	5b                   	pop    %ebx
c003669f:	5e                   	pop    %esi
c00366a0:	5f                   	pop    %edi
c00366a1:	5d                   	pop    %ebp
c00366a2:	c3                   	ret    
c00366a3:	90                   	nop
c00366a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00366a8:	31 d2                	xor    %edx,%edx
c00366aa:	3b 7d e4             	cmp    -0x1c(%ebp),%edi
c00366ad:	73 09                	jae    c00366b8 <__b2d+0x88>
c00366af:	8b 53 f8             	mov    -0x8(%ebx),%edx
c00366b2:	8d 4b f8             	lea    -0x8(%ebx),%ecx
c00366b5:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c00366b8:	89 c3                	mov    %eax,%ebx
c00366ba:	83 eb 0b             	sub    $0xb,%ebx
c00366bd:	89 5d e0             	mov    %ebx,-0x20(%ebp)
c00366c0:	74 4e                	je     c0036710 <__b2d+0xe0>
c00366c2:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
c00366c6:	bb 2b 00 00 00       	mov    $0x2b,%ebx
c00366cb:	29 c3                	sub    %eax,%ebx
c00366cd:	89 d0                	mov    %edx,%eax
c00366cf:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
c00366d6:	d3 e6                	shl    %cl,%esi
c00366d8:	89 d9                	mov    %ebx,%ecx
c00366da:	d3 e8                	shr    %cl,%eax
c00366dc:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c00366df:	81 ce 00 00 f0 3f    	or     $0x3ff00000,%esi
c00366e5:	09 c6                	or     %eax,%esi
c00366e7:	31 c0                	xor    %eax,%eax
c00366e9:	89 75 ec             	mov    %esi,-0x14(%ebp)
c00366ec:	39 f9                	cmp    %edi,%ecx
c00366ee:	76 07                	jbe    c00366f7 <__b2d+0xc7>
c00366f0:	8b 41 fc             	mov    -0x4(%ecx),%eax
c00366f3:	89 d9                	mov    %ebx,%ecx
c00366f5:	d3 e8                	shr    %cl,%eax
c00366f7:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
c00366fb:	d3 e2                	shl    %cl,%edx
c00366fd:	09 d0                	or     %edx,%eax
c00366ff:	89 45 e8             	mov    %eax,-0x18(%ebp)
c0036702:	dd 45 e8             	fldl   -0x18(%ebp)
c0036705:	83 c4 18             	add    $0x18,%esp
c0036708:	5b                   	pop    %ebx
c0036709:	5e                   	pop    %esi
c003670a:	5f                   	pop    %edi
c003670b:	5d                   	pop    %ebp
c003670c:	c3                   	ret    
c003670d:	8d 76 00             	lea    0x0(%esi),%esi
c0036710:	81 ce 00 00 f0 3f    	or     $0x3ff00000,%esi
c0036716:	89 75 ec             	mov    %esi,-0x14(%ebp)
c0036719:	89 55 e8             	mov    %edx,-0x18(%ebp)
c003671c:	dd 45 e8             	fldl   -0x18(%ebp)
c003671f:	83 c4 18             	add    $0x18,%esp
c0036722:	5b                   	pop    %ebx
c0036723:	5e                   	pop    %esi
c0036724:	5f                   	pop    %edi
c0036725:	5d                   	pop    %ebp
c0036726:	c3                   	ret    
c0036727:	89 f6                	mov    %esi,%esi
c0036729:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0036730 <__d2b>:
c0036730:	55                   	push   %ebp
c0036731:	89 e5                	mov    %esp,%ebp
c0036733:	57                   	push   %edi
c0036734:	56                   	push   %esi
c0036735:	53                   	push   %ebx
c0036736:	83 ec 2c             	sub    $0x2c,%esp
c0036739:	8b 45 08             	mov    0x8(%ebp),%eax
c003673c:	dd 45 0c             	fldl   0xc(%ebp)
c003673f:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0036746:	00 
c0036747:	dd 5d d0             	fstpl  -0x30(%ebp)
c003674a:	89 04 24             	mov    %eax,(%esp)
c003674d:	e8 ce f4 ff ff       	call   c0035c20 <_Balloc>
c0036752:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
c0036755:	89 c6                	mov    %eax,%esi
c0036757:	89 d8                	mov    %ebx,%eax
c0036759:	81 e3 ff ff ff 7f    	and    $0x7fffffff,%ebx
c003675f:	25 ff ff 0f 00       	and    $0xfffff,%eax
c0036764:	c1 eb 14             	shr    $0x14,%ebx
c0036767:	85 db                	test   %ebx,%ebx
c0036769:	74 05                	je     c0036770 <__d2b+0x40>
c003676b:	0d 00 00 10 00       	or     $0x100000,%eax
c0036770:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0036773:	8b 45 d0             	mov    -0x30(%ebp),%eax
c0036776:	85 c0                	test   %eax,%eax
c0036778:	74 56                	je     c00367d0 <__d2b+0xa0>
c003677a:	89 45 e0             	mov    %eax,-0x20(%ebp)
c003677d:	8d 45 e0             	lea    -0x20(%ebp),%eax
c0036780:	89 04 24             	mov    %eax,(%esp)
c0036783:	e8 98 f7 ff ff       	call   c0035f20 <__lo0bits>
c0036788:	85 c0                	test   %eax,%eax
c003678a:	0f 85 90 00 00 00    	jne    c0036820 <__d2b+0xf0>
c0036790:	8b 55 e0             	mov    -0x20(%ebp),%edx
c0036793:	89 56 14             	mov    %edx,0x14(%esi)
c0036796:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c0036799:	83 fa 01             	cmp    $0x1,%edx
c003679c:	19 ff                	sbb    %edi,%edi
c003679e:	83 c7 02             	add    $0x2,%edi
c00367a1:	85 db                	test   %ebx,%ebx
c00367a3:	89 56 18             	mov    %edx,0x18(%esi)
c00367a6:	89 7e 10             	mov    %edi,0x10(%esi)
c00367a9:	74 49                	je     c00367f4 <__d2b+0xc4>
c00367ab:	8b 4d 14             	mov    0x14(%ebp),%ecx
c00367ae:	8d 94 18 cd fb ff ff 	lea    -0x433(%eax,%ebx,1),%edx
c00367b5:	89 11                	mov    %edx,(%ecx)
c00367b7:	ba 35 00 00 00       	mov    $0x35,%edx
c00367bc:	29 c2                	sub    %eax,%edx
c00367be:	8b 45 18             	mov    0x18(%ebp),%eax
c00367c1:	89 10                	mov    %edx,(%eax)
c00367c3:	83 c4 2c             	add    $0x2c,%esp
c00367c6:	89 f0                	mov    %esi,%eax
c00367c8:	5b                   	pop    %ebx
c00367c9:	5e                   	pop    %esi
c00367ca:	5f                   	pop    %edi
c00367cb:	5d                   	pop    %ebp
c00367cc:	c3                   	ret    
c00367cd:	8d 76 00             	lea    0x0(%esi),%esi
c00367d0:	8d 45 e4             	lea    -0x1c(%ebp),%eax
c00367d3:	bf 01 00 00 00       	mov    $0x1,%edi
c00367d8:	89 04 24             	mov    %eax,(%esp)
c00367db:	e8 40 f7 ff ff       	call   c0035f20 <__lo0bits>
c00367e0:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c00367e3:	c7 46 10 01 00 00 00 	movl   $0x1,0x10(%esi)
c00367ea:	89 56 14             	mov    %edx,0x14(%esi)
c00367ed:	83 c0 20             	add    $0x20,%eax
c00367f0:	85 db                	test   %ebx,%ebx
c00367f2:	75 b7                	jne    c00367ab <__d2b+0x7b>
c00367f4:	8b 4d 14             	mov    0x14(%ebp),%ecx
c00367f7:	2d 32 04 00 00       	sub    $0x432,%eax
c00367fc:	89 01                	mov    %eax,(%ecx)
c00367fe:	8b 44 be 10          	mov    0x10(%esi,%edi,4),%eax
c0036802:	c1 e7 05             	shl    $0x5,%edi
c0036805:	89 04 24             	mov    %eax,(%esp)
c0036808:	e8 b3 f6 ff ff       	call   c0035ec0 <__hi0bits>
c003680d:	29 c7                	sub    %eax,%edi
c003680f:	8b 45 18             	mov    0x18(%ebp),%eax
c0036812:	89 38                	mov    %edi,(%eax)
c0036814:	83 c4 2c             	add    $0x2c,%esp
c0036817:	89 f0                	mov    %esi,%eax
c0036819:	5b                   	pop    %ebx
c003681a:	5e                   	pop    %esi
c003681b:	5f                   	pop    %edi
c003681c:	5d                   	pop    %ebp
c003681d:	c3                   	ret    
c003681e:	66 90                	xchg   %ax,%ax
c0036820:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c0036823:	b9 20 00 00 00       	mov    $0x20,%ecx
c0036828:	29 c1                	sub    %eax,%ecx
c003682a:	89 d7                	mov    %edx,%edi
c003682c:	d3 e7                	shl    %cl,%edi
c003682e:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0036831:	09 f9                	or     %edi,%ecx
c0036833:	89 4e 14             	mov    %ecx,0x14(%esi)
c0036836:	89 c1                	mov    %eax,%ecx
c0036838:	d3 ea                	shr    %cl,%edx
c003683a:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c003683d:	e9 57 ff ff ff       	jmp    c0036799 <__d2b+0x69>
c0036842:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036849:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0036850 <__ratio>:
c0036850:	55                   	push   %ebp
c0036851:	89 e5                	mov    %esp,%ebp
c0036853:	56                   	push   %esi
c0036854:	53                   	push   %ebx
c0036855:	83 ec 30             	sub    $0x30,%esp
c0036858:	8b 75 08             	mov    0x8(%ebp),%esi
c003685b:	8d 45 f0             	lea    -0x10(%ebp),%eax
c003685e:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c0036861:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036865:	89 34 24             	mov    %esi,(%esp)
c0036868:	e8 c3 fd ff ff       	call   c0036630 <__b2d>
c003686d:	8d 45 f4             	lea    -0xc(%ebp),%eax
c0036870:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036874:	89 1c 24             	mov    %ebx,(%esp)
c0036877:	dd 55 e0             	fstl   -0x20(%ebp)
c003687a:	dd 5d d8             	fstpl  -0x28(%ebp)
c003687d:	e8 ae fd ff ff       	call   c0036630 <__b2d>
c0036882:	8b 46 10             	mov    0x10(%esi),%eax
c0036885:	2b 43 10             	sub    0x10(%ebx),%eax
c0036888:	8b 55 f0             	mov    -0x10(%ebp),%edx
c003688b:	2b 55 f4             	sub    -0xc(%ebp),%edx
c003688e:	c1 e0 05             	shl    $0x5,%eax
c0036891:	01 d0                	add    %edx,%eax
c0036893:	dd 55 d0             	fstl   -0x30(%ebp)
c0036896:	85 c0                	test   %eax,%eax
c0036898:	dd 45 d8             	fldl   -0x28(%ebp)
c003689b:	7e 1b                	jle    c00368b8 <__ratio+0x68>
c003689d:	dd d8                	fstp   %st(0)
c003689f:	c1 e0 14             	shl    $0x14,%eax
c00368a2:	01 45 e4             	add    %eax,-0x1c(%ebp)
c00368a5:	dd 45 e0             	fldl   -0x20(%ebp)
c00368a8:	83 c4 30             	add    $0x30,%esp
c00368ab:	5b                   	pop    %ebx
c00368ac:	de f1                	fdivp  %st,%st(1)
c00368ae:	5e                   	pop    %esi
c00368af:	5d                   	pop    %ebp
c00368b0:	c3                   	ret    
c00368b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00368b8:	dd d9                	fstp   %st(1)
c00368ba:	c1 e0 14             	shl    $0x14,%eax
c00368bd:	29 45 d4             	sub    %eax,-0x2c(%ebp)
c00368c0:	dd 45 d0             	fldl   -0x30(%ebp)
c00368c3:	83 c4 30             	add    $0x30,%esp
c00368c6:	5b                   	pop    %ebx
c00368c7:	de f9                	fdivrp %st,%st(1)
c00368c9:	5e                   	pop    %esi
c00368ca:	5d                   	pop    %ebp
c00368cb:	c3                   	ret    
c00368cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

c00368d0 <_mprec_log10>:
c00368d0:	55                   	push   %ebp
c00368d1:	89 e5                	mov    %esp,%ebp
c00368d3:	8b 45 08             	mov    0x8(%ebp),%eax
c00368d6:	83 f8 17             	cmp    $0x17,%eax
c00368d9:	7e 1d                	jle    c00368f8 <_mprec_log10+0x28>
c00368db:	d9 e8                	fld1   
c00368dd:	d9 05 d0 99 03 c0    	flds   0xc00399d0
c00368e3:	90                   	nop
c00368e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00368e8:	83 e8 01             	sub    $0x1,%eax
c00368eb:	dc c9                	fmul   %st,%st(1)
c00368ed:	75 f9                	jne    c00368e8 <_mprec_log10+0x18>
c00368ef:	dd d8                	fstp   %st(0)
c00368f1:	5d                   	pop    %ebp
c00368f2:	c3                   	ret    
c00368f3:	90                   	nop
c00368f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00368f8:	dd 04 c5 a0 9a 03 c0 	fldl   -0x3ffc6560(,%eax,8)
c00368ff:	5d                   	pop    %ebp
c0036900:	c3                   	ret    
c0036901:	eb 0d                	jmp    c0036910 <__copybits>
c0036903:	90                   	nop
c0036904:	90                   	nop
c0036905:	90                   	nop
c0036906:	90                   	nop
c0036907:	90                   	nop
c0036908:	90                   	nop
c0036909:	90                   	nop
c003690a:	90                   	nop
c003690b:	90                   	nop
c003690c:	90                   	nop
c003690d:	90                   	nop
c003690e:	90                   	nop
c003690f:	90                   	nop

c0036910 <__copybits>:
c0036910:	55                   	push   %ebp
c0036911:	89 e5                	mov    %esp,%ebp
c0036913:	57                   	push   %edi
c0036914:	8b 7d 10             	mov    0x10(%ebp),%edi
c0036917:	56                   	push   %esi
c0036918:	8b 75 0c             	mov    0xc(%ebp),%esi
c003691b:	8b 45 08             	mov    0x8(%ebp),%eax
c003691e:	53                   	push   %ebx
c003691f:	8b 4f 10             	mov    0x10(%edi),%ecx
c0036922:	8d 56 ff             	lea    -0x1(%esi),%edx
c0036925:	c1 fa 05             	sar    $0x5,%edx
c0036928:	8d 74 90 04          	lea    0x4(%eax,%edx,4),%esi
c003692c:	8d 57 14             	lea    0x14(%edi),%edx
c003692f:	8d 1c 8a             	lea    (%edx,%ecx,4),%ebx
c0036932:	39 da                	cmp    %ebx,%edx
c0036934:	73 34                	jae    c003696a <__copybits+0x5a>
c0036936:	89 c1                	mov    %eax,%ecx
c0036938:	83 c2 04             	add    $0x4,%edx
c003693b:	8b 42 fc             	mov    -0x4(%edx),%eax
c003693e:	83 c1 04             	add    $0x4,%ecx
c0036941:	39 d3                	cmp    %edx,%ebx
c0036943:	89 41 fc             	mov    %eax,-0x4(%ecx)
c0036946:	77 f0                	ja     c0036938 <__copybits+0x28>
c0036948:	8b 45 08             	mov    0x8(%ebp),%eax
c003694b:	29 fb                	sub    %edi,%ebx
c003694d:	8d 53 eb             	lea    -0x15(%ebx),%edx
c0036950:	c1 ea 02             	shr    $0x2,%edx
c0036953:	8d 44 90 04          	lea    0x4(%eax,%edx,4),%eax
c0036957:	39 c6                	cmp    %eax,%esi
c0036959:	76 13                	jbe    c003696e <__copybits+0x5e>
c003695b:	90                   	nop
c003695c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036960:	83 c0 04             	add    $0x4,%eax
c0036963:	c7 40 fc 00 00 00 00 	movl   $0x0,-0x4(%eax)
c003696a:	39 c6                	cmp    %eax,%esi
c003696c:	77 f2                	ja     c0036960 <__copybits+0x50>
c003696e:	5b                   	pop    %ebx
c003696f:	5e                   	pop    %esi
c0036970:	5f                   	pop    %edi
c0036971:	5d                   	pop    %ebp
c0036972:	c3                   	ret    
c0036973:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036979:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0036980 <__any_on>:
c0036980:	55                   	push   %ebp
c0036981:	89 e5                	mov    %esp,%ebp
c0036983:	8b 45 08             	mov    0x8(%ebp),%eax
c0036986:	57                   	push   %edi
c0036987:	56                   	push   %esi
c0036988:	53                   	push   %ebx
c0036989:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c003698c:	8d 50 14             	lea    0x14(%eax),%edx
c003698f:	8b 40 10             	mov    0x10(%eax),%eax
c0036992:	c1 fb 05             	sar    $0x5,%ebx
c0036995:	39 d8                	cmp    %ebx,%eax
c0036997:	7d 2f                	jge    c00369c8 <__any_on+0x48>
c0036999:	8d 1c 82             	lea    (%edx,%eax,4),%ebx
c003699c:	39 da                	cmp    %ebx,%edx
c003699e:	73 1d                	jae    c00369bd <__any_on+0x3d>
c00369a0:	8d 43 fc             	lea    -0x4(%ebx),%eax
c00369a3:	8b 5b fc             	mov    -0x4(%ebx),%ebx
c00369a6:	85 db                	test   %ebx,%ebx
c00369a8:	74 0f                	je     c00369b9 <__any_on+0x39>
c00369aa:	eb 44                	jmp    c00369f0 <__any_on+0x70>
c00369ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00369b0:	83 e8 04             	sub    $0x4,%eax
c00369b3:	8b 08                	mov    (%eax),%ecx
c00369b5:	85 c9                	test   %ecx,%ecx
c00369b7:	75 37                	jne    c00369f0 <__any_on+0x70>
c00369b9:	39 c2                	cmp    %eax,%edx
c00369bb:	72 f3                	jb     c00369b0 <__any_on+0x30>
c00369bd:	31 c0                	xor    %eax,%eax
c00369bf:	5b                   	pop    %ebx
c00369c0:	5e                   	pop    %esi
c00369c1:	5f                   	pop    %edi
c00369c2:	5d                   	pop    %ebp
c00369c3:	c3                   	ret    
c00369c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00369c8:	7e 1e                	jle    c00369e8 <__any_on+0x68>
c00369ca:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c00369cd:	8d 1c 9a             	lea    (%edx,%ebx,4),%ebx
c00369d0:	83 e1 1f             	and    $0x1f,%ecx
c00369d3:	74 c7                	je     c003699c <__any_on+0x1c>
c00369d5:	8b 3b                	mov    (%ebx),%edi
c00369d7:	b8 01 00 00 00       	mov    $0x1,%eax
c00369dc:	89 fe                	mov    %edi,%esi
c00369de:	d3 ee                	shr    %cl,%esi
c00369e0:	d3 e6                	shl    %cl,%esi
c00369e2:	39 fe                	cmp    %edi,%esi
c00369e4:	75 d9                	jne    c00369bf <__any_on+0x3f>
c00369e6:	eb b4                	jmp    c003699c <__any_on+0x1c>
c00369e8:	8d 1c 9a             	lea    (%edx,%ebx,4),%ebx
c00369eb:	eb af                	jmp    c003699c <__any_on+0x1c>
c00369ed:	8d 76 00             	lea    0x0(%esi),%esi
c00369f0:	5b                   	pop    %ebx
c00369f1:	b8 01 00 00 00       	mov    $0x1,%eax
c00369f6:	5e                   	pop    %esi
c00369f7:	5f                   	pop    %edi
c00369f8:	5d                   	pop    %ebp
c00369f9:	c3                   	ret    
c00369fa:	66 90                	xchg   %ax,%ax
c00369fc:	66 90                	xchg   %ax,%ax
c00369fe:	66 90                	xchg   %ax,%ax

c0036a00 <_sbrk_r>:
c0036a00:	55                   	push   %ebp
c0036a01:	89 e5                	mov    %esp,%ebp
c0036a03:	83 ec 18             	sub    $0x18,%esp
c0036a06:	8b 45 0c             	mov    0xc(%ebp),%eax
c0036a09:	c7 05 04 40 09 c0 00 	movl   $0x0,0xc0094004
c0036a10:	00 00 00 
c0036a13:	89 04 24             	mov    %eax,(%esp)
c0036a16:	e8 23 a8 ff ff       	call   c003123e <sbrk>
c0036a1b:	83 f8 ff             	cmp    $0xffffffff,%eax
c0036a1e:	74 08                	je     c0036a28 <_sbrk_r+0x28>
c0036a20:	c9                   	leave  
c0036a21:	c3                   	ret    
c0036a22:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036a28:	8b 15 04 40 09 c0    	mov    0xc0094004,%edx
c0036a2e:	85 d2                	test   %edx,%edx
c0036a30:	74 ee                	je     c0036a20 <_sbrk_r+0x20>
c0036a32:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0036a35:	89 11                	mov    %edx,(%ecx)
c0036a37:	c9                   	leave  
c0036a38:	c3                   	ret    
c0036a39:	66 90                	xchg   %ax,%ax
c0036a3b:	66 90                	xchg   %ax,%ax
c0036a3d:	66 90                	xchg   %ax,%ax
c0036a3f:	90                   	nop

c0036a40 <__fpclassifyd>:
c0036a40:	55                   	push   %ebp
c0036a41:	b8 02 00 00 00       	mov    $0x2,%eax
c0036a46:	89 e5                	mov    %esp,%ebp
c0036a48:	53                   	push   %ebx
c0036a49:	83 ec 0c             	sub    $0xc,%esp
c0036a4c:	dd 45 08             	fldl   0x8(%ebp)
c0036a4f:	dd 5d f0             	fstpl  -0x10(%ebp)
c0036a52:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0036a55:	8b 4d f4             	mov    -0xc(%ebp),%ecx
c0036a58:	89 d3                	mov    %edx,%ebx
c0036a5a:	09 cb                	or     %ecx,%ebx
c0036a5c:	75 0a                	jne    c0036a68 <__fpclassifyd+0x28>
c0036a5e:	83 c4 0c             	add    $0xc,%esp
c0036a61:	5b                   	pop    %ebx
c0036a62:	5d                   	pop    %ebp
c0036a63:	c3                   	ret    
c0036a64:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036a68:	85 d2                	test   %edx,%edx
c0036a6a:	0f 94 c2             	sete   %dl
c0036a6d:	75 08                	jne    c0036a77 <__fpclassifyd+0x37>
c0036a6f:	81 f9 00 00 00 80    	cmp    $0x80000000,%ecx
c0036a75:	74 e7                	je     c0036a5e <__fpclassifyd+0x1e>
c0036a77:	81 e1 ff ff ff 7f    	and    $0x7fffffff,%ecx
c0036a7d:	b8 04 00 00 00       	mov    $0x4,%eax
c0036a82:	8d 99 00 00 f0 ff    	lea    -0x100000(%ecx),%ebx
c0036a88:	81 fb ff ff df 7f    	cmp    $0x7fdfffff,%ebx
c0036a8e:	76 ce                	jbe    c0036a5e <__fpclassifyd+0x1e>
c0036a90:	81 f9 ff ff 0f 00    	cmp    $0xfffff,%ecx
c0036a96:	b0 03                	mov    $0x3,%al
c0036a98:	76 c4                	jbe    c0036a5e <__fpclassifyd+0x1e>
c0036a9a:	31 c0                	xor    %eax,%eax
c0036a9c:	81 f9 00 00 f0 7f    	cmp    $0x7ff00000,%ecx
c0036aa2:	0f 94 c0             	sete   %al
c0036aa5:	21 d0                	and    %edx,%eax
c0036aa7:	eb b5                	jmp    c0036a5e <__fpclassifyd+0x1e>
c0036aa9:	66 90                	xchg   %ax,%ax
c0036aab:	66 90                	xchg   %ax,%ax
c0036aad:	66 90                	xchg   %ax,%ax
c0036aaf:	90                   	nop

c0036ab0 <strcmp>:
c0036ab0:	55                   	push   %ebp
c0036ab1:	89 e5                	mov    %esp,%ebp
c0036ab3:	8b 45 08             	mov    0x8(%ebp),%eax
c0036ab6:	8b 55 0c             	mov    0xc(%ebp),%edx
c0036ab9:	53                   	push   %ebx
c0036aba:	89 c1                	mov    %eax,%ecx
c0036abc:	09 d1                	or     %edx,%ecx
c0036abe:	83 e1 03             	and    $0x3,%ecx
c0036ac1:	75 17                	jne    c0036ada <strcmp+0x2a>
c0036ac3:	8b 08                	mov    (%eax),%ecx
c0036ac5:	3b 0a                	cmp    (%edx),%ecx
c0036ac7:	74 33                	je     c0036afc <strcmp+0x4c>
c0036ac9:	eb 0f                	jmp    c0036ada <strcmp+0x2a>
c0036acb:	90                   	nop
c0036acc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036ad0:	3a 0a                	cmp    (%edx),%cl
c0036ad2:	75 0d                	jne    c0036ae1 <strcmp+0x31>
c0036ad4:	83 c0 01             	add    $0x1,%eax
c0036ad7:	83 c2 01             	add    $0x1,%edx
c0036ada:	0f b6 08             	movzbl (%eax),%ecx
c0036add:	84 c9                	test   %cl,%cl
c0036adf:	75 ef                	jne    c0036ad0 <strcmp+0x20>
c0036ae1:	0f b6 00             	movzbl (%eax),%eax
c0036ae4:	0f b6 12             	movzbl (%edx),%edx
c0036ae7:	5b                   	pop    %ebx
c0036ae8:	5d                   	pop    %ebp
c0036ae9:	29 d0                	sub    %edx,%eax
c0036aeb:	c3                   	ret    
c0036aec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036af0:	83 c0 04             	add    $0x4,%eax
c0036af3:	83 c2 04             	add    $0x4,%edx
c0036af6:	8b 08                	mov    (%eax),%ecx
c0036af8:	3b 0a                	cmp    (%edx),%ecx
c0036afa:	75 de                	jne    c0036ada <strcmp+0x2a>
c0036afc:	8d 99 ff fe fe fe    	lea    -0x1010101(%ecx),%ebx
c0036b02:	f7 d1                	not    %ecx
c0036b04:	21 cb                	and    %ecx,%ebx
c0036b06:	81 e3 80 80 80 80    	and    $0x80808080,%ebx
c0036b0c:	74 e2                	je     c0036af0 <strcmp+0x40>
c0036b0e:	31 c0                	xor    %eax,%eax
c0036b10:	5b                   	pop    %ebx
c0036b11:	5d                   	pop    %ebp
c0036b12:	c3                   	ret    
c0036b13:	66 90                	xchg   %ax,%ax
c0036b15:	66 90                	xchg   %ax,%ax
c0036b17:	66 90                	xchg   %ax,%ax
c0036b19:	66 90                	xchg   %ax,%ax
c0036b1b:	66 90                	xchg   %ax,%ax
c0036b1d:	66 90                	xchg   %ax,%ax
c0036b1f:	90                   	nop

c0036b20 <strlen>:
c0036b20:	55                   	push   %ebp
c0036b21:	89 e5                	mov    %esp,%ebp
c0036b23:	57                   	push   %edi
c0036b24:	8b 55 08             	mov    0x8(%ebp),%edx
c0036b27:	89 d7                	mov    %edx,%edi
c0036b29:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0036b2f:	74 25                	je     c0036b56 <L5>
c0036b31:	8a 0f                	mov    (%edi),%cl
c0036b33:	47                   	inc    %edi
c0036b34:	84 c9                	test   %cl,%cl
c0036b36:	74 56                	je     c0036b8e <L15>
c0036b38:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0036b3e:	74 16                	je     c0036b56 <L5>
c0036b40:	8a 0f                	mov    (%edi),%cl
c0036b42:	47                   	inc    %edi
c0036b43:	84 c9                	test   %cl,%cl
c0036b45:	74 47                	je     c0036b8e <L15>
c0036b47:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0036b4d:	74 07                	je     c0036b56 <L5>
c0036b4f:	8a 0f                	mov    (%edi),%cl
c0036b51:	47                   	inc    %edi
c0036b52:	84 c9                	test   %cl,%cl
c0036b54:	74 38                	je     c0036b8e <L15>

c0036b56 <L5>:
c0036b56:	83 ef 04             	sub    $0x4,%edi
c0036b59:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0036b60 <L10>:
c0036b60:	83 c7 04             	add    $0x4,%edi
c0036b63:	8b 0f                	mov    (%edi),%ecx
c0036b65:	8d 81 ff fe fe fe    	lea    -0x1010101(%ecx),%eax
c0036b6b:	f7 d1                	not    %ecx
c0036b6d:	21 c8                	and    %ecx,%eax
c0036b6f:	a9 80 80 80 80       	test   $0x80808080,%eax
c0036b74:	74 ea                	je     c0036b60 <L10>
c0036b76:	f7 d1                	not    %ecx
c0036b78:	47                   	inc    %edi
c0036b79:	84 c9                	test   %cl,%cl
c0036b7b:	74 11                	je     c0036b8e <L15>
c0036b7d:	47                   	inc    %edi
c0036b7e:	c1 e9 08             	shr    $0x8,%ecx
c0036b81:	84 c9                	test   %cl,%cl
c0036b83:	74 09                	je     c0036b8e <L15>
c0036b85:	47                   	inc    %edi
c0036b86:	c1 e9 08             	shr    $0x8,%ecx
c0036b89:	84 c9                	test   %cl,%cl
c0036b8b:	74 01                	je     c0036b8e <L15>
c0036b8d:	47                   	inc    %edi

c0036b8e <L15>:
c0036b8e:	29 d7                	sub    %edx,%edi
c0036b90:	8d 47 ff             	lea    -0x1(%edi),%eax
c0036b93:	8d 65 fc             	lea    -0x4(%ebp),%esp
c0036b96:	5f                   	pop    %edi
c0036b97:	c9                   	leave  
c0036b98:	c3                   	ret    
c0036b99:	66 90                	xchg   %ax,%ax
c0036b9b:	66 90                	xchg   %ax,%ax
c0036b9d:	66 90                	xchg   %ax,%ax
c0036b9f:	90                   	nop

c0036ba0 <__ssprint_r>:
c0036ba0:	55                   	push   %ebp
c0036ba1:	89 e5                	mov    %esp,%ebp
c0036ba3:	57                   	push   %edi
c0036ba4:	56                   	push   %esi
c0036ba5:	53                   	push   %ebx
c0036ba6:	83 ec 2c             	sub    $0x2c,%esp
c0036ba9:	8b 45 10             	mov    0x10(%ebp),%eax
c0036bac:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c0036baf:	8b 00                	mov    (%eax),%eax
c0036bb1:	89 c7                	mov    %eax,%edi
c0036bb3:	8b 45 10             	mov    0x10(%ebp),%eax
c0036bb6:	8b 40 08             	mov    0x8(%eax),%eax
c0036bb9:	85 c0                	test   %eax,%eax
c0036bbb:	0f 84 af 01 00 00    	je     c0036d70 <__ssprint_r+0x1d0>
c0036bc1:	31 c9                	xor    %ecx,%ecx
c0036bc3:	31 d2                	xor    %edx,%edx
c0036bc5:	8b 03                	mov    (%ebx),%eax
c0036bc7:	89 ce                	mov    %ecx,%esi
c0036bc9:	85 f6                	test   %esi,%esi
c0036bcb:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c0036bce:	0f 84 ec 00 00 00    	je     c0036cc0 <__ssprint_r+0x120>
c0036bd4:	8b 53 08             	mov    0x8(%ebx),%edx
c0036bd7:	39 d6                	cmp    %edx,%esi
c0036bd9:	0f 82 fc 00 00 00    	jb     c0036cdb <__ssprint_r+0x13b>
c0036bdf:	0f b7 4b 0c          	movzwl 0xc(%ebx),%ecx
c0036be3:	66 f7 c1 80 04       	test   $0x480,%cx
c0036be8:	0f 84 fa 00 00 00    	je     c0036ce8 <__ssprint_r+0x148>
c0036bee:	8b 53 10             	mov    0x10(%ebx),%edx
c0036bf1:	29 d0                	sub    %edx,%eax
c0036bf3:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0036bf6:	8b 43 14             	mov    0x14(%ebx),%eax
c0036bf9:	89 55 d8             	mov    %edx,-0x28(%ebp)
c0036bfc:	8d 04 40             	lea    (%eax,%eax,2),%eax
c0036bff:	89 c2                	mov    %eax,%edx
c0036c01:	c1 ea 1f             	shr    $0x1f,%edx
c0036c04:	01 d0                	add    %edx,%eax
c0036c06:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0036c09:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0036c0c:	d1 7d e0             	sarl   -0x20(%ebp)
c0036c0f:	8d 44 06 01          	lea    0x1(%esi,%eax,1),%eax
c0036c13:	39 45 e0             	cmp    %eax,-0x20(%ebp)
c0036c16:	0f 83 34 01 00 00    	jae    c0036d50 <__ssprint_r+0x1b0>
c0036c1c:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0036c1f:	80 e5 04             	and    $0x4,%ch
c0036c22:	0f 84 c8 00 00 00    	je     c0036cf0 <__ssprint_r+0x150>
c0036c28:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036c2c:	8b 45 08             	mov    0x8(%ebp),%eax
c0036c2f:	89 04 24             	mov    %eax,(%esp)
c0036c32:	e8 e9 e7 ff ff       	call   c0035420 <_malloc_r>
c0036c37:	85 c0                	test   %eax,%eax
c0036c39:	89 c2                	mov    %eax,%edx
c0036c3b:	0f 84 e1 00 00 00    	je     c0036d22 <__ssprint_r+0x182>
c0036c41:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0036c44:	89 55 d8             	mov    %edx,-0x28(%ebp)
c0036c47:	89 44 24 08          	mov    %eax,0x8(%esp)
c0036c4b:	8b 43 10             	mov    0x10(%ebx),%eax
c0036c4e:	89 14 24             	mov    %edx,(%esp)
c0036c51:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036c55:	e8 0a b2 ff ff       	call   c0031e64 <memcpy>
c0036c5a:	0f b7 43 0c          	movzwl 0xc(%ebx),%eax
c0036c5e:	8b 55 d8             	mov    -0x28(%ebp),%edx
c0036c61:	66 25 7f fb          	and    $0xfb7f,%ax
c0036c65:	0c 80                	or     $0x80,%al
c0036c67:	66 89 43 0c          	mov    %ax,0xc(%ebx)
c0036c6b:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0036c6e:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0036c71:	89 53 10             	mov    %edx,0x10(%ebx)
c0036c74:	89 4b 14             	mov    %ecx,0x14(%ebx)
c0036c77:	2b 4d dc             	sub    -0x24(%ebp),%ecx
c0036c7a:	01 d0                	add    %edx,%eax
c0036c7c:	89 03                	mov    %eax,(%ebx)
c0036c7e:	89 f2                	mov    %esi,%edx
c0036c80:	89 4b 08             	mov    %ecx,0x8(%ebx)
c0036c83:	89 f1                	mov    %esi,%ecx
c0036c85:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c0036c89:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0036c8c:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0036c8f:	89 04 24             	mov    %eax,(%esp)
c0036c92:	89 55 dc             	mov    %edx,-0x24(%ebp)
c0036c95:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c0036c99:	e8 22 13 00 00       	call   c0037fc0 <memmove>
c0036c9e:	8b 03                	mov    (%ebx),%eax
c0036ca0:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0036ca3:	8b 55 dc             	mov    -0x24(%ebp),%edx
c0036ca6:	29 53 08             	sub    %edx,0x8(%ebx)
c0036ca9:	01 c8                	add    %ecx,%eax
c0036cab:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0036cae:	89 03                	mov    %eax,(%ebx)
c0036cb0:	8b 51 08             	mov    0x8(%ecx),%edx
c0036cb3:	29 f2                	sub    %esi,%edx
c0036cb5:	85 d2                	test   %edx,%edx
c0036cb7:	89 51 08             	mov    %edx,0x8(%ecx)
c0036cba:	0f 84 98 00 00 00    	je     c0036d58 <__ssprint_r+0x1b8>
c0036cc0:	8b 77 04             	mov    0x4(%edi),%esi
c0036cc3:	83 c7 08             	add    $0x8,%edi
c0036cc6:	8b 4f f8             	mov    -0x8(%edi),%ecx
c0036cc9:	85 f6                	test   %esi,%esi
c0036ccb:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0036cce:	74 f0                	je     c0036cc0 <__ssprint_r+0x120>
c0036cd0:	8b 53 08             	mov    0x8(%ebx),%edx
c0036cd3:	39 d6                	cmp    %edx,%esi
c0036cd5:	0f 83 04 ff ff ff    	jae    c0036bdf <__ssprint_r+0x3f>
c0036cdb:	89 f2                	mov    %esi,%edx
c0036cdd:	89 f1                	mov    %esi,%ecx
c0036cdf:	eb a4                	jmp    c0036c85 <__ssprint_r+0xe5>
c0036ce1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036ce8:	89 d1                	mov    %edx,%ecx
c0036cea:	eb 99                	jmp    c0036c85 <__ssprint_r+0xe5>
c0036cec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036cf0:	89 44 24 08          	mov    %eax,0x8(%esp)
c0036cf4:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0036cf7:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036cfb:	8b 45 08             	mov    0x8(%ebp),%eax
c0036cfe:	89 04 24             	mov    %eax,(%esp)
c0036d01:	e8 4a 13 00 00       	call   c0038050 <_realloc_r>
c0036d06:	85 c0                	test   %eax,%eax
c0036d08:	89 c2                	mov    %eax,%edx
c0036d0a:	0f 85 5b ff ff ff    	jne    c0036c6b <__ssprint_r+0xcb>
c0036d10:	8b 43 10             	mov    0x10(%ebx),%eax
c0036d13:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036d17:	8b 45 08             	mov    0x8(%ebp),%eax
c0036d1a:	89 04 24             	mov    %eax,(%esp)
c0036d1d:	e8 3e 10 00 00       	call   c0037d60 <_free_r>
c0036d22:	8b 45 08             	mov    0x8(%ebp),%eax
c0036d25:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0036d2b:	8b 45 10             	mov    0x10(%ebp),%eax
c0036d2e:	66 83 4b 0c 40       	orw    $0x40,0xc(%ebx)
c0036d33:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
c0036d3a:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c0036d41:	83 c4 2c             	add    $0x2c,%esp
c0036d44:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0036d49:	5b                   	pop    %ebx
c0036d4a:	5e                   	pop    %esi
c0036d4b:	5f                   	pop    %edi
c0036d4c:	5d                   	pop    %ebp
c0036d4d:	c3                   	ret    
c0036d4e:	66 90                	xchg   %ax,%ax
c0036d50:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0036d53:	e9 c7 fe ff ff       	jmp    c0036c1f <__ssprint_r+0x7f>
c0036d58:	c7 41 04 00 00 00 00 	movl   $0x0,0x4(%ecx)
c0036d5f:	83 c4 2c             	add    $0x2c,%esp
c0036d62:	31 c0                	xor    %eax,%eax
c0036d64:	5b                   	pop    %ebx
c0036d65:	5e                   	pop    %esi
c0036d66:	5f                   	pop    %edi
c0036d67:	5d                   	pop    %ebp
c0036d68:	c3                   	ret    
c0036d69:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036d70:	8b 45 10             	mov    0x10(%ebp),%eax
c0036d73:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c0036d7a:	83 c4 2c             	add    $0x2c,%esp
c0036d7d:	31 c0                	xor    %eax,%eax
c0036d7f:	5b                   	pop    %ebx
c0036d80:	5e                   	pop    %esi
c0036d81:	5f                   	pop    %edi
c0036d82:	5d                   	pop    %ebp
c0036d83:	c3                   	ret    
c0036d84:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036d8a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

c0036d90 <_svfiprintf_r>:
c0036d90:	55                   	push   %ebp
c0036d91:	89 e5                	mov    %esp,%ebp
c0036d93:	57                   	push   %edi
c0036d94:	56                   	push   %esi
c0036d95:	53                   	push   %ebx
c0036d96:	81 ec cc 00 00 00    	sub    $0xcc,%esp
c0036d9c:	8b 45 0c             	mov    0xc(%ebp),%eax
c0036d9f:	f6 40 0c 80          	testb  $0x80,0xc(%eax)
c0036da3:	74 0b                	je     c0036db0 <_svfiprintf_r+0x20>
c0036da5:	8b 50 10             	mov    0x10(%eax),%edx
c0036da8:	85 d2                	test   %edx,%edx
c0036daa:	0f 84 1c 0d 00 00    	je     c0037acc <_svfiprintf_r+0xd3c>
c0036db0:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0036db3:	8d 5d a7             	lea    -0x59(%ebp),%ebx
c0036db6:	89 c6                	mov    %eax,%esi
c0036db8:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%ebp)
c0036dbe:	29 d8                	sub    %ebx,%eax
c0036dc0:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%ebp)
c0036dc7:	00 00 00 
c0036dca:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c0036dd1:	00 00 00 
c0036dd4:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0036ddb:	00 00 00 
c0036dde:	c7 85 50 ff ff ff 00 	movl   $0x0,-0xb0(%ebp)
c0036de5:	00 00 00 
c0036de8:	89 85 3c ff ff ff    	mov    %eax,-0xc4(%ebp)
c0036dee:	8b 45 10             	mov    0x10(%ebp),%eax
c0036df1:	8b 5d 10             	mov    0x10(%ebp),%ebx
c0036df4:	0f b6 00             	movzbl (%eax),%eax
c0036df7:	84 c0                	test   %al,%al
c0036df9:	74 58                	je     c0036e53 <_svfiprintf_r+0xc3>
c0036dfb:	3c 25                	cmp    $0x25,%al
c0036dfd:	75 13                	jne    c0036e12 <_svfiprintf_r+0x82>
c0036dff:	eb 52                	jmp    c0036e53 <_svfiprintf_r+0xc3>
c0036e01:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036e08:	84 c0                	test   %al,%al
c0036e0a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036e10:	74 0a                	je     c0036e1c <_svfiprintf_r+0x8c>
c0036e12:	83 c3 01             	add    $0x1,%ebx
c0036e15:	0f b6 03             	movzbl (%ebx),%eax
c0036e18:	3c 25                	cmp    $0x25,%al
c0036e1a:	75 ec                	jne    c0036e08 <_svfiprintf_r+0x78>
c0036e1c:	89 df                	mov    %ebx,%edi
c0036e1e:	2b 7d 10             	sub    0x10(%ebp),%edi
c0036e21:	74 30                	je     c0036e53 <_svfiprintf_r+0xc3>
c0036e23:	8b 45 10             	mov    0x10(%ebp),%eax
c0036e26:	83 c6 08             	add    $0x8,%esi
c0036e29:	89 7e fc             	mov    %edi,-0x4(%esi)
c0036e2c:	01 bd 7c ff ff ff    	add    %edi,-0x84(%ebp)
c0036e32:	89 46 f8             	mov    %eax,-0x8(%esi)
c0036e35:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0036e3b:	83 c0 01             	add    $0x1,%eax
c0036e3e:	83 f8 07             	cmp    $0x7,%eax
c0036e41:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0036e47:	0f 8f eb 0a 00 00    	jg     c0037938 <_svfiprintf_r+0xba8>
c0036e4d:	01 bd 50 ff ff ff    	add    %edi,-0xb0(%ebp)
c0036e53:	80 3b 00             	cmpb   $0x0,(%ebx)
c0036e56:	0f 84 11 09 00 00    	je     c003776d <_svfiprintf_r+0x9dd>
c0036e5c:	8d 43 01             	lea    0x1(%ebx),%eax
c0036e5f:	31 ff                	xor    %edi,%edi
c0036e61:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c0036e68:	c7 85 5c ff ff ff ff 	movl   $0xffffffff,-0xa4(%ebp)
c0036e6f:	ff ff ff 
c0036e72:	c7 85 54 ff ff ff 00 	movl   $0x0,-0xac(%ebp)
c0036e79:	00 00 00 
c0036e7c:	c7 85 64 ff ff ff 00 	movl   $0x0,-0x9c(%ebp)
c0036e83:	00 00 00 
c0036e86:	8d 50 01             	lea    0x1(%eax),%edx
c0036e89:	0f be 00             	movsbl (%eax),%eax
c0036e8c:	8d 48 e0             	lea    -0x20(%eax),%ecx
c0036e8f:	83 f9 58             	cmp    $0x58,%ecx
c0036e92:	0f 87 63 03 00 00    	ja     c00371fb <_svfiprintf_r+0x46b>
c0036e98:	ff 24 8d 68 9b 03 c0 	jmp    *-0x3ffc6498(,%ecx,4)
c0036e9f:	90                   	nop
c0036ea0:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c0036ea7:	89 d0                	mov    %edx,%eax
c0036ea9:	eb db                	jmp    c0036e86 <_svfiprintf_r+0xf6>
c0036eab:	8b 45 14             	mov    0x14(%ebp),%eax
c0036eae:	8b 5d 14             	mov    0x14(%ebp),%ebx
c0036eb1:	8b 00                	mov    (%eax),%eax
c0036eb3:	83 c3 04             	add    $0x4,%ebx
c0036eb6:	89 5d 14             	mov    %ebx,0x14(%ebp)
c0036eb9:	85 c0                	test   %eax,%eax
c0036ebb:	89 85 54 ff ff ff    	mov    %eax,-0xac(%ebp)
c0036ec1:	79 e4                	jns    c0036ea7 <_svfiprintf_r+0x117>
c0036ec3:	f7 9d 54 ff ff ff    	negl   -0xac(%ebp)
c0036ec9:	83 8d 64 ff ff ff 04 	orl    $0x4,-0x9c(%ebp)
c0036ed0:	89 d0                	mov    %edx,%eax
c0036ed2:	eb b2                	jmp    c0036e86 <_svfiprintf_r+0xf6>
c0036ed4:	bf 2b 00 00 00       	mov    $0x2b,%edi
c0036ed9:	89 d0                	mov    %edx,%eax
c0036edb:	eb a9                	jmp    c0036e86 <_svfiprintf_r+0xf6>
c0036edd:	8b 45 14             	mov    0x14(%ebp),%eax
c0036ee0:	83 8d 64 ff ff ff 02 	orl    $0x2,-0x9c(%ebp)
c0036ee7:	89 55 10             	mov    %edx,0x10(%ebp)
c0036eea:	ba 02 00 00 00       	mov    $0x2,%edx
c0036eef:	8b 08                	mov    (%eax),%ecx
c0036ef1:	83 c0 04             	add    $0x4,%eax
c0036ef4:	c6 85 72 ff ff ff 30 	movb   $0x30,-0x8e(%ebp)
c0036efb:	c6 85 73 ff ff ff 78 	movb   $0x78,-0x8d(%ebp)
c0036f02:	89 45 14             	mov    %eax,0x14(%ebp)
c0036f05:	c7 85 44 ff ff ff 17 	movl   $0xc0039817,-0xbc(%ebp)
c0036f0c:	98 03 c0 
c0036f0f:	90                   	nop
c0036f10:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c0036f17:	31 ff                	xor    %edi,%edi
c0036f19:	8b 9d 64 ff ff ff    	mov    -0x9c(%ebp),%ebx
c0036f1f:	89 d8                	mov    %ebx,%eax
c0036f21:	24 7f                	and    $0x7f,%al
c0036f23:	83 bd 5c ff ff ff 00 	cmpl   $0x0,-0xa4(%ebp)
c0036f2a:	0f 48 c3             	cmovs  %ebx,%eax
c0036f2d:	89 85 64 ff ff ff    	mov    %eax,-0x9c(%ebp)
c0036f33:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0036f39:	85 c0                	test   %eax,%eax
c0036f3b:	75 08                	jne    c0036f45 <_svfiprintf_r+0x1b5>
c0036f3d:	85 c9                	test   %ecx,%ecx
c0036f3f:	0f 84 03 08 00 00    	je     c0037748 <_svfiprintf_r+0x9b8>
c0036f45:	80 fa 01             	cmp    $0x1,%dl
c0036f48:	0f 84 8a 0a 00 00    	je     c00379d8 <_svfiprintf_r+0xc48>
c0036f4e:	80 fa 02             	cmp    $0x2,%dl
c0036f51:	8d 5d a8             	lea    -0x58(%ebp),%ebx
c0036f54:	0f 85 86 01 00 00    	jne    c00370e0 <_svfiprintf_r+0x350>
c0036f5a:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c0036f60:	89 c8                	mov    %ecx,%eax
c0036f62:	83 eb 01             	sub    $0x1,%ebx
c0036f65:	83 e0 0f             	and    $0xf,%eax
c0036f68:	0f b6 04 02          	movzbl (%edx,%eax,1),%eax
c0036f6c:	c1 e9 04             	shr    $0x4,%ecx
c0036f6f:	85 c9                	test   %ecx,%ecx
c0036f71:	88 03                	mov    %al,(%ebx)
c0036f73:	75 eb                	jne    c0036f60 <_svfiprintf_r+0x1d0>
c0036f75:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0036f78:	29 d8                	sub    %ebx,%eax
c0036f7a:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0036f80:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0036f86:	8b 8d 58 ff ff ff    	mov    -0xa8(%ebp),%ecx
c0036f8c:	39 c1                	cmp    %eax,%ecx
c0036f8e:	0f 4d c1             	cmovge %ecx,%eax
c0036f91:	89 85 60 ff ff ff    	mov    %eax,-0xa0(%ebp)
c0036f97:	89 f8                	mov    %edi,%eax
c0036f99:	3c 01                	cmp    $0x1,%al
c0036f9b:	83 9d 60 ff ff ff ff 	sbbl   $0xffffffff,-0xa0(%ebp)
c0036fa2:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
c0036fa8:	8b 8d 64 ff ff ff    	mov    -0x9c(%ebp),%ecx
c0036fae:	89 d0                	mov    %edx,%eax
c0036fb0:	89 cf                	mov    %ecx,%edi
c0036fb2:	83 c0 02             	add    $0x2,%eax
c0036fb5:	83 e7 02             	and    $0x2,%edi
c0036fb8:	89 bd 4c ff ff ff    	mov    %edi,-0xb4(%ebp)
c0036fbe:	89 cf                	mov    %ecx,%edi
c0036fc0:	0f 44 c2             	cmove  %edx,%eax
c0036fc3:	81 e7 84 00 00 00    	and    $0x84,%edi
c0036fc9:	89 85 60 ff ff ff    	mov    %eax,-0xa0(%ebp)
c0036fcf:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c0036fd5:	0f 85 cd 04 00 00    	jne    c00374a8 <_svfiprintf_r+0x718>
c0036fdb:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
c0036fe1:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
c0036fe7:	85 ff                	test   %edi,%edi
c0036fe9:	0f 8e b9 04 00 00    	jle    c00374a8 <_svfiprintf_r+0x718>
c0036fef:	83 ff 10             	cmp    $0x10,%edi
c0036ff2:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0036ff8:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0036ffe:	7e 7c                	jle    c003707c <_svfiprintf_r+0x2ec>
c0037000:	89 9d 40 ff ff ff    	mov    %ebx,-0xc0(%ebp)
c0037006:	89 f1                	mov    %esi,%ecx
c0037008:	8b 5d 08             	mov    0x8(%ebp),%ebx
c003700b:	8b 75 0c             	mov    0xc(%ebp),%esi
c003700e:	eb 08                	jmp    c0037018 <_svfiprintf_r+0x288>
c0037010:	83 ef 10             	sub    $0x10,%edi
c0037013:	83 ff 10             	cmp    $0x10,%edi
c0037016:	7e 5c                	jle    c0037074 <_svfiprintf_r+0x2e4>
c0037018:	83 c0 01             	add    $0x1,%eax
c003701b:	83 c2 10             	add    $0x10,%edx
c003701e:	c7 01 dc 9c 03 c0    	movl   $0xc0039cdc,(%ecx)
c0037024:	83 c1 08             	add    $0x8,%ecx
c0037027:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c003702e:	83 f8 07             	cmp    $0x7,%eax
c0037031:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037037:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003703d:	7e d1                	jle    c0037010 <_svfiprintf_r+0x280>
c003703f:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037045:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037049:	89 74 24 04          	mov    %esi,0x4(%esp)
c003704d:	89 1c 24             	mov    %ebx,(%esp)
c0037050:	e8 4b fb ff ff       	call   c0036ba0 <__ssprint_r>
c0037055:	85 c0                	test   %eax,%eax
c0037057:	0f 85 3b 07 00 00    	jne    c0037798 <_svfiprintf_r+0xa08>
c003705d:	83 ef 10             	sub    $0x10,%edi
c0037060:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037066:	83 ff 10             	cmp    $0x10,%edi
c0037069:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003706f:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c0037072:	7f a4                	jg     c0037018 <_svfiprintf_r+0x288>
c0037074:	8b 9d 40 ff ff ff    	mov    -0xc0(%ebp),%ebx
c003707a:	89 ce                	mov    %ecx,%esi
c003707c:	83 c0 01             	add    $0x1,%eax
c003707f:	01 fa                	add    %edi,%edx
c0037081:	c7 06 dc 9c 03 c0    	movl   $0xc0039cdc,(%esi)
c0037087:	83 c6 08             	add    $0x8,%esi
c003708a:	89 7e fc             	mov    %edi,-0x4(%esi)
c003708d:	83 f8 07             	cmp    $0x7,%eax
c0037090:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037096:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003709c:	0f 8e 12 04 00 00    	jle    c00374b4 <_svfiprintf_r+0x724>
c00370a2:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00370a8:	89 44 24 08          	mov    %eax,0x8(%esp)
c00370ac:	8b 45 0c             	mov    0xc(%ebp),%eax
c00370af:	89 44 24 04          	mov    %eax,0x4(%esp)
c00370b3:	8b 45 08             	mov    0x8(%ebp),%eax
c00370b6:	89 04 24             	mov    %eax,(%esp)
c00370b9:	e8 e2 fa ff ff       	call   c0036ba0 <__ssprint_r>
c00370be:	85 c0                	test   %eax,%eax
c00370c0:	0f 85 d2 06 00 00    	jne    c0037798 <_svfiprintf_r+0xa08>
c00370c6:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00370cc:	8d 75 a8             	lea    -0x58(%ebp),%esi
c00370cf:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00370d5:	e9 da 03 00 00       	jmp    c00374b4 <_svfiprintf_r+0x724>
c00370da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00370e0:	89 c8                	mov    %ecx,%eax
c00370e2:	83 eb 01             	sub    $0x1,%ebx
c00370e5:	83 e0 07             	and    $0x7,%eax
c00370e8:	c1 e9 03             	shr    $0x3,%ecx
c00370eb:	83 c0 30             	add    $0x30,%eax
c00370ee:	85 c9                	test   %ecx,%ecx
c00370f0:	88 03                	mov    %al,(%ebx)
c00370f2:	75 ec                	jne    c00370e0 <_svfiprintf_r+0x350>
c00370f4:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
c00370fb:	89 da                	mov    %ebx,%edx
c00370fd:	0f 84 72 fe ff ff    	je     c0036f75 <_svfiprintf_r+0x1e5>
c0037103:	3c 30                	cmp    $0x30,%al
c0037105:	0f 84 6a fe ff ff    	je     c0036f75 <_svfiprintf_r+0x1e5>
c003710b:	83 eb 01             	sub    $0x1,%ebx
c003710e:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0037111:	29 d8                	sub    %ebx,%eax
c0037113:	c6 42 ff 30          	movb   $0x30,-0x1(%edx)
c0037117:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c003711d:	e9 5e fe ff ff       	jmp    c0036f80 <_svfiprintf_r+0x1f0>
c0037122:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c0037129:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c0037130:	89 55 10             	mov    %edx,0x10(%ebp)
c0037133:	8b 45 14             	mov    0x14(%ebp),%eax
c0037136:	0f 85 48 01 00 00    	jne    c0037284 <_svfiprintf_r+0x4f4>
c003713c:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c0037143:	0f 84 3b 01 00 00    	je     c0037284 <_svfiprintf_r+0x4f4>
c0037149:	0f b7 08             	movzwl (%eax),%ecx
c003714c:	83 c0 04             	add    $0x4,%eax
c003714f:	31 d2                	xor    %edx,%edx
c0037151:	89 45 14             	mov    %eax,0x14(%ebp)
c0037154:	e9 b7 fd ff ff       	jmp    c0036f10 <_svfiprintf_r+0x180>
c0037159:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c0037160:	89 f8                	mov    %edi,%eax
c0037162:	89 55 10             	mov    %edx,0x10(%ebp)
c0037165:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
c003716b:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c0037172:	8b 45 14             	mov    0x14(%ebp),%eax
c0037175:	75 0d                	jne    c0037184 <_svfiprintf_r+0x3f4>
c0037177:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c003717e:	0f 85 f2 08 00 00    	jne    c0037a76 <_svfiprintf_r+0xce6>
c0037184:	8b 08                	mov    (%eax),%ecx
c0037186:	83 c0 04             	add    $0x4,%eax
c0037189:	89 45 14             	mov    %eax,0x14(%ebp)
c003718c:	85 c9                	test   %ecx,%ecx
c003718e:	0f 88 f3 08 00 00    	js     c0037a87 <_svfiprintf_r+0xcf7>
c0037194:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c003719b:	ba 01 00 00 00       	mov    $0x1,%edx
c00371a0:	e9 74 fd ff ff       	jmp    c0036f19 <_svfiprintf_r+0x189>
c00371a5:	0f be 02             	movsbl (%edx),%eax
c00371a8:	8d 5a 01             	lea    0x1(%edx),%ebx
c00371ab:	83 f8 2a             	cmp    $0x2a,%eax
c00371ae:	0f 84 af 09 00 00    	je     c0037b63 <_svfiprintf_r+0xdd3>
c00371b4:	8d 48 d0             	lea    -0x30(%eax),%ecx
c00371b7:	31 d2                	xor    %edx,%edx
c00371b9:	83 f9 09             	cmp    $0x9,%ecx
c00371bc:	0f 87 90 09 00 00    	ja     c0037b52 <_svfiprintf_r+0xdc2>
c00371c2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00371c8:	8d 04 92             	lea    (%edx,%edx,4),%eax
c00371cb:	83 c3 01             	add    $0x1,%ebx
c00371ce:	8d 14 41             	lea    (%ecx,%eax,2),%edx
c00371d1:	0f be 43 ff          	movsbl -0x1(%ebx),%eax
c00371d5:	8d 48 d0             	lea    -0x30(%eax),%ecx
c00371d8:	83 f9 09             	cmp    $0x9,%ecx
c00371db:	76 eb                	jbe    c00371c8 <_svfiprintf_r+0x438>
c00371dd:	85 d2                	test   %edx,%edx
c00371df:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
c00371e4:	0f 48 d1             	cmovs  %ecx,%edx
c00371e7:	8d 48 e0             	lea    -0x20(%eax),%ecx
c00371ea:	83 f9 58             	cmp    $0x58,%ecx
c00371ed:	89 95 5c ff ff ff    	mov    %edx,-0xa4(%ebp)
c00371f3:	89 da                	mov    %ebx,%edx
c00371f5:	0f 86 9d fc ff ff    	jbe    c0036e98 <_svfiprintf_r+0x108>
c00371fb:	89 fb                	mov    %edi,%ebx
c00371fd:	85 c0                	test   %eax,%eax
c00371ff:	89 55 10             	mov    %edx,0x10(%ebp)
c0037202:	88 9d 71 ff ff ff    	mov    %bl,-0x8f(%ebp)
c0037208:	0f 84 5f 05 00 00    	je     c003776d <_svfiprintf_r+0x9dd>
c003720e:	88 45 80             	mov    %al,-0x80(%ebp)
c0037211:	8d 5d 80             	lea    -0x80(%ebp),%ebx
c0037214:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c003721b:	c7 85 60 ff ff ff 01 	movl   $0x1,-0xa0(%ebp)
c0037222:	00 00 00 
c0037225:	c7 85 58 ff ff ff 01 	movl   $0x1,-0xa8(%ebp)
c003722c:	00 00 00 
c003722f:	e9 5a 01 00 00       	jmp    c003738e <_svfiprintf_r+0x5fe>
c0037234:	31 db                	xor    %ebx,%ebx
c0037236:	8d 48 d0             	lea    -0x30(%eax),%ecx
c0037239:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0037240:	8d 04 9b             	lea    (%ebx,%ebx,4),%eax
c0037243:	83 c2 01             	add    $0x1,%edx
c0037246:	8d 1c 41             	lea    (%ecx,%eax,2),%ebx
c0037249:	0f be 42 ff          	movsbl -0x1(%edx),%eax
c003724d:	8d 48 d0             	lea    -0x30(%eax),%ecx
c0037250:	83 f9 09             	cmp    $0x9,%ecx
c0037253:	76 eb                	jbe    c0037240 <_svfiprintf_r+0x4b0>
c0037255:	89 9d 54 ff ff ff    	mov    %ebx,-0xac(%ebp)
c003725b:	e9 2c fc ff ff       	jmp    c0036e8c <_svfiprintf_r+0xfc>
c0037260:	81 8d 64 ff ff ff 80 	orl    $0x80,-0x9c(%ebp)
c0037267:	00 00 00 
c003726a:	89 d0                	mov    %edx,%eax
c003726c:	e9 15 fc ff ff       	jmp    c0036e86 <_svfiprintf_r+0xf6>
c0037271:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c0037278:	89 55 10             	mov    %edx,0x10(%ebp)
c003727b:	8b 45 14             	mov    0x14(%ebp),%eax
c003727e:	0f 84 b8 fe ff ff    	je     c003713c <_svfiprintf_r+0x3ac>
c0037284:	8b 08                	mov    (%eax),%ecx
c0037286:	83 c0 04             	add    $0x4,%eax
c0037289:	31 d2                	xor    %edx,%edx
c003728b:	89 45 14             	mov    %eax,0x14(%ebp)
c003728e:	e9 7d fc ff ff       	jmp    c0036f10 <_svfiprintf_r+0x180>
c0037293:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c003729a:	89 f8                	mov    %edi,%eax
c003729c:	89 55 10             	mov    %edx,0x10(%ebp)
c003729f:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
c00372a5:	0f 85 a2 07 00 00    	jne    c0037a4d <_svfiprintf_r+0xcbd>
c00372ab:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c00372b2:	0f 84 95 07 00 00    	je     c0037a4d <_svfiprintf_r+0xcbd>
c00372b8:	8b 45 14             	mov    0x14(%ebp),%eax
c00372bb:	0f b7 9d 50 ff ff ff 	movzwl -0xb0(%ebp),%ebx
c00372c2:	8b 00                	mov    (%eax),%eax
c00372c4:	66 89 18             	mov    %bx,(%eax)
c00372c7:	8b 45 14             	mov    0x14(%ebp),%eax
c00372ca:	83 c0 04             	add    $0x4,%eax
c00372cd:	89 45 14             	mov    %eax,0x14(%ebp)
c00372d0:	e9 19 fb ff ff       	jmp    c0036dee <_svfiprintf_r+0x5e>
c00372d5:	89 fb                	mov    %edi,%ebx
c00372d7:	89 55 10             	mov    %edx,0x10(%ebp)
c00372da:	88 9d 71 ff ff ff    	mov    %bl,-0x8f(%ebp)
c00372e0:	c7 85 44 ff ff ff 17 	movl   $0xc0039817,-0xbc(%ebp)
c00372e7:	98 03 c0 
c00372ea:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c00372f1:	8b 5d 14             	mov    0x14(%ebp),%ebx
c00372f4:	75 0d                	jne    c0037303 <_svfiprintf_r+0x573>
c00372f6:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c00372fd:	0f 85 65 07 00 00    	jne    c0037a68 <_svfiprintf_r+0xcd8>
c0037303:	8b 0b                	mov    (%ebx),%ecx
c0037305:	83 c3 04             	add    $0x4,%ebx
c0037308:	89 5d 14             	mov    %ebx,0x14(%ebp)
c003730b:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
c0037312:	ba 02 00 00 00       	mov    $0x2,%edx
c0037317:	0f 84 f3 fb ff ff    	je     c0036f10 <_svfiprintf_r+0x180>
c003731d:	85 c9                	test   %ecx,%ecx
c003731f:	0f 84 eb fb ff ff    	je     c0036f10 <_svfiprintf_r+0x180>
c0037325:	c6 85 72 ff ff ff 30 	movb   $0x30,-0x8e(%ebp)
c003732c:	88 85 73 ff ff ff    	mov    %al,-0x8d(%ebp)
c0037332:	83 8d 64 ff ff ff 02 	orl    $0x2,-0x9c(%ebp)
c0037339:	e9 d2 fb ff ff       	jmp    c0036f10 <_svfiprintf_r+0x180>
c003733e:	83 8d 64 ff ff ff 40 	orl    $0x40,-0x9c(%ebp)
c0037345:	89 d0                	mov    %edx,%eax
c0037347:	e9 3a fb ff ff       	jmp    c0036e86 <_svfiprintf_r+0xf6>
c003734c:	89 f8                	mov    %edi,%eax
c003734e:	89 55 10             	mov    %edx,0x10(%ebp)
c0037351:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
c0037357:	e9 0f fe ff ff       	jmp    c003716b <_svfiprintf_r+0x3db>
c003735c:	8b 45 14             	mov    0x14(%ebp),%eax
c003735f:	8d 5d 80             	lea    -0x80(%ebp),%ebx
c0037362:	89 55 10             	mov    %edx,0x10(%ebp)
c0037365:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c003736c:	c7 85 60 ff ff ff 01 	movl   $0x1,-0xa0(%ebp)
c0037373:	00 00 00 
c0037376:	8b 00                	mov    (%eax),%eax
c0037378:	c7 85 58 ff ff ff 01 	movl   $0x1,-0xa8(%ebp)
c003737f:	00 00 00 
c0037382:	88 45 80             	mov    %al,-0x80(%ebp)
c0037385:	8b 45 14             	mov    0x14(%ebp),%eax
c0037388:	83 c0 04             	add    $0x4,%eax
c003738b:	89 45 14             	mov    %eax,0x14(%ebp)
c003738e:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c0037395:	00 00 00 
c0037398:	e9 05 fc ff ff       	jmp    c0036fa2 <_svfiprintf_r+0x212>
c003739d:	89 fb                	mov    %edi,%ebx
c003739f:	89 55 10             	mov    %edx,0x10(%ebp)
c00373a2:	88 9d 71 ff ff ff    	mov    %bl,-0x8f(%ebp)
c00373a8:	c7 85 44 ff ff ff 06 	movl   $0xc0039806,-0xbc(%ebp)
c00373af:	98 03 c0 
c00373b2:	e9 33 ff ff ff       	jmp    c00372ea <_svfiprintf_r+0x55a>
c00373b7:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c00373be:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c00373c5:	89 55 10             	mov    %edx,0x10(%ebp)
c00373c8:	8b 45 14             	mov    0x14(%ebp),%eax
c00373cb:	75 39                	jne    c0037406 <_svfiprintf_r+0x676>
c00373cd:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c00373d4:	74 30                	je     c0037406 <_svfiprintf_r+0x676>
c00373d6:	0f b7 08             	movzwl (%eax),%ecx
c00373d9:	83 c0 04             	add    $0x4,%eax
c00373dc:	ba 01 00 00 00       	mov    $0x1,%edx
c00373e1:	89 45 14             	mov    %eax,0x14(%ebp)
c00373e4:	e9 27 fb ff ff       	jmp    c0036f10 <_svfiprintf_r+0x180>
c00373e9:	83 8d 64 ff ff ff 01 	orl    $0x1,-0x9c(%ebp)
c00373f0:	89 d0                	mov    %edx,%eax
c00373f2:	e9 8f fa ff ff       	jmp    c0036e86 <_svfiprintf_r+0xf6>
c00373f7:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c00373fe:	89 55 10             	mov    %edx,0x10(%ebp)
c0037401:	8b 45 14             	mov    0x14(%ebp),%eax
c0037404:	74 c7                	je     c00373cd <_svfiprintf_r+0x63d>
c0037406:	8b 08                	mov    (%eax),%ecx
c0037408:	83 c0 04             	add    $0x4,%eax
c003740b:	ba 01 00 00 00       	mov    $0x1,%edx
c0037410:	89 45 14             	mov    %eax,0x14(%ebp)
c0037413:	e9 f8 fa ff ff       	jmp    c0036f10 <_svfiprintf_r+0x180>
c0037418:	8b 45 14             	mov    0x14(%ebp),%eax
c003741b:	89 55 10             	mov    %edx,0x10(%ebp)
c003741e:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c0037425:	8b 18                	mov    (%eax),%ebx
c0037427:	8d 50 04             	lea    0x4(%eax),%edx
c003742a:	85 db                	test   %ebx,%ebx
c003742c:	0f 84 cc 06 00 00    	je     c0037afe <_svfiprintf_r+0xd6e>
c0037432:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
c0037438:	89 95 60 ff ff ff    	mov    %edx,-0xa0(%ebp)
c003743e:	85 ff                	test   %edi,%edi
c0037440:	0f 88 59 06 00 00    	js     c0037a9f <_svfiprintf_r+0xd0f>
c0037446:	89 7c 24 08          	mov    %edi,0x8(%esp)
c003744a:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0037451:	00 
c0037452:	89 1c 24             	mov    %ebx,(%esp)
c0037455:	e8 06 e7 ff ff       	call   c0035b60 <memchr>
c003745a:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
c0037460:	85 c0                	test   %eax,%eax
c0037462:	0f 84 c5 06 00 00    	je     c0037b2d <_svfiprintf_r+0xd9d>
c0037468:	29 d8                	sub    %ebx,%eax
c003746a:	39 f8                	cmp    %edi,%eax
c003746c:	0f 4f c7             	cmovg  %edi,%eax
c003746f:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c0037476:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c003747c:	89 55 14             	mov    %edx,0x14(%ebp)
c003747f:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c0037486:	00 00 00 
c0037489:	e9 f2 fa ff ff       	jmp    c0036f80 <_svfiprintf_r+0x1f0>
c003748e:	89 f8                	mov    %edi,%eax
c0037490:	84 c0                	test   %al,%al
c0037492:	b8 20 00 00 00       	mov    $0x20,%eax
c0037497:	0f 44 f8             	cmove  %eax,%edi
c003749a:	89 d0                	mov    %edx,%eax
c003749c:	e9 e5 f9 ff ff       	jmp    c0036e86 <_svfiprintf_r+0xf6>
c00374a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00374a8:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00374ae:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00374b4:	80 bd 71 ff ff ff 00 	cmpb   $0x0,-0x8f(%ebp)
c00374bb:	74 2e                	je     c00374eb <_svfiprintf_r+0x75b>
c00374bd:	83 c0 01             	add    $0x1,%eax
c00374c0:	83 c2 01             	add    $0x1,%edx
c00374c3:	8d 8d 71 ff ff ff    	lea    -0x8f(%ebp),%ecx
c00374c9:	83 c6 08             	add    $0x8,%esi
c00374cc:	89 4e f8             	mov    %ecx,-0x8(%esi)
c00374cf:	c7 46 fc 01 00 00 00 	movl   $0x1,-0x4(%esi)
c00374d6:	83 f8 07             	cmp    $0x7,%eax
c00374d9:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00374df:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00374e5:	0f 8f b5 04 00 00    	jg     c00379a0 <_svfiprintf_r+0xc10>
c00374eb:	8b 8d 4c ff ff ff    	mov    -0xb4(%ebp),%ecx
c00374f1:	85 c9                	test   %ecx,%ecx
c00374f3:	74 2e                	je     c0037523 <_svfiprintf_r+0x793>
c00374f5:	83 c0 01             	add    $0x1,%eax
c00374f8:	83 c2 02             	add    $0x2,%edx
c00374fb:	8d 8d 72 ff ff ff    	lea    -0x8e(%ebp),%ecx
c0037501:	83 c6 08             	add    $0x8,%esi
c0037504:	89 4e f8             	mov    %ecx,-0x8(%esi)
c0037507:	c7 46 fc 02 00 00 00 	movl   $0x2,-0x4(%esi)
c003750e:	83 f8 07             	cmp    $0x7,%eax
c0037511:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037517:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003751d:	0f 8f 45 04 00 00    	jg     c0037968 <_svfiprintf_r+0xbd8>
c0037523:	81 bd 48 ff ff ff 80 	cmpl   $0x80,-0xb8(%ebp)
c003752a:	00 00 00 
c003752d:	0f 84 9d 02 00 00    	je     c00377d0 <_svfiprintf_r+0xa40>
c0037533:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
c0037539:	2b bd 58 ff ff ff    	sub    -0xa8(%ebp),%edi
c003753f:	85 ff                	test   %edi,%edi
c0037541:	0f 8e e1 00 00 00    	jle    c0037628 <_svfiprintf_r+0x898>
c0037547:	83 ff 10             	cmp    $0x10,%edi
c003754a:	0f 8e 7c 00 00 00    	jle    c00375cc <_svfiprintf_r+0x83c>
c0037550:	89 9d 5c ff ff ff    	mov    %ebx,-0xa4(%ebp)
c0037556:	89 f1                	mov    %esi,%ecx
c0037558:	8b 5d 08             	mov    0x8(%ebp),%ebx
c003755b:	8b 75 0c             	mov    0xc(%ebp),%esi
c003755e:	eb 08                	jmp    c0037568 <_svfiprintf_r+0x7d8>
c0037560:	83 ef 10             	sub    $0x10,%edi
c0037563:	83 ff 10             	cmp    $0x10,%edi
c0037566:	7e 5c                	jle    c00375c4 <_svfiprintf_r+0x834>
c0037568:	83 c0 01             	add    $0x1,%eax
c003756b:	83 c2 10             	add    $0x10,%edx
c003756e:	c7 01 cc 9c 03 c0    	movl   $0xc0039ccc,(%ecx)
c0037574:	83 c1 08             	add    $0x8,%ecx
c0037577:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c003757e:	83 f8 07             	cmp    $0x7,%eax
c0037581:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037587:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003758d:	7e d1                	jle    c0037560 <_svfiprintf_r+0x7d0>
c003758f:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037595:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037599:	89 74 24 04          	mov    %esi,0x4(%esp)
c003759d:	89 1c 24             	mov    %ebx,(%esp)
c00375a0:	e8 fb f5 ff ff       	call   c0036ba0 <__ssprint_r>
c00375a5:	85 c0                	test   %eax,%eax
c00375a7:	0f 85 eb 01 00 00    	jne    c0037798 <_svfiprintf_r+0xa08>
c00375ad:	83 ef 10             	sub    $0x10,%edi
c00375b0:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00375b6:	83 ff 10             	cmp    $0x10,%edi
c00375b9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00375bf:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c00375c2:	7f a4                	jg     c0037568 <_svfiprintf_r+0x7d8>
c00375c4:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c00375ca:	89 ce                	mov    %ecx,%esi
c00375cc:	83 c0 01             	add    $0x1,%eax
c00375cf:	01 fa                	add    %edi,%edx
c00375d1:	c7 06 cc 9c 03 c0    	movl   $0xc0039ccc,(%esi)
c00375d7:	83 c6 08             	add    $0x8,%esi
c00375da:	89 7e fc             	mov    %edi,-0x4(%esi)
c00375dd:	83 f8 07             	cmp    $0x7,%eax
c00375e0:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00375e6:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00375ec:	7e 3a                	jle    c0037628 <_svfiprintf_r+0x898>
c00375ee:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00375f4:	89 44 24 08          	mov    %eax,0x8(%esp)
c00375f8:	8b 45 0c             	mov    0xc(%ebp),%eax
c00375fb:	89 44 24 04          	mov    %eax,0x4(%esp)
c00375ff:	8b 45 08             	mov    0x8(%ebp),%eax
c0037602:	89 04 24             	mov    %eax,(%esp)
c0037605:	e8 96 f5 ff ff       	call   c0036ba0 <__ssprint_r>
c003760a:	85 c0                	test   %eax,%eax
c003760c:	0f 85 86 01 00 00    	jne    c0037798 <_svfiprintf_r+0xa08>
c0037612:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037618:	8d 75 a8             	lea    -0x58(%ebp),%esi
c003761b:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037621:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0037628:	89 1e                	mov    %ebx,(%esi)
c003762a:	8b 9d 58 ff ff ff    	mov    -0xa8(%ebp),%ebx
c0037630:	83 c0 01             	add    $0x1,%eax
c0037633:	83 c6 08             	add    $0x8,%esi
c0037636:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003763c:	89 5e fc             	mov    %ebx,-0x4(%esi)
c003763f:	01 da                	add    %ebx,%edx
c0037641:	83 f8 07             	cmp    $0x7,%eax
c0037644:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c003764a:	0f 8f 80 02 00 00    	jg     c00378d0 <_svfiprintf_r+0xb40>
c0037650:	f6 85 64 ff ff ff 04 	testb  $0x4,-0x9c(%ebp)
c0037657:	0f 84 b9 00 00 00    	je     c0037716 <_svfiprintf_r+0x986>
c003765d:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
c0037663:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
c0037669:	85 ff                	test   %edi,%edi
c003766b:	0f 8e a5 00 00 00    	jle    c0037716 <_svfiprintf_r+0x986>
c0037671:	83 ff 10             	cmp    $0x10,%edi
c0037674:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003767a:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0037680:	7e 71                	jle    c00376f3 <_svfiprintf_r+0x963>
c0037682:	89 f1                	mov    %esi,%ecx
c0037684:	8b 75 08             	mov    0x8(%ebp),%esi
c0037687:	eb 0f                	jmp    c0037698 <_svfiprintf_r+0x908>
c0037689:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0037690:	83 ef 10             	sub    $0x10,%edi
c0037693:	83 ff 10             	cmp    $0x10,%edi
c0037696:	7e 59                	jle    c00376f1 <_svfiprintf_r+0x961>
c0037698:	83 c0 01             	add    $0x1,%eax
c003769b:	83 c2 10             	add    $0x10,%edx
c003769e:	c7 01 dc 9c 03 c0    	movl   $0xc0039cdc,(%ecx)
c00376a4:	83 c1 08             	add    $0x8,%ecx
c00376a7:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c00376ae:	83 f8 07             	cmp    $0x7,%eax
c00376b1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00376b7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00376bd:	7e d1                	jle    c0037690 <_svfiprintf_r+0x900>
c00376bf:	8b 45 0c             	mov    0xc(%ebp),%eax
c00376c2:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c00376c6:	89 34 24             	mov    %esi,(%esp)
c00376c9:	89 44 24 04          	mov    %eax,0x4(%esp)
c00376cd:	e8 ce f4 ff ff       	call   c0036ba0 <__ssprint_r>
c00376d2:	85 c0                	test   %eax,%eax
c00376d4:	0f 85 be 00 00 00    	jne    c0037798 <_svfiprintf_r+0xa08>
c00376da:	83 ef 10             	sub    $0x10,%edi
c00376dd:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00376e3:	83 ff 10             	cmp    $0x10,%edi
c00376e6:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00376ec:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c00376ef:	7f a7                	jg     c0037698 <_svfiprintf_r+0x908>
c00376f1:	89 ce                	mov    %ecx,%esi
c00376f3:	83 c0 01             	add    $0x1,%eax
c00376f6:	01 fa                	add    %edi,%edx
c00376f8:	83 f8 07             	cmp    $0x7,%eax
c00376fb:	c7 06 dc 9c 03 c0    	movl   $0xc0039cdc,(%esi)
c0037701:	89 7e 04             	mov    %edi,0x4(%esi)
c0037704:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c003770a:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0037710:	0f 8f ee 02 00 00    	jg     c0037a04 <_svfiprintf_r+0xc74>
c0037716:	8b 85 54 ff ff ff    	mov    -0xac(%ebp),%eax
c003771c:	8b b5 60 ff ff ff    	mov    -0xa0(%ebp),%esi
c0037722:	39 c6                	cmp    %eax,%esi
c0037724:	0f 4d c6             	cmovge %esi,%eax
c0037727:	01 85 50 ff ff ff    	add    %eax,-0xb0(%ebp)
c003772d:	85 d2                	test   %edx,%edx
c003772f:	0f 85 d3 01 00 00    	jne    c0037908 <_svfiprintf_r+0xb78>
c0037735:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c003773c:	00 00 00 
c003773f:	8d 75 a8             	lea    -0x58(%ebp),%esi
c0037742:	e9 a7 f6 ff ff       	jmp    c0036dee <_svfiprintf_r+0x5e>
c0037747:	90                   	nop
c0037748:	84 d2                	test   %dl,%dl
c003774a:	75 6c                	jne    c00377b8 <_svfiprintf_r+0xa28>
c003774c:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
c0037753:	74 63                	je     c00377b8 <_svfiprintf_r+0xa28>
c0037755:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
c003775b:	8d 5d a7             	lea    -0x59(%ebp),%ebx
c003775e:	c6 45 a7 30          	movb   $0x30,-0x59(%ebp)
c0037762:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0037768:	e9 13 f8 ff ff       	jmp    c0036f80 <_svfiprintf_r+0x1f0>
c003776d:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
c0037773:	85 c0                	test   %eax,%eax
c0037775:	74 21                	je     c0037798 <_svfiprintf_r+0xa08>
c0037777:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003777d:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037781:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037784:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037788:	8b 45 08             	mov    0x8(%ebp),%eax
c003778b:	89 04 24             	mov    %eax,(%esp)
c003778e:	e8 0d f4 ff ff       	call   c0036ba0 <__ssprint_r>
c0037793:	90                   	nop
c0037794:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037798:	8b 75 0c             	mov    0xc(%ebp),%esi
c003779b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c00377a0:	f6 46 0c 40          	testb  $0x40,0xc(%esi)
c00377a4:	0f 44 85 50 ff ff ff 	cmove  -0xb0(%ebp),%eax
c00377ab:	81 c4 cc 00 00 00    	add    $0xcc,%esp
c00377b1:	5b                   	pop    %ebx
c00377b2:	5e                   	pop    %esi
c00377b3:	5f                   	pop    %edi
c00377b4:	5d                   	pop    %ebp
c00377b5:	c3                   	ret    
c00377b6:	66 90                	xchg   %ax,%ax
c00377b8:	c7 85 58 ff ff ff 00 	movl   $0x0,-0xa8(%ebp)
c00377bf:	00 00 00 
c00377c2:	8d 5d a8             	lea    -0x58(%ebp),%ebx
c00377c5:	e9 b6 f7 ff ff       	jmp    c0036f80 <_svfiprintf_r+0x1f0>
c00377ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00377d0:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
c00377d6:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
c00377dc:	85 ff                	test   %edi,%edi
c00377de:	0f 8e 4f fd ff ff    	jle    c0037533 <_svfiprintf_r+0x7a3>
c00377e4:	83 ff 10             	cmp    $0x10,%edi
c00377e7:	0f 8e 7f 00 00 00    	jle    c003786c <_svfiprintf_r+0xadc>
c00377ed:	89 9d 4c ff ff ff    	mov    %ebx,-0xb4(%ebp)
c00377f3:	89 f1                	mov    %esi,%ecx
c00377f5:	8b 5d 08             	mov    0x8(%ebp),%ebx
c00377f8:	8b 75 0c             	mov    0xc(%ebp),%esi
c00377fb:	eb 0b                	jmp    c0037808 <_svfiprintf_r+0xa78>
c00377fd:	8d 76 00             	lea    0x0(%esi),%esi
c0037800:	83 ef 10             	sub    $0x10,%edi
c0037803:	83 ff 10             	cmp    $0x10,%edi
c0037806:	7e 5c                	jle    c0037864 <_svfiprintf_r+0xad4>
c0037808:	83 c0 01             	add    $0x1,%eax
c003780b:	83 c2 10             	add    $0x10,%edx
c003780e:	c7 01 cc 9c 03 c0    	movl   $0xc0039ccc,(%ecx)
c0037814:	83 c1 08             	add    $0x8,%ecx
c0037817:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c003781e:	83 f8 07             	cmp    $0x7,%eax
c0037821:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037827:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003782d:	7e d1                	jle    c0037800 <_svfiprintf_r+0xa70>
c003782f:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037835:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037839:	89 74 24 04          	mov    %esi,0x4(%esp)
c003783d:	89 1c 24             	mov    %ebx,(%esp)
c0037840:	e8 5b f3 ff ff       	call   c0036ba0 <__ssprint_r>
c0037845:	85 c0                	test   %eax,%eax
c0037847:	0f 85 4b ff ff ff    	jne    c0037798 <_svfiprintf_r+0xa08>
c003784d:	83 ef 10             	sub    $0x10,%edi
c0037850:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037856:	83 ff 10             	cmp    $0x10,%edi
c0037859:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003785f:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c0037862:	7f a4                	jg     c0037808 <_svfiprintf_r+0xa78>
c0037864:	8b 9d 4c ff ff ff    	mov    -0xb4(%ebp),%ebx
c003786a:	89 ce                	mov    %ecx,%esi
c003786c:	83 c0 01             	add    $0x1,%eax
c003786f:	01 fa                	add    %edi,%edx
c0037871:	c7 06 cc 9c 03 c0    	movl   $0xc0039ccc,(%esi)
c0037877:	83 c6 08             	add    $0x8,%esi
c003787a:	89 7e fc             	mov    %edi,-0x4(%esi)
c003787d:	83 f8 07             	cmp    $0x7,%eax
c0037880:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037886:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003788c:	0f 8e a1 fc ff ff    	jle    c0037533 <_svfiprintf_r+0x7a3>
c0037892:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037898:	89 44 24 08          	mov    %eax,0x8(%esp)
c003789c:	8b 45 0c             	mov    0xc(%ebp),%eax
c003789f:	89 44 24 04          	mov    %eax,0x4(%esp)
c00378a3:	8b 45 08             	mov    0x8(%ebp),%eax
c00378a6:	89 04 24             	mov    %eax,(%esp)
c00378a9:	e8 f2 f2 ff ff       	call   c0036ba0 <__ssprint_r>
c00378ae:	85 c0                	test   %eax,%eax
c00378b0:	0f 85 e2 fe ff ff    	jne    c0037798 <_svfiprintf_r+0xa08>
c00378b6:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00378bc:	8d 75 a8             	lea    -0x58(%ebp),%esi
c00378bf:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00378c5:	e9 69 fc ff ff       	jmp    c0037533 <_svfiprintf_r+0x7a3>
c00378ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00378d0:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00378d6:	89 44 24 08          	mov    %eax,0x8(%esp)
c00378da:	8b 45 0c             	mov    0xc(%ebp),%eax
c00378dd:	89 44 24 04          	mov    %eax,0x4(%esp)
c00378e1:	8b 45 08             	mov    0x8(%ebp),%eax
c00378e4:	89 04 24             	mov    %eax,(%esp)
c00378e7:	e8 b4 f2 ff ff       	call   c0036ba0 <__ssprint_r>
c00378ec:	85 c0                	test   %eax,%eax
c00378ee:	0f 85 a4 fe ff ff    	jne    c0037798 <_svfiprintf_r+0xa08>
c00378f4:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00378fa:	8d 75 a8             	lea    -0x58(%ebp),%esi
c00378fd:	e9 4e fd ff ff       	jmp    c0037650 <_svfiprintf_r+0x8c0>
c0037902:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037908:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003790e:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037912:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037915:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037919:	8b 45 08             	mov    0x8(%ebp),%eax
c003791c:	89 04 24             	mov    %eax,(%esp)
c003791f:	e8 7c f2 ff ff       	call   c0036ba0 <__ssprint_r>
c0037924:	85 c0                	test   %eax,%eax
c0037926:	0f 84 09 fe ff ff    	je     c0037735 <_svfiprintf_r+0x9a5>
c003792c:	e9 67 fe ff ff       	jmp    c0037798 <_svfiprintf_r+0xa08>
c0037931:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0037938:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003793e:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037942:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037945:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037949:	8b 45 08             	mov    0x8(%ebp),%eax
c003794c:	89 04 24             	mov    %eax,(%esp)
c003794f:	e8 4c f2 ff ff       	call   c0036ba0 <__ssprint_r>
c0037954:	85 c0                	test   %eax,%eax
c0037956:	0f 85 3c fe ff ff    	jne    c0037798 <_svfiprintf_r+0xa08>
c003795c:	8d 75 a8             	lea    -0x58(%ebp),%esi
c003795f:	e9 e9 f4 ff ff       	jmp    c0036e4d <_svfiprintf_r+0xbd>
c0037964:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037968:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003796e:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037972:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037975:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037979:	8b 45 08             	mov    0x8(%ebp),%eax
c003797c:	89 04 24             	mov    %eax,(%esp)
c003797f:	e8 1c f2 ff ff       	call   c0036ba0 <__ssprint_r>
c0037984:	85 c0                	test   %eax,%eax
c0037986:	0f 85 0c fe ff ff    	jne    c0037798 <_svfiprintf_r+0xa08>
c003798c:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037992:	8d 75 a8             	lea    -0x58(%ebp),%esi
c0037995:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003799b:	e9 83 fb ff ff       	jmp    c0037523 <_svfiprintf_r+0x793>
c00379a0:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00379a6:	89 44 24 08          	mov    %eax,0x8(%esp)
c00379aa:	8b 45 0c             	mov    0xc(%ebp),%eax
c00379ad:	89 44 24 04          	mov    %eax,0x4(%esp)
c00379b1:	8b 45 08             	mov    0x8(%ebp),%eax
c00379b4:	89 04 24             	mov    %eax,(%esp)
c00379b7:	e8 e4 f1 ff ff       	call   c0036ba0 <__ssprint_r>
c00379bc:	85 c0                	test   %eax,%eax
c00379be:	0f 85 d4 fd ff ff    	jne    c0037798 <_svfiprintf_r+0xa08>
c00379c4:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00379ca:	8d 75 a8             	lea    -0x58(%ebp),%esi
c00379cd:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00379d3:	e9 13 fb ff ff       	jmp    c00374eb <_svfiprintf_r+0x75b>
c00379d8:	83 f9 09             	cmp    $0x9,%ecx
c00379db:	76 56                	jbe    c0037a33 <_svfiprintf_r+0xca3>
c00379dd:	8d 5d a8             	lea    -0x58(%ebp),%ebx
c00379e0:	b8 cd cc cc cc       	mov    $0xcccccccd,%eax
c00379e5:	83 eb 01             	sub    $0x1,%ebx
c00379e8:	f7 e1                	mul    %ecx
c00379ea:	c1 ea 03             	shr    $0x3,%edx
c00379ed:	8d 04 92             	lea    (%edx,%edx,4),%eax
c00379f0:	01 c0                	add    %eax,%eax
c00379f2:	29 c1                	sub    %eax,%ecx
c00379f4:	83 c1 30             	add    $0x30,%ecx
c00379f7:	85 d2                	test   %edx,%edx
c00379f9:	88 0b                	mov    %cl,(%ebx)
c00379fb:	89 d1                	mov    %edx,%ecx
c00379fd:	75 e1                	jne    c00379e0 <_svfiprintf_r+0xc50>
c00379ff:	e9 71 f5 ff ff       	jmp    c0036f75 <_svfiprintf_r+0x1e5>
c0037a04:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037a0a:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037a0e:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037a11:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037a15:	8b 45 08             	mov    0x8(%ebp),%eax
c0037a18:	89 04 24             	mov    %eax,(%esp)
c0037a1b:	e8 80 f1 ff ff       	call   c0036ba0 <__ssprint_r>
c0037a20:	85 c0                	test   %eax,%eax
c0037a22:	0f 85 70 fd ff ff    	jne    c0037798 <_svfiprintf_r+0xa08>
c0037a28:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037a2e:	e9 e3 fc ff ff       	jmp    c0037716 <_svfiprintf_r+0x986>
c0037a33:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
c0037a39:	83 c1 30             	add    $0x30,%ecx
c0037a3c:	88 4d a7             	mov    %cl,-0x59(%ebp)
c0037a3f:	8d 5d a7             	lea    -0x59(%ebp),%ebx
c0037a42:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0037a48:	e9 33 f5 ff ff       	jmp    c0036f80 <_svfiprintf_r+0x1f0>
c0037a4d:	8b 45 14             	mov    0x14(%ebp),%eax
c0037a50:	8b 9d 50 ff ff ff    	mov    -0xb0(%ebp),%ebx
c0037a56:	8b 00                	mov    (%eax),%eax
c0037a58:	89 18                	mov    %ebx,(%eax)
c0037a5a:	8b 45 14             	mov    0x14(%ebp),%eax
c0037a5d:	83 c0 04             	add    $0x4,%eax
c0037a60:	89 45 14             	mov    %eax,0x14(%ebp)
c0037a63:	e9 86 f3 ff ff       	jmp    c0036dee <_svfiprintf_r+0x5e>
c0037a68:	0f b7 0b             	movzwl (%ebx),%ecx
c0037a6b:	83 c3 04             	add    $0x4,%ebx
c0037a6e:	89 5d 14             	mov    %ebx,0x14(%ebp)
c0037a71:	e9 95 f8 ff ff       	jmp    c003730b <_svfiprintf_r+0x57b>
c0037a76:	0f bf 08             	movswl (%eax),%ecx
c0037a79:	83 c0 04             	add    $0x4,%eax
c0037a7c:	89 45 14             	mov    %eax,0x14(%ebp)
c0037a7f:	85 c9                	test   %ecx,%ecx
c0037a81:	0f 89 0d f7 ff ff    	jns    c0037194 <_svfiprintf_r+0x404>
c0037a87:	f7 d9                	neg    %ecx
c0037a89:	bf 2d 00 00 00       	mov    $0x2d,%edi
c0037a8e:	c6 85 71 ff ff ff 2d 	movb   $0x2d,-0x8f(%ebp)
c0037a95:	ba 01 00 00 00       	mov    $0x1,%edx
c0037a9a:	e9 7a f4 ff ff       	jmp    c0036f19 <_svfiprintf_r+0x189>
c0037a9f:	89 1c 24             	mov    %ebx,(%esp)
c0037aa2:	e8 79 f0 ff ff       	call   c0036b20 <strlen>
c0037aa7:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
c0037aad:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c0037ab4:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c0037abb:	00 00 00 
c0037abe:	89 55 14             	mov    %edx,0x14(%ebp)
c0037ac1:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0037ac7:	e9 b4 f4 ff ff       	jmp    c0036f80 <_svfiprintf_r+0x1f0>
c0037acc:	8b 45 08             	mov    0x8(%ebp),%eax
c0037acf:	c7 44 24 04 40 00 00 	movl   $0x40,0x4(%esp)
c0037ad6:	00 
c0037ad7:	89 04 24             	mov    %eax,(%esp)
c0037ada:	e8 41 d9 ff ff       	call   c0035420 <_malloc_r>
c0037adf:	8b 75 0c             	mov    0xc(%ebp),%esi
c0037ae2:	85 c0                	test   %eax,%eax
c0037ae4:	89 06                	mov    %eax,(%esi)
c0037ae6:	89 46 10             	mov    %eax,0x10(%esi)
c0037ae9:	0f 84 a3 00 00 00    	je     c0037b92 <_svfiprintf_r+0xe02>
c0037aef:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037af2:	c7 40 14 40 00 00 00 	movl   $0x40,0x14(%eax)
c0037af9:	e9 b2 f2 ff ff       	jmp    c0036db0 <_svfiprintf_r+0x20>
c0037afe:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
c0037b04:	b8 06 00 00 00       	mov    $0x6,%eax
c0037b09:	89 55 14             	mov    %edx,0x14(%ebp)
c0037b0c:	83 ff 06             	cmp    $0x6,%edi
c0037b0f:	0f 46 c7             	cmovbe %edi,%eax
c0037b12:	85 c0                	test   %eax,%eax
c0037b14:	0f 49 d8             	cmovns %eax,%ebx
c0037b17:	89 9d 60 ff ff ff    	mov    %ebx,-0xa0(%ebp)
c0037b1d:	bb 28 98 03 c0       	mov    $0xc0039828,%ebx
c0037b22:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0037b28:	e9 61 f8 ff ff       	jmp    c003738e <_svfiprintf_r+0x5fe>
c0037b2d:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0037b33:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c0037b3a:	89 55 14             	mov    %edx,0x14(%ebp)
c0037b3d:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c0037b44:	00 00 00 
c0037b47:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0037b4d:	e9 2e f4 ff ff       	jmp    c0036f80 <_svfiprintf_r+0x1f0>
c0037b52:	89 da                	mov    %ebx,%edx
c0037b54:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c0037b5b:	00 00 00 
c0037b5e:	e9 29 f3 ff ff       	jmp    c0036e8c <_svfiprintf_r+0xfc>
c0037b63:	8b 4d 14             	mov    0x14(%ebp),%ecx
c0037b66:	89 da                	mov    %ebx,%edx
c0037b68:	8b 45 14             	mov    0x14(%ebp),%eax
c0037b6b:	8b 09                	mov    (%ecx),%ecx
c0037b6d:	83 c0 04             	add    $0x4,%eax
c0037b70:	89 45 14             	mov    %eax,0x14(%ebp)
c0037b73:	85 c9                	test   %ecx,%ecx
c0037b75:	89 8d 5c ff ff ff    	mov    %ecx,-0xa4(%ebp)
c0037b7b:	0f 89 26 f3 ff ff    	jns    c0036ea7 <_svfiprintf_r+0x117>
c0037b81:	c7 85 5c ff ff ff ff 	movl   $0xffffffff,-0xa4(%ebp)
c0037b88:	ff ff ff 
c0037b8b:	89 d0                	mov    %edx,%eax
c0037b8d:	e9 f4 f2 ff ff       	jmp    c0036e86 <_svfiprintf_r+0xf6>
c0037b92:	8b 45 08             	mov    0x8(%ebp),%eax
c0037b95:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0037b9b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0037ba0:	e9 06 fc ff ff       	jmp    c00377ab <_svfiprintf_r+0xa1b>
c0037ba5:	66 90                	xchg   %ax,%ax
c0037ba7:	66 90                	xchg   %ax,%ax
c0037ba9:	66 90                	xchg   %ax,%ax
c0037bab:	66 90                	xchg   %ax,%ax
c0037bad:	66 90                	xchg   %ax,%ax
c0037baf:	90                   	nop

c0037bb0 <_calloc_r>:
c0037bb0:	55                   	push   %ebp
c0037bb1:	89 e5                	mov    %esp,%ebp
c0037bb3:	53                   	push   %ebx
c0037bb4:	83 ec 14             	sub    $0x14,%esp
c0037bb7:	8b 45 10             	mov    0x10(%ebp),%eax
c0037bba:	0f af 45 0c          	imul   0xc(%ebp),%eax
c0037bbe:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037bc2:	8b 45 08             	mov    0x8(%ebp),%eax
c0037bc5:	89 04 24             	mov    %eax,(%esp)
c0037bc8:	e8 53 d8 ff ff       	call   c0035420 <_malloc_r>
c0037bcd:	85 c0                	test   %eax,%eax
c0037bcf:	89 c3                	mov    %eax,%ebx
c0037bd1:	0f 84 91 00 00 00    	je     c0037c68 <_calloc_r+0xb8>
c0037bd7:	8b 40 fc             	mov    -0x4(%eax),%eax
c0037bda:	83 e0 fc             	and    $0xfffffffc,%eax
c0037bdd:	83 e8 04             	sub    $0x4,%eax
c0037be0:	83 f8 24             	cmp    $0x24,%eax
c0037be3:	77 63                	ja     c0037c48 <_calloc_r+0x98>
c0037be5:	83 f8 13             	cmp    $0x13,%eax
c0037be8:	89 da                	mov    %ebx,%edx
c0037bea:	77 1c                	ja     c0037c08 <_calloc_r+0x58>
c0037bec:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
c0037bf2:	89 d8                	mov    %ebx,%eax
c0037bf4:	c7 42 04 00 00 00 00 	movl   $0x0,0x4(%edx)
c0037bfb:	c7 42 08 00 00 00 00 	movl   $0x0,0x8(%edx)
c0037c02:	83 c4 14             	add    $0x14,%esp
c0037c05:	5b                   	pop    %ebx
c0037c06:	5d                   	pop    %ebp
c0037c07:	c3                   	ret    
c0037c08:	83 f8 1b             	cmp    $0x1b,%eax
c0037c0b:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
c0037c11:	8d 53 08             	lea    0x8(%ebx),%edx
c0037c14:	c7 43 04 00 00 00 00 	movl   $0x0,0x4(%ebx)
c0037c1b:	76 cf                	jbe    c0037bec <_calloc_r+0x3c>
c0037c1d:	83 f8 24             	cmp    $0x24,%eax
c0037c20:	c7 43 08 00 00 00 00 	movl   $0x0,0x8(%ebx)
c0037c27:	8d 53 10             	lea    0x10(%ebx),%edx
c0037c2a:	c7 43 0c 00 00 00 00 	movl   $0x0,0xc(%ebx)
c0037c31:	75 b9                	jne    c0037bec <_calloc_r+0x3c>
c0037c33:	c7 43 10 00 00 00 00 	movl   $0x0,0x10(%ebx)
c0037c3a:	8d 53 18             	lea    0x18(%ebx),%edx
c0037c3d:	c7 43 14 00 00 00 00 	movl   $0x0,0x14(%ebx)
c0037c44:	eb a6                	jmp    c0037bec <_calloc_r+0x3c>
c0037c46:	66 90                	xchg   %ax,%ax
c0037c48:	89 1c 24             	mov    %ebx,(%esp)
c0037c4b:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037c4f:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0037c56:	00 
c0037c57:	e8 50 a2 ff ff       	call   c0031eac <memset>
c0037c5c:	83 c4 14             	add    $0x14,%esp
c0037c5f:	89 d8                	mov    %ebx,%eax
c0037c61:	5b                   	pop    %ebx
c0037c62:	5d                   	pop    %ebp
c0037c63:	c3                   	ret    
c0037c64:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037c68:	31 c0                	xor    %eax,%eax
c0037c6a:	eb 96                	jmp    c0037c02 <_calloc_r+0x52>
c0037c6c:	66 90                	xchg   %ax,%ax
c0037c6e:	66 90                	xchg   %ax,%ax

c0037c70 <_malloc_trim_r>:
c0037c70:	55                   	push   %ebp
c0037c71:	89 e5                	mov    %esp,%ebp
c0037c73:	57                   	push   %edi
c0037c74:	56                   	push   %esi
c0037c75:	53                   	push   %ebx
c0037c76:	83 ec 1c             	sub    $0x1c,%esp
c0037c79:	8b 75 08             	mov    0x8(%ebp),%esi
c0037c7c:	89 34 24             	mov    %esi,(%esp)
c0037c7f:	e8 7c df ff ff       	call   c0035c00 <__malloc_lock>
c0037c84:	a1 48 d5 03 c0       	mov    0xc003d548,%eax
c0037c89:	8b 58 04             	mov    0x4(%eax),%ebx
c0037c8c:	83 e3 fc             	and    $0xfffffffc,%ebx
c0037c8f:	89 d8                	mov    %ebx,%eax
c0037c91:	2b 45 0c             	sub    0xc(%ebp),%eax
c0037c94:	05 ef 0f 00 00       	add    $0xfef,%eax
c0037c99:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0037c9e:	8d b8 00 f0 ff ff    	lea    -0x1000(%eax),%edi
c0037ca4:	81 ff ff 0f 00 00    	cmp    $0xfff,%edi
c0037caa:	7e 1c                	jle    c0037cc8 <_malloc_trim_r+0x58>
c0037cac:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0037cb3:	00 
c0037cb4:	89 34 24             	mov    %esi,(%esp)
c0037cb7:	e8 44 ed ff ff       	call   c0036a00 <_sbrk_r>
c0037cbc:	8b 15 48 d5 03 c0    	mov    0xc003d548,%edx
c0037cc2:	01 da                	add    %ebx,%edx
c0037cc4:	39 d0                	cmp    %edx,%eax
c0037cc6:	74 18                	je     c0037ce0 <_malloc_trim_r+0x70>
c0037cc8:	89 34 24             	mov    %esi,(%esp)
c0037ccb:	e8 40 df ff ff       	call   c0035c10 <__malloc_unlock>
c0037cd0:	83 c4 1c             	add    $0x1c,%esp
c0037cd3:	31 c0                	xor    %eax,%eax
c0037cd5:	5b                   	pop    %ebx
c0037cd6:	5e                   	pop    %esi
c0037cd7:	5f                   	pop    %edi
c0037cd8:	5d                   	pop    %ebp
c0037cd9:	c3                   	ret    
c0037cda:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037ce0:	89 f8                	mov    %edi,%eax
c0037ce2:	f7 d8                	neg    %eax
c0037ce4:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037ce8:	89 34 24             	mov    %esi,(%esp)
c0037ceb:	e8 10 ed ff ff       	call   c0036a00 <_sbrk_r>
c0037cf0:	83 f8 ff             	cmp    $0xffffffff,%eax
c0037cf3:	74 2b                	je     c0037d20 <_malloc_trim_r+0xb0>
c0037cf5:	a1 48 d5 03 c0       	mov    0xc003d548,%eax
c0037cfa:	29 fb                	sub    %edi,%ebx
c0037cfc:	83 cb 01             	or     $0x1,%ebx
c0037cff:	29 3d 20 00 07 c0    	sub    %edi,0xc0070020
c0037d05:	89 58 04             	mov    %ebx,0x4(%eax)
c0037d08:	89 34 24             	mov    %esi,(%esp)
c0037d0b:	e8 00 df ff ff       	call   c0035c10 <__malloc_unlock>
c0037d10:	83 c4 1c             	add    $0x1c,%esp
c0037d13:	b8 01 00 00 00       	mov    $0x1,%eax
c0037d18:	5b                   	pop    %ebx
c0037d19:	5e                   	pop    %esi
c0037d1a:	5f                   	pop    %edi
c0037d1b:	5d                   	pop    %ebp
c0037d1c:	c3                   	ret    
c0037d1d:	8d 76 00             	lea    0x0(%esi),%esi
c0037d20:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0037d27:	00 
c0037d28:	89 34 24             	mov    %esi,(%esp)
c0037d2b:	e8 d0 ec ff ff       	call   c0036a00 <_sbrk_r>
c0037d30:	8b 15 48 d5 03 c0    	mov    0xc003d548,%edx
c0037d36:	89 c1                	mov    %eax,%ecx
c0037d38:	29 d1                	sub    %edx,%ecx
c0037d3a:	83 f9 0f             	cmp    $0xf,%ecx
c0037d3d:	7e 89                	jle    c0037cc8 <_malloc_trim_r+0x58>
c0037d3f:	2b 05 20 d5 03 c0    	sub    0xc003d520,%eax
c0037d45:	83 c9 01             	or     $0x1,%ecx
c0037d48:	89 4a 04             	mov    %ecx,0x4(%edx)
c0037d4b:	a3 20 00 07 c0       	mov    %eax,0xc0070020
c0037d50:	e9 73 ff ff ff       	jmp    c0037cc8 <_malloc_trim_r+0x58>
c0037d55:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037d59:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0037d60 <_free_r>:
c0037d60:	55                   	push   %ebp
c0037d61:	89 e5                	mov    %esp,%ebp
c0037d63:	57                   	push   %edi
c0037d64:	56                   	push   %esi
c0037d65:	53                   	push   %ebx
c0037d66:	83 ec 1c             	sub    $0x1c,%esp
c0037d69:	8b 75 0c             	mov    0xc(%ebp),%esi
c0037d6c:	8b 45 08             	mov    0x8(%ebp),%eax
c0037d6f:	85 f6                	test   %esi,%esi
c0037d71:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0037d74:	0f 84 fe 00 00 00    	je     c0037e78 <_free_r+0x118>
c0037d7a:	89 04 24             	mov    %eax,(%esp)
c0037d7d:	e8 7e de ff ff       	call   c0035c00 <__malloc_lock>
c0037d82:	8b 7e fc             	mov    -0x4(%esi),%edi
c0037d85:	8d 56 f8             	lea    -0x8(%esi),%edx
c0037d88:	89 f8                	mov    %edi,%eax
c0037d8a:	83 e0 fe             	and    $0xfffffffe,%eax
c0037d8d:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
c0037d90:	8b 59 04             	mov    0x4(%ecx),%ebx
c0037d93:	83 e3 fc             	and    $0xfffffffc,%ebx
c0037d96:	39 0d 48 d5 03 c0    	cmp    %ecx,0xc003d548
c0037d9c:	0f 84 0e 01 00 00    	je     c0037eb0 <_free_r+0x150>
c0037da2:	83 e7 01             	and    $0x1,%edi
c0037da5:	89 59 04             	mov    %ebx,0x4(%ecx)
c0037da8:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
c0037daf:	75 1f                	jne    c0037dd0 <_free_r+0x70>
c0037db1:	8b 76 f8             	mov    -0x8(%esi),%esi
c0037db4:	29 f2                	sub    %esi,%edx
c0037db6:	01 f0                	add    %esi,%eax
c0037db8:	8b 72 08             	mov    0x8(%edx),%esi
c0037dbb:	81 fe 48 d5 03 c0    	cmp    $0xc003d548,%esi
c0037dc1:	0f 84 39 01 00 00    	je     c0037f00 <_free_r+0x1a0>
c0037dc7:	8b 7a 0c             	mov    0xc(%edx),%edi
c0037dca:	89 7e 0c             	mov    %edi,0xc(%esi)
c0037dcd:	89 77 08             	mov    %esi,0x8(%edi)
c0037dd0:	f6 44 19 04 01       	testb  $0x1,0x4(%ecx,%ebx,1)
c0037dd5:	75 21                	jne    c0037df8 <_free_r+0x98>
c0037dd7:	8b 75 e0             	mov    -0x20(%ebp),%esi
c0037dda:	01 d8                	add    %ebx,%eax
c0037ddc:	8b 59 08             	mov    0x8(%ecx),%ebx
c0037ddf:	85 f6                	test   %esi,%esi
c0037de1:	75 0c                	jne    c0037def <_free_r+0x8f>
c0037de3:	81 fb 48 d5 03 c0    	cmp    $0xc003d548,%ebx
c0037de9:	0f 84 21 01 00 00    	je     c0037f10 <_free_r+0x1b0>
c0037def:	8b 49 0c             	mov    0xc(%ecx),%ecx
c0037df2:	89 4b 0c             	mov    %ecx,0xc(%ebx)
c0037df5:	89 59 08             	mov    %ebx,0x8(%ecx)
c0037df8:	89 c1                	mov    %eax,%ecx
c0037dfa:	83 c9 01             	or     $0x1,%ecx
c0037dfd:	89 4a 04             	mov    %ecx,0x4(%edx)
c0037e00:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0037e03:	89 04 02             	mov    %eax,(%edx,%eax,1)
c0037e06:	85 c9                	test   %ecx,%ecx
c0037e08:	75 56                	jne    c0037e60 <_free_r+0x100>
c0037e0a:	3d ff 01 00 00       	cmp    $0x1ff,%eax
c0037e0f:	76 6f                	jbe    c0037e80 <_free_r+0x120>
c0037e11:	89 c1                	mov    %eax,%ecx
c0037e13:	c1 e9 09             	shr    $0x9,%ecx
c0037e16:	83 f9 04             	cmp    $0x4,%ecx
c0037e19:	0f 87 21 01 00 00    	ja     c0037f40 <_free_r+0x1e0>
c0037e1f:	89 c1                	mov    %eax,%ecx
c0037e21:	c1 e9 06             	shr    $0x6,%ecx
c0037e24:	83 c1 38             	add    $0x38,%ecx
c0037e27:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0037e2a:	8d 34 9d 40 d5 03 c0 	lea    -0x3ffc2ac0(,%ebx,4),%esi
c0037e31:	8b 5e 08             	mov    0x8(%esi),%ebx
c0037e34:	39 f3                	cmp    %esi,%ebx
c0037e36:	0f 84 14 01 00 00    	je     c0037f50 <_free_r+0x1f0>
c0037e3c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037e40:	8b 4b 04             	mov    0x4(%ebx),%ecx
c0037e43:	83 e1 fc             	and    $0xfffffffc,%ecx
c0037e46:	39 c8                	cmp    %ecx,%eax
c0037e48:	73 07                	jae    c0037e51 <_free_r+0xf1>
c0037e4a:	8b 5b 08             	mov    0x8(%ebx),%ebx
c0037e4d:	39 de                	cmp    %ebx,%esi
c0037e4f:	75 ef                	jne    c0037e40 <_free_r+0xe0>
c0037e51:	8b 43 0c             	mov    0xc(%ebx),%eax
c0037e54:	89 42 0c             	mov    %eax,0xc(%edx)
c0037e57:	89 5a 08             	mov    %ebx,0x8(%edx)
c0037e5a:	89 50 08             	mov    %edx,0x8(%eax)
c0037e5d:	89 53 0c             	mov    %edx,0xc(%ebx)
c0037e60:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0037e63:	89 45 08             	mov    %eax,0x8(%ebp)
c0037e66:	83 c4 1c             	add    $0x1c,%esp
c0037e69:	5b                   	pop    %ebx
c0037e6a:	5e                   	pop    %esi
c0037e6b:	5f                   	pop    %edi
c0037e6c:	5d                   	pop    %ebp
c0037e6d:	e9 9e dd ff ff       	jmp    c0035c10 <__malloc_unlock>
c0037e72:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037e78:	83 c4 1c             	add    $0x1c,%esp
c0037e7b:	5b                   	pop    %ebx
c0037e7c:	5e                   	pop    %esi
c0037e7d:	5f                   	pop    %edi
c0037e7e:	5d                   	pop    %ebp
c0037e7f:	c3                   	ret    
c0037e80:	c1 e8 03             	shr    $0x3,%eax
c0037e83:	bb 01 00 00 00       	mov    $0x1,%ebx
c0037e88:	89 c1                	mov    %eax,%ecx
c0037e8a:	c1 f9 02             	sar    $0x2,%ecx
c0037e8d:	8d 04 c5 40 d5 03 c0 	lea    -0x3ffc2ac0(,%eax,8),%eax
c0037e94:	d3 e3                	shl    %cl,%ebx
c0037e96:	8b 48 08             	mov    0x8(%eax),%ecx
c0037e99:	09 1d 44 d5 03 c0    	or     %ebx,0xc003d544
c0037e9f:	89 42 0c             	mov    %eax,0xc(%edx)
c0037ea2:	89 4a 08             	mov    %ecx,0x8(%edx)
c0037ea5:	89 50 08             	mov    %edx,0x8(%eax)
c0037ea8:	89 51 0c             	mov    %edx,0xc(%ecx)
c0037eab:	eb b3                	jmp    c0037e60 <_free_r+0x100>
c0037ead:	8d 76 00             	lea    0x0(%esi),%esi
c0037eb0:	01 d8                	add    %ebx,%eax
c0037eb2:	83 e7 01             	and    $0x1,%edi
c0037eb5:	75 13                	jne    c0037eca <_free_r+0x16a>
c0037eb7:	8b 4e f8             	mov    -0x8(%esi),%ecx
c0037eba:	29 ca                	sub    %ecx,%edx
c0037ebc:	01 c8                	add    %ecx,%eax
c0037ebe:	8b 5a 08             	mov    0x8(%edx),%ebx
c0037ec1:	8b 4a 0c             	mov    0xc(%edx),%ecx
c0037ec4:	89 4b 0c             	mov    %ecx,0xc(%ebx)
c0037ec7:	89 59 08             	mov    %ebx,0x8(%ecx)
c0037eca:	89 c1                	mov    %eax,%ecx
c0037ecc:	83 c9 01             	or     $0x1,%ecx
c0037ecf:	3b 05 24 d5 03 c0    	cmp    0xc003d524,%eax
c0037ed5:	89 4a 04             	mov    %ecx,0x4(%edx)
c0037ed8:	89 15 48 d5 03 c0    	mov    %edx,0xc003d548
c0037ede:	72 80                	jb     c0037e60 <_free_r+0x100>
c0037ee0:	a1 50 00 07 c0       	mov    0xc0070050,%eax
c0037ee5:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037ee9:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0037eec:	89 04 24             	mov    %eax,(%esp)
c0037eef:	e8 7c fd ff ff       	call   c0037c70 <_malloc_trim_r>
c0037ef4:	e9 67 ff ff ff       	jmp    c0037e60 <_free_r+0x100>
c0037ef9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0037f00:	c7 45 e0 01 00 00 00 	movl   $0x1,-0x20(%ebp)
c0037f07:	e9 c4 fe ff ff       	jmp    c0037dd0 <_free_r+0x70>
c0037f0c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037f10:	89 c1                	mov    %eax,%ecx
c0037f12:	83 c9 01             	or     $0x1,%ecx
c0037f15:	89 15 54 d5 03 c0    	mov    %edx,0xc003d554
c0037f1b:	89 15 50 d5 03 c0    	mov    %edx,0xc003d550
c0037f21:	c7 42 0c 48 d5 03 c0 	movl   $0xc003d548,0xc(%edx)
c0037f28:	c7 42 08 48 d5 03 c0 	movl   $0xc003d548,0x8(%edx)
c0037f2f:	89 4a 04             	mov    %ecx,0x4(%edx)
c0037f32:	89 04 02             	mov    %eax,(%edx,%eax,1)
c0037f35:	e9 26 ff ff ff       	jmp    c0037e60 <_free_r+0x100>
c0037f3a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037f40:	83 f9 14             	cmp    $0x14,%ecx
c0037f43:	77 23                	ja     c0037f68 <_free_r+0x208>
c0037f45:	83 c1 5b             	add    $0x5b,%ecx
c0037f48:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0037f4b:	e9 da fe ff ff       	jmp    c0037e2a <_free_r+0xca>
c0037f50:	c1 f9 02             	sar    $0x2,%ecx
c0037f53:	b8 01 00 00 00       	mov    $0x1,%eax
c0037f58:	d3 e0                	shl    %cl,%eax
c0037f5a:	09 05 44 d5 03 c0    	or     %eax,0xc003d544
c0037f60:	89 d8                	mov    %ebx,%eax
c0037f62:	e9 ed fe ff ff       	jmp    c0037e54 <_free_r+0xf4>
c0037f67:	90                   	nop
c0037f68:	83 f9 54             	cmp    $0x54,%ecx
c0037f6b:	77 10                	ja     c0037f7d <_free_r+0x21d>
c0037f6d:	89 c1                	mov    %eax,%ecx
c0037f6f:	c1 e9 0c             	shr    $0xc,%ecx
c0037f72:	83 c1 6e             	add    $0x6e,%ecx
c0037f75:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0037f78:	e9 ad fe ff ff       	jmp    c0037e2a <_free_r+0xca>
c0037f7d:	81 f9 54 01 00 00    	cmp    $0x154,%ecx
c0037f83:	77 10                	ja     c0037f95 <_free_r+0x235>
c0037f85:	89 c1                	mov    %eax,%ecx
c0037f87:	c1 e9 0f             	shr    $0xf,%ecx
c0037f8a:	83 c1 77             	add    $0x77,%ecx
c0037f8d:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0037f90:	e9 95 fe ff ff       	jmp    c0037e2a <_free_r+0xca>
c0037f95:	81 f9 54 05 00 00    	cmp    $0x554,%ecx
c0037f9b:	77 10                	ja     c0037fad <_free_r+0x24d>
c0037f9d:	89 c1                	mov    %eax,%ecx
c0037f9f:	c1 e9 12             	shr    $0x12,%ecx
c0037fa2:	83 c1 7c             	add    $0x7c,%ecx
c0037fa5:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0037fa8:	e9 7d fe ff ff       	jmp    c0037e2a <_free_r+0xca>
c0037fad:	bb fc 00 00 00       	mov    $0xfc,%ebx
c0037fb2:	b9 7e 00 00 00       	mov    $0x7e,%ecx
c0037fb7:	e9 6e fe ff ff       	jmp    c0037e2a <_free_r+0xca>
c0037fbc:	66 90                	xchg   %ax,%ax
c0037fbe:	66 90                	xchg   %ax,%ax

c0037fc0 <memmove>:
c0037fc0:	55                   	push   %ebp
c0037fc1:	89 e5                	mov    %esp,%ebp
c0037fc3:	56                   	push   %esi
c0037fc4:	57                   	push   %edi
c0037fc5:	53                   	push   %ebx
c0037fc6:	8b 7d 08             	mov    0x8(%ebp),%edi
c0037fc9:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0037fcc:	8b 75 0c             	mov    0xc(%ebp),%esi
c0037fcf:	fc                   	cld    
c0037fd0:	39 fe                	cmp    %edi,%esi
c0037fd2:	73 43                	jae    c0038017 <memmove+0x57>
c0037fd4:	8d 5c 31 ff          	lea    -0x1(%ecx,%esi,1),%ebx
c0037fd8:	39 df                	cmp    %ebx,%edi
c0037fda:	77 3b                	ja     c0038017 <memmove+0x57>
c0037fdc:	01 ce                	add    %ecx,%esi
c0037fde:	01 cf                	add    %ecx,%edi
c0037fe0:	fd                   	std    
c0037fe1:	83 f9 08             	cmp    $0x8,%ecx
c0037fe4:	76 2b                	jbe    c0038011 <memmove+0x51>
c0037fe6:	89 fa                	mov    %edi,%edx
c0037fe8:	89 cb                	mov    %ecx,%ebx
c0037fea:	83 e2 03             	and    $0x3,%edx
c0037fed:	74 0c                	je     c0037ffb <memmove+0x3b>
c0037fef:	89 d1                	mov    %edx,%ecx
c0037ff1:	4e                   	dec    %esi
c0037ff2:	4f                   	dec    %edi
c0037ff3:	29 cb                	sub    %ecx,%ebx
c0037ff5:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0037ff7:	89 d9                	mov    %ebx,%ecx
c0037ff9:	46                   	inc    %esi
c0037ffa:	47                   	inc    %edi
c0037ffb:	c1 e9 02             	shr    $0x2,%ecx
c0037ffe:	83 ee 04             	sub    $0x4,%esi
c0038001:	83 ef 04             	sub    $0x4,%edi
c0038004:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
c0038006:	83 c6 04             	add    $0x4,%esi
c0038009:	83 c7 04             	add    $0x4,%edi
c003800c:	89 d9                	mov    %ebx,%ecx
c003800e:	83 e1 03             	and    $0x3,%ecx
c0038011:	4e                   	dec    %esi
c0038012:	4f                   	dec    %edi
c0038013:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0038015:	eb 2a                	jmp    c0038041 <memmove+0x81>
c0038017:	83 f9 08             	cmp    $0x8,%ecx
c003801a:	76 23                	jbe    c003803f <memmove+0x7f>
c003801c:	89 fa                	mov    %edi,%edx
c003801e:	89 cb                	mov    %ecx,%ebx
c0038020:	83 e2 03             	and    $0x3,%edx
c0038023:	74 10                	je     c0038035 <memmove+0x75>
c0038025:	b9 04 00 00 00       	mov    $0x4,%ecx
c003802a:	29 d1                	sub    %edx,%ecx
c003802c:	83 e1 03             	and    $0x3,%ecx
c003802f:	29 cb                	sub    %ecx,%ebx
c0038031:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0038033:	89 d9                	mov    %ebx,%ecx
c0038035:	c1 e9 02             	shr    $0x2,%ecx
c0038038:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
c003803a:	89 d9                	mov    %ebx,%ecx
c003803c:	83 e1 03             	and    $0x3,%ecx
c003803f:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0038041:	8b 45 08             	mov    0x8(%ebp),%eax
c0038044:	fc                   	cld    
c0038045:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0038048:	5b                   	pop    %ebx
c0038049:	5f                   	pop    %edi
c003804a:	5e                   	pop    %esi
c003804b:	c9                   	leave  
c003804c:	c3                   	ret    
c003804d:	66 90                	xchg   %ax,%ax
c003804f:	90                   	nop

c0038050 <_realloc_r>:
c0038050:	55                   	push   %ebp
c0038051:	89 e5                	mov    %esp,%ebp
c0038053:	57                   	push   %edi
c0038054:	56                   	push   %esi
c0038055:	53                   	push   %ebx
c0038056:	83 ec 3c             	sub    $0x3c,%esp
c0038059:	8b 45 08             	mov    0x8(%ebp),%eax
c003805c:	8b 7d 0c             	mov    0xc(%ebp),%edi
c003805f:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0038062:	8b 45 10             	mov    0x10(%ebp),%eax
c0038065:	85 ff                	test   %edi,%edi
c0038067:	89 45 e0             	mov    %eax,-0x20(%ebp)
c003806a:	0f 84 50 02 00 00    	je     c00382c0 <_realloc_r+0x270>
c0038070:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0038073:	8d 77 f8             	lea    -0x8(%edi),%esi
c0038076:	89 04 24             	mov    %eax,(%esp)
c0038079:	e8 82 db ff ff       	call   c0035c00 <__malloc_lock>
c003807e:	8b 47 fc             	mov    -0x4(%edi),%eax
c0038081:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0038084:	89 c3                	mov    %eax,%ebx
c0038086:	8d 51 0b             	lea    0xb(%ecx),%edx
c0038089:	83 e3 fc             	and    $0xfffffffc,%ebx
c003808c:	83 fa 16             	cmp    $0x16,%edx
c003808f:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0038092:	0f 87 00 01 00 00    	ja     c0038198 <_realloc_r+0x148>
c0038098:	31 d2                	xor    %edx,%edx
c003809a:	c7 45 d8 10 00 00 00 	movl   $0x10,-0x28(%ebp)
c00380a1:	c7 45 dc 10 00 00 00 	movl   $0x10,-0x24(%ebp)
c00380a8:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c00380ab:	39 4d dc             	cmp    %ecx,-0x24(%ebp)
c00380ae:	0f 82 1c 02 00 00    	jb     c00382d0 <_realloc_r+0x280>
c00380b4:	84 d2                	test   %dl,%dl
c00380b6:	0f 85 14 02 00 00    	jne    c00382d0 <_realloc_r+0x280>
c00380bc:	3b 5d d8             	cmp    -0x28(%ebp),%ebx
c00380bf:	0f 8d eb 00 00 00    	jge    c00381b0 <_realloc_r+0x160>
c00380c5:	8b 0d 48 d5 03 c0    	mov    0xc003d548,%ecx
c00380cb:	8d 14 1e             	lea    (%esi,%ebx,1),%edx
c00380ce:	39 d1                	cmp    %edx,%ecx
c00380d0:	89 4d cc             	mov    %ecx,-0x34(%ebp)
c00380d3:	0f 84 6f 02 00 00    	je     c0038348 <_realloc_r+0x2f8>
c00380d9:	8b 4a 04             	mov    0x4(%edx),%ecx
c00380dc:	89 c8                	mov    %ecx,%eax
c00380de:	83 e0 fe             	and    $0xfffffffe,%eax
c00380e1:	f6 44 02 04 01       	testb  $0x1,0x4(%edx,%eax,1)
c00380e6:	0f 84 f4 00 00 00    	je     c00381e0 <_realloc_r+0x190>
c00380ec:	c7 45 d0 00 00 00 00 	movl   $0x0,-0x30(%ebp)
c00380f3:	31 d2                	xor    %edx,%edx
c00380f5:	f6 45 d4 01          	testb  $0x1,-0x2c(%ebp)
c00380f9:	0f 85 39 01 00 00    	jne    c0038238 <_realloc_r+0x1e8>
c00380ff:	89 f1                	mov    %esi,%ecx
c0038101:	2b 4f f8             	sub    -0x8(%edi),%ecx
c0038104:	8b 41 04             	mov    0x4(%ecx),%eax
c0038107:	83 e0 fc             	and    $0xfffffffc,%eax
c003810a:	85 d2                	test   %edx,%edx
c003810c:	0f 84 f6 02 00 00    	je     c0038408 <_realloc_r+0x3b8>
c0038112:	3b 55 cc             	cmp    -0x34(%ebp),%edx
c0038115:	0f 84 f5 02 00 00    	je     c0038410 <_realloc_r+0x3c0>
c003811b:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c003811e:	8b 55 d0             	mov    -0x30(%ebp),%edx
c0038121:	01 d8                	add    %ebx,%eax
c0038123:	01 c2                	add    %eax,%edx
c0038125:	3b 55 d8             	cmp    -0x28(%ebp),%edx
c0038128:	89 55 d0             	mov    %edx,-0x30(%ebp)
c003812b:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c003812e:	0f 8c ac 01 00 00    	jl     c00382e0 <_realloc_r+0x290>
c0038134:	8b 42 0c             	mov    0xc(%edx),%eax
c0038137:	83 eb 04             	sub    $0x4,%ebx
c003813a:	8b 52 08             	mov    0x8(%edx),%edx
c003813d:	83 fb 24             	cmp    $0x24,%ebx
c0038140:	8d 71 08             	lea    0x8(%ecx),%esi
c0038143:	89 42 0c             	mov    %eax,0xc(%edx)
c0038146:	89 50 08             	mov    %edx,0x8(%eax)
c0038149:	8b 41 0c             	mov    0xc(%ecx),%eax
c003814c:	8b 51 08             	mov    0x8(%ecx),%edx
c003814f:	89 42 0c             	mov    %eax,0xc(%edx)
c0038152:	89 50 08             	mov    %edx,0x8(%eax)
c0038155:	0f 87 85 03 00 00    	ja     c00384e0 <_realloc_r+0x490>
c003815b:	83 fb 13             	cmp    $0x13,%ebx
c003815e:	89 f0                	mov    %esi,%eax
c0038160:	76 1a                	jbe    c003817c <_realloc_r+0x12c>
c0038162:	8b 07                	mov    (%edi),%eax
c0038164:	83 fb 1b             	cmp    $0x1b,%ebx
c0038167:	89 41 08             	mov    %eax,0x8(%ecx)
c003816a:	8b 47 04             	mov    0x4(%edi),%eax
c003816d:	89 41 0c             	mov    %eax,0xc(%ecx)
c0038170:	0f 87 8f 03 00 00    	ja     c0038505 <_realloc_r+0x4b5>
c0038176:	8d 41 10             	lea    0x10(%ecx),%eax
c0038179:	83 c7 08             	add    $0x8,%edi
c003817c:	8b 17                	mov    (%edi),%edx
c003817e:	8b 5d d0             	mov    -0x30(%ebp),%ebx
c0038181:	89 10                	mov    %edx,(%eax)
c0038183:	8b 57 04             	mov    0x4(%edi),%edx
c0038186:	89 50 04             	mov    %edx,0x4(%eax)
c0038189:	8b 57 08             	mov    0x8(%edi),%edx
c003818c:	89 f7                	mov    %esi,%edi
c003818e:	89 ce                	mov    %ecx,%esi
c0038190:	89 50 08             	mov    %edx,0x8(%eax)
c0038193:	8b 41 04             	mov    0x4(%ecx),%eax
c0038196:	eb 1b                	jmp    c00381b3 <_realloc_r+0x163>
c0038198:	83 e2 f8             	and    $0xfffffff8,%edx
c003819b:	89 55 dc             	mov    %edx,-0x24(%ebp)
c003819e:	89 55 d8             	mov    %edx,-0x28(%ebp)
c00381a1:	c1 ea 1f             	shr    $0x1f,%edx
c00381a4:	e9 ff fe ff ff       	jmp    c00380a8 <_realloc_r+0x58>
c00381a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00381b0:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c00381b3:	89 da                	mov    %ebx,%edx
c00381b5:	2b 55 dc             	sub    -0x24(%ebp),%edx
c00381b8:	83 fa 0f             	cmp    $0xf,%edx
c00381bb:	77 4b                	ja     c0038208 <_realloc_r+0x1b8>
c00381bd:	83 e0 01             	and    $0x1,%eax
c00381c0:	09 d8                	or     %ebx,%eax
c00381c2:	89 46 04             	mov    %eax,0x4(%esi)
c00381c5:	83 4c 1e 04 01       	orl    $0x1,0x4(%esi,%ebx,1)
c00381ca:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c00381cd:	89 04 24             	mov    %eax,(%esp)
c00381d0:	e8 3b da ff ff       	call   c0035c10 <__malloc_unlock>
c00381d5:	89 f8                	mov    %edi,%eax
c00381d7:	83 c4 3c             	add    $0x3c,%esp
c00381da:	5b                   	pop    %ebx
c00381db:	5e                   	pop    %esi
c00381dc:	5f                   	pop    %edi
c00381dd:	5d                   	pop    %ebp
c00381de:	c3                   	ret    
c00381df:	90                   	nop
c00381e0:	83 e1 fc             	and    $0xfffffffc,%ecx
c00381e3:	89 4d d0             	mov    %ecx,-0x30(%ebp)
c00381e6:	01 d9                	add    %ebx,%ecx
c00381e8:	3b 4d d8             	cmp    -0x28(%ebp),%ecx
c00381eb:	0f 8c 04 ff ff ff    	jl     c00380f5 <_realloc_r+0xa5>
c00381f1:	8b 5a 0c             	mov    0xc(%edx),%ebx
c00381f4:	8b 52 08             	mov    0x8(%edx),%edx
c00381f7:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c00381fa:	89 5a 0c             	mov    %ebx,0xc(%edx)
c00381fd:	89 53 08             	mov    %edx,0x8(%ebx)
c0038200:	89 cb                	mov    %ecx,%ebx
c0038202:	eb af                	jmp    c00381b3 <_realloc_r+0x163>
c0038204:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0038208:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c003820b:	83 e0 01             	and    $0x1,%eax
c003820e:	09 d8                	or     %ebx,%eax
c0038210:	89 46 04             	mov    %eax,0x4(%esi)
c0038213:	89 d0                	mov    %edx,%eax
c0038215:	8d 0c 1e             	lea    (%esi,%ebx,1),%ecx
c0038218:	83 c8 01             	or     $0x1,%eax
c003821b:	89 41 04             	mov    %eax,0x4(%ecx)
c003821e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0038221:	83 4c 11 04 01       	orl    $0x1,0x4(%ecx,%edx,1)
c0038226:	83 c1 08             	add    $0x8,%ecx
c0038229:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c003822d:	89 04 24             	mov    %eax,(%esp)
c0038230:	e8 2b fb ff ff       	call   c0037d60 <_free_r>
c0038235:	eb 93                	jmp    c00381ca <_realloc_r+0x17a>
c0038237:	90                   	nop
c0038238:	8b 45 e0             	mov    -0x20(%ebp),%eax
c003823b:	89 44 24 04          	mov    %eax,0x4(%esp)
c003823f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0038242:	89 04 24             	mov    %eax,(%esp)
c0038245:	e8 d6 d1 ff ff       	call   c0035420 <_malloc_r>
c003824a:	85 c0                	test   %eax,%eax
c003824c:	89 c1                	mov    %eax,%ecx
c003824e:	0f 84 65 03 00 00    	je     c00385b9 <_realloc_r+0x569>
c0038254:	8b 47 fc             	mov    -0x4(%edi),%eax
c0038257:	8d 51 f8             	lea    -0x8(%ecx),%edx
c003825a:	89 55 e0             	mov    %edx,-0x20(%ebp)
c003825d:	89 c2                	mov    %eax,%edx
c003825f:	83 e2 fe             	and    $0xfffffffe,%edx
c0038262:	01 f2                	add    %esi,%edx
c0038264:	39 55 e0             	cmp    %edx,-0x20(%ebp)
c0038267:	0f 84 63 02 00 00    	je     c00384d0 <_realloc_r+0x480>
c003826d:	83 eb 04             	sub    $0x4,%ebx
c0038270:	83 fb 24             	cmp    $0x24,%ebx
c0038273:	0f 87 6f 01 00 00    	ja     c00383e8 <_realloc_r+0x398>
c0038279:	83 fb 13             	cmp    $0x13,%ebx
c003827c:	0f 87 ee 00 00 00    	ja     c0038370 <_realloc_r+0x320>
c0038282:	89 c8                	mov    %ecx,%eax
c0038284:	89 fa                	mov    %edi,%edx
c0038286:	8b 1a                	mov    (%edx),%ebx
c0038288:	89 18                	mov    %ebx,(%eax)
c003828a:	8b 5a 04             	mov    0x4(%edx),%ebx
c003828d:	89 58 04             	mov    %ebx,0x4(%eax)
c0038290:	8b 52 08             	mov    0x8(%edx),%edx
c0038293:	89 50 08             	mov    %edx,0x8(%eax)
c0038296:	8b 75 e4             	mov    -0x1c(%ebp),%esi
c0038299:	89 7c 24 04          	mov    %edi,0x4(%esp)
c003829d:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c00382a0:	89 34 24             	mov    %esi,(%esp)
c00382a3:	e8 b8 fa ff ff       	call   c0037d60 <_free_r>
c00382a8:	89 34 24             	mov    %esi,(%esp)
c00382ab:	e8 60 d9 ff ff       	call   c0035c10 <__malloc_unlock>
c00382b0:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c00382b3:	83 c4 3c             	add    $0x3c,%esp
c00382b6:	5b                   	pop    %ebx
c00382b7:	5e                   	pop    %esi
c00382b8:	5f                   	pop    %edi
c00382b9:	89 c8                	mov    %ecx,%eax
c00382bb:	5d                   	pop    %ebp
c00382bc:	c3                   	ret    
c00382bd:	8d 76 00             	lea    0x0(%esi),%esi
c00382c0:	89 45 0c             	mov    %eax,0xc(%ebp)
c00382c3:	83 c4 3c             	add    $0x3c,%esp
c00382c6:	5b                   	pop    %ebx
c00382c7:	5e                   	pop    %esi
c00382c8:	5f                   	pop    %edi
c00382c9:	5d                   	pop    %ebp
c00382ca:	e9 51 d1 ff ff       	jmp    c0035420 <_malloc_r>
c00382cf:	90                   	nop
c00382d0:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c00382d3:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c00382d9:	31 c0                	xor    %eax,%eax
c00382db:	e9 f7 fe ff ff       	jmp    c00381d7 <_realloc_r+0x187>
c00382e0:	89 c2                	mov    %eax,%edx
c00382e2:	3b 55 d8             	cmp    -0x28(%ebp),%edx
c00382e5:	0f 8c 4d ff ff ff    	jl     c0038238 <_realloc_r+0x1e8>
c00382eb:	8b 71 08             	mov    0x8(%ecx),%esi
c00382ee:	83 eb 04             	sub    $0x4,%ebx
c00382f1:	8b 41 0c             	mov    0xc(%ecx),%eax
c00382f4:	83 fb 24             	cmp    $0x24,%ebx
c00382f7:	89 46 0c             	mov    %eax,0xc(%esi)
c00382fa:	89 70 08             	mov    %esi,0x8(%eax)
c00382fd:	8d 71 08             	lea    0x8(%ecx),%esi
c0038300:	0f 87 88 00 00 00    	ja     c003838e <_realloc_r+0x33e>
c0038306:	83 fb 13             	cmp    $0x13,%ebx
c0038309:	89 f0                	mov    %esi,%eax
c003830b:	76 1a                	jbe    c0038327 <_realloc_r+0x2d7>
c003830d:	8b 07                	mov    (%edi),%eax
c003830f:	83 fb 1b             	cmp    $0x1b,%ebx
c0038312:	89 41 08             	mov    %eax,0x8(%ecx)
c0038315:	8b 47 04             	mov    0x4(%edi),%eax
c0038318:	89 41 0c             	mov    %eax,0xc(%ecx)
c003831b:	0f 87 17 02 00 00    	ja     c0038538 <_realloc_r+0x4e8>
c0038321:	8d 41 10             	lea    0x10(%ecx),%eax
c0038324:	83 c7 08             	add    $0x8,%edi
c0038327:	8b 1f                	mov    (%edi),%ebx
c0038329:	89 18                	mov    %ebx,(%eax)
c003832b:	8b 5f 04             	mov    0x4(%edi),%ebx
c003832e:	89 58 04             	mov    %ebx,0x4(%eax)
c0038331:	8b 5f 08             	mov    0x8(%edi),%ebx
c0038334:	89 f7                	mov    %esi,%edi
c0038336:	89 ce                	mov    %ecx,%esi
c0038338:	89 58 08             	mov    %ebx,0x8(%eax)
c003833b:	89 d3                	mov    %edx,%ebx
c003833d:	8b 41 04             	mov    0x4(%ecx),%eax
c0038340:	e9 6e fe ff ff       	jmp    c00381b3 <_realloc_r+0x163>
c0038345:	8d 76 00             	lea    0x0(%esi),%esi
c0038348:	8b 45 cc             	mov    -0x34(%ebp),%eax
c003834b:	8b 55 dc             	mov    -0x24(%ebp),%edx
c003834e:	8b 48 04             	mov    0x4(%eax),%ecx
c0038351:	83 c2 10             	add    $0x10,%edx
c0038354:	89 4d d0             	mov    %ecx,-0x30(%ebp)
c0038357:	83 65 d0 fc          	andl   $0xfffffffc,-0x30(%ebp)
c003835b:	8b 4d d0             	mov    -0x30(%ebp),%ecx
c003835e:	01 d9                	add    %ebx,%ecx
c0038360:	39 d1                	cmp    %edx,%ecx
c0038362:	7d 54                	jge    c00383b8 <_realloc_r+0x368>
c0038364:	89 c2                	mov    %eax,%edx
c0038366:	e9 8a fd ff ff       	jmp    c00380f5 <_realloc_r+0xa5>
c003836b:	90                   	nop
c003836c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0038370:	8b 07                	mov    (%edi),%eax
c0038372:	83 fb 1b             	cmp    $0x1b,%ebx
c0038375:	89 01                	mov    %eax,(%ecx)
c0038377:	8b 47 04             	mov    0x4(%edi),%eax
c003837a:	89 41 04             	mov    %eax,0x4(%ecx)
c003837d:	0f 87 2d 01 00 00    	ja     c00384b0 <_realloc_r+0x460>
c0038383:	8d 41 08             	lea    0x8(%ecx),%eax
c0038386:	8d 57 08             	lea    0x8(%edi),%edx
c0038389:	e9 f8 fe ff ff       	jmp    c0038286 <_realloc_r+0x236>
c003838e:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0038392:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0038396:	89 f7                	mov    %esi,%edi
c0038398:	89 34 24             	mov    %esi,(%esp)
c003839b:	89 55 d8             	mov    %edx,-0x28(%ebp)
c003839e:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c00383a1:	e8 1a fc ff ff       	call   c0037fc0 <memmove>
c00383a6:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c00383a9:	8b 55 d8             	mov    -0x28(%ebp),%edx
c00383ac:	8b 41 04             	mov    0x4(%ecx),%eax
c00383af:	89 ce                	mov    %ecx,%esi
c00383b1:	89 d3                	mov    %edx,%ebx
c00383b3:	e9 fb fd ff ff       	jmp    c00381b3 <_realloc_r+0x163>
c00383b8:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c00383bb:	29 d9                	sub    %ebx,%ecx
c00383bd:	01 de                	add    %ebx,%esi
c00383bf:	83 c9 01             	or     $0x1,%ecx
c00383c2:	89 35 48 d5 03 c0    	mov    %esi,0xc003d548
c00383c8:	89 4e 04             	mov    %ecx,0x4(%esi)
c00383cb:	8b 47 fc             	mov    -0x4(%edi),%eax
c00383ce:	83 e0 01             	and    $0x1,%eax
c00383d1:	09 d8                	or     %ebx,%eax
c00383d3:	89 47 fc             	mov    %eax,-0x4(%edi)
c00383d6:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c00383d9:	89 04 24             	mov    %eax,(%esp)
c00383dc:	e8 2f d8 ff ff       	call   c0035c10 <__malloc_unlock>
c00383e1:	89 f8                	mov    %edi,%eax
c00383e3:	e9 ef fd ff ff       	jmp    c00381d7 <_realloc_r+0x187>
c00383e8:	89 0c 24             	mov    %ecx,(%esp)
c00383eb:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c00383ef:	89 7c 24 04          	mov    %edi,0x4(%esp)
c00383f3:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c00383f6:	e8 c5 fb ff ff       	call   c0037fc0 <memmove>
c00383fb:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c00383fe:	e9 93 fe ff ff       	jmp    c0038296 <_realloc_r+0x246>
c0038403:	90                   	nop
c0038404:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0038408:	8d 14 18             	lea    (%eax,%ebx,1),%edx
c003840b:	e9 d2 fe ff ff       	jmp    c00382e2 <_realloc_r+0x292>
c0038410:	8d 14 18             	lea    (%eax,%ebx,1),%edx
c0038413:	8b 45 d0             	mov    -0x30(%ebp),%eax
c0038416:	01 d0                	add    %edx,%eax
c0038418:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c003841b:	8b 45 dc             	mov    -0x24(%ebp),%eax
c003841e:	83 c0 10             	add    $0x10,%eax
c0038421:	39 45 d4             	cmp    %eax,-0x2c(%ebp)
c0038424:	0f 8c b8 fe ff ff    	jl     c00382e2 <_realloc_r+0x292>
c003842a:	8b 41 0c             	mov    0xc(%ecx),%eax
c003842d:	83 eb 04             	sub    $0x4,%ebx
c0038430:	8b 51 08             	mov    0x8(%ecx),%edx
c0038433:	83 fb 24             	cmp    $0x24,%ebx
c0038436:	8d 71 08             	lea    0x8(%ecx),%esi
c0038439:	89 42 0c             	mov    %eax,0xc(%edx)
c003843c:	89 50 08             	mov    %edx,0x8(%eax)
c003843f:	0f 87 3d 01 00 00    	ja     c0038582 <_realloc_r+0x532>
c0038445:	83 fb 13             	cmp    $0x13,%ebx
c0038448:	89 f0                	mov    %esi,%eax
c003844a:	76 1a                	jbe    c0038466 <_realloc_r+0x416>
c003844c:	8b 07                	mov    (%edi),%eax
c003844e:	83 fb 1b             	cmp    $0x1b,%ebx
c0038451:	89 41 08             	mov    %eax,0x8(%ecx)
c0038454:	8b 47 04             	mov    0x4(%edi),%eax
c0038457:	89 41 0c             	mov    %eax,0xc(%ecx)
c003845a:	0f 87 3d 01 00 00    	ja     c003859d <_realloc_r+0x54d>
c0038460:	8d 41 10             	lea    0x10(%ecx),%eax
c0038463:	83 c7 08             	add    $0x8,%edi
c0038466:	8b 17                	mov    (%edi),%edx
c0038468:	89 10                	mov    %edx,(%eax)
c003846a:	8b 57 04             	mov    0x4(%edi),%edx
c003846d:	89 50 04             	mov    %edx,0x4(%eax)
c0038470:	8b 57 08             	mov    0x8(%edi),%edx
c0038473:	89 50 08             	mov    %edx,0x8(%eax)
c0038476:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c0038479:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c003847c:	89 d8                	mov    %ebx,%eax
c003847e:	29 df                	sub    %ebx,%edi
c0038480:	01 c8                	add    %ecx,%eax
c0038482:	83 cf 01             	or     $0x1,%edi
c0038485:	a3 48 d5 03 c0       	mov    %eax,0xc003d548
c003848a:	89 78 04             	mov    %edi,0x4(%eax)
c003848d:	8b 41 04             	mov    0x4(%ecx),%eax
c0038490:	83 e0 01             	and    $0x1,%eax
c0038493:	09 d8                	or     %ebx,%eax
c0038495:	89 41 04             	mov    %eax,0x4(%ecx)
c0038498:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c003849b:	89 04 24             	mov    %eax,(%esp)
c003849e:	e8 6d d7 ff ff       	call   c0035c10 <__malloc_unlock>
c00384a3:	89 f0                	mov    %esi,%eax
c00384a5:	e9 2d fd ff ff       	jmp    c00381d7 <_realloc_r+0x187>
c00384aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00384b0:	8b 47 08             	mov    0x8(%edi),%eax
c00384b3:	83 fb 24             	cmp    $0x24,%ebx
c00384b6:	89 41 08             	mov    %eax,0x8(%ecx)
c00384b9:	8b 47 0c             	mov    0xc(%edi),%eax
c00384bc:	89 41 0c             	mov    %eax,0xc(%ecx)
c00384bf:	74 60                	je     c0038521 <_realloc_r+0x4d1>
c00384c1:	8d 41 10             	lea    0x10(%ecx),%eax
c00384c4:	8d 57 10             	lea    0x10(%edi),%edx
c00384c7:	e9 ba fd ff ff       	jmp    c0038286 <_realloc_r+0x236>
c00384cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00384d0:	8b 51 fc             	mov    -0x4(%ecx),%edx
c00384d3:	83 e2 fc             	and    $0xfffffffc,%edx
c00384d6:	01 d3                	add    %edx,%ebx
c00384d8:	e9 d6 fc ff ff       	jmp    c00381b3 <_realloc_r+0x163>
c00384dd:	8d 76 00             	lea    0x0(%esi),%esi
c00384e0:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c00384e4:	89 7c 24 04          	mov    %edi,0x4(%esp)
c00384e8:	89 f7                	mov    %esi,%edi
c00384ea:	89 34 24             	mov    %esi,(%esp)
c00384ed:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c00384f0:	e8 cb fa ff ff       	call   c0037fc0 <memmove>
c00384f5:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c00384f8:	8b 5d d0             	mov    -0x30(%ebp),%ebx
c00384fb:	8b 41 04             	mov    0x4(%ecx),%eax
c00384fe:	89 ce                	mov    %ecx,%esi
c0038500:	e9 ae fc ff ff       	jmp    c00381b3 <_realloc_r+0x163>
c0038505:	8b 47 08             	mov    0x8(%edi),%eax
c0038508:	83 fb 24             	cmp    $0x24,%ebx
c003850b:	89 41 10             	mov    %eax,0x10(%ecx)
c003850e:	8b 47 0c             	mov    0xc(%edi),%eax
c0038511:	89 41 14             	mov    %eax,0x14(%ecx)
c0038514:	74 3e                	je     c0038554 <_realloc_r+0x504>
c0038516:	8d 41 18             	lea    0x18(%ecx),%eax
c0038519:	83 c7 10             	add    $0x10,%edi
c003851c:	e9 5b fc ff ff       	jmp    c003817c <_realloc_r+0x12c>
c0038521:	8b 47 10             	mov    0x10(%edi),%eax
c0038524:	8d 57 18             	lea    0x18(%edi),%edx
c0038527:	89 41 10             	mov    %eax,0x10(%ecx)
c003852a:	8b 5f 14             	mov    0x14(%edi),%ebx
c003852d:	8d 41 18             	lea    0x18(%ecx),%eax
c0038530:	89 59 14             	mov    %ebx,0x14(%ecx)
c0038533:	e9 4e fd ff ff       	jmp    c0038286 <_realloc_r+0x236>
c0038538:	8b 47 08             	mov    0x8(%edi),%eax
c003853b:	83 fb 24             	cmp    $0x24,%ebx
c003853e:	89 41 10             	mov    %eax,0x10(%ecx)
c0038541:	8b 47 0c             	mov    0xc(%edi),%eax
c0038544:	89 41 14             	mov    %eax,0x14(%ecx)
c0038547:	74 22                	je     c003856b <_realloc_r+0x51b>
c0038549:	8d 41 18             	lea    0x18(%ecx),%eax
c003854c:	83 c7 10             	add    $0x10,%edi
c003854f:	e9 d3 fd ff ff       	jmp    c0038327 <_realloc_r+0x2d7>
c0038554:	8b 47 10             	mov    0x10(%edi),%eax
c0038557:	83 c7 18             	add    $0x18,%edi
c003855a:	89 41 18             	mov    %eax,0x18(%ecx)
c003855d:	8b 57 fc             	mov    -0x4(%edi),%edx
c0038560:	8d 41 20             	lea    0x20(%ecx),%eax
c0038563:	89 51 1c             	mov    %edx,0x1c(%ecx)
c0038566:	e9 11 fc ff ff       	jmp    c003817c <_realloc_r+0x12c>
c003856b:	8b 47 10             	mov    0x10(%edi),%eax
c003856e:	83 c7 18             	add    $0x18,%edi
c0038571:	89 41 18             	mov    %eax,0x18(%ecx)
c0038574:	8b 5f fc             	mov    -0x4(%edi),%ebx
c0038577:	8d 41 20             	lea    0x20(%ecx),%eax
c003857a:	89 59 1c             	mov    %ebx,0x1c(%ecx)
c003857d:	e9 a5 fd ff ff       	jmp    c0038327 <_realloc_r+0x2d7>
c0038582:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0038586:	89 7c 24 04          	mov    %edi,0x4(%esp)
c003858a:	89 34 24             	mov    %esi,(%esp)
c003858d:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0038590:	e8 2b fa ff ff       	call   c0037fc0 <memmove>
c0038595:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0038598:	e9 d9 fe ff ff       	jmp    c0038476 <_realloc_r+0x426>
c003859d:	8b 47 08             	mov    0x8(%edi),%eax
c00385a0:	83 fb 24             	cmp    $0x24,%ebx
c00385a3:	89 41 10             	mov    %eax,0x10(%ecx)
c00385a6:	8b 47 0c             	mov    0xc(%edi),%eax
c00385a9:	89 41 14             	mov    %eax,0x14(%ecx)
c00385ac:	74 1d                	je     c00385cb <_realloc_r+0x57b>
c00385ae:	8d 41 18             	lea    0x18(%ecx),%eax
c00385b1:	83 c7 10             	add    $0x10,%edi
c00385b4:	e9 ad fe ff ff       	jmp    c0038466 <_realloc_r+0x416>
c00385b9:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c00385bc:	89 04 24             	mov    %eax,(%esp)
c00385bf:	e8 4c d6 ff ff       	call   c0035c10 <__malloc_unlock>
c00385c4:	31 c0                	xor    %eax,%eax
c00385c6:	e9 0c fc ff ff       	jmp    c00381d7 <_realloc_r+0x187>
c00385cb:	8b 47 10             	mov    0x10(%edi),%eax
c00385ce:	83 c7 18             	add    $0x18,%edi
c00385d1:	89 41 18             	mov    %eax,0x18(%ecx)
c00385d4:	8b 57 fc             	mov    -0x4(%edi),%edx
c00385d7:	8d 41 20             	lea    0x20(%ecx),%eax
c00385da:	89 51 1c             	mov    %edx,0x1c(%ecx)
c00385dd:	e9 84 fe ff ff       	jmp    c0038466 <_realloc_r+0x416>
c00385e2:	66 90                	xchg   %ax,%ax
c00385e4:	66 90                	xchg   %ax,%ax
c00385e6:	66 90                	xchg   %ax,%ax
c00385e8:	66 90                	xchg   %ax,%ax
c00385ea:	66 90                	xchg   %ax,%ax
c00385ec:	66 90                	xchg   %ax,%ax
c00385ee:	66 90                	xchg   %ax,%ax

c00385f0 <cleanup_glue>:
c00385f0:	55                   	push   %ebp
c00385f1:	89 e5                	mov    %esp,%ebp
c00385f3:	56                   	push   %esi
c00385f4:	53                   	push   %ebx
c00385f5:	83 ec 10             	sub    $0x10,%esp
c00385f8:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c00385fb:	8b 75 08             	mov    0x8(%ebp),%esi
c00385fe:	8b 03                	mov    (%ebx),%eax
c0038600:	85 c0                	test   %eax,%eax
c0038602:	74 0c                	je     c0038610 <cleanup_glue+0x20>
c0038604:	89 44 24 04          	mov    %eax,0x4(%esp)
c0038608:	89 34 24             	mov    %esi,(%esp)
c003860b:	e8 e0 ff ff ff       	call   c00385f0 <cleanup_glue>
c0038610:	89 5d 0c             	mov    %ebx,0xc(%ebp)
c0038613:	89 75 08             	mov    %esi,0x8(%ebp)
c0038616:	83 c4 10             	add    $0x10,%esp
c0038619:	5b                   	pop    %ebx
c003861a:	5e                   	pop    %esi
c003861b:	5d                   	pop    %ebp
c003861c:	e9 3f f7 ff ff       	jmp    c0037d60 <_free_r>
c0038621:	eb 0d                	jmp    c0038630 <_reclaim_reent>
c0038623:	90                   	nop
c0038624:	90                   	nop
c0038625:	90                   	nop
c0038626:	90                   	nop
c0038627:	90                   	nop
c0038628:	90                   	nop
c0038629:	90                   	nop
c003862a:	90                   	nop
c003862b:	90                   	nop
c003862c:	90                   	nop
c003862d:	90                   	nop
c003862e:	90                   	nop
c003862f:	90                   	nop

c0038630 <_reclaim_reent>:
c0038630:	55                   	push   %ebp
c0038631:	89 e5                	mov    %esp,%ebp
c0038633:	57                   	push   %edi
c0038634:	56                   	push   %esi
c0038635:	53                   	push   %ebx
c0038636:	83 ec 1c             	sub    $0x1c,%esp
c0038639:	8b 5d 08             	mov    0x8(%ebp),%ebx
c003863c:	3b 1d 40 d0 03 c0    	cmp    0xc003d040,%ebx
c0038642:	0f 84 a6 00 00 00    	je     c00386ee <_reclaim_reent+0xbe>
c0038648:	8b 53 4c             	mov    0x4c(%ebx),%edx
c003864b:	85 d2                	test   %edx,%edx
c003864d:	74 46                	je     c0038695 <_reclaim_reent+0x65>
c003864f:	31 c0                	xor    %eax,%eax
c0038651:	31 f6                	xor    %esi,%esi
c0038653:	90                   	nop
c0038654:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0038658:	8b 04 82             	mov    (%edx,%eax,4),%eax
c003865b:	85 c0                	test   %eax,%eax
c003865d:	75 0b                	jne    c003866a <_reclaim_reent+0x3a>
c003865f:	eb 1e                	jmp    c003867f <_reclaim_reent+0x4f>
c0038661:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0038668:	89 f8                	mov    %edi,%eax
c003866a:	8b 38                	mov    (%eax),%edi
c003866c:	89 44 24 04          	mov    %eax,0x4(%esp)
c0038670:	89 1c 24             	mov    %ebx,(%esp)
c0038673:	e8 e8 f6 ff ff       	call   c0037d60 <_free_r>
c0038678:	85 ff                	test   %edi,%edi
c003867a:	75 ec                	jne    c0038668 <_reclaim_reent+0x38>
c003867c:	8b 53 4c             	mov    0x4c(%ebx),%edx
c003867f:	83 c6 01             	add    $0x1,%esi
c0038682:	83 fe 20             	cmp    $0x20,%esi
c0038685:	89 f0                	mov    %esi,%eax
c0038687:	75 cf                	jne    c0038658 <_reclaim_reent+0x28>
c0038689:	89 54 24 04          	mov    %edx,0x4(%esp)
c003868d:	89 1c 24             	mov    %ebx,(%esp)
c0038690:	e8 cb f6 ff ff       	call   c0037d60 <_free_r>
c0038695:	8b 43 40             	mov    0x40(%ebx),%eax
c0038698:	85 c0                	test   %eax,%eax
c003869a:	74 0c                	je     c00386a8 <_reclaim_reent+0x78>
c003869c:	89 44 24 04          	mov    %eax,0x4(%esp)
c00386a0:	89 1c 24             	mov    %ebx,(%esp)
c00386a3:	e8 b8 f6 ff ff       	call   c0037d60 <_free_r>
c00386a8:	8b 83 48 01 00 00    	mov    0x148(%ebx),%eax
c00386ae:	85 c0                	test   %eax,%eax
c00386b0:	74 22                	je     c00386d4 <_reclaim_reent+0xa4>
c00386b2:	8d b3 4c 01 00 00    	lea    0x14c(%ebx),%esi
c00386b8:	39 f0                	cmp    %esi,%eax
c00386ba:	75 06                	jne    c00386c2 <_reclaim_reent+0x92>
c00386bc:	eb 16                	jmp    c00386d4 <_reclaim_reent+0xa4>
c00386be:	66 90                	xchg   %ax,%ax
c00386c0:	89 f8                	mov    %edi,%eax
c00386c2:	8b 38                	mov    (%eax),%edi
c00386c4:	89 44 24 04          	mov    %eax,0x4(%esp)
c00386c8:	89 1c 24             	mov    %ebx,(%esp)
c00386cb:	e8 90 f6 ff ff       	call   c0037d60 <_free_r>
c00386d0:	39 fe                	cmp    %edi,%esi
c00386d2:	75 ec                	jne    c00386c0 <_reclaim_reent+0x90>
c00386d4:	8b 43 54             	mov    0x54(%ebx),%eax
c00386d7:	85 c0                	test   %eax,%eax
c00386d9:	74 0c                	je     c00386e7 <_reclaim_reent+0xb7>
c00386db:	89 44 24 04          	mov    %eax,0x4(%esp)
c00386df:	89 1c 24             	mov    %ebx,(%esp)
c00386e2:	e8 79 f6 ff ff       	call   c0037d60 <_free_r>
c00386e7:	8b 43 38             	mov    0x38(%ebx),%eax
c00386ea:	85 c0                	test   %eax,%eax
c00386ec:	75 08                	jne    c00386f6 <_reclaim_reent+0xc6>
c00386ee:	83 c4 1c             	add    $0x1c,%esp
c00386f1:	5b                   	pop    %ebx
c00386f2:	5e                   	pop    %esi
c00386f3:	5f                   	pop    %edi
c00386f4:	5d                   	pop    %ebp
c00386f5:	c3                   	ret    
c00386f6:	89 1c 24             	mov    %ebx,(%esp)
c00386f9:	ff 53 3c             	call   *0x3c(%ebx)
c00386fc:	8b 83 e0 02 00 00    	mov    0x2e0(%ebx),%eax
c0038702:	85 c0                	test   %eax,%eax
c0038704:	74 e8                	je     c00386ee <_reclaim_reent+0xbe>
c0038706:	89 1c 24             	mov    %ebx,(%esp)
c0038709:	89 44 24 04          	mov    %eax,0x4(%esp)
c003870d:	e8 de fe ff ff       	call   c00385f0 <cleanup_glue>
c0038712:	83 c4 1c             	add    $0x1c,%esp
c0038715:	5b                   	pop    %ebx
c0038716:	5e                   	pop    %esi
c0038717:	5f                   	pop    %edi
c0038718:	5d                   	pop    %ebp
c0038719:	c3                   	ret    
