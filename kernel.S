
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
c003002f:	e9 a3 13 00 00       	jmp    c00313d7 <init>

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
c00300d5:	e8 4b 10 00 00       	call   c0031125 <irq_handle>
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
c0030495:	e8 0d 03 00 00       	call   c00307a7 <clear_ide_intr>
c003049a:	83 ec 0c             	sub    $0xc,%esp
c003049d:	ff 75 0c             	pushl  0xc(%ebp)
c00304a0:	e8 11 ff ff ff       	call   c00303b6 <ide_prepare>
c00304a5:	83 c4 10             	add    $0x10,%esp
c00304a8:	e8 98 ff ff ff       	call   c0030445 <issue_read>
c00304ad:	e8 0f 03 00 00       	call   c00307c1 <wait_ide_intr>
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
c003071a:	8d 83 74 c0 ff ff    	lea    -0x3f8c(%ebx),%eax
c0030720:	50                   	push   %eax
c0030721:	6a 27                	push   $0x27
c0030723:	8d 83 00 c0 ff ff    	lea    -0x4000(%ebx),%eax
c0030729:	50                   	push   %eax
c003072a:	8d 83 18 c0 ff ff    	lea    -0x3fe8(%ebx),%eax
c0030730:	50                   	push   %eax
c0030731:	e8 7d 0b 00 00       	call   c00312b3 <printk>
c0030736:	83 c4 10             	add    $0x10,%esp
c0030739:	8b 83 04 14 01 00    	mov    0x11404(%ebx),%eax
c003073f:	40                   	inc    %eax
c0030740:	89 83 04 14 01 00    	mov    %eax,0x11404(%ebx)
c0030746:	8b 83 04 14 01 00    	mov    0x11404(%ebx),%eax
c003074c:	83 f8 64             	cmp    $0x64,%eax
c003074f:	75 0f                	jne    c0030760 <ide_writeback+0x58>
c0030751:	e8 cf f9 ff ff       	call   c0030125 <cache_writeback>
c0030756:	c7 83 04 14 01 00 00 	movl   $0x0,0x11404(%ebx)
c003075d:	00 00 00 
c0030760:	90                   	nop
c0030761:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030764:	c9                   	leave  
c0030765:	c3                   	ret    

c0030766 <ide_intr>:
c0030766:	55                   	push   %ebp
c0030767:	89 e5                	mov    %esp,%ebp
c0030769:	53                   	push   %ebx
c003076a:	83 ec 04             	sub    $0x4,%esp
c003076d:	e8 81 fb ff ff       	call   c00302f3 <__x86.get_pc_thunk.bx>
c0030772:	81 c3 8e c8 00 00    	add    $0xc88e,%ebx
c0030778:	8d 83 84 c0 ff ff    	lea    -0x3f7c(%ebx),%eax
c003077e:	50                   	push   %eax
c003077f:	6a 36                	push   $0x36
c0030781:	8d 83 00 c0 ff ff    	lea    -0x4000(%ebx),%eax
c0030787:	50                   	push   %eax
c0030788:	8d 83 48 c0 ff ff    	lea    -0x3fb8(%ebx),%eax
c003078e:	50                   	push   %eax
c003078f:	e8 1f 0b 00 00       	call   c00312b3 <printk>
c0030794:	83 c4 10             	add    $0x10,%esp
c0030797:	c7 83 00 14 01 00 01 	movl   $0x1,0x11400(%ebx)
c003079e:	00 00 00 
c00307a1:	90                   	nop
c00307a2:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00307a5:	c9                   	leave  
c00307a6:	c3                   	ret    

c00307a7 <clear_ide_intr>:
c00307a7:	55                   	push   %ebp
c00307a8:	89 e5                	mov    %esp,%ebp
c00307aa:	e8 3c fb ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c00307af:	05 51 c8 00 00       	add    $0xc851,%eax
c00307b4:	c7 80 00 14 01 00 00 	movl   $0x0,0x11400(%eax)
c00307bb:	00 00 00 
c00307be:	90                   	nop
c00307bf:	5d                   	pop    %ebp
c00307c0:	c3                   	ret    

c00307c1 <wait_ide_intr>:
c00307c1:	55                   	push   %ebp
c00307c2:	89 e5                	mov    %esp,%ebp
c00307c4:	53                   	push   %ebx
c00307c5:	e8 29 fb ff ff       	call   c00302f3 <__x86.get_pc_thunk.bx>
c00307ca:	81 c3 36 c8 00 00    	add    $0xc836,%ebx
c00307d0:	eb 05                	jmp    c00307d7 <wait_ide_intr+0x16>
c00307d2:	e8 84 fe ff ff       	call   c003065b <wait_intr>
c00307d7:	8b 83 00 14 01 00    	mov    0x11400(%ebx),%eax
c00307dd:	85 c0                	test   %eax,%eax
c00307df:	74 f1                	je     c00307d2 <wait_ide_intr+0x11>
c00307e1:	e8 c1 ff ff ff       	call   c00307a7 <clear_ide_intr>
c00307e6:	90                   	nop
c00307e7:	5b                   	pop    %ebx
c00307e8:	5d                   	pop    %ebp
c00307e9:	c3                   	ret    

c00307ea <init_ide>:
c00307ea:	55                   	push   %ebp
c00307eb:	89 e5                	mov    %esp,%ebp
c00307ed:	53                   	push   %ebx
c00307ee:	83 ec 04             	sub    $0x4,%esp
c00307f1:	e8 fd fa ff ff       	call   c00302f3 <__x86.get_pc_thunk.bx>
c00307f6:	81 c3 0a c8 00 00    	add    $0xc80a,%ebx
c00307fc:	e8 e1 f8 ff ff       	call   c00300e2 <cache_init>
c0030801:	83 ec 08             	sub    $0x8,%esp
c0030804:	8d 83 08 37 ff ff    	lea    -0xc8f8(%ebx),%eax
c003080a:	50                   	push   %eax
c003080b:	6a 00                	push   $0x0
c003080d:	e8 46 08 00 00       	call   c0031058 <add_irq_handle>
c0030812:	83 c4 10             	add    $0x10,%esp
c0030815:	83 ec 08             	sub    $0x8,%esp
c0030818:	8d 83 66 37 ff ff    	lea    -0xc89a(%ebx),%eax
c003081e:	50                   	push   %eax
c003081f:	6a 0e                	push   $0xe
c0030821:	e8 32 08 00 00       	call   c0031058 <add_irq_handle>
c0030826:	83 c4 10             	add    $0x10,%esp
c0030829:	90                   	nop
c003082a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003082d:	c9                   	leave  
c003082e:	c3                   	ret    

c003082f <write_cr3>:
c003082f:	55                   	push   %ebp
c0030830:	89 e5                	mov    %esp,%ebp
c0030832:	e8 b4 fa ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c0030837:	05 c9 c7 00 00       	add    $0xc7c9,%eax
c003083c:	8b 45 08             	mov    0x8(%ebp),%eax
c003083f:	0f 22 d8             	mov    %eax,%cr3
c0030842:	90                   	nop
c0030843:	5d                   	pop    %ebp
c0030844:	c3                   	ret    

c0030845 <loader>:
c0030845:	55                   	push   %ebp
c0030846:	89 e5                	mov    %esp,%ebp
c0030848:	53                   	push   %ebx
c0030849:	81 ec 24 10 00 00    	sub    $0x1024,%esp
c003084f:	e8 9f fa ff ff       	call   c00302f3 <__x86.get_pc_thunk.bx>
c0030854:	81 c3 ac c7 00 00    	add    $0xc7ac,%ebx
c003085a:	83 ec 04             	sub    $0x4,%esp
c003085d:	68 00 10 00 00       	push   $0x1000
c0030862:	6a 00                	push   $0x0
c0030864:	8d 85 e8 ef ff ff    	lea    -0x1018(%ebp),%eax
c003086a:	50                   	push   %eax
c003086b:	e8 fc fd ff ff       	call   c003066c <ide_read>
c0030870:	83 c4 10             	add    $0x10,%esp
c0030873:	8d 85 e8 ef ff ff    	lea    -0x1018(%ebp),%eax
c0030879:	89 45 f0             	mov    %eax,-0x10(%ebp)
c003087c:	8d 83 dc c0 ff ff    	lea    -0x3f24(%ebx),%eax
c0030882:	50                   	push   %eax
c0030883:	6a 1c                	push   $0x1c
c0030885:	8d 83 90 c0 ff ff    	lea    -0x3f70(%ebx),%eax
c003088b:	50                   	push   %eax
c003088c:	8d 83 a0 c0 ff ff    	lea    -0x3f60(%ebx),%eax
c0030892:	50                   	push   %eax
c0030893:	e8 1b 0a 00 00       	call   c00312b3 <printk>
c0030898:	83 c4 10             	add    $0x10,%esp
c003089b:	8b 45 f0             	mov    -0x10(%ebp),%eax
c003089e:	8b 50 1c             	mov    0x1c(%eax),%edx
c00308a1:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00308a4:	01 d0                	add    %edx,%eax
c00308a6:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00308a9:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00308ac:	8b 40 2c             	mov    0x2c(%eax),%eax
c00308af:	0f b7 c0             	movzwl %ax,%eax
c00308b2:	c1 e0 05             	shl    $0x5,%eax
c00308b5:	89 c2                	mov    %eax,%edx
c00308b7:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00308ba:	01 d0                	add    %edx,%eax
c00308bc:	89 45 ec             	mov    %eax,-0x14(%ebp)
c00308bf:	e9 ba 00 00 00       	jmp    c003097e <loader+0x139>
c00308c4:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00308c7:	8b 00                	mov    (%eax),%eax
c00308c9:	83 f8 01             	cmp    $0x1,%eax
c00308cc:	0f 85 a8 00 00 00    	jne    c003097a <loader+0x135>
c00308d2:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00308d5:	8b 40 14             	mov    0x14(%eax),%eax
c00308d8:	89 c2                	mov    %eax,%edx
c00308da:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00308dd:	8b 40 08             	mov    0x8(%eax),%eax
c00308e0:	83 ec 08             	sub    $0x8,%esp
c00308e3:	52                   	push   %edx
c00308e4:	50                   	push   %eax
c00308e5:	e8 16 13 00 00       	call   c0031c00 <mm_malloc>
c00308ea:	83 c4 10             	add    $0x10,%esp
c00308ed:	89 c2                	mov    %eax,%edx
c00308ef:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00308f2:	89 50 08             	mov    %edx,0x8(%eax)
c00308f5:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00308f8:	8b 50 14             	mov    0x14(%eax),%edx
c00308fb:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00308fe:	8b 40 04             	mov    0x4(%eax),%eax
c0030901:	8b 4d f4             	mov    -0xc(%ebp),%ecx
c0030904:	8b 49 08             	mov    0x8(%ecx),%ecx
c0030907:	83 ec 04             	sub    $0x4,%esp
c003090a:	52                   	push   %edx
c003090b:	50                   	push   %eax
c003090c:	51                   	push   %ecx
c003090d:	e8 5a fd ff ff       	call   c003066c <ide_read>
c0030912:	83 c4 10             	add    $0x10,%esp
c0030915:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030918:	8b 50 14             	mov    0x14(%eax),%edx
c003091b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003091e:	8b 40 10             	mov    0x10(%eax),%eax
c0030921:	39 c2                	cmp    %eax,%edx
c0030923:	76 2b                	jbe    c0030950 <loader+0x10b>
c0030925:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030928:	8b 50 14             	mov    0x14(%eax),%edx
c003092b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003092e:	8b 40 10             	mov    0x10(%eax),%eax
c0030931:	29 c2                	sub    %eax,%edx
c0030933:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030936:	8b 48 10             	mov    0x10(%eax),%ecx
c0030939:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003093c:	8b 40 08             	mov    0x8(%eax),%eax
c003093f:	01 c8                	add    %ecx,%eax
c0030941:	83 ec 04             	sub    $0x4,%esp
c0030944:	52                   	push   %edx
c0030945:	6a 00                	push   $0x0
c0030947:	50                   	push   %eax
c0030948:	e8 8f 15 00 00       	call   c0031edc <memset>
c003094d:	83 c4 10             	add    $0x10,%esp
c0030950:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030953:	8b 50 08             	mov    0x8(%eax),%edx
c0030956:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030959:	8b 40 14             	mov    0x14(%eax),%eax
c003095c:	01 d0                	add    %edx,%eax
c003095e:	48                   	dec    %eax
c003095f:	89 45 e8             	mov    %eax,-0x18(%ebp)
c0030962:	c7 c0 a8 ee 04 c0    	mov    $0xc004eea8,%eax
c0030968:	8b 00                	mov    (%eax),%eax
c003096a:	39 45 e8             	cmp    %eax,-0x18(%ebp)
c003096d:	76 0b                	jbe    c003097a <loader+0x135>
c003096f:	c7 c0 a8 ee 04 c0    	mov    $0xc004eea8,%eax
c0030975:	8b 55 e8             	mov    -0x18(%ebp),%edx
c0030978:	89 10                	mov    %edx,(%eax)
c003097a:	83 45 f4 20          	addl   $0x20,-0xc(%ebp)
c003097e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030981:	3b 45 ec             	cmp    -0x14(%ebp),%eax
c0030984:	0f 82 3a ff ff ff    	jb     c00308c4 <loader+0x7f>
c003098a:	8b 45 f0             	mov    -0x10(%ebp),%eax
c003098d:	8b 40 18             	mov    0x18(%eax),%eax
c0030990:	89 85 e4 ef ff ff    	mov    %eax,-0x101c(%ebp)
c0030996:	83 ec 08             	sub    $0x8,%esp
c0030999:	68 00 00 10 00       	push   $0x100000
c003099e:	68 00 00 f0 bf       	push   $0xbff00000
c00309a3:	e8 58 12 00 00       	call   c0031c00 <mm_malloc>
c00309a8:	83 c4 10             	add    $0x10,%esp
c00309ab:	e8 bc 0d 00 00       	call   c003176c <get_ucr3>
c00309b0:	83 ec 0c             	sub    $0xc,%esp
c00309b3:	50                   	push   %eax
c00309b4:	e8 76 fe ff ff       	call   c003082f <write_cr3>
c00309b9:	83 c4 10             	add    $0x10,%esp
c00309bc:	8b 85 e4 ef ff ff    	mov    -0x101c(%ebp),%eax
c00309c2:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00309c5:	c9                   	leave  
c00309c6:	c3                   	ret    

c00309c7 <fs_open>:
c00309c7:	55                   	push   %ebp
c00309c8:	89 e5                	mov    %esp,%ebp
c00309ca:	53                   	push   %ebx
c00309cb:	83 ec 04             	sub    $0x4,%esp
c00309ce:	e8 18 f9 ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c00309d3:	05 2d c6 00 00       	add    $0xc62d,%eax
c00309d8:	8d 90 80 c3 ff ff    	lea    -0x3c80(%eax),%edx
c00309de:	52                   	push   %edx
c00309df:	6a 28                	push   $0x28
c00309e1:	8d 90 b7 c1 ff ff    	lea    -0x3e49(%eax),%edx
c00309e7:	52                   	push   %edx
c00309e8:	8d 90 c4 c1 ff ff    	lea    -0x3e3c(%eax),%edx
c00309ee:	52                   	push   %edx
c00309ef:	89 c3                	mov    %eax,%ebx
c00309f1:	e8 bd 08 00 00       	call   c00312b3 <printk>
c00309f6:	83 c4 10             	add    $0x10,%esp
c00309f9:	b8 01 00 00 00       	mov    $0x1,%eax
c00309fe:	82                   	nemu_trap 
c00309ff:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0030a04:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030a07:	c9                   	leave  
c0030a08:	c3                   	ret    

c0030a09 <fs_read>:
c0030a09:	55                   	push   %ebp
c0030a0a:	89 e5                	mov    %esp,%ebp
c0030a0c:	53                   	push   %ebx
c0030a0d:	83 ec 04             	sub    $0x4,%esp
c0030a10:	e8 de f8 ff ff       	call   c00302f3 <__x86.get_pc_thunk.bx>
c0030a15:	81 c3 eb c5 00 00    	add    $0xc5eb,%ebx
c0030a1b:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
c0030a1f:	7f 2f                	jg     c0030a50 <fs_read+0x47>
c0030a21:	83 ec 0c             	sub    $0xc,%esp
c0030a24:	8d 83 1a c2 ff ff    	lea    -0x3de6(%ebx),%eax
c0030a2a:	50                   	push   %eax
c0030a2b:	8d 83 88 c3 ff ff    	lea    -0x3c78(%ebx),%eax
c0030a31:	50                   	push   %eax
c0030a32:	6a 2e                	push   $0x2e
c0030a34:	8d 83 b7 c1 ff ff    	lea    -0x3e49(%ebx),%eax
c0030a3a:	50                   	push   %eax
c0030a3b:	8d 83 24 c2 ff ff    	lea    -0x3ddc(%ebx),%eax
c0030a41:	50                   	push   %eax
c0030a42:	e8 6c 08 00 00       	call   c00312b3 <printk>
c0030a47:	83 c4 20             	add    $0x20,%esp
c0030a4a:	b8 01 00 00 00       	mov    $0x1,%eax
c0030a4f:	82                   	nemu_trap 
c0030a50:	8d 83 88 c3 ff ff    	lea    -0x3c78(%ebx),%eax
c0030a56:	50                   	push   %eax
c0030a57:	6a 2f                	push   $0x2f
c0030a59:	8d 83 b7 c1 ff ff    	lea    -0x3e49(%ebx),%eax
c0030a5f:	50                   	push   %eax
c0030a60:	8d 83 70 c2 ff ff    	lea    -0x3d90(%ebx),%eax
c0030a66:	50                   	push   %eax
c0030a67:	e8 47 08 00 00       	call   c00312b3 <printk>
c0030a6c:	83 c4 10             	add    $0x10,%esp
c0030a6f:	b8 01 00 00 00       	mov    $0x1,%eax
c0030a74:	82                   	nemu_trap 
c0030a75:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0030a7a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030a7d:	c9                   	leave  
c0030a7e:	c3                   	ret    

c0030a7f <fs_write>:
c0030a7f:	55                   	push   %ebp
c0030a80:	89 e5                	mov    %esp,%ebp
c0030a82:	53                   	push   %ebx
c0030a83:	83 ec 14             	sub    $0x14,%esp
c0030a86:	e8 68 f8 ff ff       	call   c00302f3 <__x86.get_pc_thunk.bx>
c0030a8b:	81 c3 75 c5 00 00    	add    $0xc575,%ebx
c0030a91:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
c0030a95:	7e 2f                	jle    c0030ac6 <fs_write+0x47>
c0030a97:	83 ec 0c             	sub    $0xc,%esp
c0030a9a:	8d 83 c6 c2 ff ff    	lea    -0x3d3a(%ebx),%eax
c0030aa0:	50                   	push   %eax
c0030aa1:	8d 83 90 c3 ff ff    	lea    -0x3c70(%ebx),%eax
c0030aa7:	50                   	push   %eax
c0030aa8:	6a 35                	push   $0x35
c0030aaa:	8d 83 b7 c1 ff ff    	lea    -0x3e49(%ebx),%eax
c0030ab0:	50                   	push   %eax
c0030ab1:	8d 83 24 c2 ff ff    	lea    -0x3ddc(%ebx),%eax
c0030ab7:	50                   	push   %eax
c0030ab8:	e8 f6 07 00 00       	call   c00312b3 <printk>
c0030abd:	83 c4 20             	add    $0x20,%esp
c0030ac0:	b8 01 00 00 00       	mov    $0x1,%eax
c0030ac5:	82                   	nemu_trap 
c0030ac6:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0030acd:	eb 1c                	jmp    c0030aeb <fs_write+0x6c>
c0030acf:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0030ad2:	8b 45 0c             	mov    0xc(%ebp),%eax
c0030ad5:	01 d0                	add    %edx,%eax
c0030ad7:	8a 00                	mov    (%eax),%al
c0030ad9:	0f be c0             	movsbl %al,%eax
c0030adc:	83 ec 0c             	sub    $0xc,%esp
c0030adf:	50                   	push   %eax
c0030ae0:	e8 aa 08 00 00       	call   c003138f <serial_printc>
c0030ae5:	83 c4 10             	add    $0x10,%esp
c0030ae8:	ff 45 f4             	incl   -0xc(%ebp)
c0030aeb:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030aee:	39 45 10             	cmp    %eax,0x10(%ebp)
c0030af1:	77 dc                	ja     c0030acf <fs_write+0x50>
c0030af3:	8b 45 10             	mov    0x10(%ebp),%eax
c0030af6:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030af9:	c9                   	leave  
c0030afa:	c3                   	ret    

c0030afb <fs_lseek>:
c0030afb:	55                   	push   %ebp
c0030afc:	89 e5                	mov    %esp,%ebp
c0030afe:	53                   	push   %ebx
c0030aff:	83 ec 04             	sub    $0x4,%esp
c0030b02:	e8 e4 f7 ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c0030b07:	05 f9 c4 00 00       	add    $0xc4f9,%eax
c0030b0c:	8d 90 9c c3 ff ff    	lea    -0x3c64(%eax),%edx
c0030b12:	52                   	push   %edx
c0030b13:	6a 48                	push   $0x48
c0030b15:	8d 90 b7 c1 ff ff    	lea    -0x3e49(%eax),%edx
c0030b1b:	52                   	push   %edx
c0030b1c:	8d 90 d0 c2 ff ff    	lea    -0x3d30(%eax),%edx
c0030b22:	52                   	push   %edx
c0030b23:	89 c3                	mov    %eax,%ebx
c0030b25:	e8 89 07 00 00       	call   c00312b3 <printk>
c0030b2a:	83 c4 10             	add    $0x10,%esp
c0030b2d:	b8 01 00 00 00       	mov    $0x1,%eax
c0030b32:	82                   	nemu_trap 
c0030b33:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0030b38:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030b3b:	c9                   	leave  
c0030b3c:	c3                   	ret    

c0030b3d <fs_close>:
c0030b3d:	55                   	push   %ebp
c0030b3e:	89 e5                	mov    %esp,%ebp
c0030b40:	53                   	push   %ebx
c0030b41:	83 ec 04             	sub    $0x4,%esp
c0030b44:	e8 a2 f7 ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c0030b49:	05 b7 c4 00 00       	add    $0xc4b7,%eax
c0030b4e:	8d 90 a8 c3 ff ff    	lea    -0x3c58(%eax),%edx
c0030b54:	52                   	push   %edx
c0030b55:	6a 4e                	push   $0x4e
c0030b57:	8d 90 b7 c1 ff ff    	lea    -0x3e49(%eax),%edx
c0030b5d:	52                   	push   %edx
c0030b5e:	8d 90 28 c3 ff ff    	lea    -0x3cd8(%eax),%edx
c0030b64:	52                   	push   %edx
c0030b65:	89 c3                	mov    %eax,%ebx
c0030b67:	e8 47 07 00 00       	call   c00312b3 <printk>
c0030b6c:	83 c4 10             	add    $0x10,%esp
c0030b6f:	b8 01 00 00 00       	mov    $0x1,%eax
c0030b74:	82                   	nemu_trap 
c0030b75:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0030b7a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030b7d:	c9                   	leave  
c0030b7e:	c3                   	ret    

c0030b7f <out_byte>:
c0030b7f:	55                   	push   %ebp
c0030b80:	89 e5                	mov    %esp,%ebp
c0030b82:	83 ec 08             	sub    $0x8,%esp
c0030b85:	e8 61 f7 ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c0030b8a:	05 76 c4 00 00       	add    $0xc476,%eax
c0030b8f:	8b 45 08             	mov    0x8(%ebp),%eax
c0030b92:	8b 55 0c             	mov    0xc(%ebp),%edx
c0030b95:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c0030b99:	88 d0                	mov    %dl,%al
c0030b9b:	88 45 f8             	mov    %al,-0x8(%ebp)
c0030b9e:	8a 45 f8             	mov    -0x8(%ebp),%al
c0030ba1:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0030ba4:	ee                   	out    %al,(%dx)
c0030ba5:	90                   	nop
c0030ba6:	c9                   	leave  
c0030ba7:	c3                   	ret    

c0030ba8 <init_i8259>:
c0030ba8:	55                   	push   %ebp
c0030ba9:	89 e5                	mov    %esp,%ebp
c0030bab:	e8 3b f7 ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c0030bb0:	05 50 c4 00 00       	add    $0xc450,%eax
c0030bb5:	68 ff 00 00 00       	push   $0xff
c0030bba:	6a 21                	push   $0x21
c0030bbc:	e8 be ff ff ff       	call   c0030b7f <out_byte>
c0030bc1:	83 c4 08             	add    $0x8,%esp
c0030bc4:	68 ff 00 00 00       	push   $0xff
c0030bc9:	68 a1 00 00 00       	push   $0xa1
c0030bce:	e8 ac ff ff ff       	call   c0030b7f <out_byte>
c0030bd3:	83 c4 08             	add    $0x8,%esp
c0030bd6:	6a 11                	push   $0x11
c0030bd8:	6a 20                	push   $0x20
c0030bda:	e8 a0 ff ff ff       	call   c0030b7f <out_byte>
c0030bdf:	83 c4 08             	add    $0x8,%esp
c0030be2:	6a 20                	push   $0x20
c0030be4:	6a 21                	push   $0x21
c0030be6:	e8 94 ff ff ff       	call   c0030b7f <out_byte>
c0030beb:	83 c4 08             	add    $0x8,%esp
c0030bee:	6a 04                	push   $0x4
c0030bf0:	6a 21                	push   $0x21
c0030bf2:	e8 88 ff ff ff       	call   c0030b7f <out_byte>
c0030bf7:	83 c4 08             	add    $0x8,%esp
c0030bfa:	6a 03                	push   $0x3
c0030bfc:	6a 21                	push   $0x21
c0030bfe:	e8 7c ff ff ff       	call   c0030b7f <out_byte>
c0030c03:	83 c4 08             	add    $0x8,%esp
c0030c06:	6a 11                	push   $0x11
c0030c08:	68 a0 00 00 00       	push   $0xa0
c0030c0d:	e8 6d ff ff ff       	call   c0030b7f <out_byte>
c0030c12:	83 c4 08             	add    $0x8,%esp
c0030c15:	6a 28                	push   $0x28
c0030c17:	68 a1 00 00 00       	push   $0xa1
c0030c1c:	e8 5e ff ff ff       	call   c0030b7f <out_byte>
c0030c21:	83 c4 08             	add    $0x8,%esp
c0030c24:	6a 02                	push   $0x2
c0030c26:	68 a1 00 00 00       	push   $0xa1
c0030c2b:	e8 4f ff ff ff       	call   c0030b7f <out_byte>
c0030c30:	83 c4 08             	add    $0x8,%esp
c0030c33:	6a 03                	push   $0x3
c0030c35:	68 a1 00 00 00       	push   $0xa1
c0030c3a:	e8 40 ff ff ff       	call   c0030b7f <out_byte>
c0030c3f:	83 c4 08             	add    $0x8,%esp
c0030c42:	6a 68                	push   $0x68
c0030c44:	6a 20                	push   $0x20
c0030c46:	e8 34 ff ff ff       	call   c0030b7f <out_byte>
c0030c4b:	83 c4 08             	add    $0x8,%esp
c0030c4e:	6a 0a                	push   $0xa
c0030c50:	6a 20                	push   $0x20
c0030c52:	e8 28 ff ff ff       	call   c0030b7f <out_byte>
c0030c57:	83 c4 08             	add    $0x8,%esp
c0030c5a:	6a 68                	push   $0x68
c0030c5c:	68 a0 00 00 00       	push   $0xa0
c0030c61:	e8 19 ff ff ff       	call   c0030b7f <out_byte>
c0030c66:	83 c4 08             	add    $0x8,%esp
c0030c69:	6a 0a                	push   $0xa
c0030c6b:	68 a0 00 00 00       	push   $0xa0
c0030c70:	e8 0a ff ff ff       	call   c0030b7f <out_byte>
c0030c75:	83 c4 08             	add    $0x8,%esp
c0030c78:	90                   	nop
c0030c79:	c9                   	leave  
c0030c7a:	c3                   	ret    

c0030c7b <write_idtr>:
c0030c7b:	55                   	push   %ebp
c0030c7c:	89 e5                	mov    %esp,%ebp
c0030c7e:	e8 68 f6 ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c0030c83:	05 7d c3 00 00       	add    $0xc37d,%eax
c0030c88:	8b 55 0c             	mov    0xc(%ebp),%edx
c0030c8b:	4a                   	dec    %edx
c0030c8c:	66 89 90 20 1c 01 00 	mov    %dx,0x11c20(%eax)
c0030c93:	8b 55 08             	mov    0x8(%ebp),%edx
c0030c96:	66 89 90 22 1c 01 00 	mov    %dx,0x11c22(%eax)
c0030c9d:	8b 55 08             	mov    0x8(%ebp),%edx
c0030ca0:	c1 ea 10             	shr    $0x10,%edx
c0030ca3:	66 89 90 24 1c 01 00 	mov    %dx,0x11c24(%eax)
c0030caa:	8d 80 20 1c 01 00    	lea    0x11c20(%eax),%eax
c0030cb0:	0f 01 18             	lidtl  (%eax)
c0030cb3:	90                   	nop
c0030cb4:	5d                   	pop    %ebp
c0030cb5:	c3                   	ret    

c0030cb6 <sti>:
c0030cb6:	55                   	push   %ebp
c0030cb7:	89 e5                	mov    %esp,%ebp
c0030cb9:	e8 2d f6 ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c0030cbe:	05 42 c3 00 00       	add    $0xc342,%eax
c0030cc3:	fb                   	sti    
c0030cc4:	90                   	nop
c0030cc5:	5d                   	pop    %ebp
c0030cc6:	c3                   	ret    

c0030cc7 <set_intr>:
c0030cc7:	55                   	push   %ebp
c0030cc8:	89 e5                	mov    %esp,%ebp
c0030cca:	e8 1c f6 ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c0030ccf:	05 31 c3 00 00       	add    $0xc331,%eax
c0030cd4:	8b 45 10             	mov    0x10(%ebp),%eax
c0030cd7:	8b 55 08             	mov    0x8(%ebp),%edx
c0030cda:	66 89 02             	mov    %ax,(%edx)
c0030cdd:	8b 45 0c             	mov    0xc(%ebp),%eax
c0030ce0:	8b 55 08             	mov    0x8(%ebp),%edx
c0030ce3:	66 89 42 02          	mov    %ax,0x2(%edx)
c0030ce7:	8b 45 08             	mov    0x8(%ebp),%eax
c0030cea:	c6 40 04 00          	movb   $0x0,0x4(%eax)
c0030cee:	8b 45 08             	mov    0x8(%ebp),%eax
c0030cf1:	8a 50 05             	mov    0x5(%eax),%dl
c0030cf4:	83 e2 f0             	and    $0xfffffff0,%edx
c0030cf7:	83 ca 0e             	or     $0xe,%edx
c0030cfa:	88 50 05             	mov    %dl,0x5(%eax)
c0030cfd:	8b 45 08             	mov    0x8(%ebp),%eax
c0030d00:	8a 50 05             	mov    0x5(%eax),%dl
c0030d03:	83 e2 ef             	and    $0xffffffef,%edx
c0030d06:	88 50 05             	mov    %dl,0x5(%eax)
c0030d09:	8b 45 14             	mov    0x14(%ebp),%eax
c0030d0c:	88 c2                	mov    %al,%dl
c0030d0e:	83 e2 03             	and    $0x3,%edx
c0030d11:	8b 45 08             	mov    0x8(%ebp),%eax
c0030d14:	83 e2 03             	and    $0x3,%edx
c0030d17:	88 d1                	mov    %dl,%cl
c0030d19:	c1 e1 05             	shl    $0x5,%ecx
c0030d1c:	8a 50 05             	mov    0x5(%eax),%dl
c0030d1f:	83 e2 9f             	and    $0xffffff9f,%edx
c0030d22:	09 ca                	or     %ecx,%edx
c0030d24:	88 50 05             	mov    %dl,0x5(%eax)
c0030d27:	8b 45 08             	mov    0x8(%ebp),%eax
c0030d2a:	8a 50 05             	mov    0x5(%eax),%dl
c0030d2d:	83 ca 80             	or     $0xffffff80,%edx
c0030d30:	88 50 05             	mov    %dl,0x5(%eax)
c0030d33:	8b 45 10             	mov    0x10(%ebp),%eax
c0030d36:	c1 e8 10             	shr    $0x10,%eax
c0030d39:	8b 55 08             	mov    0x8(%ebp),%edx
c0030d3c:	66 89 42 06          	mov    %ax,0x6(%edx)
c0030d40:	90                   	nop
c0030d41:	5d                   	pop    %ebp
c0030d42:	c3                   	ret    

c0030d43 <set_trap>:
c0030d43:	55                   	push   %ebp
c0030d44:	89 e5                	mov    %esp,%ebp
c0030d46:	e8 a0 f5 ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c0030d4b:	05 b5 c2 00 00       	add    $0xc2b5,%eax
c0030d50:	8b 45 10             	mov    0x10(%ebp),%eax
c0030d53:	8b 55 08             	mov    0x8(%ebp),%edx
c0030d56:	66 89 02             	mov    %ax,(%edx)
c0030d59:	8b 45 0c             	mov    0xc(%ebp),%eax
c0030d5c:	8b 55 08             	mov    0x8(%ebp),%edx
c0030d5f:	66 89 42 02          	mov    %ax,0x2(%edx)
c0030d63:	8b 45 08             	mov    0x8(%ebp),%eax
c0030d66:	c6 40 04 00          	movb   $0x0,0x4(%eax)
c0030d6a:	8b 45 08             	mov    0x8(%ebp),%eax
c0030d6d:	8a 50 05             	mov    0x5(%eax),%dl
c0030d70:	83 ca 0f             	or     $0xf,%edx
c0030d73:	88 50 05             	mov    %dl,0x5(%eax)
c0030d76:	8b 45 08             	mov    0x8(%ebp),%eax
c0030d79:	8a 50 05             	mov    0x5(%eax),%dl
c0030d7c:	83 e2 ef             	and    $0xffffffef,%edx
c0030d7f:	88 50 05             	mov    %dl,0x5(%eax)
c0030d82:	8b 45 14             	mov    0x14(%ebp),%eax
c0030d85:	88 c2                	mov    %al,%dl
c0030d87:	83 e2 03             	and    $0x3,%edx
c0030d8a:	8b 45 08             	mov    0x8(%ebp),%eax
c0030d8d:	83 e2 03             	and    $0x3,%edx
c0030d90:	88 d1                	mov    %dl,%cl
c0030d92:	c1 e1 05             	shl    $0x5,%ecx
c0030d95:	8a 50 05             	mov    0x5(%eax),%dl
c0030d98:	83 e2 9f             	and    $0xffffff9f,%edx
c0030d9b:	09 ca                	or     %ecx,%edx
c0030d9d:	88 50 05             	mov    %dl,0x5(%eax)
c0030da0:	8b 45 08             	mov    0x8(%ebp),%eax
c0030da3:	8a 50 05             	mov    0x5(%eax),%dl
c0030da6:	83 ca 80             	or     $0xffffff80,%edx
c0030da9:	88 50 05             	mov    %dl,0x5(%eax)
c0030dac:	8b 45 10             	mov    0x10(%ebp),%eax
c0030daf:	c1 e8 10             	shr    $0x10,%eax
c0030db2:	8b 55 08             	mov    0x8(%ebp),%edx
c0030db5:	66 89 42 06          	mov    %ax,0x6(%edx)
c0030db9:	90                   	nop
c0030dba:	5d                   	pop    %ebp
c0030dbb:	c3                   	ret    

c0030dbc <init_idt>:
c0030dbc:	55                   	push   %ebp
c0030dbd:	89 e5                	mov    %esp,%ebp
c0030dbf:	53                   	push   %ebx
c0030dc0:	83 ec 10             	sub    $0x10,%esp
c0030dc3:	e8 2b f5 ff ff       	call   c00302f3 <__x86.get_pc_thunk.bx>
c0030dc8:	81 c3 38 c2 00 00    	add    $0xc238,%ebx
c0030dce:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0030dd5:	eb 2b                	jmp    c0030e02 <init_idt+0x46>
c0030dd7:	c7 c0 cd 00 03 c0    	mov    $0xc00300cd,%eax
c0030ddd:	89 c2                	mov    %eax,%edx
c0030ddf:	8b 45 f8             	mov    -0x8(%ebp),%eax
c0030de2:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
c0030de9:	8d 83 20 14 01 00    	lea    0x11420(%ebx),%eax
c0030def:	01 c8                	add    %ecx,%eax
c0030df1:	6a 00                	push   $0x0
c0030df3:	52                   	push   %edx
c0030df4:	6a 08                	push   $0x8
c0030df6:	50                   	push   %eax
c0030df7:	e8 47 ff ff ff       	call   c0030d43 <set_trap>
c0030dfc:	83 c4 10             	add    $0x10,%esp
c0030dff:	ff 45 f8             	incl   -0x8(%ebp)
c0030e02:	81 7d f8 ff 00 00 00 	cmpl   $0xff,-0x8(%ebp)
c0030e09:	7e cc                	jle    c0030dd7 <init_idt+0x1b>
c0030e0b:	c7 c0 52 00 03 c0    	mov    $0xc0030052,%eax
c0030e11:	6a 00                	push   $0x0
c0030e13:	50                   	push   %eax
c0030e14:	6a 08                	push   $0x8
c0030e16:	8d 83 20 14 01 00    	lea    0x11420(%ebx),%eax
c0030e1c:	50                   	push   %eax
c0030e1d:	e8 21 ff ff ff       	call   c0030d43 <set_trap>
c0030e22:	83 c4 10             	add    $0x10,%esp
c0030e25:	c7 c0 58 00 03 c0    	mov    $0xc0030058,%eax
c0030e2b:	89 c2                	mov    %eax,%edx
c0030e2d:	8d 83 28 14 01 00    	lea    0x11428(%ebx),%eax
c0030e33:	6a 00                	push   $0x0
c0030e35:	52                   	push   %edx
c0030e36:	6a 08                	push   $0x8
c0030e38:	50                   	push   %eax
c0030e39:	e8 05 ff ff ff       	call   c0030d43 <set_trap>
c0030e3e:	83 c4 10             	add    $0x10,%esp
c0030e41:	c7 c0 5e 00 03 c0    	mov    $0xc003005e,%eax
c0030e47:	89 c2                	mov    %eax,%edx
c0030e49:	8d 83 30 14 01 00    	lea    0x11430(%ebx),%eax
c0030e4f:	6a 00                	push   $0x0
c0030e51:	52                   	push   %edx
c0030e52:	6a 08                	push   $0x8
c0030e54:	50                   	push   %eax
c0030e55:	e8 e9 fe ff ff       	call   c0030d43 <set_trap>
c0030e5a:	83 c4 10             	add    $0x10,%esp
c0030e5d:	c7 c0 64 00 03 c0    	mov    $0xc0030064,%eax
c0030e63:	89 c2                	mov    %eax,%edx
c0030e65:	8d 83 38 14 01 00    	lea    0x11438(%ebx),%eax
c0030e6b:	6a 00                	push   $0x0
c0030e6d:	52                   	push   %edx
c0030e6e:	6a 08                	push   $0x8
c0030e70:	50                   	push   %eax
c0030e71:	e8 cd fe ff ff       	call   c0030d43 <set_trap>
c0030e76:	83 c4 10             	add    $0x10,%esp
c0030e79:	c7 c0 6a 00 03 c0    	mov    $0xc003006a,%eax
c0030e7f:	89 c2                	mov    %eax,%edx
c0030e81:	8d 83 40 14 01 00    	lea    0x11440(%ebx),%eax
c0030e87:	6a 00                	push   $0x0
c0030e89:	52                   	push   %edx
c0030e8a:	6a 08                	push   $0x8
c0030e8c:	50                   	push   %eax
c0030e8d:	e8 b1 fe ff ff       	call   c0030d43 <set_trap>
c0030e92:	83 c4 10             	add    $0x10,%esp
c0030e95:	c7 c0 70 00 03 c0    	mov    $0xc0030070,%eax
c0030e9b:	89 c2                	mov    %eax,%edx
c0030e9d:	8d 83 48 14 01 00    	lea    0x11448(%ebx),%eax
c0030ea3:	6a 00                	push   $0x0
c0030ea5:	52                   	push   %edx
c0030ea6:	6a 08                	push   $0x8
c0030ea8:	50                   	push   %eax
c0030ea9:	e8 95 fe ff ff       	call   c0030d43 <set_trap>
c0030eae:	83 c4 10             	add    $0x10,%esp
c0030eb1:	c7 c0 76 00 03 c0    	mov    $0xc0030076,%eax
c0030eb7:	89 c2                	mov    %eax,%edx
c0030eb9:	8d 83 50 14 01 00    	lea    0x11450(%ebx),%eax
c0030ebf:	6a 00                	push   $0x0
c0030ec1:	52                   	push   %edx
c0030ec2:	6a 08                	push   $0x8
c0030ec4:	50                   	push   %eax
c0030ec5:	e8 79 fe ff ff       	call   c0030d43 <set_trap>
c0030eca:	83 c4 10             	add    $0x10,%esp
c0030ecd:	c7 c0 7c 00 03 c0    	mov    $0xc003007c,%eax
c0030ed3:	89 c2                	mov    %eax,%edx
c0030ed5:	8d 83 58 14 01 00    	lea    0x11458(%ebx),%eax
c0030edb:	6a 00                	push   $0x0
c0030edd:	52                   	push   %edx
c0030ede:	6a 08                	push   $0x8
c0030ee0:	50                   	push   %eax
c0030ee1:	e8 5d fe ff ff       	call   c0030d43 <set_trap>
c0030ee6:	83 c4 10             	add    $0x10,%esp
c0030ee9:	c7 c0 82 00 03 c0    	mov    $0xc0030082,%eax
c0030eef:	89 c2                	mov    %eax,%edx
c0030ef1:	8d 83 60 14 01 00    	lea    0x11460(%ebx),%eax
c0030ef7:	6a 00                	push   $0x0
c0030ef9:	52                   	push   %edx
c0030efa:	6a 08                	push   $0x8
c0030efc:	50                   	push   %eax
c0030efd:	e8 41 fe ff ff       	call   c0030d43 <set_trap>
c0030f02:	83 c4 10             	add    $0x10,%esp
c0030f05:	c7 c0 86 00 03 c0    	mov    $0xc0030086,%eax
c0030f0b:	89 c2                	mov    %eax,%edx
c0030f0d:	8d 83 68 14 01 00    	lea    0x11468(%ebx),%eax
c0030f13:	6a 00                	push   $0x0
c0030f15:	52                   	push   %edx
c0030f16:	6a 08                	push   $0x8
c0030f18:	50                   	push   %eax
c0030f19:	e8 25 fe ff ff       	call   c0030d43 <set_trap>
c0030f1e:	83 c4 10             	add    $0x10,%esp
c0030f21:	c7 c0 8c 00 03 c0    	mov    $0xc003008c,%eax
c0030f27:	89 c2                	mov    %eax,%edx
c0030f29:	8d 83 70 14 01 00    	lea    0x11470(%ebx),%eax
c0030f2f:	6a 00                	push   $0x0
c0030f31:	52                   	push   %edx
c0030f32:	6a 08                	push   $0x8
c0030f34:	50                   	push   %eax
c0030f35:	e8 09 fe ff ff       	call   c0030d43 <set_trap>
c0030f3a:	83 c4 10             	add    $0x10,%esp
c0030f3d:	c7 c0 90 00 03 c0    	mov    $0xc0030090,%eax
c0030f43:	89 c2                	mov    %eax,%edx
c0030f45:	8d 83 78 14 01 00    	lea    0x11478(%ebx),%eax
c0030f4b:	6a 00                	push   $0x0
c0030f4d:	52                   	push   %edx
c0030f4e:	6a 08                	push   $0x8
c0030f50:	50                   	push   %eax
c0030f51:	e8 ed fd ff ff       	call   c0030d43 <set_trap>
c0030f56:	83 c4 10             	add    $0x10,%esp
c0030f59:	c7 c0 94 00 03 c0    	mov    $0xc0030094,%eax
c0030f5f:	89 c2                	mov    %eax,%edx
c0030f61:	8d 83 80 14 01 00    	lea    0x11480(%ebx),%eax
c0030f67:	6a 00                	push   $0x0
c0030f69:	52                   	push   %edx
c0030f6a:	6a 08                	push   $0x8
c0030f6c:	50                   	push   %eax
c0030f6d:	e8 d1 fd ff ff       	call   c0030d43 <set_trap>
c0030f72:	83 c4 10             	add    $0x10,%esp
c0030f75:	c7 c0 98 00 03 c0    	mov    $0xc0030098,%eax
c0030f7b:	89 c2                	mov    %eax,%edx
c0030f7d:	8d 83 88 14 01 00    	lea    0x11488(%ebx),%eax
c0030f83:	6a 00                	push   $0x0
c0030f85:	52                   	push   %edx
c0030f86:	6a 08                	push   $0x8
c0030f88:	50                   	push   %eax
c0030f89:	e8 b5 fd ff ff       	call   c0030d43 <set_trap>
c0030f8e:	83 c4 10             	add    $0x10,%esp
c0030f91:	c7 c0 9c 00 03 c0    	mov    $0xc003009c,%eax
c0030f97:	89 c2                	mov    %eax,%edx
c0030f99:	8d 83 90 14 01 00    	lea    0x11490(%ebx),%eax
c0030f9f:	6a 00                	push   $0x0
c0030fa1:	52                   	push   %edx
c0030fa2:	6a 08                	push   $0x8
c0030fa4:	50                   	push   %eax
c0030fa5:	e8 99 fd ff ff       	call   c0030d43 <set_trap>
c0030faa:	83 c4 10             	add    $0x10,%esp
c0030fad:	c7 c0 a0 00 03 c0    	mov    $0xc00300a0,%eax
c0030fb3:	89 c2                	mov    %eax,%edx
c0030fb5:	8d 83 20 18 01 00    	lea    0x11820(%ebx),%eax
c0030fbb:	6a 03                	push   $0x3
c0030fbd:	52                   	push   %edx
c0030fbe:	6a 08                	push   $0x8
c0030fc0:	50                   	push   %eax
c0030fc1:	e8 7d fd ff ff       	call   c0030d43 <set_trap>
c0030fc6:	83 c4 10             	add    $0x10,%esp
c0030fc9:	c7 c0 a9 00 03 c0    	mov    $0xc00300a9,%eax
c0030fcf:	89 c2                	mov    %eax,%edx
c0030fd1:	8d 83 20 15 01 00    	lea    0x11520(%ebx),%eax
c0030fd7:	6a 00                	push   $0x0
c0030fd9:	52                   	push   %edx
c0030fda:	6a 08                	push   $0x8
c0030fdc:	50                   	push   %eax
c0030fdd:	e8 e5 fc ff ff       	call   c0030cc7 <set_intr>
c0030fe2:	83 c4 10             	add    $0x10,%esp
c0030fe5:	c7 c0 b2 00 03 c0    	mov    $0xc00300b2,%eax
c0030feb:	89 c2                	mov    %eax,%edx
c0030fed:	8d 83 28 15 01 00    	lea    0x11528(%ebx),%eax
c0030ff3:	6a 00                	push   $0x0
c0030ff5:	52                   	push   %edx
c0030ff6:	6a 08                	push   $0x8
c0030ff8:	50                   	push   %eax
c0030ff9:	e8 c9 fc ff ff       	call   c0030cc7 <set_intr>
c0030ffe:	83 c4 10             	add    $0x10,%esp
c0031001:	c7 c0 bb 00 03 c0    	mov    $0xc00300bb,%eax
c0031007:	89 c2                	mov    %eax,%edx
c0031009:	8d 83 30 15 01 00    	lea    0x11530(%ebx),%eax
c003100f:	6a 00                	push   $0x0
c0031011:	52                   	push   %edx
c0031012:	6a 08                	push   $0x8
c0031014:	50                   	push   %eax
c0031015:	e8 ad fc ff ff       	call   c0030cc7 <set_intr>
c003101a:	83 c4 10             	add    $0x10,%esp
c003101d:	c7 c0 c4 00 03 c0    	mov    $0xc00300c4,%eax
c0031023:	89 c2                	mov    %eax,%edx
c0031025:	8d 83 90 15 01 00    	lea    0x11590(%ebx),%eax
c003102b:	6a 00                	push   $0x0
c003102d:	52                   	push   %edx
c003102e:	6a 08                	push   $0x8
c0031030:	50                   	push   %eax
c0031031:	e8 91 fc ff ff       	call   c0030cc7 <set_intr>
c0031036:	83 c4 10             	add    $0x10,%esp
c0031039:	68 00 08 00 00       	push   $0x800
c003103e:	8d 83 20 14 01 00    	lea    0x11420(%ebx),%eax
c0031044:	50                   	push   %eax
c0031045:	e8 31 fc ff ff       	call   c0030c7b <write_idtr>
c003104a:	83 c4 08             	add    $0x8,%esp
c003104d:	e8 64 fc ff ff       	call   c0030cb6 <sti>
c0031052:	90                   	nop
c0031053:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031056:	c9                   	leave  
c0031057:	c3                   	ret    

c0031058 <add_irq_handle>:
c0031058:	55                   	push   %ebp
c0031059:	89 e5                	mov    %esp,%ebp
c003105b:	53                   	push   %ebx
c003105c:	83 ec 14             	sub    $0x14,%esp
c003105f:	e8 8f f2 ff ff       	call   c00302f3 <__x86.get_pc_thunk.bx>
c0031064:	81 c3 9c bf 00 00    	add    $0xbf9c,%ebx
c003106a:	83 7d 08 0f          	cmpl   $0xf,0x8(%ebp)
c003106e:	7e 2f                	jle    c003109f <add_irq_handle+0x47>
c0031070:	83 ec 0c             	sub    $0xc,%esp
c0031073:	8d 83 b4 c3 ff ff    	lea    -0x3c4c(%ebx),%eax
c0031079:	50                   	push   %eax
c003107a:	8d 83 34 c5 ff ff    	lea    -0x3acc(%ebx),%eax
c0031080:	50                   	push   %eax
c0031081:	6a 16                	push   $0x16
c0031083:	8d 83 c7 c3 ff ff    	lea    -0x3c39(%ebx),%eax
c0031089:	50                   	push   %eax
c003108a:	8d 83 dc c3 ff ff    	lea    -0x3c24(%ebx),%eax
c0031090:	50                   	push   %eax
c0031091:	e8 1d 02 00 00       	call   c00312b3 <printk>
c0031096:	83 c4 20             	add    $0x20,%esp
c0031099:	b8 01 00 00 00       	mov    $0x1,%eax
c003109e:	82                   	nemu_trap 
c003109f:	8b 83 80 1d 01 00    	mov    0x11d80(%ebx),%eax
c00310a5:	83 f8 20             	cmp    $0x20,%eax
c00310a8:	7e 2f                	jle    c00310d9 <add_irq_handle+0x81>
c00310aa:	83 ec 0c             	sub    $0xc,%esp
c00310ad:	8d 83 26 c4 ff ff    	lea    -0x3bda(%ebx),%eax
c00310b3:	50                   	push   %eax
c00310b4:	8d 83 34 c5 ff ff    	lea    -0x3acc(%ebx),%eax
c00310ba:	50                   	push   %eax
c00310bb:	6a 17                	push   $0x17
c00310bd:	8d 83 c7 c3 ff ff    	lea    -0x3c39(%ebx),%eax
c00310c3:	50                   	push   %eax
c00310c4:	8d 83 dc c3 ff ff    	lea    -0x3c24(%ebx),%eax
c00310ca:	50                   	push   %eax
c00310cb:	e8 e3 01 00 00       	call   c00312b3 <printk>
c00310d0:	83 c4 20             	add    $0x20,%esp
c00310d3:	b8 01 00 00 00       	mov    $0x1,%eax
c00310d8:	82                   	nemu_trap 
c00310d9:	8b 83 80 1d 01 00    	mov    0x11d80(%ebx),%eax
c00310df:	8d 50 01             	lea    0x1(%eax),%edx
c00310e2:	89 93 80 1d 01 00    	mov    %edx,0x11d80(%ebx)
c00310e8:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
c00310ef:	8d 83 40 1c 01 00    	lea    0x11c40(%ebx),%eax
c00310f5:	01 d0                	add    %edx,%eax
c00310f7:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00310fa:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00310fd:	8b 55 0c             	mov    0xc(%ebp),%edx
c0031100:	89 10                	mov    %edx,(%eax)
c0031102:	8b 45 08             	mov    0x8(%ebp),%eax
c0031105:	8b 94 83 40 1d 01 00 	mov    0x11d40(%ebx,%eax,4),%edx
c003110c:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003110f:	89 50 04             	mov    %edx,0x4(%eax)
c0031112:	8b 45 08             	mov    0x8(%ebp),%eax
c0031115:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0031118:	89 94 83 40 1d 01 00 	mov    %edx,0x11d40(%ebx,%eax,4)
c003111f:	90                   	nop
c0031120:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031123:	c9                   	leave  
c0031124:	c3                   	ret    

c0031125 <irq_handle>:
c0031125:	55                   	push   %ebp
c0031126:	89 e5                	mov    %esp,%ebp
c0031128:	53                   	push   %ebx
c0031129:	83 ec 14             	sub    $0x14,%esp
c003112c:	e8 c2 f1 ff ff       	call   c00302f3 <__x86.get_pc_thunk.bx>
c0031131:	81 c3 cf be 00 00    	add    $0xbecf,%ebx
c0031137:	8b 45 08             	mov    0x8(%ebp),%eax
c003113a:	8b 40 20             	mov    0x20(%eax),%eax
c003113d:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0031140:	8b 83 80 1d 01 00    	mov    0x11d80(%ebx),%eax
c0031146:	83 ec 0c             	sub    $0xc,%esp
c0031149:	50                   	push   %eax
c003114a:	8d 83 44 c5 ff ff    	lea    -0x3abc(%ebx),%eax
c0031150:	50                   	push   %eax
c0031151:	6a 24                	push   $0x24
c0031153:	8d 83 c7 c3 ff ff    	lea    -0x3c39(%ebx),%eax
c0031159:	50                   	push   %eax
c003115a:	8d 83 44 c4 ff ff    	lea    -0x3bbc(%ebx),%eax
c0031160:	50                   	push   %eax
c0031161:	e8 4d 01 00 00       	call   c00312b3 <printk>
c0031166:	83 c4 20             	add    $0x20,%esp
c0031169:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
c003116d:	79 2a                	jns    c0031199 <irq_handle+0x74>
c003116f:	8d 83 44 c5 ff ff    	lea    -0x3abc(%ebx),%eax
c0031175:	50                   	push   %eax
c0031176:	6a 27                	push   $0x27
c0031178:	8d 83 c7 c3 ff ff    	lea    -0x3c39(%ebx),%eax
c003117e:	50                   	push   %eax
c003117f:	8d 83 78 c4 ff ff    	lea    -0x3b88(%ebx),%eax
c0031185:	50                   	push   %eax
c0031186:	e8 28 01 00 00       	call   c00312b3 <printk>
c003118b:	83 c4 10             	add    $0x10,%esp
c003118e:	b8 01 00 00 00       	mov    $0x1,%eax
c0031193:	82                   	nemu_trap 
c0031194:	e9 c8 00 00 00       	jmp    c0031261 <irq_handle+0x13c>
c0031199:	81 7d f0 80 00 00 00 	cmpl   $0x80,-0x10(%ebp)
c00311a0:	75 13                	jne    c00311b5 <irq_handle+0x90>
c00311a2:	83 ec 0c             	sub    $0xc,%esp
c00311a5:	ff 75 08             	pushl  0x8(%ebp)
c00311a8:	e8 5a 09 00 00       	call   c0031b07 <do_syscall>
c00311ad:	83 c4 10             	add    $0x10,%esp
c00311b0:	e9 ac 00 00 00       	jmp    c0031261 <irq_handle+0x13c>
c00311b5:	81 7d f0 e7 03 00 00 	cmpl   $0x3e7,-0x10(%ebp)
c00311bc:	7f 34                	jg     c00311f2 <irq_handle+0xcd>
c00311be:	8b 45 08             	mov    0x8(%ebp),%eax
c00311c1:	8b 40 28             	mov    0x28(%eax),%eax
c00311c4:	83 ec 08             	sub    $0x8,%esp
c00311c7:	50                   	push   %eax
c00311c8:	ff 75 f0             	pushl  -0x10(%ebp)
c00311cb:	8d 83 44 c5 ff ff    	lea    -0x3abc(%ebx),%eax
c00311d1:	50                   	push   %eax
c00311d2:	6a 2f                	push   $0x2f
c00311d4:	8d 83 c7 c3 ff ff    	lea    -0x3c39(%ebx),%eax
c00311da:	50                   	push   %eax
c00311db:	8d 83 c4 c4 ff ff    	lea    -0x3b3c(%ebx),%eax
c00311e1:	50                   	push   %eax
c00311e2:	e8 cc 00 00 00       	call   c00312b3 <printk>
c00311e7:	83 c4 20             	add    $0x20,%esp
c00311ea:	b8 01 00 00 00       	mov    $0x1,%eax
c00311ef:	82                   	nemu_trap 
c00311f0:	eb 6f                	jmp    c0031261 <irq_handle+0x13c>
c00311f2:	81 7d f0 e7 03 00 00 	cmpl   $0x3e7,-0x10(%ebp)
c00311f9:	7e 66                	jle    c0031261 <irq_handle+0x13c>
c00311fb:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00311fe:	2d e8 03 00 00       	sub    $0x3e8,%eax
c0031203:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0031206:	83 7d ec 0f          	cmpl   $0xf,-0x14(%ebp)
c003120a:	7e 2f                	jle    c003123b <irq_handle+0x116>
c003120c:	83 ec 0c             	sub    $0xc,%esp
c003120f:	8d 83 1e c5 ff ff    	lea    -0x3ae2(%ebx),%eax
c0031215:	50                   	push   %eax
c0031216:	8d 83 44 c5 ff ff    	lea    -0x3abc(%ebx),%eax
c003121c:	50                   	push   %eax
c003121d:	6a 34                	push   $0x34
c003121f:	8d 83 c7 c3 ff ff    	lea    -0x3c39(%ebx),%eax
c0031225:	50                   	push   %eax
c0031226:	8d 83 dc c3 ff ff    	lea    -0x3c24(%ebx),%eax
c003122c:	50                   	push   %eax
c003122d:	e8 81 00 00 00       	call   c00312b3 <printk>
c0031232:	83 c4 20             	add    $0x20,%esp
c0031235:	b8 01 00 00 00       	mov    $0x1,%eax
c003123a:	82                   	nemu_trap 
c003123b:	8b 45 ec             	mov    -0x14(%ebp),%eax
c003123e:	8b 84 83 40 1d 01 00 	mov    0x11d40(%ebx,%eax,4),%eax
c0031245:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0031248:	f1                   	icebp  
c0031249:	eb 10                	jmp    c003125b <irq_handle+0x136>
c003124b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003124e:	8b 00                	mov    (%eax),%eax
c0031250:	ff d0                	call   *%eax
c0031252:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031255:	8b 40 04             	mov    0x4(%eax),%eax
c0031258:	89 45 f4             	mov    %eax,-0xc(%ebp)
c003125b:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c003125f:	75 ea                	jne    c003124b <irq_handle+0x126>
c0031261:	90                   	nop
c0031262:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031265:	c9                   	leave  
c0031266:	c3                   	ret    

c0031267 <sbrk>:
c0031267:	55                   	push   %ebp
c0031268:	89 e5                	mov    %esp,%ebp
c003126a:	53                   	push   %ebx
c003126b:	83 ec 04             	sub    $0x4,%esp
c003126e:	e8 78 f0 ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c0031273:	05 8d bd 00 00       	add    $0xbd8d,%eax
c0031278:	83 ec 0c             	sub    $0xc,%esp
c003127b:	8d 90 50 c5 ff ff    	lea    -0x3ab0(%eax),%edx
c0031281:	52                   	push   %edx
c0031282:	8d 90 b0 c5 ff ff    	lea    -0x3a50(%eax),%edx
c0031288:	52                   	push   %edx
c0031289:	6a 09                	push   $0x9
c003128b:	8d 90 52 c5 ff ff    	lea    -0x3aae(%eax),%edx
c0031291:	52                   	push   %edx
c0031292:	8d 90 64 c5 ff ff    	lea    -0x3a9c(%eax),%edx
c0031298:	52                   	push   %edx
c0031299:	89 c3                	mov    %eax,%ebx
c003129b:	e8 13 00 00 00       	call   c00312b3 <printk>
c00312a0:	83 c4 20             	add    $0x20,%esp
c00312a3:	b8 01 00 00 00       	mov    $0x1,%eax
c00312a8:	82                   	nemu_trap 
c00312a9:	b8 00 00 00 00       	mov    $0x0,%eax
c00312ae:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00312b1:	c9                   	leave  
c00312b2:	c3                   	ret    

c00312b3 <printk>:
c00312b3:	55                   	push   %ebp
c00312b4:	89 e5                	mov    %esp,%ebp
c00312b6:	53                   	push   %ebx
c00312b7:	83 ec 14             	sub    $0x14,%esp
c00312ba:	e8 34 f0 ff ff       	call   c00302f3 <__x86.get_pc_thunk.bx>
c00312bf:	81 c3 41 bd 00 00    	add    $0xbd41,%ebx
c00312c5:	8d 45 0c             	lea    0xc(%ebp),%eax
c00312c8:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00312cb:	8b 45 08             	mov    0x8(%ebp),%eax
c00312ce:	ff 75 f4             	pushl  -0xc(%ebp)
c00312d1:	50                   	push   %eax
c00312d2:	68 00 01 00 00       	push   $0x100
c00312d7:	8d 83 a0 1d 01 00    	lea    0x11da0(%ebx),%eax
c00312dd:	50                   	push   %eax
c00312de:	e8 1d 0d 00 00       	call   c0032000 <vsnprintf>
c00312e3:	83 c4 10             	add    $0x10,%esp
c00312e6:	89 45 f0             	mov    %eax,-0x10(%ebp)
c00312e9:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00312ec:	83 ec 04             	sub    $0x4,%esp
c00312ef:	50                   	push   %eax
c00312f0:	8d 83 a0 1d 01 00    	lea    0x11da0(%ebx),%eax
c00312f6:	50                   	push   %eax
c00312f7:	6a 01                	push   $0x1
c00312f9:	e8 81 f7 ff ff       	call   c0030a7f <fs_write>
c00312fe:	83 c4 10             	add    $0x10,%esp
c0031301:	90                   	nop
c0031302:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031305:	c9                   	leave  
c0031306:	c3                   	ret    

c0031307 <in_byte>:
c0031307:	55                   	push   %ebp
c0031308:	89 e5                	mov    %esp,%ebp
c003130a:	83 ec 14             	sub    $0x14,%esp
c003130d:	e8 d9 ef ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c0031312:	05 ee bc 00 00       	add    $0xbcee,%eax
c0031317:	8b 45 08             	mov    0x8(%ebp),%eax
c003131a:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
c003131e:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0031321:	89 c2                	mov    %eax,%edx
c0031323:	ec                   	in     (%dx),%al
c0031324:	88 45 ff             	mov    %al,-0x1(%ebp)
c0031327:	8a 45 ff             	mov    -0x1(%ebp),%al
c003132a:	c9                   	leave  
c003132b:	c3                   	ret    

c003132c <out_byte>:
c003132c:	55                   	push   %ebp
c003132d:	89 e5                	mov    %esp,%ebp
c003132f:	83 ec 08             	sub    $0x8,%esp
c0031332:	e8 b4 ef ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c0031337:	05 c9 bc 00 00       	add    $0xbcc9,%eax
c003133c:	8b 45 08             	mov    0x8(%ebp),%eax
c003133f:	8b 55 0c             	mov    0xc(%ebp),%edx
c0031342:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c0031346:	88 d0                	mov    %dl,%al
c0031348:	88 45 f8             	mov    %al,-0x8(%ebp)
c003134b:	8a 45 f8             	mov    -0x8(%ebp),%al
c003134e:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0031351:	ee                   	out    %al,(%dx)
c0031352:	90                   	nop
c0031353:	c9                   	leave  
c0031354:	c3                   	ret    

c0031355 <init_serial>:
c0031355:	55                   	push   %ebp
c0031356:	89 e5                	mov    %esp,%ebp
c0031358:	e8 8e ef ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c003135d:	05 a3 bc 00 00       	add    $0xbca3,%eax
c0031362:	90                   	nop
c0031363:	5d                   	pop    %ebp
c0031364:	c3                   	ret    

c0031365 <serial_idle>:
c0031365:	55                   	push   %ebp
c0031366:	89 e5                	mov    %esp,%ebp
c0031368:	e8 7e ef ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c003136d:	05 93 bc 00 00       	add    $0xbc93,%eax
c0031372:	68 fd 03 00 00       	push   $0x3fd
c0031377:	e8 8b ff ff ff       	call   c0031307 <in_byte>
c003137c:	83 c4 04             	add    $0x4,%esp
c003137f:	0f b6 c0             	movzbl %al,%eax
c0031382:	83 e0 20             	and    $0x20,%eax
c0031385:	85 c0                	test   %eax,%eax
c0031387:	0f 95 c0             	setne  %al
c003138a:	0f b6 c0             	movzbl %al,%eax
c003138d:	c9                   	leave  
c003138e:	c3                   	ret    

c003138f <serial_printc>:
c003138f:	55                   	push   %ebp
c0031390:	89 e5                	mov    %esp,%ebp
c0031392:	83 ec 04             	sub    $0x4,%esp
c0031395:	e8 51 ef ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c003139a:	05 66 bc 00 00       	add    $0xbc66,%eax
c003139f:	8b 45 08             	mov    0x8(%ebp),%eax
c00313a2:	88 45 fc             	mov    %al,-0x4(%ebp)
c00313a5:	90                   	nop
c00313a6:	e8 ba ff ff ff       	call   c0031365 <serial_idle>
c00313ab:	85 c0                	test   %eax,%eax
c00313ad:	74 f7                	je     c00313a6 <serial_printc+0x17>
c00313af:	8a 45 fc             	mov    -0x4(%ebp),%al
c00313b2:	0f b6 c0             	movzbl %al,%eax
c00313b5:	50                   	push   %eax
c00313b6:	68 f8 03 00 00       	push   $0x3f8
c00313bb:	e8 6c ff ff ff       	call   c003132c <out_byte>
c00313c0:	83 c4 08             	add    $0x8,%esp
c00313c3:	90                   	nop
c00313c4:	c9                   	leave  
c00313c5:	c3                   	ret    

c00313c6 <sti>:
c00313c6:	55                   	push   %ebp
c00313c7:	89 e5                	mov    %esp,%ebp
c00313c9:	e8 1d ef ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c00313ce:	05 32 bc 00 00       	add    $0xbc32,%eax
c00313d3:	fb                   	sti    
c00313d4:	90                   	nop
c00313d5:	5d                   	pop    %ebp
c00313d6:	c3                   	ret    

c00313d7 <init>:
c00313d7:	55                   	push   %ebp
c00313d8:	89 e5                	mov    %esp,%ebp
c00313da:	53                   	push   %ebx
c00313db:	83 ec 04             	sub    $0x4,%esp
c00313de:	e8 10 ef ff ff       	call   c00302f3 <__x86.get_pc_thunk.bx>
c00313e3:	81 c3 1d bc 00 00    	add    $0xbc1d,%ebx
c00313e9:	e8 14 01 00 00       	call   c0031502 <init_page>
c00313ee:	81 c4 00 00 00 c0    	add    $0xc0000000,%esp
c00313f4:	8d 83 09 44 ff bf    	lea    -0x4000bbf7(%ebx),%eax
c00313fa:	ff e0                	jmp    *%eax
c00313fc:	b8 01 00 00 00       	mov    $0x1,%eax
c0031401:	82                   	nemu_trap 
c0031402:	90                   	nop
c0031403:	83 c4 04             	add    $0x4,%esp
c0031406:	5b                   	pop    %ebx
c0031407:	5d                   	pop    %ebp
c0031408:	c3                   	ret    

c0031409 <init_cond>:
c0031409:	55                   	push   %ebp
c003140a:	89 e5                	mov    %esp,%ebp
c003140c:	53                   	push   %ebx
c003140d:	83 ec 14             	sub    $0x14,%esp
c0031410:	e8 de ee ff ff       	call   c00302f3 <__x86.get_pc_thunk.bx>
c0031415:	81 c3 eb bb 00 00    	add    $0xbbeb,%ebx
c003141b:	e8 c3 02 00 00       	call   c00316e3 <init_segment>
c0031420:	e8 97 f9 ff ff       	call   c0030dbc <init_idt>
c0031425:	e8 9c ff ff ff       	call   c00313c6 <sti>
c003142a:	e8 bb f3 ff ff       	call   c00307ea <init_ide>
c003142f:	e8 9d 03 00 00       	call   c00317d1 <init_mm>
c0031434:	8d 83 f8 c5 ff ff    	lea    -0x3a08(%ebx),%eax
c003143a:	50                   	push   %eax
c003143b:	6a 56                	push   $0x56
c003143d:	8d 83 b8 c5 ff ff    	lea    -0x3a48(%ebx),%eax
c0031443:	50                   	push   %eax
c0031444:	8d 83 c4 c5 ff ff    	lea    -0x3a3c(%ebx),%eax
c003144a:	50                   	push   %eax
c003144b:	e8 63 fe ff ff       	call   c00312b3 <printk>
c0031450:	83 c4 10             	add    $0x10,%esp
c0031453:	e8 ed f3 ff ff       	call   c0030845 <loader>
c0031458:	89 45 f4             	mov    %eax,-0xc(%ebp)
c003145b:	bc 00 00 00 c0       	mov    $0xc0000000,%esp
c0031460:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031463:	ff d0                	call   *%eax
c0031465:	90                   	nop
c0031466:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031469:	c9                   	leave  
c003146a:	c3                   	ret    

c003146b <read_cr0>:
c003146b:	55                   	push   %ebp
c003146c:	89 e5                	mov    %esp,%ebp
c003146e:	83 ec 10             	sub    $0x10,%esp
c0031471:	e8 75 ee ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c0031476:	05 8a bb 00 00       	add    $0xbb8a,%eax
c003147b:	0f 20 c0             	mov    %cr0,%eax
c003147e:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0031481:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0031484:	c9                   	leave  
c0031485:	c3                   	ret    

c0031486 <write_cr0>:
c0031486:	55                   	push   %ebp
c0031487:	89 e5                	mov    %esp,%ebp
c0031489:	e8 5d ee ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c003148e:	05 72 bb 00 00       	add    $0xbb72,%eax
c0031493:	8b 45 08             	mov    0x8(%ebp),%eax
c0031496:	0f 22 c0             	mov    %eax,%cr0
c0031499:	90                   	nop
c003149a:	5d                   	pop    %ebp
c003149b:	c3                   	ret    

c003149c <write_cr3>:
c003149c:	55                   	push   %ebp
c003149d:	89 e5                	mov    %esp,%ebp
c003149f:	e8 47 ee ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c00314a4:	05 5c bb 00 00       	add    $0xbb5c,%eax
c00314a9:	8b 45 08             	mov    0x8(%ebp),%eax
c00314ac:	0f 22 d8             	mov    %eax,%cr3
c00314af:	90                   	nop
c00314b0:	5d                   	pop    %ebp
c00314b1:	c3                   	ret    

c00314b2 <write_gdtr>:
c00314b2:	55                   	push   %ebp
c00314b3:	89 e5                	mov    %esp,%ebp
c00314b5:	e8 31 ee ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c00314ba:	05 46 bb 00 00       	add    $0xbb46,%eax
c00314bf:	8b 55 0c             	mov    0xc(%ebp),%edx
c00314c2:	4a                   	dec    %edx
c00314c3:	66 89 90 a0 1e 01 00 	mov    %dx,0x11ea0(%eax)
c00314ca:	8b 55 08             	mov    0x8(%ebp),%edx
c00314cd:	66 89 90 a2 1e 01 00 	mov    %dx,0x11ea2(%eax)
c00314d4:	8b 55 08             	mov    0x8(%ebp),%edx
c00314d7:	c1 ea 10             	shr    $0x10,%edx
c00314da:	66 89 90 a4 1e 01 00 	mov    %dx,0x11ea4(%eax)
c00314e1:	8d 80 a0 1e 01 00    	lea    0x11ea0(%eax),%eax
c00314e7:	0f 01 10             	lgdtl  (%eax)
c00314ea:	90                   	nop
c00314eb:	5d                   	pop    %ebp
c00314ec:	c3                   	ret    

c00314ed <get_kpdir>:
c00314ed:	55                   	push   %ebp
c00314ee:	89 e5                	mov    %esp,%ebp
c00314f0:	e8 f6 ed ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c00314f5:	05 0b bb 00 00       	add    $0xbb0b,%eax
c00314fa:	c7 c0 00 20 07 c0    	mov    $0xc0072000,%eax
c0031500:	5d                   	pop    %ebp
c0031501:	c3                   	ret    

c0031502 <init_page>:
c0031502:	55                   	push   %ebp
c0031503:	89 e5                	mov    %esp,%ebp
c0031505:	53                   	push   %ebx
c0031506:	83 ec 24             	sub    $0x24,%esp
c0031509:	e8 dd ed ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c003150e:	05 f2 ba 00 00       	add    $0xbaf2,%eax
c0031513:	c7 c2 00 20 07 c0    	mov    $0xc0072000,%edx
c0031519:	81 c2 00 00 00 40    	add    $0x40000000,%edx
c003151f:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c0031522:	c7 c2 00 30 07 c0    	mov    $0xc0073000,%edx
c0031528:	81 c2 00 00 00 40    	add    $0x40000000,%edx
c003152e:	89 55 f4             	mov    %edx,-0xc(%ebp)
c0031531:	83 ec 04             	sub    $0x4,%esp
c0031534:	68 00 10 00 00       	push   $0x1000
c0031539:	6a 00                	push   $0x0
c003153b:	ff 75 e4             	pushl  -0x1c(%ebp)
c003153e:	89 c3                	mov    %eax,%ebx
c0031540:	e8 97 09 00 00       	call   c0031edc <memset>
c0031545:	83 c4 10             	add    $0x10,%esp
c0031548:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
c003154f:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c0031556:	eb 70                	jmp    c00315c8 <init_page+0xc6>
c0031558:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003155b:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0031560:	89 c2                	mov    %eax,%edx
c0031562:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0031565:	8d 0c 85 00 00 00 00 	lea    0x0(,%eax,4),%ecx
c003156c:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c003156f:	01 c8                	add    %ecx,%eax
c0031571:	83 ca 07             	or     $0x7,%edx
c0031574:	89 10                	mov    %edx,(%eax)
c0031576:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031579:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c003157e:	89 c2                	mov    %eax,%edx
c0031580:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0031583:	05 00 03 00 00       	add    $0x300,%eax
c0031588:	8d 0c 85 00 00 00 00 	lea    0x0(,%eax,4),%ecx
c003158f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0031592:	01 c8                	add    %ecx,%eax
c0031594:	83 ca 07             	or     $0x7,%edx
c0031597:	89 10                	mov    %edx,(%eax)
c0031599:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
c00315a0:	eb 1a                	jmp    c00315bc <init_page+0xba>
c00315a2:	8b 45 e8             	mov    -0x18(%ebp),%eax
c00315a5:	c1 e0 0c             	shl    $0xc,%eax
c00315a8:	83 c8 07             	or     $0x7,%eax
c00315ab:	89 c2                	mov    %eax,%edx
c00315ad:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00315b0:	89 10                	mov    %edx,(%eax)
c00315b2:	ff 45 e8             	incl   -0x18(%ebp)
c00315b5:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
c00315b9:	ff 45 ec             	incl   -0x14(%ebp)
c00315bc:	81 7d ec ff 03 00 00 	cmpl   $0x3ff,-0x14(%ebp)
c00315c3:	76 dd                	jbe    c00315a2 <init_page+0xa0>
c00315c5:	ff 45 f0             	incl   -0x10(%ebp)
c00315c8:	83 7d f0 1f          	cmpl   $0x1f,-0x10(%ebp)
c00315cc:	76 8a                	jbe    c0031558 <init_page+0x56>
c00315ce:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
c00315d5:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c00315d8:	c1 e8 0c             	shr    $0xc,%eax
c00315db:	25 ff ff 0f 00       	and    $0xfffff,%eax
c00315e0:	c1 e0 0c             	shl    $0xc,%eax
c00315e3:	89 c2                	mov    %eax,%edx
c00315e5:	8b 45 dc             	mov    -0x24(%ebp),%eax
c00315e8:	25 ff 0f 00 00       	and    $0xfff,%eax
c00315ed:	09 d0                	or     %edx,%eax
c00315ef:	89 45 dc             	mov    %eax,-0x24(%ebp)
c00315f2:	8b 45 dc             	mov    -0x24(%ebp),%eax
c00315f5:	83 ec 0c             	sub    $0xc,%esp
c00315f8:	50                   	push   %eax
c00315f9:	e8 9e fe ff ff       	call   c003149c <write_cr3>
c00315fe:	83 c4 10             	add    $0x10,%esp
c0031601:	e8 65 fe ff ff       	call   c003146b <read_cr0>
c0031606:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0031609:	8a 45 e3             	mov    -0x1d(%ebp),%al
c003160c:	83 c8 80             	or     $0xffffff80,%eax
c003160f:	88 45 e3             	mov    %al,-0x1d(%ebp)
c0031612:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0031615:	83 ec 0c             	sub    $0xc,%esp
c0031618:	50                   	push   %eax
c0031619:	e8 68 fe ff ff       	call   c0031486 <write_cr0>
c003161e:	83 c4 10             	add    $0x10,%esp
c0031621:	90                   	nop
c0031622:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031625:	c9                   	leave  
c0031626:	c3                   	ret    

c0031627 <set_segment>:
c0031627:	55                   	push   %ebp
c0031628:	89 e5                	mov    %esp,%ebp
c003162a:	e8 bc ec ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c003162f:	05 d1 b9 00 00       	add    $0xb9d1,%eax
c0031634:	8b 45 08             	mov    0x8(%ebp),%eax
c0031637:	66 c7 00 ff ff       	movw   $0xffff,(%eax)
c003163c:	8b 45 08             	mov    0x8(%ebp),%eax
c003163f:	66 c7 40 02 00 00    	movw   $0x0,0x2(%eax)
c0031645:	8b 45 08             	mov    0x8(%ebp),%eax
c0031648:	c6 40 04 00          	movb   $0x0,0x4(%eax)
c003164c:	8b 45 10             	mov    0x10(%ebp),%eax
c003164f:	88 c2                	mov    %al,%dl
c0031651:	83 e2 0f             	and    $0xf,%edx
c0031654:	8b 45 08             	mov    0x8(%ebp),%eax
c0031657:	88 d1                	mov    %dl,%cl
c0031659:	83 e1 0f             	and    $0xf,%ecx
c003165c:	8a 50 05             	mov    0x5(%eax),%dl
c003165f:	83 e2 f0             	and    $0xfffffff0,%edx
c0031662:	09 ca                	or     %ecx,%edx
c0031664:	88 50 05             	mov    %dl,0x5(%eax)
c0031667:	8b 45 08             	mov    0x8(%ebp),%eax
c003166a:	8a 50 05             	mov    0x5(%eax),%dl
c003166d:	83 ca 10             	or     $0x10,%edx
c0031670:	88 50 05             	mov    %dl,0x5(%eax)
c0031673:	8b 45 0c             	mov    0xc(%ebp),%eax
c0031676:	88 c2                	mov    %al,%dl
c0031678:	83 e2 03             	and    $0x3,%edx
c003167b:	8b 45 08             	mov    0x8(%ebp),%eax
c003167e:	83 e2 03             	and    $0x3,%edx
c0031681:	88 d1                	mov    %dl,%cl
c0031683:	c1 e1 05             	shl    $0x5,%ecx
c0031686:	8a 50 05             	mov    0x5(%eax),%dl
c0031689:	83 e2 9f             	and    $0xffffff9f,%edx
c003168c:	09 ca                	or     %ecx,%edx
c003168e:	88 50 05             	mov    %dl,0x5(%eax)
c0031691:	8b 45 08             	mov    0x8(%ebp),%eax
c0031694:	8a 50 05             	mov    0x5(%eax),%dl
c0031697:	83 ca 80             	or     $0xffffff80,%edx
c003169a:	88 50 05             	mov    %dl,0x5(%eax)
c003169d:	8b 45 08             	mov    0x8(%ebp),%eax
c00316a0:	8a 50 06             	mov    0x6(%eax),%dl
c00316a3:	83 ca 0f             	or     $0xf,%edx
c00316a6:	88 50 06             	mov    %dl,0x6(%eax)
c00316a9:	8b 45 08             	mov    0x8(%ebp),%eax
c00316ac:	8a 50 06             	mov    0x6(%eax),%dl
c00316af:	83 e2 ef             	and    $0xffffffef,%edx
c00316b2:	88 50 06             	mov    %dl,0x6(%eax)
c00316b5:	8b 45 08             	mov    0x8(%ebp),%eax
c00316b8:	8a 50 06             	mov    0x6(%eax),%dl
c00316bb:	83 e2 df             	and    $0xffffffdf,%edx
c00316be:	88 50 06             	mov    %dl,0x6(%eax)
c00316c1:	8b 45 08             	mov    0x8(%ebp),%eax
c00316c4:	8a 50 06             	mov    0x6(%eax),%dl
c00316c7:	83 ca 40             	or     $0x40,%edx
c00316ca:	88 50 06             	mov    %dl,0x6(%eax)
c00316cd:	8b 45 08             	mov    0x8(%ebp),%eax
c00316d0:	8a 50 06             	mov    0x6(%eax),%dl
c00316d3:	83 ca 80             	or     $0xffffff80,%edx
c00316d6:	88 50 06             	mov    %dl,0x6(%eax)
c00316d9:	8b 45 08             	mov    0x8(%ebp),%eax
c00316dc:	c6 40 07 00          	movb   $0x0,0x7(%eax)
c00316e0:	90                   	nop
c00316e1:	5d                   	pop    %ebp
c00316e2:	c3                   	ret    

c00316e3 <init_segment>:
c00316e3:	55                   	push   %ebp
c00316e4:	89 e5                	mov    %esp,%ebp
c00316e6:	53                   	push   %ebx
c00316e7:	83 ec 04             	sub    $0x4,%esp
c00316ea:	e8 04 ec ff ff       	call   c00302f3 <__x86.get_pc_thunk.bx>
c00316ef:	81 c3 11 b9 00 00    	add    $0xb911,%ebx
c00316f5:	83 ec 04             	sub    $0x4,%esp
c00316f8:	6a 18                	push   $0x18
c00316fa:	6a 00                	push   $0x0
c00316fc:	c7 c0 00 10 07 c0    	mov    $0xc0071000,%eax
c0031702:	50                   	push   %eax
c0031703:	e8 d4 07 00 00       	call   c0031edc <memset>
c0031708:	83 c4 10             	add    $0x10,%esp
c003170b:	83 ec 04             	sub    $0x4,%esp
c003170e:	6a 0a                	push   $0xa
c0031710:	6a 00                	push   $0x0
c0031712:	c7 c0 00 10 07 c0    	mov    $0xc0071000,%eax
c0031718:	8d 40 08             	lea    0x8(%eax),%eax
c003171b:	50                   	push   %eax
c003171c:	e8 06 ff ff ff       	call   c0031627 <set_segment>
c0031721:	83 c4 10             	add    $0x10,%esp
c0031724:	83 ec 04             	sub    $0x4,%esp
c0031727:	6a 02                	push   $0x2
c0031729:	6a 00                	push   $0x0
c003172b:	c7 c0 00 10 07 c0    	mov    $0xc0071000,%eax
c0031731:	8d 40 10             	lea    0x10(%eax),%eax
c0031734:	50                   	push   %eax
c0031735:	e8 ed fe ff ff       	call   c0031627 <set_segment>
c003173a:	83 c4 10             	add    $0x10,%esp
c003173d:	83 ec 08             	sub    $0x8,%esp
c0031740:	6a 18                	push   $0x18
c0031742:	c7 c0 00 10 07 c0    	mov    $0xc0071000,%eax
c0031748:	50                   	push   %eax
c0031749:	e8 64 fd ff ff       	call   c00314b2 <write_gdtr>
c003174e:	83 c4 10             	add    $0x10,%esp
c0031751:	90                   	nop
c0031752:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031755:	c9                   	leave  
c0031756:	c3                   	ret    

c0031757 <get_updir>:
c0031757:	55                   	push   %ebp
c0031758:	89 e5                	mov    %esp,%ebp
c003175a:	e8 8c eb ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c003175f:	05 a1 b8 00 00       	add    $0xb8a1,%eax
c0031764:	c7 c0 00 30 09 c0    	mov    $0xc0093000,%eax
c003176a:	5d                   	pop    %ebp
c003176b:	c3                   	ret    

c003176c <get_ucr3>:
c003176c:	55                   	push   %ebp
c003176d:	89 e5                	mov    %esp,%ebp
c003176f:	e8 77 eb ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c0031774:	05 8c b8 00 00       	add    $0xb88c,%eax
c0031779:	c7 c0 00 40 09 c0    	mov    $0xc0094000,%eax
c003177f:	8b 00                	mov    (%eax),%eax
c0031781:	5d                   	pop    %ebp
c0031782:	c3                   	ret    

c0031783 <mm_brk>:
c0031783:	55                   	push   %ebp
c0031784:	89 e5                	mov    %esp,%ebp
c0031786:	53                   	push   %ebx
c0031787:	83 ec 04             	sub    $0x4,%esp
c003178a:	e8 64 eb ff ff       	call   c00302f3 <__x86.get_pc_thunk.bx>
c003178f:	81 c3 71 b8 00 00    	add    $0xb871,%ebx
c0031795:	8b 83 a8 1e 01 00    	mov    0x11ea8(%ebx),%eax
c003179b:	39 45 08             	cmp    %eax,0x8(%ebp)
c003179e:	76 22                	jbe    c00317c2 <mm_brk+0x3f>
c00317a0:	8b 83 a8 1e 01 00    	mov    0x11ea8(%ebx),%eax
c00317a6:	8b 55 08             	mov    0x8(%ebp),%edx
c00317a9:	29 c2                	sub    %eax,%edx
c00317ab:	89 d0                	mov    %edx,%eax
c00317ad:	89 c2                	mov    %eax,%edx
c00317af:	8b 83 a8 1e 01 00    	mov    0x11ea8(%ebx),%eax
c00317b5:	83 ec 08             	sub    $0x8,%esp
c00317b8:	52                   	push   %edx
c00317b9:	50                   	push   %eax
c00317ba:	e8 41 04 00 00       	call   c0031c00 <mm_malloc>
c00317bf:	83 c4 10             	add    $0x10,%esp
c00317c2:	8b 45 08             	mov    0x8(%ebp),%eax
c00317c5:	89 83 a8 1e 01 00    	mov    %eax,0x11ea8(%ebx)
c00317cb:	90                   	nop
c00317cc:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00317cf:	c9                   	leave  
c00317d0:	c3                   	ret    

c00317d1 <init_mm>:
c00317d1:	55                   	push   %ebp
c00317d2:	89 e5                	mov    %esp,%ebp
c00317d4:	53                   	push   %ebx
c00317d5:	83 ec 14             	sub    $0x14,%esp
c00317d8:	e8 16 eb ff ff       	call   c00302f3 <__x86.get_pc_thunk.bx>
c00317dd:	81 c3 23 b8 00 00    	add    $0xb823,%ebx
c00317e3:	e8 05 fd ff ff       	call   c00314ed <get_kpdir>
c00317e8:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00317eb:	83 ec 04             	sub    $0x4,%esp
c00317ee:	68 00 10 00 00       	push   $0x1000
c00317f3:	6a 00                	push   $0x0
c00317f5:	c7 c0 00 30 09 c0    	mov    $0xc0093000,%eax
c00317fb:	50                   	push   %eax
c00317fc:	e8 db 06 00 00       	call   c0031edc <memset>
c0031801:	83 c4 10             	add    $0x10,%esp
c0031804:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031807:	05 00 0c 00 00       	add    $0xc00,%eax
c003180c:	83 ec 04             	sub    $0x4,%esp
c003180f:	68 80 00 00 00       	push   $0x80
c0031814:	50                   	push   %eax
c0031815:	c7 c0 00 30 09 c0    	mov    $0xc0093000,%eax
c003181b:	8d 80 00 0c 00 00    	lea    0xc00(%eax),%eax
c0031821:	50                   	push   %eax
c0031822:	e8 6d 06 00 00       	call   c0031e94 <memcpy>
c0031827:	83 c4 10             	add    $0x10,%esp
c003182a:	c7 c0 00 30 09 c0    	mov    $0xc0093000,%eax
c0031830:	05 00 00 00 40       	add    $0x40000000,%eax
c0031835:	25 00 fc ff ff       	and    $0xfffffc00,%eax
c003183a:	89 c2                	mov    %eax,%edx
c003183c:	c7 c0 00 40 09 c0    	mov    $0xc0094000,%eax
c0031842:	89 10                	mov    %edx,(%eax)
c0031844:	90                   	nop
c0031845:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031848:	c9                   	leave  
c0031849:	c3                   	ret    

c003184a <create_video_mapping>:
c003184a:	55                   	push   %ebp
c003184b:	89 e5                	mov    %esp,%ebp
c003184d:	53                   	push   %ebx
c003184e:	83 ec 04             	sub    $0x4,%esp
c0031851:	e8 95 ea ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c0031856:	05 aa b7 00 00       	add    $0xb7aa,%eax
c003185b:	8d 90 bc c6 ff ff    	lea    -0x3944(%eax),%edx
c0031861:	52                   	push   %edx
c0031862:	6a 14                	push   $0x14
c0031864:	8d 90 04 c6 ff ff    	lea    -0x39fc(%eax),%edx
c003186a:	52                   	push   %edx
c003186b:	8d 90 18 c6 ff ff    	lea    -0x39e8(%eax),%edx
c0031871:	52                   	push   %edx
c0031872:	89 c3                	mov    %eax,%ebx
c0031874:	e8 3a fa ff ff       	call   c00312b3 <printk>
c0031879:	83 c4 10             	add    $0x10,%esp
c003187c:	b8 01 00 00 00       	mov    $0x1,%eax
c0031881:	82                   	nemu_trap 
c0031882:	90                   	nop
c0031883:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031886:	c9                   	leave  
c0031887:	c3                   	ret    

c0031888 <video_mapping_write_test>:
c0031888:	55                   	push   %ebp
c0031889:	89 e5                	mov    %esp,%ebp
c003188b:	83 ec 10             	sub    $0x10,%esp
c003188e:	e8 58 ea ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c0031893:	05 6d b7 00 00       	add    $0xb76d,%eax
c0031898:	c7 45 f8 00 00 0a 00 	movl   $0xa0000,-0x8(%ebp)
c003189f:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c00318a6:	eb 17                	jmp    c00318bf <video_mapping_write_test+0x37>
c00318a8:	8b 45 fc             	mov    -0x4(%ebp),%eax
c00318ab:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c00318b2:	8b 45 f8             	mov    -0x8(%ebp),%eax
c00318b5:	01 c2                	add    %eax,%edx
c00318b7:	8b 45 fc             	mov    -0x4(%ebp),%eax
c00318ba:	89 02                	mov    %eax,(%edx)
c00318bc:	ff 45 fc             	incl   -0x4(%ebp)
c00318bf:	81 7d fc 7f 3e 00 00 	cmpl   $0x3e7f,-0x4(%ebp)
c00318c6:	7e e0                	jle    c00318a8 <video_mapping_write_test+0x20>
c00318c8:	90                   	nop
c00318c9:	c9                   	leave  
c00318ca:	c3                   	ret    

c00318cb <video_mapping_read_test>:
c00318cb:	55                   	push   %ebp
c00318cc:	89 e5                	mov    %esp,%ebp
c00318ce:	53                   	push   %ebx
c00318cf:	83 ec 14             	sub    $0x14,%esp
c00318d2:	e8 1c ea ff ff       	call   c00302f3 <__x86.get_pc_thunk.bx>
c00318d7:	81 c3 29 b7 00 00    	add    $0xb729,%ebx
c00318dd:	c7 45 f0 00 00 0a 00 	movl   $0xa0000,-0x10(%ebp)
c00318e4:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c00318eb:	eb 4a                	jmp    c0031937 <video_mapping_read_test+0x6c>
c00318ed:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00318f0:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c00318f7:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00318fa:	01 d0                	add    %edx,%eax
c00318fc:	8b 10                	mov    (%eax),%edx
c00318fe:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031901:	39 c2                	cmp    %eax,%edx
c0031903:	74 2f                	je     c0031934 <video_mapping_read_test+0x69>
c0031905:	83 ec 0c             	sub    $0xc,%esp
c0031908:	8d 83 61 c6 ff ff    	lea    -0x399f(%ebx),%eax
c003190e:	50                   	push   %eax
c003190f:	8d 83 d4 c6 ff ff    	lea    -0x392c(%ebx),%eax
c0031915:	50                   	push   %eax
c0031916:	6a 27                	push   $0x27
c0031918:	8d 83 04 c6 ff ff    	lea    -0x39fc(%ebx),%eax
c003191e:	50                   	push   %eax
c003191f:	8d 83 70 c6 ff ff    	lea    -0x3990(%ebx),%eax
c0031925:	50                   	push   %eax
c0031926:	e8 88 f9 ff ff       	call   c00312b3 <printk>
c003192b:	83 c4 20             	add    $0x20,%esp
c003192e:	b8 01 00 00 00       	mov    $0x1,%eax
c0031933:	82                   	nemu_trap 
c0031934:	ff 45 f4             	incl   -0xc(%ebp)
c0031937:	81 7d f4 7f 3e 00 00 	cmpl   $0x3e7f,-0xc(%ebp)
c003193e:	7e ad                	jle    c00318ed <video_mapping_read_test+0x22>
c0031940:	90                   	nop
c0031941:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031944:	c9                   	leave  
c0031945:	c3                   	ret    

c0031946 <video_mapping_clear>:
c0031946:	55                   	push   %ebp
c0031947:	89 e5                	mov    %esp,%ebp
c0031949:	53                   	push   %ebx
c003194a:	83 ec 04             	sub    $0x4,%esp
c003194d:	e8 99 e9 ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c0031952:	05 ae b6 00 00       	add    $0xb6ae,%eax
c0031957:	83 ec 04             	sub    $0x4,%esp
c003195a:	68 00 fa 00 00       	push   $0xfa00
c003195f:	6a 00                	push   $0x0
c0031961:	68 00 00 0a 00       	push   $0xa0000
c0031966:	89 c3                	mov    %eax,%ebx
c0031968:	e8 6f 05 00 00       	call   c0031edc <memset>
c003196d:	83 c4 10             	add    $0x10,%esp
c0031970:	90                   	nop
c0031971:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031974:	c9                   	leave  
c0031975:	c3                   	ret    

c0031976 <sti>:
c0031976:	55                   	push   %ebp
c0031977:	89 e5                	mov    %esp,%ebp
c0031979:	e8 6d e9 ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c003197e:	05 82 b6 00 00       	add    $0xb682,%eax
c0031983:	fb                   	sti    
c0031984:	90                   	nop
c0031985:	5d                   	pop    %ebp
c0031986:	c3                   	ret    

c0031987 <cli>:
c0031987:	55                   	push   %ebp
c0031988:	89 e5                	mov    %esp,%ebp
c003198a:	e8 5c e9 ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c003198f:	05 71 b6 00 00       	add    $0xb671,%eax
c0031994:	fa                   	cli    
c0031995:	90                   	nop
c0031996:	5d                   	pop    %ebp
c0031997:	c3                   	ret    

c0031998 <sys_brk>:
c0031998:	55                   	push   %ebp
c0031999:	89 e5                	mov    %esp,%ebp
c003199b:	53                   	push   %ebx
c003199c:	83 ec 04             	sub    $0x4,%esp
c003199f:	e8 47 e9 ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c00319a4:	05 5c b6 00 00       	add    $0xb65c,%eax
c00319a9:	8b 55 08             	mov    0x8(%ebp),%edx
c00319ac:	8b 52 10             	mov    0x10(%edx),%edx
c00319af:	83 ec 0c             	sub    $0xc,%esp
c00319b2:	52                   	push   %edx
c00319b3:	89 c3                	mov    %eax,%ebx
c00319b5:	e8 c9 fd ff ff       	call   c0031783 <mm_brk>
c00319ba:	83 c4 10             	add    $0x10,%esp
c00319bd:	8b 45 08             	mov    0x8(%ebp),%eax
c00319c0:	c7 40 1c 00 00 00 00 	movl   $0x0,0x1c(%eax)
c00319c7:	90                   	nop
c00319c8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00319cb:	c9                   	leave  
c00319cc:	c3                   	ret    

c00319cd <sys_open>:
c00319cd:	55                   	push   %ebp
c00319ce:	89 e5                	mov    %esp,%ebp
c00319d0:	53                   	push   %ebx
c00319d1:	83 ec 04             	sub    $0x4,%esp
c00319d4:	e8 12 e9 ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c00319d9:	05 27 b6 00 00       	add    $0xb627,%eax
c00319de:	8b 55 08             	mov    0x8(%ebp),%edx
c00319e1:	8b 52 18             	mov    0x18(%edx),%edx
c00319e4:	89 d1                	mov    %edx,%ecx
c00319e6:	8b 55 08             	mov    0x8(%ebp),%edx
c00319e9:	8b 52 10             	mov    0x10(%edx),%edx
c00319ec:	83 ec 08             	sub    $0x8,%esp
c00319ef:	51                   	push   %ecx
c00319f0:	52                   	push   %edx
c00319f1:	89 c3                	mov    %eax,%ebx
c00319f3:	e8 cf ef ff ff       	call   c00309c7 <fs_open>
c00319f8:	83 c4 10             	add    $0x10,%esp
c00319fb:	89 c2                	mov    %eax,%edx
c00319fd:	8b 45 08             	mov    0x8(%ebp),%eax
c0031a00:	89 50 1c             	mov    %edx,0x1c(%eax)
c0031a03:	90                   	nop
c0031a04:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031a07:	c9                   	leave  
c0031a08:	c3                   	ret    

c0031a09 <sys_read>:
c0031a09:	55                   	push   %ebp
c0031a0a:	89 e5                	mov    %esp,%ebp
c0031a0c:	53                   	push   %ebx
c0031a0d:	83 ec 04             	sub    $0x4,%esp
c0031a10:	e8 d6 e8 ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c0031a15:	05 eb b5 00 00       	add    $0xb5eb,%eax
c0031a1a:	8b 55 08             	mov    0x8(%ebp),%edx
c0031a1d:	8b 52 14             	mov    0x14(%edx),%edx
c0031a20:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0031a23:	8b 49 18             	mov    0x18(%ecx),%ecx
c0031a26:	89 cb                	mov    %ecx,%ebx
c0031a28:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0031a2b:	8b 49 10             	mov    0x10(%ecx),%ecx
c0031a2e:	83 ec 04             	sub    $0x4,%esp
c0031a31:	52                   	push   %edx
c0031a32:	53                   	push   %ebx
c0031a33:	51                   	push   %ecx
c0031a34:	89 c3                	mov    %eax,%ebx
c0031a36:	e8 ce ef ff ff       	call   c0030a09 <fs_read>
c0031a3b:	83 c4 10             	add    $0x10,%esp
c0031a3e:	89 c2                	mov    %eax,%edx
c0031a40:	8b 45 08             	mov    0x8(%ebp),%eax
c0031a43:	89 50 1c             	mov    %edx,0x1c(%eax)
c0031a46:	90                   	nop
c0031a47:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031a4a:	c9                   	leave  
c0031a4b:	c3                   	ret    

c0031a4c <sys_write>:
c0031a4c:	55                   	push   %ebp
c0031a4d:	89 e5                	mov    %esp,%ebp
c0031a4f:	53                   	push   %ebx
c0031a50:	83 ec 04             	sub    $0x4,%esp
c0031a53:	e8 93 e8 ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c0031a58:	05 a8 b5 00 00       	add    $0xb5a8,%eax
c0031a5d:	8b 55 08             	mov    0x8(%ebp),%edx
c0031a60:	8b 52 14             	mov    0x14(%edx),%edx
c0031a63:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0031a66:	8b 49 18             	mov    0x18(%ecx),%ecx
c0031a69:	89 cb                	mov    %ecx,%ebx
c0031a6b:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0031a6e:	8b 49 10             	mov    0x10(%ecx),%ecx
c0031a71:	83 ec 04             	sub    $0x4,%esp
c0031a74:	52                   	push   %edx
c0031a75:	53                   	push   %ebx
c0031a76:	51                   	push   %ecx
c0031a77:	89 c3                	mov    %eax,%ebx
c0031a79:	e8 01 f0 ff ff       	call   c0030a7f <fs_write>
c0031a7e:	83 c4 10             	add    $0x10,%esp
c0031a81:	89 c2                	mov    %eax,%edx
c0031a83:	8b 45 08             	mov    0x8(%ebp),%eax
c0031a86:	89 50 1c             	mov    %edx,0x1c(%eax)
c0031a89:	90                   	nop
c0031a8a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031a8d:	c9                   	leave  
c0031a8e:	c3                   	ret    

c0031a8f <sys_lseek>:
c0031a8f:	55                   	push   %ebp
c0031a90:	89 e5                	mov    %esp,%ebp
c0031a92:	53                   	push   %ebx
c0031a93:	83 ec 04             	sub    $0x4,%esp
c0031a96:	e8 50 e8 ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c0031a9b:	05 65 b5 00 00       	add    $0xb565,%eax
c0031aa0:	8b 55 08             	mov    0x8(%ebp),%edx
c0031aa3:	8b 52 14             	mov    0x14(%edx),%edx
c0031aa6:	89 d3                	mov    %edx,%ebx
c0031aa8:	8b 55 08             	mov    0x8(%ebp),%edx
c0031aab:	8b 52 18             	mov    0x18(%edx),%edx
c0031aae:	89 d1                	mov    %edx,%ecx
c0031ab0:	8b 55 08             	mov    0x8(%ebp),%edx
c0031ab3:	8b 52 10             	mov    0x10(%edx),%edx
c0031ab6:	83 ec 04             	sub    $0x4,%esp
c0031ab9:	53                   	push   %ebx
c0031aba:	51                   	push   %ecx
c0031abb:	52                   	push   %edx
c0031abc:	89 c3                	mov    %eax,%ebx
c0031abe:	e8 38 f0 ff ff       	call   c0030afb <fs_lseek>
c0031ac3:	83 c4 10             	add    $0x10,%esp
c0031ac6:	89 c2                	mov    %eax,%edx
c0031ac8:	8b 45 08             	mov    0x8(%ebp),%eax
c0031acb:	89 50 1c             	mov    %edx,0x1c(%eax)
c0031ace:	90                   	nop
c0031acf:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031ad2:	c9                   	leave  
c0031ad3:	c3                   	ret    

c0031ad4 <sys_close>:
c0031ad4:	55                   	push   %ebp
c0031ad5:	89 e5                	mov    %esp,%ebp
c0031ad7:	53                   	push   %ebx
c0031ad8:	83 ec 04             	sub    $0x4,%esp
c0031adb:	e8 0b e8 ff ff       	call   c00302eb <__x86.get_pc_thunk.ax>
c0031ae0:	05 20 b5 00 00       	add    $0xb520,%eax
c0031ae5:	8b 55 08             	mov    0x8(%ebp),%edx
c0031ae8:	8b 52 10             	mov    0x10(%edx),%edx
c0031aeb:	83 ec 0c             	sub    $0xc,%esp
c0031aee:	52                   	push   %edx
c0031aef:	89 c3                	mov    %eax,%ebx
c0031af1:	e8 47 f0 ff ff       	call   c0030b3d <fs_close>
c0031af6:	83 c4 10             	add    $0x10,%esp
c0031af9:	89 c2                	mov    %eax,%edx
c0031afb:	8b 45 08             	mov    0x8(%ebp),%eax
c0031afe:	89 50 1c             	mov    %edx,0x1c(%eax)
c0031b01:	90                   	nop
c0031b02:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031b05:	c9                   	leave  
c0031b06:	c3                   	ret    

c0031b07 <do_syscall>:
c0031b07:	55                   	push   %ebp
c0031b08:	89 e5                	mov    %esp,%ebp
c0031b0a:	53                   	push   %ebx
c0031b0b:	83 ec 04             	sub    $0x4,%esp
c0031b0e:	e8 e0 e7 ff ff       	call   c00302f3 <__x86.get_pc_thunk.bx>
c0031b13:	81 c3 ed b4 00 00    	add    $0xb4ed,%ebx
c0031b19:	8b 45 08             	mov    0x8(%ebp),%eax
c0031b1c:	8b 40 1c             	mov    0x1c(%eax),%eax
c0031b1f:	83 f8 2d             	cmp    $0x2d,%eax
c0031b22:	0f 87 98 00 00 00    	ja     c0031bc0 <.L10>
c0031b28:	c1 e0 02             	shl    $0x2,%eax
c0031b2b:	8b 84 18 5c c7 ff ff 	mov    -0x38a4(%eax,%ebx,1),%eax
c0031b32:	01 d8                	add    %ebx,%eax
c0031b34:	ff e0                	jmp    *%eax

c0031b36 <.L18>:
c0031b36:	e8 4c fe ff ff       	call   c0031987 <cli>
c0031b3b:	8b 45 08             	mov    0x8(%ebp),%eax
c0031b3e:	8b 40 18             	mov    0x18(%eax),%eax
c0031b41:	89 c2                	mov    %eax,%edx
c0031b43:	8b 45 08             	mov    0x8(%ebp),%eax
c0031b46:	8b 40 10             	mov    0x10(%eax),%eax
c0031b49:	83 ec 08             	sub    $0x8,%esp
c0031b4c:	52                   	push   %edx
c0031b4d:	50                   	push   %eax
c0031b4e:	e8 05 f5 ff ff       	call   c0031058 <add_irq_handle>
c0031b53:	83 c4 10             	add    $0x10,%esp
c0031b56:	e8 1b fe ff ff       	call   c0031976 <sti>
c0031b5b:	e9 8f 00 00 00       	jmp    c0031bef <.L10+0x2f>

c0031b60 <.L11>:
c0031b60:	83 ec 0c             	sub    $0xc,%esp
c0031b63:	ff 75 08             	pushl  0x8(%ebp)
c0031b66:	e8 2d fe ff ff       	call   c0031998 <sys_brk>
c0031b6b:	83 c4 10             	add    $0x10,%esp
c0031b6e:	eb 7f                	jmp    c0031bef <.L10+0x2f>

c0031b70 <.L15>:
c0031b70:	83 ec 0c             	sub    $0xc,%esp
c0031b73:	ff 75 08             	pushl  0x8(%ebp)
c0031b76:	e8 52 fe ff ff       	call   c00319cd <sys_open>
c0031b7b:	83 c4 10             	add    $0x10,%esp
c0031b7e:	eb 6f                	jmp    c0031bef <.L10+0x2f>

c0031b80 <.L17>:
c0031b80:	83 ec 0c             	sub    $0xc,%esp
c0031b83:	ff 75 08             	pushl  0x8(%ebp)
c0031b86:	e8 7e fe ff ff       	call   c0031a09 <sys_read>
c0031b8b:	83 c4 10             	add    $0x10,%esp
c0031b8e:	eb 5f                	jmp    c0031bef <.L10+0x2f>

c0031b90 <.L16>:
c0031b90:	83 ec 0c             	sub    $0xc,%esp
c0031b93:	ff 75 08             	pushl  0x8(%ebp)
c0031b96:	e8 b1 fe ff ff       	call   c0031a4c <sys_write>
c0031b9b:	83 c4 10             	add    $0x10,%esp
c0031b9e:	eb 4f                	jmp    c0031bef <.L10+0x2f>

c0031ba0 <.L13>:
c0031ba0:	83 ec 0c             	sub    $0xc,%esp
c0031ba3:	ff 75 08             	pushl  0x8(%ebp)
c0031ba6:	e8 e4 fe ff ff       	call   c0031a8f <sys_lseek>
c0031bab:	83 c4 10             	add    $0x10,%esp
c0031bae:	eb 3f                	jmp    c0031bef <.L10+0x2f>

c0031bb0 <.L14>:
c0031bb0:	83 ec 0c             	sub    $0xc,%esp
c0031bb3:	ff 75 08             	pushl  0x8(%ebp)
c0031bb6:	e8 19 ff ff ff       	call   c0031ad4 <sys_close>
c0031bbb:	83 c4 10             	add    $0x10,%esp
c0031bbe:	eb 2f                	jmp    c0031bef <.L10+0x2f>

c0031bc0 <.L10>:
c0031bc0:	8b 45 08             	mov    0x8(%ebp),%eax
c0031bc3:	8b 40 1c             	mov    0x1c(%eax),%eax
c0031bc6:	83 ec 0c             	sub    $0xc,%esp
c0031bc9:	50                   	push   %eax
c0031bca:	8d 83 14 c8 ff ff    	lea    -0x37ec(%ebx),%eax
c0031bd0:	50                   	push   %eax
c0031bd1:	6a 4a                	push   $0x4a
c0031bd3:	8d 83 ec c6 ff ff    	lea    -0x3914(%ebx),%eax
c0031bd9:	50                   	push   %eax
c0031bda:	8d 83 08 c7 ff ff    	lea    -0x38f8(%ebx),%eax
c0031be0:	50                   	push   %eax
c0031be1:	e8 cd f6 ff ff       	call   c00312b3 <printk>
c0031be6:	83 c4 20             	add    $0x20,%esp
c0031be9:	b8 01 00 00 00       	mov    $0x1,%eax
c0031bee:	82                   	nemu_trap 
c0031bef:	90                   	nop
c0031bf0:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031bf3:	c9                   	leave  
c0031bf4:	c3                   	ret    
c0031bf5:	66 90                	xchg   %ax,%ax
c0031bf7:	66 90                	xchg   %ax,%ax
c0031bf9:	66 90                	xchg   %ax,%ax
c0031bfb:	66 90                	xchg   %ax,%ax
c0031bfd:	66 90                	xchg   %ax,%ax
c0031bff:	90                   	nop

c0031c00 <mm_malloc>:
c0031c00:	55                   	push   %ebp
c0031c01:	31 c0                	xor    %eax,%eax
c0031c03:	89 e5                	mov    %esp,%ebp
c0031c05:	57                   	push   %edi
c0031c06:	56                   	push   %esi
c0031c07:	53                   	push   %ebx
c0031c08:	83 ec 3c             	sub    $0x3c,%esp
c0031c0b:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c0031c0e:	85 db                	test   %ebx,%ebx
c0031c10:	0f 8e 36 02 00 00    	jle    c0031e4c <mm_malloc+0x24c>
c0031c16:	e8 3c fb ff ff       	call   c0031757 <get_updir>
c0031c1b:	89 c6                	mov    %eax,%esi
c0031c1d:	e8 4a fb ff ff       	call   c003176c <get_ucr3>
c0031c22:	8b 55 08             	mov    0x8(%ebp),%edx
c0031c25:	8d 5c 1a ff          	lea    -0x1(%edx,%ebx,1),%ebx
c0031c29:	89 5d e0             	mov    %ebx,-0x20(%ebp)
c0031c2c:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0031c2f:	b8 00 10 00 00       	mov    $0x1000,%eax
c0031c34:	29 d0                	sub    %edx,%eax
c0031c36:	89 da                	mov    %ebx,%edx
c0031c38:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
c0031c3e:	01 d0                	add    %edx,%eax
c0031c40:	85 c0                	test   %eax,%eax
c0031c42:	0f 8e c0 00 00 00    	jle    c0031d08 <mm_malloc+0x108>
c0031c48:	8b 55 08             	mov    0x8(%ebp),%edx
c0031c4b:	83 e8 01             	sub    $0x1,%eax
c0031c4e:	89 f7                	mov    %esi,%edi
c0031c50:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0031c55:	8d 84 02 00 10 00 00 	lea    0x1000(%edx,%eax,1),%eax
c0031c5c:	89 d3                	mov    %edx,%ebx
c0031c5e:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0031c61:	eb 51                	jmp    c0031cb4 <mm_malloc+0xb4>
c0031c63:	90                   	nop
c0031c64:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0031c68:	8b 31                	mov    (%ecx),%esi
c0031c6a:	81 e6 00 f0 ff ff    	and    $0xfffff000,%esi
c0031c70:	81 ee 00 00 00 40    	sub    $0x40000000,%esi
c0031c76:	89 d8                	mov    %ebx,%eax
c0031c78:	c1 e8 0a             	shr    $0xa,%eax
c0031c7b:	25 fc 0f 00 00       	and    $0xffc,%eax
c0031c80:	01 c6                	add    %eax,%esi
c0031c82:	f6 06 01             	testb  $0x1,(%esi)
c0031c85:	75 22                	jne    c0031ca9 <mm_malloc+0xa9>
c0031c87:	a1 20 d0 03 c0       	mov    0xc003d020,%eax
c0031c8c:	3d ff 7f 00 00       	cmp    $0x7fff,%eax
c0031c91:	0f 8f c1 01 00 00    	jg     c0031e58 <mm_malloc+0x258>
c0031c97:	89 c1                	mov    %eax,%ecx
c0031c99:	83 c0 01             	add    $0x1,%eax
c0031c9c:	c1 e1 0c             	shl    $0xc,%ecx
c0031c9f:	83 c9 07             	or     $0x7,%ecx
c0031ca2:	89 0e                	mov    %ecx,(%esi)
c0031ca4:	a3 20 d0 03 c0       	mov    %eax,0xc003d020
c0031ca9:	81 c3 00 10 00 00    	add    $0x1000,%ebx
c0031caf:	3b 5d e4             	cmp    -0x1c(%ebp),%ebx
c0031cb2:	74 54                	je     c0031d08 <mm_malloc+0x108>
c0031cb4:	89 d8                	mov    %ebx,%eax
c0031cb6:	c1 e8 16             	shr    $0x16,%eax
c0031cb9:	8d 0c 87             	lea    (%edi,%eax,4),%ecx
c0031cbc:	f6 01 01             	testb  $0x1,(%ecx)
c0031cbf:	75 a7                	jne    c0031c68 <mm_malloc+0x68>
c0031cc1:	a1 00 f0 04 c0       	mov    0xc004f000,%eax
c0031cc6:	89 c6                	mov    %eax,%esi
c0031cc8:	83 c0 01             	add    $0x1,%eax
c0031ccb:	c1 e6 0c             	shl    $0xc,%esi
c0031cce:	81 c6 00 00 05 c0    	add    $0xc0050000,%esi
c0031cd4:	a3 00 f0 04 c0       	mov    %eax,0xc004f000
c0031cd9:	8d 86 00 00 00 40    	lea    0x40000000(%esi),%eax
c0031cdf:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0031ce4:	83 c8 07             	or     $0x7,%eax
c0031ce7:	89 01                	mov    %eax,(%ecx)
c0031ce9:	c7 44 24 08 00 10 00 	movl   $0x1000,0x8(%esp)
c0031cf0:	00 
c0031cf1:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0031cf8:	00 
c0031cf9:	89 34 24             	mov    %esi,(%esp)
c0031cfc:	e8 db 01 00 00       	call   c0031edc <memset>
c0031d01:	e9 70 ff ff ff       	jmp    c0031c76 <mm_malloc+0x76>
c0031d06:	66 90                	xchg   %ax,%ax
c0031d08:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c0031d0b:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0031d0e:	81 eb 00 00 00 40    	sub    $0x40000000,%ebx
c0031d14:	81 e3 00 f0 ff ff    	and    $0xfffff000,%ebx
c0031d1a:	c1 e8 16             	shr    $0x16,%eax
c0031d1d:	8b 34 83             	mov    (%ebx,%eax,4),%esi
c0031d20:	f7 c6 01 00 00 00    	test   $0x1,%esi
c0031d26:	75 32                	jne    c0031d5a <mm_malloc+0x15a>
c0031d28:	c7 44 24 10 43 98 03 	movl   $0xc0039843,0x10(%esp)
c0031d2f:	c0 
c0031d30:	c7 44 24 0c aa 98 03 	movl   $0xc00398aa,0xc(%esp)
c0031d37:	c0 
c0031d38:	c7 44 24 08 11 00 00 	movl   $0x11,0x8(%esp)
c0031d3f:	00 
c0031d40:	c7 44 24 04 32 98 03 	movl   $0xc0039832,0x4(%esp)
c0031d47:	c0 
c0031d48:	c7 04 24 54 98 03 c0 	movl   $0xc0039854,(%esp)
c0031d4f:	e8 5f f5 ff ff       	call   c00312b3 <printk>
c0031d54:	b8 01 00 00 00       	mov    $0x1,%eax
c0031d59:	82                   	nemu_trap 
c0031d5a:	8b 55 e0             	mov    -0x20(%ebp),%edx
c0031d5d:	8d 86 00 00 00 c0    	lea    -0x40000000(%esi),%eax
c0031d63:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0031d68:	c1 ea 0c             	shr    $0xc,%edx
c0031d6b:	81 e2 ff 03 00 00    	and    $0x3ff,%edx
c0031d71:	f6 04 90 01          	testb  $0x1,(%eax,%edx,4)
c0031d75:	75 32                	jne    c0031da9 <mm_malloc+0x1a9>
c0031d77:	c7 44 24 10 4b 98 03 	movl   $0xc003984b,0x10(%esp)
c0031d7e:	c0 
c0031d7f:	c7 44 24 0c aa 98 03 	movl   $0xc00398aa,0xc(%esp)
c0031d86:	c0 
c0031d87:	c7 44 24 08 13 00 00 	movl   $0x13,0x8(%esp)
c0031d8e:	00 
c0031d8f:	c7 44 24 04 32 98 03 	movl   $0xc0039832,0x4(%esp)
c0031d96:	c0 
c0031d97:	c7 04 24 54 98 03 c0 	movl   $0xc0039854,(%esp)
c0031d9e:	e8 10 f5 ff ff       	call   c00312b3 <printk>
c0031da3:	b8 01 00 00 00       	mov    $0x1,%eax
c0031da8:	82                   	nemu_trap 
c0031da9:	8b 45 08             	mov    0x8(%ebp),%eax
c0031dac:	c1 e8 16             	shr    $0x16,%eax
c0031daf:	8b 1c 83             	mov    (%ebx,%eax,4),%ebx
c0031db2:	f6 c3 01             	test   $0x1,%bl
c0031db5:	75 32                	jne    c0031de9 <mm_malloc+0x1e9>
c0031db7:	c7 44 24 10 43 98 03 	movl   $0xc0039843,0x10(%esp)
c0031dbe:	c0 
c0031dbf:	c7 44 24 0c aa 98 03 	movl   $0xc00398aa,0xc(%esp)
c0031dc6:	c0 
c0031dc7:	c7 44 24 08 11 00 00 	movl   $0x11,0x8(%esp)
c0031dce:	00 
c0031dcf:	c7 44 24 04 32 98 03 	movl   $0xc0039832,0x4(%esp)
c0031dd6:	c0 
c0031dd7:	c7 04 24 54 98 03 c0 	movl   $0xc0039854,(%esp)
c0031dde:	e8 d0 f4 ff ff       	call   c00312b3 <printk>
c0031de3:	b8 01 00 00 00       	mov    $0x1,%eax
c0031de8:	82                   	nemu_trap 
c0031de9:	8b 55 08             	mov    0x8(%ebp),%edx
c0031dec:	8d 83 00 00 00 c0    	lea    -0x40000000(%ebx),%eax
c0031df2:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0031df7:	c1 ea 0c             	shr    $0xc,%edx
c0031dfa:	81 e2 ff 03 00 00    	and    $0x3ff,%edx
c0031e00:	8b 1c 90             	mov    (%eax,%edx,4),%ebx
c0031e03:	f6 c3 01             	test   $0x1,%bl
c0031e06:	75 32                	jne    c0031e3a <mm_malloc+0x23a>
c0031e08:	c7 44 24 10 4b 98 03 	movl   $0xc003984b,0x10(%esp)
c0031e0f:	c0 
c0031e10:	c7 44 24 0c aa 98 03 	movl   $0xc00398aa,0xc(%esp)
c0031e17:	c0 
c0031e18:	c7 44 24 08 13 00 00 	movl   $0x13,0x8(%esp)
c0031e1f:	00 
c0031e20:	c7 44 24 04 32 98 03 	movl   $0xc0039832,0x4(%esp)
c0031e27:	c0 
c0031e28:	c7 04 24 54 98 03 c0 	movl   $0xc0039854,(%esp)
c0031e2f:	e8 7f f4 ff ff       	call   c00312b3 <printk>
c0031e34:	b8 01 00 00 00       	mov    $0x1,%eax
c0031e39:	82                   	nemu_trap 
c0031e3a:	8b 55 08             	mov    0x8(%ebp),%edx
c0031e3d:	89 d8                	mov    %ebx,%eax
c0031e3f:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0031e44:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
c0031e4a:	09 d0                	or     %edx,%eax
c0031e4c:	83 c4 3c             	add    $0x3c,%esp
c0031e4f:	5b                   	pop    %ebx
c0031e50:	5e                   	pop    %esi
c0031e51:	5f                   	pop    %edi
c0031e52:	5d                   	pop    %ebp
c0031e53:	c3                   	ret    
c0031e54:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0031e58:	c7 44 24 10 1f 98 03 	movl   $0xc003981f,0x10(%esp)
c0031e5f:	c0 
c0031e60:	c7 44 24 0c a0 98 03 	movl   $0xc00398a0,0xc(%esp)
c0031e67:	c0 
c0031e68:	c7 44 24 08 31 00 00 	movl   $0x31,0x8(%esp)
c0031e6f:	00 
c0031e70:	c7 44 24 04 32 98 03 	movl   $0xc0039832,0x4(%esp)
c0031e77:	c0 
c0031e78:	c7 04 24 54 98 03 c0 	movl   $0xc0039854,(%esp)
c0031e7f:	e8 2f f4 ff ff       	call   c00312b3 <printk>
c0031e84:	b8 01 00 00 00       	mov    $0x1,%eax
c0031e89:	82                   	nemu_trap 
c0031e8a:	a1 20 d0 03 c0       	mov    0xc003d020,%eax
c0031e8f:	e9 03 fe ff ff       	jmp    c0031c97 <mm_malloc+0x97>

c0031e94 <memcpy>:
c0031e94:	55                   	push   %ebp
c0031e95:	89 e5                	mov    %esp,%ebp
c0031e97:	56                   	push   %esi
c0031e98:	57                   	push   %edi
c0031e99:	53                   	push   %ebx
c0031e9a:	8b 7d 08             	mov    0x8(%ebp),%edi
c0031e9d:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0031ea0:	8b 75 0c             	mov    0xc(%ebp),%esi
c0031ea3:	fc                   	cld    
c0031ea4:	83 f9 08             	cmp    $0x8,%ecx
c0031ea7:	76 26                	jbe    c0031ecf <memcpy+0x3b>
c0031ea9:	89 fa                	mov    %edi,%edx
c0031eab:	89 cb                	mov    %ecx,%ebx
c0031ead:	83 e2 03             	and    $0x3,%edx
c0031eb0:	74 10                	je     c0031ec2 <memcpy+0x2e>
c0031eb2:	b9 04 00 00 00       	mov    $0x4,%ecx
c0031eb7:	29 d1                	sub    %edx,%ecx
c0031eb9:	83 e1 03             	and    $0x3,%ecx
c0031ebc:	29 cb                	sub    %ecx,%ebx
c0031ebe:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0031ec0:	89 d9                	mov    %ebx,%ecx
c0031ec2:	c1 e9 02             	shr    $0x2,%ecx
c0031ec5:	8d 76 00             	lea    0x0(%esi),%esi
c0031ec8:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
c0031eca:	89 d9                	mov    %ebx,%ecx
c0031ecc:	83 e1 03             	and    $0x3,%ecx
c0031ecf:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0031ed1:	8b 45 08             	mov    0x8(%ebp),%eax
c0031ed4:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0031ed7:	5b                   	pop    %ebx
c0031ed8:	5f                   	pop    %edi
c0031ed9:	5e                   	pop    %esi
c0031eda:	c9                   	leave  
c0031edb:	c3                   	ret    

c0031edc <memset>:
c0031edc:	55                   	push   %ebp
c0031edd:	89 e5                	mov    %esp,%ebp
c0031edf:	57                   	push   %edi
c0031ee0:	8b 7d 08             	mov    0x8(%ebp),%edi
c0031ee3:	0f b6 45 0c          	movzbl 0xc(%ebp),%eax
c0031ee7:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0031eea:	fc                   	cld    
c0031eeb:	83 f9 10             	cmp    $0x10,%ecx
c0031eee:	76 69                	jbe    c0031f59 <memset+0x7d>
c0031ef0:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031ef6:	74 4c                	je     c0031f44 <memset+0x68>
c0031ef8:	88 07                	mov    %al,(%edi)
c0031efa:	47                   	inc    %edi
c0031efb:	49                   	dec    %ecx
c0031efc:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031f02:	74 40                	je     c0031f44 <memset+0x68>
c0031f04:	88 07                	mov    %al,(%edi)
c0031f06:	47                   	inc    %edi
c0031f07:	49                   	dec    %ecx
c0031f08:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031f0e:	74 34                	je     c0031f44 <memset+0x68>
c0031f10:	88 07                	mov    %al,(%edi)
c0031f12:	47                   	inc    %edi
c0031f13:	49                   	dec    %ecx
c0031f14:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031f1a:	74 28                	je     c0031f44 <memset+0x68>
c0031f1c:	88 07                	mov    %al,(%edi)
c0031f1e:	47                   	inc    %edi
c0031f1f:	49                   	dec    %ecx
c0031f20:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031f26:	74 1c                	je     c0031f44 <memset+0x68>
c0031f28:	88 07                	mov    %al,(%edi)
c0031f2a:	47                   	inc    %edi
c0031f2b:	49                   	dec    %ecx
c0031f2c:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031f32:	74 10                	je     c0031f44 <memset+0x68>
c0031f34:	88 07                	mov    %al,(%edi)
c0031f36:	47                   	inc    %edi
c0031f37:	49                   	dec    %ecx
c0031f38:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031f3e:	74 04                	je     c0031f44 <memset+0x68>
c0031f40:	88 07                	mov    %al,(%edi)
c0031f42:	47                   	inc    %edi
c0031f43:	49                   	dec    %ecx
c0031f44:	88 c4                	mov    %al,%ah
c0031f46:	89 c2                	mov    %eax,%edx
c0031f48:	c1 e2 10             	shl    $0x10,%edx
c0031f4b:	09 d0                	or     %edx,%eax
c0031f4d:	89 ca                	mov    %ecx,%edx
c0031f4f:	c1 e9 02             	shr    $0x2,%ecx
c0031f52:	83 e2 03             	and    $0x3,%edx
c0031f55:	f3 ab                	rep stos %eax,%es:(%edi)
c0031f57:	89 d1                	mov    %edx,%ecx
c0031f59:	f3 aa                	rep stos %al,%es:(%edi)
c0031f5b:	8b 45 08             	mov    0x8(%ebp),%eax
c0031f5e:	8d 65 fc             	lea    -0x4(%ebp),%esp
c0031f61:	5f                   	pop    %edi
c0031f62:	c9                   	leave  
c0031f63:	c3                   	ret    
c0031f64:	66 90                	xchg   %ax,%ax
c0031f66:	66 90                	xchg   %ax,%ax
c0031f68:	66 90                	xchg   %ax,%ax
c0031f6a:	66 90                	xchg   %ax,%ax
c0031f6c:	66 90                	xchg   %ax,%ax
c0031f6e:	66 90                	xchg   %ax,%ax

c0031f70 <_vsnprintf_r>:
c0031f70:	55                   	push   %ebp
c0031f71:	89 e5                	mov    %esp,%ebp
c0031f73:	56                   	push   %esi
c0031f74:	53                   	push   %ebx
c0031f75:	83 c4 80             	add    $0xffffff80,%esp
c0031f78:	8b 5d 10             	mov    0x10(%ebp),%ebx
c0031f7b:	8b 75 08             	mov    0x8(%ebp),%esi
c0031f7e:	8b 45 0c             	mov    0xc(%ebp),%eax
c0031f81:	85 db                	test   %ebx,%ebx
c0031f83:	78 63                	js     c0031fe8 <_vsnprintf_r+0x78>
c0031f85:	ba 08 02 00 00       	mov    $0x208,%edx
c0031f8a:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
c0031f8f:	66 89 55 9c          	mov    %dx,-0x64(%ebp)
c0031f93:	8d 53 ff             	lea    -0x1(%ebx),%edx
c0031f96:	89 45 90             	mov    %eax,-0x70(%ebp)
c0031f99:	89 45 a0             	mov    %eax,-0x60(%ebp)
c0031f9c:	31 c0                	xor    %eax,%eax
c0031f9e:	85 db                	test   %ebx,%ebx
c0031fa0:	0f 45 c2             	cmovne %edx,%eax
c0031fa3:	89 45 98             	mov    %eax,-0x68(%ebp)
c0031fa6:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0031fa9:	8b 45 18             	mov    0x18(%ebp),%eax
c0031fac:	89 34 24             	mov    %esi,(%esp)
c0031faf:	66 89 4d 9e          	mov    %cx,-0x62(%ebp)
c0031fb3:	89 44 24 0c          	mov    %eax,0xc(%esp)
c0031fb7:	8b 45 14             	mov    0x14(%ebp),%eax
c0031fba:	89 44 24 08          	mov    %eax,0x8(%esp)
c0031fbe:	8d 45 90             	lea    -0x70(%ebp),%eax
c0031fc1:	89 44 24 04          	mov    %eax,0x4(%esp)
c0031fc5:	e8 86 00 00 00       	call   c0032050 <_svfprintf_r>
c0031fca:	83 f8 ff             	cmp    $0xffffffff,%eax
c0031fcd:	7c 11                	jl     c0031fe0 <_vsnprintf_r+0x70>
c0031fcf:	85 db                	test   %ebx,%ebx
c0031fd1:	74 06                	je     c0031fd9 <_vsnprintf_r+0x69>
c0031fd3:	8b 55 90             	mov    -0x70(%ebp),%edx
c0031fd6:	c6 02 00             	movb   $0x0,(%edx)
c0031fd9:	83 ec 80             	sub    $0xffffff80,%esp
c0031fdc:	5b                   	pop    %ebx
c0031fdd:	5e                   	pop    %esi
c0031fde:	5d                   	pop    %ebp
c0031fdf:	c3                   	ret    
c0031fe0:	c7 06 8b 00 00 00    	movl   $0x8b,(%esi)
c0031fe6:	eb e7                	jmp    c0031fcf <_vsnprintf_r+0x5f>
c0031fe8:	c7 06 8b 00 00 00    	movl   $0x8b,(%esi)
c0031fee:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0031ff3:	eb e4                	jmp    c0031fd9 <_vsnprintf_r+0x69>
c0031ff5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0031ff9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0032000 <vsnprintf>:
c0032000:	55                   	push   %ebp
c0032001:	89 e5                	mov    %esp,%ebp
c0032003:	83 ec 28             	sub    $0x28,%esp
c0032006:	e8 35 00 00 00       	call   c0032040 <__getreent>
c003200b:	8b 55 14             	mov    0x14(%ebp),%edx
c003200e:	89 54 24 10          	mov    %edx,0x10(%esp)
c0032012:	8b 55 10             	mov    0x10(%ebp),%edx
c0032015:	89 04 24             	mov    %eax,(%esp)
c0032018:	89 54 24 0c          	mov    %edx,0xc(%esp)
c003201c:	8b 55 0c             	mov    0xc(%ebp),%edx
c003201f:	89 54 24 08          	mov    %edx,0x8(%esp)
c0032023:	8b 55 08             	mov    0x8(%ebp),%edx
c0032026:	89 54 24 04          	mov    %edx,0x4(%esp)
c003202a:	e8 41 ff ff ff       	call   c0031f70 <_vsnprintf_r>
c003202f:	c9                   	leave  
c0032030:	c3                   	ret    
c0032031:	66 90                	xchg   %ax,%ax
c0032033:	66 90                	xchg   %ax,%ax
c0032035:	66 90                	xchg   %ax,%ax
c0032037:	66 90                	xchg   %ax,%ax
c0032039:	66 90                	xchg   %ax,%ax
c003203b:	66 90                	xchg   %ax,%ax
c003203d:	66 90                	xchg   %ax,%ax
c003203f:	90                   	nop

c0032040 <__getreent>:
c0032040:	55                   	push   %ebp
c0032041:	a1 40 d0 03 c0       	mov    0xc003d040,%eax
c0032046:	89 e5                	mov    %esp,%ebp
c0032048:	5d                   	pop    %ebp
c0032049:	c3                   	ret    
c003204a:	66 90                	xchg   %ax,%ax
c003204c:	66 90                	xchg   %ax,%ax
c003204e:	66 90                	xchg   %ax,%ax

c0032050 <_svfprintf_r>:
c0032050:	55                   	push   %ebp
c0032051:	89 e5                	mov    %esp,%ebp
c0032053:	57                   	push   %edi
c0032054:	56                   	push   %esi
c0032055:	53                   	push   %ebx
c0032056:	81 ec 1c 01 00 00    	sub    $0x11c,%esp
c003205c:	8b 45 08             	mov    0x8(%ebp),%eax
c003205f:	89 04 24             	mov    %eax,(%esp)
c0032062:	e8 89 33 00 00       	call   c00353f0 <_localeconv_r>
c0032067:	8b 00                	mov    (%eax),%eax
c0032069:	89 04 24             	mov    %eax,(%esp)
c003206c:	89 85 0c ff ff ff    	mov    %eax,-0xf4(%ebp)
c0032072:	e8 d9 4a 00 00       	call   c0036b50 <strlen>
c0032077:	89 85 08 ff ff ff    	mov    %eax,-0xf8(%ebp)
c003207d:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032080:	f6 40 0c 80          	testb  $0x80,0xc(%eax)
c0032084:	74 0b                	je     c0032091 <_svfprintf_r+0x41>
c0032086:	8b 40 10             	mov    0x10(%eax),%eax
c0032089:	85 c0                	test   %eax,%eax
c003208b:	0f 84 62 18 00 00    	je     c00338f3 <_svfprintf_r+0x18a3>
c0032091:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0032094:	8d 55 a7             	lea    -0x59(%ebp),%edx
c0032097:	89 c7                	mov    %eax,%edi
c0032099:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%ebp)
c003209f:	d9 ee                	fldz   
c00320a1:	29 d0                	sub    %edx,%eax
c00320a3:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%ebp)
c00320aa:	00 00 00 
c00320ad:	dd 9d 10 ff ff ff    	fstpl  -0xf0(%ebp)
c00320b3:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c00320ba:	00 00 00 
c00320bd:	c7 85 1c ff ff ff 00 	movl   $0x0,-0xe4(%ebp)
c00320c4:	00 00 00 
c00320c7:	c7 85 18 ff ff ff 00 	movl   $0x0,-0xe8(%ebp)
c00320ce:	00 00 00 
c00320d1:	c7 85 04 ff ff ff 00 	movl   $0x0,-0xfc(%ebp)
c00320d8:	00 00 00 
c00320db:	c7 85 34 ff ff ff 00 	movl   $0x0,-0xcc(%ebp)
c00320e2:	00 00 00 
c00320e5:	89 85 00 ff ff ff    	mov    %eax,-0x100(%ebp)
c00320eb:	8b 45 10             	mov    0x10(%ebp),%eax
c00320ee:	8b 5d 10             	mov    0x10(%ebp),%ebx
c00320f1:	0f b6 00             	movzbl (%eax),%eax
c00320f4:	3c 25                	cmp    $0x25,%al
c00320f6:	74 4d                	je     c0032145 <_svfprintf_r+0xf5>
c00320f8:	84 c0                	test   %al,%al
c00320fa:	75 08                	jne    c0032104 <_svfprintf_r+0xb4>
c00320fc:	eb 47                	jmp    c0032145 <_svfprintf_r+0xf5>
c00320fe:	66 90                	xchg   %ax,%ax
c0032100:	84 c0                	test   %al,%al
c0032102:	74 0a                	je     c003210e <_svfprintf_r+0xbe>
c0032104:	83 c3 01             	add    $0x1,%ebx
c0032107:	0f b6 03             	movzbl (%ebx),%eax
c003210a:	3c 25                	cmp    $0x25,%al
c003210c:	75 f2                	jne    c0032100 <_svfprintf_r+0xb0>
c003210e:	89 de                	mov    %ebx,%esi
c0032110:	2b 75 10             	sub    0x10(%ebp),%esi
c0032113:	74 30                	je     c0032145 <_svfprintf_r+0xf5>
c0032115:	8b 45 10             	mov    0x10(%ebp),%eax
c0032118:	83 c7 08             	add    $0x8,%edi
c003211b:	89 77 fc             	mov    %esi,-0x4(%edi)
c003211e:	01 b5 7c ff ff ff    	add    %esi,-0x84(%ebp)
c0032124:	89 47 f8             	mov    %eax,-0x8(%edi)
c0032127:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003212d:	83 c0 01             	add    $0x1,%eax
c0032130:	83 f8 07             	cmp    $0x7,%eax
c0032133:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032139:	0f 8f 91 00 00 00    	jg     c00321d0 <_svfprintf_r+0x180>
c003213f:	01 b5 34 ff ff ff    	add    %esi,-0xcc(%ebp)
c0032145:	80 3b 00             	cmpb   $0x0,(%ebx)
c0032148:	0f 84 aa 00 00 00    	je     c00321f8 <_svfprintf_r+0x1a8>
c003214e:	8d 43 01             	lea    0x1(%ebx),%eax
c0032151:	be 20 00 00 00       	mov    $0x20,%esi
c0032156:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c003215d:	31 db                	xor    %ebx,%ebx
c003215f:	c7 85 44 ff ff ff ff 	movl   $0xffffffff,-0xbc(%ebp)
c0032166:	ff ff ff 
c0032169:	c7 85 40 ff ff ff 00 	movl   $0x0,-0xc0(%ebp)
c0032170:	00 00 00 
c0032173:	c7 85 4c ff ff ff 00 	movl   $0x0,-0xb4(%ebp)
c003217a:	00 00 00 
c003217d:	8d 48 01             	lea    0x1(%eax),%ecx
c0032180:	0f be 00             	movsbl (%eax),%eax
c0032183:	8d 50 e0             	lea    -0x20(%eax),%edx
c0032186:	83 fa 58             	cmp    $0x58,%edx
c0032189:	0f 87 8f 07 00 00    	ja     c003291e <_svfprintf_r+0x8ce>
c003218f:	ff 24 95 f4 98 03 c0 	jmp    *-0x3ffc670c(,%edx,4)
c0032196:	66 90                	xchg   %ax,%ax
c0032198:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c003219f:	89 c8                	mov    %ecx,%eax
c00321a1:	eb da                	jmp    c003217d <_svfprintf_r+0x12d>
c00321a3:	8b 45 14             	mov    0x14(%ebp),%eax
c00321a6:	8b 55 14             	mov    0x14(%ebp),%edx
c00321a9:	8b 00                	mov    (%eax),%eax
c00321ab:	83 c2 04             	add    $0x4,%edx
c00321ae:	89 55 14             	mov    %edx,0x14(%ebp)
c00321b1:	85 c0                	test   %eax,%eax
c00321b3:	89 85 40 ff ff ff    	mov    %eax,-0xc0(%ebp)
c00321b9:	79 e4                	jns    c003219f <_svfprintf_r+0x14f>
c00321bb:	f7 9d 40 ff ff ff    	negl   -0xc0(%ebp)
c00321c1:	83 8d 4c ff ff ff 04 	orl    $0x4,-0xb4(%ebp)
c00321c8:	89 c8                	mov    %ecx,%eax
c00321ca:	eb b1                	jmp    c003217d <_svfprintf_r+0x12d>
c00321cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00321d0:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00321d6:	89 44 24 08          	mov    %eax,0x8(%esp)
c00321da:	8b 45 0c             	mov    0xc(%ebp),%eax
c00321dd:	89 44 24 04          	mov    %eax,0x4(%esp)
c00321e1:	8b 45 08             	mov    0x8(%ebp),%eax
c00321e4:	89 04 24             	mov    %eax,(%esp)
c00321e7:	e8 e4 49 00 00       	call   c0036bd0 <__ssprint_r>
c00321ec:	85 c0                	test   %eax,%eax
c00321ee:	75 30                	jne    c0032220 <_svfprintf_r+0x1d0>
c00321f0:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00321f3:	e9 47 ff ff ff       	jmp    c003213f <_svfprintf_r+0xef>
c00321f8:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
c00321fe:	85 c0                	test   %eax,%eax
c0032200:	74 1e                	je     c0032220 <_svfprintf_r+0x1d0>
c0032202:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032208:	89 44 24 08          	mov    %eax,0x8(%esp)
c003220c:	8b 45 0c             	mov    0xc(%ebp),%eax
c003220f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032213:	8b 45 08             	mov    0x8(%ebp),%eax
c0032216:	89 04 24             	mov    %eax,(%esp)
c0032219:	e8 b2 49 00 00       	call   c0036bd0 <__ssprint_r>
c003221e:	66 90                	xchg   %ax,%ax
c0032220:	8b 55 0c             	mov    0xc(%ebp),%edx
c0032223:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0032228:	f6 42 0c 40          	testb  $0x40,0xc(%edx)
c003222c:	0f 44 85 34 ff ff ff 	cmove  -0xcc(%ebp),%eax
c0032233:	81 c4 1c 01 00 00    	add    $0x11c,%esp
c0032239:	5b                   	pop    %ebx
c003223a:	5e                   	pop    %esi
c003223b:	5f                   	pop    %edi
c003223c:	5d                   	pop    %ebp
c003223d:	c3                   	ret    
c003223e:	bb 2b 00 00 00       	mov    $0x2b,%ebx
c0032243:	89 c8                	mov    %ecx,%eax
c0032245:	e9 33 ff ff ff       	jmp    c003217d <_svfprintf_r+0x12d>
c003224a:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032250:	8b 45 14             	mov    0x14(%ebp),%eax
c0032253:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032256:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c003225d:	8d 70 04             	lea    0x4(%eax),%esi
c0032260:	8b 00                	mov    (%eax),%eax
c0032262:	85 c0                	test   %eax,%eax
c0032264:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c003226a:	0f 84 7f 18 00 00    	je     c0033aef <_svfprintf_r+0x1a9f>
c0032270:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c0032276:	85 c0                	test   %eax,%eax
c0032278:	0f 88 b6 17 00 00    	js     c0033a34 <_svfprintf_r+0x19e4>
c003227e:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032282:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c0032288:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c003228f:	00 
c0032290:	89 04 24             	mov    %eax,(%esp)
c0032293:	e8 f8 38 00 00       	call   c0035b90 <memchr>
c0032298:	85 c0                	test   %eax,%eax
c003229a:	0f 84 a0 19 00 00    	je     c0033c40 <_svfprintf_r+0x1bf0>
c00322a0:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c00322a6:	2b 85 28 ff ff ff    	sub    -0xd8(%ebp),%eax
c00322ac:	39 d0                	cmp    %edx,%eax
c00322ae:	0f 4f c2             	cmovg  %edx,%eax
c00322b1:	89 c2                	mov    %eax,%edx
c00322b3:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c00322ba:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c00322c0:	31 c0                	xor    %eax,%eax
c00322c2:	85 d2                	test   %edx,%edx
c00322c4:	0f 49 c2             	cmovns %edx,%eax
c00322c7:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c00322cd:	89 75 14             	mov    %esi,0x14(%ebp)
c00322d0:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c00322d7:	00 00 00 
c00322da:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c00322e1:	00 00 00 
c00322e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00322e8:	84 db                	test   %bl,%bl
c00322ea:	74 07                	je     c00322f3 <_svfprintf_r+0x2a3>
c00322ec:	83 85 48 ff ff ff 01 	addl   $0x1,-0xb8(%ebp)
c00322f3:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c00322f9:	8b b5 4c ff ff ff    	mov    -0xb4(%ebp),%esi
c00322ff:	89 c8                	mov    %ecx,%eax
c0032301:	89 f2                	mov    %esi,%edx
c0032303:	83 c0 02             	add    $0x2,%eax
c0032306:	83 e2 02             	and    $0x2,%edx
c0032309:	89 95 30 ff ff ff    	mov    %edx,-0xd0(%ebp)
c003230f:	89 f2                	mov    %esi,%edx
c0032311:	0f 44 c1             	cmove  %ecx,%eax
c0032314:	81 e2 84 00 00 00    	and    $0x84,%edx
c003231a:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0032320:	89 95 2c ff ff ff    	mov    %edx,-0xd4(%ebp)
c0032326:	0f 85 1c 06 00 00    	jne    c0032948 <_svfprintf_r+0x8f8>
c003232c:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
c0032332:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
c0032338:	85 f6                	test   %esi,%esi
c003233a:	0f 8e 08 06 00 00    	jle    c0032948 <_svfprintf_r+0x8f8>
c0032340:	83 fe 10             	cmp    $0x10,%esi
c0032343:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032349:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003234f:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0032355:	7f 11                	jg     c0032368 <_svfprintf_r+0x318>
c0032357:	eb 6b                	jmp    c00323c4 <_svfprintf_r+0x374>
c0032359:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0032360:	83 ee 10             	sub    $0x10,%esi
c0032363:	83 fe 10             	cmp    $0x10,%esi
c0032366:	7e 5c                	jle    c00323c4 <_svfprintf_r+0x374>
c0032368:	83 c0 01             	add    $0x1,%eax
c003236b:	83 c1 10             	add    $0x10,%ecx
c003236e:	c7 07 68 9a 03 c0    	movl   $0xc0039a68,(%edi)
c0032374:	83 c7 08             	add    $0x8,%edi
c0032377:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c003237e:	83 f8 07             	cmp    $0x7,%eax
c0032381:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032387:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003238d:	7e d1                	jle    c0032360 <_svfprintf_r+0x310>
c003238f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032392:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0032396:	89 44 24 04          	mov    %eax,0x4(%esp)
c003239a:	8b 45 08             	mov    0x8(%ebp),%eax
c003239d:	89 04 24             	mov    %eax,(%esp)
c00323a0:	e8 2b 48 00 00       	call   c0036bd0 <__ssprint_r>
c00323a5:	85 c0                	test   %eax,%eax
c00323a7:	0f 85 73 fe ff ff    	jne    c0032220 <_svfprintf_r+0x1d0>
c00323ad:	83 ee 10             	sub    $0x10,%esi
c00323b0:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00323b6:	83 fe 10             	cmp    $0x10,%esi
c00323b9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00323bf:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00323c2:	7f a4                	jg     c0032368 <_svfprintf_r+0x318>
c00323c4:	83 c0 01             	add    $0x1,%eax
c00323c7:	01 f1                	add    %esi,%ecx
c00323c9:	83 f8 07             	cmp    $0x7,%eax
c00323cc:	c7 07 68 9a 03 c0    	movl   $0xc0039a68,(%edi)
c00323d2:	89 77 04             	mov    %esi,0x4(%edi)
c00323d5:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00323db:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00323e1:	0f 8f 16 0e 00 00    	jg     c00331fd <_svfprintf_r+0x11ad>
c00323e7:	83 c7 08             	add    $0x8,%edi
c00323ea:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c00323f1:	e9 58 05 00 00       	jmp    c003294e <_svfprintf_r+0x8fe>
c00323f6:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c00323fd:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032403:	8b 45 14             	mov    0x14(%ebp),%eax
c0032406:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032409:	0f 85 fd 04 00 00    	jne    c003290c <_svfprintf_r+0x8bc>
c003240f:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c0032416:	0f 84 f0 04 00 00    	je     c003290c <_svfprintf_r+0x8bc>
c003241c:	0f b7 08             	movzwl (%eax),%ecx
c003241f:	83 c0 04             	add    $0x4,%eax
c0032422:	89 45 14             	mov    %eax,0x14(%ebp)
c0032425:	b8 01 00 00 00       	mov    $0x1,%eax
c003242a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032430:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c0032437:	31 db                	xor    %ebx,%ebx
c0032439:	8b b5 4c ff ff ff    	mov    -0xb4(%ebp),%esi
c003243f:	89 f2                	mov    %esi,%edx
c0032441:	80 e2 7f             	and    $0x7f,%dl
c0032444:	83 bd 44 ff ff ff 00 	cmpl   $0x0,-0xbc(%ebp)
c003244b:	0f 48 d6             	cmovs  %esi,%edx
c003244e:	89 95 4c ff ff ff    	mov    %edx,-0xb4(%ebp)
c0032454:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c003245a:	85 d2                	test   %edx,%edx
c003245c:	75 08                	jne    c0032466 <_svfprintf_r+0x416>
c003245e:	85 c9                	test   %ecx,%ecx
c0032460:	0f 84 ea 08 00 00    	je     c0032d50 <_svfprintf_r+0xd00>
c0032466:	3c 01                	cmp    $0x1,%al
c0032468:	0f 84 6a 0d 00 00    	je     c00331d8 <_svfprintf_r+0x1188>
c003246e:	3c 02                	cmp    $0x2,%al
c0032470:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0032473:	0f 85 bf 0b 00 00    	jne    c0033038 <_svfprintf_r+0xfe8>
c0032479:	8b b5 18 ff ff ff    	mov    -0xe8(%ebp),%esi
c003247f:	90                   	nop
c0032480:	89 ca                	mov    %ecx,%edx
c0032482:	83 e8 01             	sub    $0x1,%eax
c0032485:	83 e2 0f             	and    $0xf,%edx
c0032488:	0f b6 14 16          	movzbl (%esi,%edx,1),%edx
c003248c:	c1 e9 04             	shr    $0x4,%ecx
c003248f:	85 c9                	test   %ecx,%ecx
c0032491:	88 10                	mov    %dl,(%eax)
c0032493:	75 eb                	jne    c0032480 <_svfprintf_r+0x430>
c0032495:	8d 55 a8             	lea    -0x58(%ebp),%edx
c0032498:	29 c2                	sub    %eax,%edx
c003249a:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c00324a0:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c00324a6:	66 90                	xchg   %ax,%ax
c00324a8:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c00324ae:	8b 95 38 ff ff ff    	mov    -0xc8(%ebp),%edx
c00324b4:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c00324bb:	00 00 00 
c00324be:	39 c2                	cmp    %eax,%edx
c00324c0:	0f 4d c2             	cmovge %edx,%eax
c00324c3:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c00324c9:	e9 1a fe ff ff       	jmp    c00322e8 <_svfprintf_r+0x298>
c00324ce:	84 db                	test   %bl,%bl
c00324d0:	89 c8                	mov    %ecx,%eax
c00324d2:	0f 44 de             	cmove  %esi,%ebx
c00324d5:	e9 a3 fc ff ff       	jmp    c003217d <_svfprintf_r+0x12d>
c00324da:	83 8d 4c ff ff ff 01 	orl    $0x1,-0xb4(%ebp)
c00324e1:	89 c8                	mov    %ecx,%eax
c00324e3:	e9 95 fc ff ff       	jmp    c003217d <_svfprintf_r+0x12d>
c00324e8:	81 8d 4c ff ff ff 80 	orl    $0x80,-0xb4(%ebp)
c00324ef:	00 00 00 
c00324f2:	89 c8                	mov    %ecx,%eax
c00324f4:	e9 84 fc ff ff       	jmp    c003217d <_svfprintf_r+0x12d>
c00324f9:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c00324ff:	8d 50 d0             	lea    -0x30(%eax),%edx
c0032502:	31 ff                	xor    %edi,%edi
c0032504:	c7 85 40 ff ff ff 00 	movl   $0x0,-0xc0(%ebp)
c003250b:	00 00 00 
c003250e:	66 90                	xchg   %ax,%ax
c0032510:	8d 04 bf             	lea    (%edi,%edi,4),%eax
c0032513:	83 c1 01             	add    $0x1,%ecx
c0032516:	8d 3c 42             	lea    (%edx,%eax,2),%edi
c0032519:	0f be 41 ff          	movsbl -0x1(%ecx),%eax
c003251d:	8d 50 d0             	lea    -0x30(%eax),%edx
c0032520:	83 fa 09             	cmp    $0x9,%edx
c0032523:	76 eb                	jbe    c0032510 <_svfprintf_r+0x4c0>
c0032525:	89 bd 40 ff ff ff    	mov    %edi,-0xc0(%ebp)
c003252b:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
c0032531:	e9 4d fc ff ff       	jmp    c0032183 <_svfprintf_r+0x133>
c0032536:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c003253d:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0032544:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c003254a:	8b 45 14             	mov    0x14(%ebp),%eax
c003254d:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032550:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c0032556:	0f 85 61 02 00 00    	jne    c00327bd <_svfprintf_r+0x76d>
c003255c:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c0032563:	0f 84 54 02 00 00    	je     c00327bd <_svfprintf_r+0x76d>
c0032569:	0f bf 08             	movswl (%eax),%ecx
c003256c:	83 c0 04             	add    $0x4,%eax
c003256f:	89 45 14             	mov    %eax,0x14(%ebp)
c0032572:	85 c9                	test   %ecx,%ecx
c0032574:	0f 88 53 02 00 00    	js     c00327cd <_svfprintf_r+0x77d>
c003257a:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0032581:	b8 01 00 00 00       	mov    $0x1,%eax
c0032586:	e9 ae fe ff ff       	jmp    c0032439 <_svfprintf_r+0x3e9>
c003258b:	f6 85 4c ff ff ff 08 	testb  $0x8,-0xb4(%ebp)
c0032592:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032598:	8b 45 14             	mov    0x14(%ebp),%eax
c003259b:	89 4d 10             	mov    %ecx,0x10(%ebp)
c003259e:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c00325a4:	0f 84 15 10 00 00    	je     c00335bf <_svfprintf_r+0x156f>
c00325aa:	db 28                	fldt   (%eax)
c00325ac:	83 c0 0c             	add    $0xc,%eax
c00325af:	89 45 14             	mov    %eax,0x14(%ebp)
c00325b2:	dd 9d 10 ff ff ff    	fstpl  -0xf0(%ebp)
c00325b8:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c00325be:	dd 1c 24             	fstpl  (%esp)
c00325c1:	e8 aa 44 00 00       	call   c0036a70 <__fpclassifyd>
c00325c6:	83 f8 01             	cmp    $0x1,%eax
c00325c9:	0f 85 82 0f 00 00    	jne    c0033551 <_svfprintf_r+0x1501>
c00325cf:	d9 ee                	fldz   
c00325d1:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c00325d7:	d9 c9                	fxch   %st(1)
c00325d9:	df e9                	fucomip %st(1),%st
c00325db:	dd d8                	fstp   %st(0)
c00325dd:	0f 87 59 15 00 00    	ja     c0033b3c <_svfprintf_r+0x1aec>
c00325e3:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c00325ea:	83 bd 24 ff ff ff 47 	cmpl   $0x47,-0xdc(%ebp)
c00325f1:	ba b6 98 03 c0       	mov    $0xc00398b6,%edx
c00325f6:	b8 ba 98 03 c0       	mov    $0xc00398ba,%eax
c00325fb:	c7 85 48 ff ff ff 03 	movl   $0x3,-0xb8(%ebp)
c0032602:	00 00 00 
c0032605:	0f 4e c2             	cmovle %edx,%eax
c0032608:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c003260e:	81 a5 4c ff ff ff 7f 	andl   $0xffffff7f,-0xb4(%ebp)
c0032615:	ff ff ff 
c0032618:	c7 85 38 ff ff ff 03 	movl   $0x3,-0xc8(%ebp)
c003261f:	00 00 00 
c0032622:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0032629:	00 00 00 
c003262c:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0032633:	00 00 00 
c0032636:	e9 ad fc ff ff       	jmp    c00322e8 <_svfprintf_r+0x298>
c003263b:	8d 41 01             	lea    0x1(%ecx),%eax
c003263e:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0032644:	0f be 01             	movsbl (%ecx),%eax
c0032647:	83 f8 2a             	cmp    $0x2a,%eax
c003264a:	0f 84 84 18 00 00    	je     c0033ed4 <_svfprintf_r+0x1e84>
c0032650:	8d 50 d0             	lea    -0x30(%eax),%edx
c0032653:	31 c9                	xor    %ecx,%ecx
c0032655:	83 fa 09             	cmp    $0x9,%edx
c0032658:	0f 87 a8 16 00 00    	ja     c0033d06 <_svfprintf_r+0x1cb6>
c003265e:	89 bd 44 ff ff ff    	mov    %edi,-0xbc(%ebp)
c0032664:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
c003266a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032670:	8d 04 89             	lea    (%ecx,%ecx,4),%eax
c0032673:	83 c7 01             	add    $0x1,%edi
c0032676:	8d 0c 42             	lea    (%edx,%eax,2),%ecx
c0032679:	0f be 47 ff          	movsbl -0x1(%edi),%eax
c003267d:	8d 50 d0             	lea    -0x30(%eax),%edx
c0032680:	83 fa 09             	cmp    $0x9,%edx
c0032683:	76 eb                	jbe    c0032670 <_svfprintf_r+0x620>
c0032685:	85 c9                	test   %ecx,%ecx
c0032687:	89 ca                	mov    %ecx,%edx
c0032689:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
c003268e:	0f 48 d1             	cmovs  %ecx,%edx
c0032691:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c0032697:	8b bd 44 ff ff ff    	mov    -0xbc(%ebp),%edi
c003269d:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c00326a3:	89 95 44 ff ff ff    	mov    %edx,-0xbc(%ebp)
c00326a9:	e9 d5 fa ff ff       	jmp    c0032183 <_svfprintf_r+0x133>
c00326ae:	8b 45 14             	mov    0x14(%ebp),%eax
c00326b1:	89 4d 10             	mov    %ecx,0x10(%ebp)
c00326b4:	83 8d 4c ff ff ff 02 	orl    $0x2,-0xb4(%ebp)
c00326bb:	8b 08                	mov    (%eax),%ecx
c00326bd:	83 c0 04             	add    $0x4,%eax
c00326c0:	89 45 14             	mov    %eax,0x14(%ebp)
c00326c3:	b8 02 00 00 00       	mov    $0x2,%eax
c00326c8:	c6 85 5a ff ff ff 30 	movb   $0x30,-0xa6(%ebp)
c00326cf:	c6 85 5b ff ff ff 78 	movb   $0x78,-0xa5(%ebp)
c00326d6:	c7 85 18 ff ff ff d7 	movl   $0xc00398d7,-0xe8(%ebp)
c00326dd:	98 03 c0 
c00326e0:	c7 85 24 ff ff ff 78 	movl   $0x78,-0xdc(%ebp)
c00326e7:	00 00 00 
c00326ea:	e9 41 fd ff ff       	jmp    c0032430 <_svfprintf_r+0x3e0>
c00326ef:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c00326f6:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c00326fc:	8b 45 14             	mov    0x14(%ebp),%eax
c00326ff:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032702:	0f 85 87 00 00 00    	jne    c003278f <_svfprintf_r+0x73f>
c0032708:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c003270f:	74 7e                	je     c003278f <_svfprintf_r+0x73f>
c0032711:	0f b7 08             	movzwl (%eax),%ecx
c0032714:	83 c0 04             	add    $0x4,%eax
c0032717:	89 45 14             	mov    %eax,0x14(%ebp)
c003271a:	31 c0                	xor    %eax,%eax
c003271c:	e9 0f fd ff ff       	jmp    c0032430 <_svfprintf_r+0x3e0>
c0032721:	83 8d 4c ff ff ff 08 	orl    $0x8,-0xb4(%ebp)
c0032728:	89 c8                	mov    %ecx,%eax
c003272a:	e9 4e fa ff ff       	jmp    c003217d <_svfprintf_r+0x12d>
c003272f:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0032736:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032739:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c003273f:	0f 85 97 0b 00 00    	jne    c00332dc <_svfprintf_r+0x128c>
c0032745:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c003274c:	0f 84 8a 0b 00 00    	je     c00332dc <_svfprintf_r+0x128c>
c0032752:	8b 45 14             	mov    0x14(%ebp),%eax
c0032755:	0f b7 95 34 ff ff ff 	movzwl -0xcc(%ebp),%edx
c003275c:	8b 00                	mov    (%eax),%eax
c003275e:	66 89 10             	mov    %dx,(%eax)
c0032761:	8b 45 14             	mov    0x14(%ebp),%eax
c0032764:	83 c0 04             	add    $0x4,%eax
c0032767:	89 45 14             	mov    %eax,0x14(%ebp)
c003276a:	e9 7c f9 ff ff       	jmp    c00320eb <_svfprintf_r+0x9b>
c003276f:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c0032776:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c003277d:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032783:	8b 45 14             	mov    0x14(%ebp),%eax
c0032786:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032789:	0f 84 79 ff ff ff    	je     c0032708 <_svfprintf_r+0x6b8>
c003278f:	8b 08                	mov    (%eax),%ecx
c0032791:	83 c0 04             	add    $0x4,%eax
c0032794:	89 45 14             	mov    %eax,0x14(%ebp)
c0032797:	31 c0                	xor    %eax,%eax
c0032799:	e9 92 fc ff ff       	jmp    c0032430 <_svfprintf_r+0x3e0>
c003279e:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c00327a5:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c00327ab:	8b 45 14             	mov    0x14(%ebp),%eax
c00327ae:	89 4d 10             	mov    %ecx,0x10(%ebp)
c00327b1:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c00327b7:	0f 84 9f fd ff ff    	je     c003255c <_svfprintf_r+0x50c>
c00327bd:	8b 08                	mov    (%eax),%ecx
c00327bf:	83 c0 04             	add    $0x4,%eax
c00327c2:	89 45 14             	mov    %eax,0x14(%ebp)
c00327c5:	85 c9                	test   %ecx,%ecx
c00327c7:	0f 89 ad fd ff ff    	jns    c003257a <_svfprintf_r+0x52a>
c00327cd:	f7 d9                	neg    %ecx
c00327cf:	bb 2d 00 00 00       	mov    $0x2d,%ebx
c00327d4:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
c00327db:	b8 01 00 00 00       	mov    $0x1,%eax
c00327e0:	e9 54 fc ff ff       	jmp    c0032439 <_svfprintf_r+0x3e9>
c00327e5:	83 8d 4c ff ff ff 40 	orl    $0x40,-0xb4(%ebp)
c00327ec:	89 c8                	mov    %ecx,%eax
c00327ee:	e9 8a f9 ff ff       	jmp    c003217d <_svfprintf_r+0x12d>
c00327f3:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c00327fa:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032800:	8b 45 14             	mov    0x14(%ebp),%eax
c0032803:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032806:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c003280c:	c7 85 18 ff ff ff d7 	movl   $0xc00398d7,-0xe8(%ebp)
c0032813:	98 03 c0 
c0032816:	75 71                	jne    c0032889 <_svfprintf_r+0x839>
c0032818:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c003281f:	74 68                	je     c0032889 <_svfprintf_r+0x839>
c0032821:	0f b7 08             	movzwl (%eax),%ecx
c0032824:	83 c0 04             	add    $0x4,%eax
c0032827:	89 45 14             	mov    %eax,0x14(%ebp)
c003282a:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0032831:	b8 02 00 00 00       	mov    $0x2,%eax
c0032836:	0f 84 f4 fb ff ff    	je     c0032430 <_svfprintf_r+0x3e0>
c003283c:	85 c9                	test   %ecx,%ecx
c003283e:	0f 84 ec fb ff ff    	je     c0032430 <_svfprintf_r+0x3e0>
c0032844:	0f b6 95 24 ff ff ff 	movzbl -0xdc(%ebp),%edx
c003284b:	c6 85 5a ff ff ff 30 	movb   $0x30,-0xa6(%ebp)
c0032852:	83 8d 4c ff ff ff 02 	orl    $0x2,-0xb4(%ebp)
c0032859:	88 95 5b ff ff ff    	mov    %dl,-0xa5(%ebp)
c003285f:	e9 cc fb ff ff       	jmp    c0032430 <_svfprintf_r+0x3e0>
c0032864:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c003286b:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032871:	8b 45 14             	mov    0x14(%ebp),%eax
c0032874:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032877:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c003287d:	c7 85 18 ff ff ff c6 	movl   $0xc00398c6,-0xe8(%ebp)
c0032884:	98 03 c0 
c0032887:	74 8f                	je     c0032818 <_svfprintf_r+0x7c8>
c0032889:	8b 08                	mov    (%eax),%ecx
c003288b:	83 c0 04             	add    $0x4,%eax
c003288e:	89 45 14             	mov    %eax,0x14(%ebp)
c0032891:	eb 97                	jmp    c003282a <_svfprintf_r+0x7da>
c0032893:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032899:	8b 45 14             	mov    0x14(%ebp),%eax
c003289c:	89 4d 10             	mov    %ecx,0x10(%ebp)
c003289f:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c00328a6:	8b 00                	mov    (%eax),%eax
c00328a8:	88 45 80             	mov    %al,-0x80(%ebp)
c00328ab:	8b 45 14             	mov    0x14(%ebp),%eax
c00328ae:	83 c0 04             	add    $0x4,%eax
c00328b1:	89 45 14             	mov    %eax,0x14(%ebp)
c00328b4:	8d 45 80             	lea    -0x80(%ebp),%eax
c00328b7:	31 db                	xor    %ebx,%ebx
c00328b9:	c7 85 48 ff ff ff 01 	movl   $0x1,-0xb8(%ebp)
c00328c0:	00 00 00 
c00328c3:	c7 85 38 ff ff ff 01 	movl   $0x1,-0xc8(%ebp)
c00328ca:	00 00 00 
c00328cd:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c00328d4:	00 00 00 
c00328d7:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c00328de:	00 00 00 
c00328e1:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c00328e7:	e9 07 fa ff ff       	jmp    c00322f3 <_svfprintf_r+0x2a3>
c00328ec:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c00328f3:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c00328fa:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032900:	8b 45 14             	mov    0x14(%ebp),%eax
c0032903:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032906:	0f 84 03 fb ff ff    	je     c003240f <_svfprintf_r+0x3bf>
c003290c:	8b 08                	mov    (%eax),%ecx
c003290e:	83 c0 04             	add    $0x4,%eax
c0032911:	89 45 14             	mov    %eax,0x14(%ebp)
c0032914:	b8 01 00 00 00       	mov    $0x1,%eax
c0032919:	e9 12 fb ff ff       	jmp    c0032430 <_svfprintf_r+0x3e0>
c003291e:	85 c0                	test   %eax,%eax
c0032920:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032926:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032929:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c003292f:	0f 84 c3 f8 ff ff    	je     c00321f8 <_svfprintf_r+0x1a8>
c0032935:	88 45 80             	mov    %al,-0x80(%ebp)
c0032938:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c003293f:	e9 70 ff ff ff       	jmp    c00328b4 <_svfprintf_r+0x864>
c0032944:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032948:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c003294e:	84 db                	test   %bl,%bl
c0032950:	74 33                	je     c0032985 <_svfprintf_r+0x935>
c0032952:	8d 85 59 ff ff ff    	lea    -0xa7(%ebp),%eax
c0032958:	83 c1 01             	add    $0x1,%ecx
c003295b:	89 07                	mov    %eax,(%edi)
c003295d:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032963:	83 c7 08             	add    $0x8,%edi
c0032966:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
c003296d:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032973:	83 c0 01             	add    $0x1,%eax
c0032976:	83 f8 07             	cmp    $0x7,%eax
c0032979:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003297f:	0f 8f 7b 06 00 00    	jg     c0033000 <_svfprintf_r+0xfb0>
c0032985:	8b 9d 30 ff ff ff    	mov    -0xd0(%ebp),%ebx
c003298b:	85 db                	test   %ebx,%ebx
c003298d:	74 33                	je     c00329c2 <_svfprintf_r+0x972>
c003298f:	8d 85 5a ff ff ff    	lea    -0xa6(%ebp),%eax
c0032995:	83 c1 02             	add    $0x2,%ecx
c0032998:	89 07                	mov    %eax,(%edi)
c003299a:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00329a0:	83 c7 08             	add    $0x8,%edi
c00329a3:	c7 47 fc 02 00 00 00 	movl   $0x2,-0x4(%edi)
c00329aa:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00329b0:	83 c0 01             	add    $0x1,%eax
c00329b3:	83 f8 07             	cmp    $0x7,%eax
c00329b6:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00329bc:	0f 8f 06 06 00 00    	jg     c0032fc8 <_svfprintf_r+0xf78>
c00329c2:	81 bd 2c ff ff ff 80 	cmpl   $0x80,-0xd4(%ebp)
c00329c9:	00 00 00 
c00329cc:	0f 84 c6 03 00 00    	je     c0032d98 <_svfprintf_r+0xd48>
c00329d2:	8b b5 44 ff ff ff    	mov    -0xbc(%ebp),%esi
c00329d8:	2b b5 38 ff ff ff    	sub    -0xc8(%ebp),%esi
c00329de:	85 f6                	test   %esi,%esi
c00329e0:	0f 8e d2 00 00 00    	jle    c0032ab8 <_svfprintf_r+0xa68>
c00329e6:	83 fe 10             	cmp    $0x10,%esi
c00329e9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00329ef:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c00329f5:	7f 11                	jg     c0032a08 <_svfprintf_r+0x9b8>
c00329f7:	eb 6b                	jmp    c0032a64 <_svfprintf_r+0xa14>
c00329f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0032a00:	83 ee 10             	sub    $0x10,%esi
c0032a03:	83 fe 10             	cmp    $0x10,%esi
c0032a06:	7e 5c                	jle    c0032a64 <_svfprintf_r+0xa14>
c0032a08:	83 c0 01             	add    $0x1,%eax
c0032a0b:	83 c1 10             	add    $0x10,%ecx
c0032a0e:	c7 07 58 9a 03 c0    	movl   $0xc0039a58,(%edi)
c0032a14:	83 c7 08             	add    $0x8,%edi
c0032a17:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0032a1e:	83 f8 07             	cmp    $0x7,%eax
c0032a21:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032a27:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032a2d:	7e d1                	jle    c0032a00 <_svfprintf_r+0x9b0>
c0032a2f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032a32:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0032a36:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032a3a:	8b 45 08             	mov    0x8(%ebp),%eax
c0032a3d:	89 04 24             	mov    %eax,(%esp)
c0032a40:	e8 8b 41 00 00       	call   c0036bd0 <__ssprint_r>
c0032a45:	85 c0                	test   %eax,%eax
c0032a47:	0f 85 d3 f7 ff ff    	jne    c0032220 <_svfprintf_r+0x1d0>
c0032a4d:	83 ee 10             	sub    $0x10,%esi
c0032a50:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032a56:	83 fe 10             	cmp    $0x10,%esi
c0032a59:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032a5f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032a62:	7f a4                	jg     c0032a08 <_svfprintf_r+0x9b8>
c0032a64:	83 c0 01             	add    $0x1,%eax
c0032a67:	01 f1                	add    %esi,%ecx
c0032a69:	c7 07 58 9a 03 c0    	movl   $0xc0039a58,(%edi)
c0032a6f:	83 c7 08             	add    $0x8,%edi
c0032a72:	89 77 fc             	mov    %esi,-0x4(%edi)
c0032a75:	83 f8 07             	cmp    $0x7,%eax
c0032a78:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032a7e:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032a84:	7e 32                	jle    c0032ab8 <_svfprintf_r+0xa68>
c0032a86:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032a8c:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032a90:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032a93:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032a97:	8b 45 08             	mov    0x8(%ebp),%eax
c0032a9a:	89 04 24             	mov    %eax,(%esp)
c0032a9d:	e8 2e 41 00 00       	call   c0036bd0 <__ssprint_r>
c0032aa2:	85 c0                	test   %eax,%eax
c0032aa4:	0f 85 76 f7 ff ff    	jne    c0032220 <_svfprintf_r+0x1d0>
c0032aaa:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032ab0:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032ab3:	90                   	nop
c0032ab4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032ab8:	f7 85 4c ff ff ff 00 	testl  $0x100,-0xb4(%ebp)
c0032abf:	01 00 00 
c0032ac2:	0f 85 50 01 00 00    	jne    c0032c18 <_svfprintf_r+0xbc8>
c0032ac8:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c0032ace:	89 07                	mov    %eax,(%edi)
c0032ad0:	8b 85 38 ff ff ff    	mov    -0xc8(%ebp),%eax
c0032ad6:	01 c1                	add    %eax,%ecx
c0032ad8:	89 47 04             	mov    %eax,0x4(%edi)
c0032adb:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032ae1:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032ae7:	83 c0 01             	add    $0x1,%eax
c0032aea:	83 f8 07             	cmp    $0x7,%eax
c0032aed:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032af3:	0f 8f 6a 04 00 00    	jg     c0032f63 <_svfprintf_r+0xf13>
c0032af9:	83 c7 08             	add    $0x8,%edi
c0032afc:	f6 85 4c ff ff ff 04 	testb  $0x4,-0xb4(%ebp)
c0032b03:	0f 84 d7 00 00 00    	je     c0032be0 <_svfprintf_r+0xb90>
c0032b09:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
c0032b0f:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
c0032b15:	85 f6                	test   %esi,%esi
c0032b17:	0f 8e c3 00 00 00    	jle    c0032be0 <_svfprintf_r+0xb90>
c0032b1d:	83 fe 10             	cmp    $0x10,%esi
c0032b20:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032b26:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0032b2c:	7f 0a                	jg     c0032b38 <_svfprintf_r+0xae8>
c0032b2e:	eb 64                	jmp    c0032b94 <_svfprintf_r+0xb44>
c0032b30:	83 ee 10             	sub    $0x10,%esi
c0032b33:	83 fe 10             	cmp    $0x10,%esi
c0032b36:	7e 5c                	jle    c0032b94 <_svfprintf_r+0xb44>
c0032b38:	83 c0 01             	add    $0x1,%eax
c0032b3b:	83 c1 10             	add    $0x10,%ecx
c0032b3e:	c7 07 68 9a 03 c0    	movl   $0xc0039a68,(%edi)
c0032b44:	83 c7 08             	add    $0x8,%edi
c0032b47:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0032b4e:	83 f8 07             	cmp    $0x7,%eax
c0032b51:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032b57:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032b5d:	7e d1                	jle    c0032b30 <_svfprintf_r+0xae0>
c0032b5f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032b62:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0032b66:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032b6a:	8b 45 08             	mov    0x8(%ebp),%eax
c0032b6d:	89 04 24             	mov    %eax,(%esp)
c0032b70:	e8 5b 40 00 00       	call   c0036bd0 <__ssprint_r>
c0032b75:	85 c0                	test   %eax,%eax
c0032b77:	0f 85 a3 f6 ff ff    	jne    c0032220 <_svfprintf_r+0x1d0>
c0032b7d:	83 ee 10             	sub    $0x10,%esi
c0032b80:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032b86:	83 fe 10             	cmp    $0x10,%esi
c0032b89:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032b8f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032b92:	7f a4                	jg     c0032b38 <_svfprintf_r+0xae8>
c0032b94:	83 c0 01             	add    $0x1,%eax
c0032b97:	01 f1                	add    %esi,%ecx
c0032b99:	83 f8 07             	cmp    $0x7,%eax
c0032b9c:	c7 07 68 9a 03 c0    	movl   $0xc0039a68,(%edi)
c0032ba2:	89 77 04             	mov    %esi,0x4(%edi)
c0032ba5:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032bab:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032bb1:	7e 2d                	jle    c0032be0 <_svfprintf_r+0xb90>
c0032bb3:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032bb9:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032bbd:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032bc0:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032bc4:	8b 45 08             	mov    0x8(%ebp),%eax
c0032bc7:	89 04 24             	mov    %eax,(%esp)
c0032bca:	e8 01 40 00 00       	call   c0036bd0 <__ssprint_r>
c0032bcf:	85 c0                	test   %eax,%eax
c0032bd1:	0f 85 49 f6 ff ff    	jne    c0032220 <_svfprintf_r+0x1d0>
c0032bd7:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032bdd:	8d 76 00             	lea    0x0(%esi),%esi
c0032be0:	8b 85 40 ff ff ff    	mov    -0xc0(%ebp),%eax
c0032be6:	8b 95 48 ff ff ff    	mov    -0xb8(%ebp),%edx
c0032bec:	39 c2                	cmp    %eax,%edx
c0032bee:	0f 4d c2             	cmovge %edx,%eax
c0032bf1:	01 85 34 ff ff ff    	add    %eax,-0xcc(%ebp)
c0032bf7:	85 c9                	test   %ecx,%ecx
c0032bf9:	0f 85 99 03 00 00    	jne    c0032f98 <_svfprintf_r+0xf48>
c0032bff:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c0032c06:	00 00 00 
c0032c09:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032c0c:	e9 da f4 ff ff       	jmp    c00320eb <_svfprintf_r+0x9b>
c0032c11:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0032c18:	83 bd 24 ff ff ff 65 	cmpl   $0x65,-0xdc(%ebp)
c0032c1f:	0f 8e 5b 02 00 00    	jle    c0032e80 <_svfprintf_r+0xe30>
c0032c25:	d9 ee                	fldz   
c0032c27:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0032c2d:	df e9                	fucomip %st(1),%st
c0032c2f:	dd d8                	fstp   %st(0)
c0032c31:	0f 8a 59 04 00 00    	jp     c0033090 <_svfprintf_r+0x1040>
c0032c37:	0f 85 53 04 00 00    	jne    c0033090 <_svfprintf_r+0x1040>
c0032c3d:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032c43:	83 c1 01             	add    $0x1,%ecx
c0032c46:	83 c7 08             	add    $0x8,%edi
c0032c49:	c7 47 f8 ef 98 03 c0 	movl   $0xc00398ef,-0x8(%edi)
c0032c50:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
c0032c57:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032c5d:	83 c0 01             	add    $0x1,%eax
c0032c60:	83 f8 07             	cmp    $0x7,%eax
c0032c63:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032c69:	0f 8f 63 09 00 00    	jg     c00335d2 <_svfprintf_r+0x1582>
c0032c6f:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
c0032c75:	39 85 5c ff ff ff    	cmp    %eax,-0xa4(%ebp)
c0032c7b:	7c 0d                	jl     c0032c8a <_svfprintf_r+0xc3a>
c0032c7d:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0032c84:	0f 84 72 fe ff ff    	je     c0032afc <_svfprintf_r+0xaac>
c0032c8a:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
c0032c90:	83 c7 08             	add    $0x8,%edi
c0032c93:	89 47 f8             	mov    %eax,-0x8(%edi)
c0032c96:	8b 85 08 ff ff ff    	mov    -0xf8(%ebp),%eax
c0032c9c:	89 47 fc             	mov    %eax,-0x4(%edi)
c0032c9f:	01 c1                	add    %eax,%ecx
c0032ca1:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032ca7:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032cad:	83 c0 01             	add    $0x1,%eax
c0032cb0:	83 f8 07             	cmp    $0x7,%eax
c0032cb3:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032cb9:	0f 8f dc 0b 00 00    	jg     c003389b <_svfprintf_r+0x184b>
c0032cbf:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
c0032cc5:	8d 70 ff             	lea    -0x1(%eax),%esi
c0032cc8:	85 f6                	test   %esi,%esi
c0032cca:	0f 8e 2c fe ff ff    	jle    c0032afc <_svfprintf_r+0xaac>
c0032cd0:	83 fe 10             	cmp    $0x10,%esi
c0032cd3:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032cd9:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0032cdf:	7f 13                	jg     c0032cf4 <_svfprintf_r+0xca4>
c0032ce1:	e9 e6 05 00 00       	jmp    c00332cc <_svfprintf_r+0x127c>
c0032ce6:	66 90                	xchg   %ax,%ax
c0032ce8:	83 ee 10             	sub    $0x10,%esi
c0032ceb:	83 fe 10             	cmp    $0x10,%esi
c0032cee:	0f 8e d8 05 00 00    	jle    c00332cc <_svfprintf_r+0x127c>
c0032cf4:	83 c0 01             	add    $0x1,%eax
c0032cf7:	83 c1 10             	add    $0x10,%ecx
c0032cfa:	c7 07 58 9a 03 c0    	movl   $0xc0039a58,(%edi)
c0032d00:	83 c7 08             	add    $0x8,%edi
c0032d03:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0032d0a:	83 f8 07             	cmp    $0x7,%eax
c0032d0d:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032d13:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032d19:	7e cd                	jle    c0032ce8 <_svfprintf_r+0xc98>
c0032d1b:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032d1e:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0032d22:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032d26:	8b 45 08             	mov    0x8(%ebp),%eax
c0032d29:	89 04 24             	mov    %eax,(%esp)
c0032d2c:	e8 9f 3e 00 00       	call   c0036bd0 <__ssprint_r>
c0032d31:	85 c0                	test   %eax,%eax
c0032d33:	0f 85 e7 f4 ff ff    	jne    c0032220 <_svfprintf_r+0x1d0>
c0032d39:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032d3f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032d42:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032d48:	eb 9e                	jmp    c0032ce8 <_svfprintf_r+0xc98>
c0032d4a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032d50:	84 c0                	test   %al,%al
c0032d52:	75 2c                	jne    c0032d80 <_svfprintf_r+0xd30>
c0032d54:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0032d5b:	74 23                	je     c0032d80 <_svfprintf_r+0xd30>
c0032d5d:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
c0032d63:	c6 45 a7 30          	movb   $0x30,-0x59(%ebp)
c0032d67:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0032d6d:	8d 45 a7             	lea    -0x59(%ebp),%eax
c0032d70:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0032d76:	e9 2d f7 ff ff       	jmp    c00324a8 <_svfprintf_r+0x458>
c0032d7b:	90                   	nop
c0032d7c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032d80:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0032d83:	c7 85 38 ff ff ff 00 	movl   $0x0,-0xc8(%ebp)
c0032d8a:	00 00 00 
c0032d8d:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0032d93:	e9 10 f7 ff ff       	jmp    c00324a8 <_svfprintf_r+0x458>
c0032d98:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
c0032d9e:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
c0032da4:	85 f6                	test   %esi,%esi
c0032da6:	0f 8e 26 fc ff ff    	jle    c00329d2 <_svfprintf_r+0x982>
c0032dac:	83 fe 10             	cmp    $0x10,%esi
c0032daf:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032db5:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0032dbb:	7f 0b                	jg     c0032dc8 <_svfprintf_r+0xd78>
c0032dbd:	eb 65                	jmp    c0032e24 <_svfprintf_r+0xdd4>
c0032dbf:	90                   	nop
c0032dc0:	83 ee 10             	sub    $0x10,%esi
c0032dc3:	83 fe 10             	cmp    $0x10,%esi
c0032dc6:	7e 5c                	jle    c0032e24 <_svfprintf_r+0xdd4>
c0032dc8:	83 c0 01             	add    $0x1,%eax
c0032dcb:	83 c1 10             	add    $0x10,%ecx
c0032dce:	c7 07 58 9a 03 c0    	movl   $0xc0039a58,(%edi)
c0032dd4:	83 c7 08             	add    $0x8,%edi
c0032dd7:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0032dde:	83 f8 07             	cmp    $0x7,%eax
c0032de1:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032de7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032ded:	7e d1                	jle    c0032dc0 <_svfprintf_r+0xd70>
c0032def:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032df2:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0032df6:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032dfa:	8b 45 08             	mov    0x8(%ebp),%eax
c0032dfd:	89 04 24             	mov    %eax,(%esp)
c0032e00:	e8 cb 3d 00 00       	call   c0036bd0 <__ssprint_r>
c0032e05:	85 c0                	test   %eax,%eax
c0032e07:	0f 85 13 f4 ff ff    	jne    c0032220 <_svfprintf_r+0x1d0>
c0032e0d:	83 ee 10             	sub    $0x10,%esi
c0032e10:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032e16:	83 fe 10             	cmp    $0x10,%esi
c0032e19:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032e1f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032e22:	7f a4                	jg     c0032dc8 <_svfprintf_r+0xd78>
c0032e24:	83 c0 01             	add    $0x1,%eax
c0032e27:	01 f1                	add    %esi,%ecx
c0032e29:	c7 07 58 9a 03 c0    	movl   $0xc0039a58,(%edi)
c0032e2f:	83 c7 08             	add    $0x8,%edi
c0032e32:	89 77 fc             	mov    %esi,-0x4(%edi)
c0032e35:	83 f8 07             	cmp    $0x7,%eax
c0032e38:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032e3e:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032e44:	0f 8e 88 fb ff ff    	jle    c00329d2 <_svfprintf_r+0x982>
c0032e4a:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032e50:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032e54:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032e57:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032e5b:	8b 45 08             	mov    0x8(%ebp),%eax
c0032e5e:	89 04 24             	mov    %eax,(%esp)
c0032e61:	e8 6a 3d 00 00       	call   c0036bd0 <__ssprint_r>
c0032e66:	85 c0                	test   %eax,%eax
c0032e68:	0f 85 b2 f3 ff ff    	jne    c0032220 <_svfprintf_r+0x1d0>
c0032e6e:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032e74:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032e77:	e9 56 fb ff ff       	jmp    c00329d2 <_svfprintf_r+0x982>
c0032e7c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032e80:	83 bd 1c ff ff ff 01 	cmpl   $0x1,-0xe4(%ebp)
c0032e87:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c0032e8d:	0f 8e df 05 00 00    	jle    c0033472 <_svfprintf_r+0x1422>
c0032e93:	89 07                	mov    %eax,(%edi)
c0032e95:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032e9b:	8d 51 01             	lea    0x1(%ecx),%edx
c0032e9e:	c7 47 04 01 00 00 00 	movl   $0x1,0x4(%edi)
c0032ea5:	83 c7 08             	add    $0x8,%edi
c0032ea8:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0032eae:	83 c0 01             	add    $0x1,%eax
c0032eb1:	83 f8 07             	cmp    $0x7,%eax
c0032eb4:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032eba:	0f 8f 59 06 00 00    	jg     c0033519 <_svfprintf_r+0x14c9>
c0032ec0:	8b 9d 0c ff ff ff    	mov    -0xf4(%ebp),%ebx
c0032ec6:	83 c0 01             	add    $0x1,%eax
c0032ec9:	83 c7 08             	add    $0x8,%edi
c0032ecc:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032ed2:	89 5f f8             	mov    %ebx,-0x8(%edi)
c0032ed5:	8b 9d 08 ff ff ff    	mov    -0xf8(%ebp),%ebx
c0032edb:	89 5f fc             	mov    %ebx,-0x4(%edi)
c0032ede:	01 da                	add    %ebx,%edx
c0032ee0:	83 f8 07             	cmp    $0x7,%eax
c0032ee3:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0032ee9:	0f 8f f2 05 00 00    	jg     c00334e1 <_svfprintf_r+0x1491>
c0032eef:	d9 ee                	fldz   
c0032ef1:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0032ef7:	df e9                	fucomip %st(1),%st
c0032ef9:	dd d8                	fstp   %st(0)
c0032efb:	7a 06                	jp     c0032f03 <_svfprintf_r+0xeb3>
c0032efd:	0f 84 33 03 00 00    	je     c0033236 <_svfprintf_r+0x11e6>
c0032f03:	8b 8d 28 ff ff ff    	mov    -0xd8(%ebp),%ecx
c0032f09:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c0032f0f:	83 c1 01             	add    $0x1,%ecx
c0032f12:	89 0f                	mov    %ecx,(%edi)
c0032f14:	8d 4b ff             	lea    -0x1(%ebx),%ecx
c0032f17:	89 4f 04             	mov    %ecx,0x4(%edi)
c0032f1a:	01 ca                	add    %ecx,%edx
c0032f1c:	83 c0 01             	add    $0x1,%eax
c0032f1f:	83 f8 07             	cmp    $0x7,%eax
c0032f22:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0032f28:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032f2e:	0f 8f 75 05 00 00    	jg     c00334a9 <_svfprintf_r+0x1459>
c0032f34:	83 c7 08             	add    $0x8,%edi
c0032f37:	8b 9d 04 ff ff ff    	mov    -0xfc(%ebp),%ebx
c0032f3d:	8d 8d 65 ff ff ff    	lea    -0x9b(%ebp),%ecx
c0032f43:	89 0f                	mov    %ecx,(%edi)
c0032f45:	89 5f 04             	mov    %ebx,0x4(%edi)
c0032f48:	8d 0c 1a             	lea    (%edx,%ebx,1),%ecx
c0032f4b:	83 c0 01             	add    $0x1,%eax
c0032f4e:	83 f8 07             	cmp    $0x7,%eax
c0032f51:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032f57:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032f5d:	0f 8e 96 fb ff ff    	jle    c0032af9 <_svfprintf_r+0xaa9>
c0032f63:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032f69:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032f6d:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032f70:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032f74:	8b 45 08             	mov    0x8(%ebp),%eax
c0032f77:	89 04 24             	mov    %eax,(%esp)
c0032f7a:	e8 51 3c 00 00       	call   c0036bd0 <__ssprint_r>
c0032f7f:	85 c0                	test   %eax,%eax
c0032f81:	0f 85 99 f2 ff ff    	jne    c0032220 <_svfprintf_r+0x1d0>
c0032f87:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032f8d:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032f90:	e9 67 fb ff ff       	jmp    c0032afc <_svfprintf_r+0xaac>
c0032f95:	8d 76 00             	lea    0x0(%esi),%esi
c0032f98:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032f9e:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032fa2:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032fa5:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032fa9:	8b 45 08             	mov    0x8(%ebp),%eax
c0032fac:	89 04 24             	mov    %eax,(%esp)
c0032faf:	e8 1c 3c 00 00       	call   c0036bd0 <__ssprint_r>
c0032fb4:	85 c0                	test   %eax,%eax
c0032fb6:	0f 84 43 fc ff ff    	je     c0032bff <_svfprintf_r+0xbaf>
c0032fbc:	e9 5f f2 ff ff       	jmp    c0032220 <_svfprintf_r+0x1d0>
c0032fc1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0032fc8:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032fce:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032fd2:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032fd5:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032fd9:	8b 45 08             	mov    0x8(%ebp),%eax
c0032fdc:	89 04 24             	mov    %eax,(%esp)
c0032fdf:	e8 ec 3b 00 00       	call   c0036bd0 <__ssprint_r>
c0032fe4:	85 c0                	test   %eax,%eax
c0032fe6:	0f 85 34 f2 ff ff    	jne    c0032220 <_svfprintf_r+0x1d0>
c0032fec:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032ff2:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032ff5:	e9 c8 f9 ff ff       	jmp    c00329c2 <_svfprintf_r+0x972>
c0032ffa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0033000:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033006:	89 44 24 08          	mov    %eax,0x8(%esp)
c003300a:	8b 45 0c             	mov    0xc(%ebp),%eax
c003300d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033011:	8b 45 08             	mov    0x8(%ebp),%eax
c0033014:	89 04 24             	mov    %eax,(%esp)
c0033017:	e8 b4 3b 00 00       	call   c0036bd0 <__ssprint_r>
c003301c:	85 c0                	test   %eax,%eax
c003301e:	0f 85 fc f1 ff ff    	jne    c0032220 <_svfprintf_r+0x1d0>
c0033024:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c003302a:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003302d:	e9 53 f9 ff ff       	jmp    c0032985 <_svfprintf_r+0x935>
c0033032:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0033038:	89 c2                	mov    %eax,%edx
c003303a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0033040:	89 c8                	mov    %ecx,%eax
c0033042:	83 ea 01             	sub    $0x1,%edx
c0033045:	83 e0 07             	and    $0x7,%eax
c0033048:	c1 e9 03             	shr    $0x3,%ecx
c003304b:	83 c0 30             	add    $0x30,%eax
c003304e:	85 c9                	test   %ecx,%ecx
c0033050:	88 02                	mov    %al,(%edx)
c0033052:	75 ec                	jne    c0033040 <_svfprintf_r+0xff0>
c0033054:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c003305b:	89 95 28 ff ff ff    	mov    %edx,-0xd8(%ebp)
c0033061:	0f 84 5b 01 00 00    	je     c00331c2 <_svfprintf_r+0x1172>
c0033067:	3c 30                	cmp    $0x30,%al
c0033069:	74 0b                	je     c0033076 <_svfprintf_r+0x1026>
c003306b:	83 ad 28 ff ff ff 01 	subl   $0x1,-0xd8(%ebp)
c0033072:	c6 42 ff 30          	movb   $0x30,-0x1(%edx)
c0033076:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0033079:	2b 85 28 ff ff ff    	sub    -0xd8(%ebp),%eax
c003307f:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0033085:	e9 1e f4 ff ff       	jmp    c00324a8 <_svfprintf_r+0x458>
c003308a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0033090:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c0033096:	85 db                	test   %ebx,%ebx
c0033098:	0f 8e 66 05 00 00    	jle    c0033604 <_svfprintf_r+0x15b4>
c003309e:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
c00330a4:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
c00330aa:	01 d0                	add    %edx,%eax
c00330ac:	89 c3                	mov    %eax,%ebx
c00330ae:	29 d3                	sub    %edx,%ebx
c00330b0:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%ebp)
c00330b6:	89 d0                	mov    %edx,%eax
c00330b8:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c00330be:	39 d3                	cmp    %edx,%ebx
c00330c0:	0f 4f da             	cmovg  %edx,%ebx
c00330c3:	85 db                	test   %ebx,%ebx
c00330c5:	7e 28                	jle    c00330ef <_svfprintf_r+0x109f>
c00330c7:	89 07                	mov    %eax,(%edi)
c00330c9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00330cf:	01 d9                	add    %ebx,%ecx
c00330d1:	89 5f 04             	mov    %ebx,0x4(%edi)
c00330d4:	83 c7 08             	add    $0x8,%edi
c00330d7:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00330dd:	83 c0 01             	add    $0x1,%eax
c00330e0:	83 f8 07             	cmp    $0x7,%eax
c00330e3:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00330e9:	0f 8f 58 09 00 00    	jg     c0033a47 <_svfprintf_r+0x19f7>
c00330ef:	8b b5 20 ff ff ff    	mov    -0xe0(%ebp),%esi
c00330f5:	31 c0                	xor    %eax,%eax
c00330f7:	85 db                	test   %ebx,%ebx
c00330f9:	0f 49 c3             	cmovns %ebx,%eax
c00330fc:	29 c6                	sub    %eax,%esi
c00330fe:	85 f6                	test   %esi,%esi
c0033100:	0f 8e 40 02 00 00    	jle    c0033346 <_svfprintf_r+0x12f6>
c0033106:	83 fe 10             	cmp    $0x10,%esi
c0033109:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003310f:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0033115:	7f 15                	jg     c003312c <_svfprintf_r+0x10dc>
c0033117:	e9 db 01 00 00       	jmp    c00332f7 <_svfprintf_r+0x12a7>
c003311c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033120:	83 ee 10             	sub    $0x10,%esi
c0033123:	83 fe 10             	cmp    $0x10,%esi
c0033126:	0f 8e cb 01 00 00    	jle    c00332f7 <_svfprintf_r+0x12a7>
c003312c:	83 c0 01             	add    $0x1,%eax
c003312f:	83 c1 10             	add    $0x10,%ecx
c0033132:	c7 07 58 9a 03 c0    	movl   $0xc0039a58,(%edi)
c0033138:	83 c7 08             	add    $0x8,%edi
c003313b:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0033142:	83 f8 07             	cmp    $0x7,%eax
c0033145:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c003314b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033151:	7e cd                	jle    c0033120 <_svfprintf_r+0x10d0>
c0033153:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033156:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c003315a:	89 44 24 04          	mov    %eax,0x4(%esp)
c003315e:	8b 45 08             	mov    0x8(%ebp),%eax
c0033161:	89 04 24             	mov    %eax,(%esp)
c0033164:	e8 67 3a 00 00       	call   c0036bd0 <__ssprint_r>
c0033169:	85 c0                	test   %eax,%eax
c003316b:	0f 85 af f0 ff ff    	jne    c0032220 <_svfprintf_r+0x1d0>
c0033171:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033177:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003317a:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033180:	eb 9e                	jmp    c0033120 <_svfprintf_r+0x10d0>
c0033182:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0033185:	be cd cc cc cc       	mov    $0xcccccccd,%esi
c003318a:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c0033190:	89 c7                	mov    %eax,%edi
c0033192:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0033198:	89 c8                	mov    %ecx,%eax
c003319a:	83 ef 01             	sub    $0x1,%edi
c003319d:	f7 e6                	mul    %esi
c003319f:	c1 ea 03             	shr    $0x3,%edx
c00331a2:	8d 04 92             	lea    (%edx,%edx,4),%eax
c00331a5:	01 c0                	add    %eax,%eax
c00331a7:	29 c1                	sub    %eax,%ecx
c00331a9:	83 c1 30             	add    $0x30,%ecx
c00331ac:	85 d2                	test   %edx,%edx
c00331ae:	88 0f                	mov    %cl,(%edi)
c00331b0:	89 d1                	mov    %edx,%ecx
c00331b2:	75 e4                	jne    c0033198 <_svfprintf_r+0x1148>
c00331b4:	89 fa                	mov    %edi,%edx
c00331b6:	89 bd 28 ff ff ff    	mov    %edi,-0xd8(%ebp)
c00331bc:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
c00331c2:	8d 45 a8             	lea    -0x58(%ebp),%eax
c00331c5:	29 d0                	sub    %edx,%eax
c00331c7:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c00331cd:	e9 d6 f2 ff ff       	jmp    c00324a8 <_svfprintf_r+0x458>
c00331d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00331d8:	83 f9 09             	cmp    $0x9,%ecx
c00331db:	77 a5                	ja     c0033182 <_svfprintf_r+0x1132>
c00331dd:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
c00331e3:	83 c1 30             	add    $0x30,%ecx
c00331e6:	88 4d a7             	mov    %cl,-0x59(%ebp)
c00331e9:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c00331ef:	8d 45 a7             	lea    -0x59(%ebp),%eax
c00331f2:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c00331f8:	e9 ab f2 ff ff       	jmp    c00324a8 <_svfprintf_r+0x458>
c00331fd:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033203:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033207:	8b 45 0c             	mov    0xc(%ebp),%eax
c003320a:	89 44 24 04          	mov    %eax,0x4(%esp)
c003320e:	8b 45 08             	mov    0x8(%ebp),%eax
c0033211:	89 04 24             	mov    %eax,(%esp)
c0033214:	e8 b7 39 00 00       	call   c0036bd0 <__ssprint_r>
c0033219:	85 c0                	test   %eax,%eax
c003321b:	0f 85 ff ef ff ff    	jne    c0032220 <_svfprintf_r+0x1d0>
c0033221:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0033228:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003322b:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033231:	e9 18 f7 ff ff       	jmp    c003294e <_svfprintf_r+0x8fe>
c0033236:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c003323c:	8d 73 ff             	lea    -0x1(%ebx),%esi
c003323f:	85 f6                	test   %esi,%esi
c0033241:	0f 8e f0 fc ff ff    	jle    c0032f37 <_svfprintf_r+0xee7>
c0033247:	83 fe 10             	cmp    $0x10,%esi
c003324a:	7e 70                	jle    c00332bc <_svfprintf_r+0x126c>
c003324c:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0033252:	eb 0c                	jmp    c0033260 <_svfprintf_r+0x1210>
c0033254:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033258:	83 ee 10             	sub    $0x10,%esi
c003325b:	83 fe 10             	cmp    $0x10,%esi
c003325e:	7e 5c                	jle    c00332bc <_svfprintf_r+0x126c>
c0033260:	83 c0 01             	add    $0x1,%eax
c0033263:	83 c2 10             	add    $0x10,%edx
c0033266:	c7 07 58 9a 03 c0    	movl   $0xc0039a58,(%edi)
c003326c:	83 c7 08             	add    $0x8,%edi
c003326f:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0033276:	83 f8 07             	cmp    $0x7,%eax
c0033279:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c003327f:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033285:	7e d1                	jle    c0033258 <_svfprintf_r+0x1208>
c0033287:	8b 45 0c             	mov    0xc(%ebp),%eax
c003328a:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c003328e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033292:	8b 45 08             	mov    0x8(%ebp),%eax
c0033295:	89 04 24             	mov    %eax,(%esp)
c0033298:	e8 33 39 00 00       	call   c0036bd0 <__ssprint_r>
c003329d:	85 c0                	test   %eax,%eax
c003329f:	0f 85 7b ef ff ff    	jne    c0032220 <_svfprintf_r+0x1d0>
c00332a5:	83 ee 10             	sub    $0x10,%esi
c00332a8:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00332ae:	83 fe 10             	cmp    $0x10,%esi
c00332b1:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00332b7:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00332ba:	7f a4                	jg     c0033260 <_svfprintf_r+0x1210>
c00332bc:	c7 07 58 9a 03 c0    	movl   $0xc0039a58,(%edi)
c00332c2:	01 f2                	add    %esi,%edx
c00332c4:	89 77 04             	mov    %esi,0x4(%edi)
c00332c7:	e9 50 fc ff ff       	jmp    c0032f1c <_svfprintf_r+0xecc>
c00332cc:	c7 07 58 9a 03 c0    	movl   $0xc0039a58,(%edi)
c00332d2:	01 f1                	add    %esi,%ecx
c00332d4:	89 77 04             	mov    %esi,0x4(%edi)
c00332d7:	e9 6f fc ff ff       	jmp    c0032f4b <_svfprintf_r+0xefb>
c00332dc:	8b 45 14             	mov    0x14(%ebp),%eax
c00332df:	8b 95 34 ff ff ff    	mov    -0xcc(%ebp),%edx
c00332e5:	8b 00                	mov    (%eax),%eax
c00332e7:	89 10                	mov    %edx,(%eax)
c00332e9:	8b 45 14             	mov    0x14(%ebp),%eax
c00332ec:	83 c0 04             	add    $0x4,%eax
c00332ef:	89 45 14             	mov    %eax,0x14(%ebp)
c00332f2:	e9 f4 ed ff ff       	jmp    c00320eb <_svfprintf_r+0x9b>
c00332f7:	83 c0 01             	add    $0x1,%eax
c00332fa:	01 f1                	add    %esi,%ecx
c00332fc:	c7 07 58 9a 03 c0    	movl   $0xc0039a58,(%edi)
c0033302:	83 c7 08             	add    $0x8,%edi
c0033305:	89 77 fc             	mov    %esi,-0x4(%edi)
c0033308:	83 f8 07             	cmp    $0x7,%eax
c003330b:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0033311:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033317:	7e 2d                	jle    c0033346 <_svfprintf_r+0x12f6>
c0033319:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003331f:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033323:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033326:	89 44 24 04          	mov    %eax,0x4(%esp)
c003332a:	8b 45 08             	mov    0x8(%ebp),%eax
c003332d:	89 04 24             	mov    %eax,(%esp)
c0033330:	e8 9b 38 00 00       	call   c0036bd0 <__ssprint_r>
c0033335:	85 c0                	test   %eax,%eax
c0033337:	0f 85 e3 ee ff ff    	jne    c0032220 <_svfprintf_r+0x1d0>
c003333d:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033343:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033346:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c003334c:	8b 95 5c ff ff ff    	mov    -0xa4(%ebp),%edx
c0033352:	03 85 20 ff ff ff    	add    -0xe0(%ebp),%eax
c0033358:	3b 95 1c ff ff ff    	cmp    -0xe4(%ebp),%edx
c003335e:	89 c6                	mov    %eax,%esi
c0033360:	7c 0d                	jl     c003336f <_svfprintf_r+0x131f>
c0033362:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0033369:	0f 84 5e 05 00 00    	je     c00338cd <_svfprintf_r+0x187d>
c003336f:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
c0033375:	89 07                	mov    %eax,(%edi)
c0033377:	8b 85 08 ff ff ff    	mov    -0xf8(%ebp),%eax
c003337d:	01 c1                	add    %eax,%ecx
c003337f:	89 47 04             	mov    %eax,0x4(%edi)
c0033382:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033388:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c003338e:	83 c0 01             	add    $0x1,%eax
c0033391:	83 f8 07             	cmp    $0x7,%eax
c0033394:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003339a:	0f 8f d9 06 00 00    	jg     c0033a79 <_svfprintf_r+0x1a29>
c00333a0:	83 c7 08             	add    $0x8,%edi
c00333a3:	89 d0                	mov    %edx,%eax
c00333a5:	8b 9d 44 ff ff ff    	mov    -0xbc(%ebp),%ebx
c00333ab:	89 f2                	mov    %esi,%edx
c00333ad:	29 f3                	sub    %esi,%ebx
c00333af:	8b b5 1c ff ff ff    	mov    -0xe4(%ebp),%esi
c00333b5:	29 c6                	sub    %eax,%esi
c00333b7:	39 de                	cmp    %ebx,%esi
c00333b9:	0f 4e de             	cmovle %esi,%ebx
c00333bc:	85 db                	test   %ebx,%ebx
c00333be:	7e 29                	jle    c00333e9 <_svfprintf_r+0x1399>
c00333c0:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00333c6:	01 d9                	add    %ebx,%ecx
c00333c8:	83 c7 08             	add    $0x8,%edi
c00333cb:	89 57 f8             	mov    %edx,-0x8(%edi)
c00333ce:	89 5f fc             	mov    %ebx,-0x4(%edi)
c00333d1:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00333d7:	83 c0 01             	add    $0x1,%eax
c00333da:	83 f8 07             	cmp    $0x7,%eax
c00333dd:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00333e3:	0f 8f c8 06 00 00    	jg     c0033ab1 <_svfprintf_r+0x1a61>
c00333e9:	31 c0                	xor    %eax,%eax
c00333eb:	85 db                	test   %ebx,%ebx
c00333ed:	0f 49 c3             	cmovns %ebx,%eax
c00333f0:	29 c6                	sub    %eax,%esi
c00333f2:	85 f6                	test   %esi,%esi
c00333f4:	0f 8e 02 f7 ff ff    	jle    c0032afc <_svfprintf_r+0xaac>
c00333fa:	83 fe 10             	cmp    $0x10,%esi
c00333fd:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033403:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0033409:	7f 11                	jg     c003341c <_svfprintf_r+0x13cc>
c003340b:	e9 bc fe ff ff       	jmp    c00332cc <_svfprintf_r+0x127c>
c0033410:	83 ee 10             	sub    $0x10,%esi
c0033413:	83 fe 10             	cmp    $0x10,%esi
c0033416:	0f 8e b0 fe ff ff    	jle    c00332cc <_svfprintf_r+0x127c>
c003341c:	83 c0 01             	add    $0x1,%eax
c003341f:	83 c1 10             	add    $0x10,%ecx
c0033422:	c7 07 58 9a 03 c0    	movl   $0xc0039a58,(%edi)
c0033428:	83 c7 08             	add    $0x8,%edi
c003342b:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0033432:	83 f8 07             	cmp    $0x7,%eax
c0033435:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c003343b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033441:	7e cd                	jle    c0033410 <_svfprintf_r+0x13c0>
c0033443:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033446:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c003344a:	89 44 24 04          	mov    %eax,0x4(%esp)
c003344e:	8b 45 08             	mov    0x8(%ebp),%eax
c0033451:	89 04 24             	mov    %eax,(%esp)
c0033454:	e8 77 37 00 00       	call   c0036bd0 <__ssprint_r>
c0033459:	85 c0                	test   %eax,%eax
c003345b:	0f 85 bf ed ff ff    	jne    c0032220 <_svfprintf_r+0x1d0>
c0033461:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033467:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003346a:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033470:	eb 9e                	jmp    c0033410 <_svfprintf_r+0x13c0>
c0033472:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0033479:	0f 85 14 fa ff ff    	jne    c0032e93 <_svfprintf_r+0xe43>
c003347f:	89 07                	mov    %eax,(%edi)
c0033481:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033487:	8d 51 01             	lea    0x1(%ecx),%edx
c003348a:	c7 47 04 01 00 00 00 	movl   $0x1,0x4(%edi)
c0033491:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0033497:	83 c0 01             	add    $0x1,%eax
c003349a:	83 f8 07             	cmp    $0x7,%eax
c003349d:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00334a3:	0f 8e 8b fa ff ff    	jle    c0032f34 <_svfprintf_r+0xee4>
c00334a9:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00334af:	89 44 24 08          	mov    %eax,0x8(%esp)
c00334b3:	8b 45 0c             	mov    0xc(%ebp),%eax
c00334b6:	89 44 24 04          	mov    %eax,0x4(%esp)
c00334ba:	8b 45 08             	mov    0x8(%ebp),%eax
c00334bd:	89 04 24             	mov    %eax,(%esp)
c00334c0:	e8 0b 37 00 00       	call   c0036bd0 <__ssprint_r>
c00334c5:	85 c0                	test   %eax,%eax
c00334c7:	0f 85 53 ed ff ff    	jne    c0032220 <_svfprintf_r+0x1d0>
c00334cd:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00334d3:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00334d6:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00334dc:	e9 56 fa ff ff       	jmp    c0032f37 <_svfprintf_r+0xee7>
c00334e1:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00334e7:	89 44 24 08          	mov    %eax,0x8(%esp)
c00334eb:	8b 45 0c             	mov    0xc(%ebp),%eax
c00334ee:	89 44 24 04          	mov    %eax,0x4(%esp)
c00334f2:	8b 45 08             	mov    0x8(%ebp),%eax
c00334f5:	89 04 24             	mov    %eax,(%esp)
c00334f8:	e8 d3 36 00 00       	call   c0036bd0 <__ssprint_r>
c00334fd:	85 c0                	test   %eax,%eax
c00334ff:	0f 85 1b ed ff ff    	jne    c0032220 <_svfprintf_r+0x1d0>
c0033505:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003350b:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003350e:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033514:	e9 d6 f9 ff ff       	jmp    c0032eef <_svfprintf_r+0xe9f>
c0033519:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003351f:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033523:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033526:	89 44 24 04          	mov    %eax,0x4(%esp)
c003352a:	8b 45 08             	mov    0x8(%ebp),%eax
c003352d:	89 04 24             	mov    %eax,(%esp)
c0033530:	e8 9b 36 00 00       	call   c0036bd0 <__ssprint_r>
c0033535:	85 c0                	test   %eax,%eax
c0033537:	0f 85 e3 ec ff ff    	jne    c0032220 <_svfprintf_r+0x1d0>
c003353d:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0033543:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033546:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003354c:	e9 6f f9 ff ff       	jmp    c0032ec0 <_svfprintf_r+0xe70>
c0033551:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0033557:	dd 1c 24             	fstpl  (%esp)
c003355a:	e8 11 35 00 00       	call   c0036a70 <__fpclassifyd>
c003355f:	85 c0                	test   %eax,%eax
c0033561:	0f 85 a3 01 00 00    	jne    c003370a <_svfprintf_r+0x16ba>
c0033567:	83 bd 24 ff ff ff 47 	cmpl   $0x47,-0xdc(%ebp)
c003356e:	ba be 98 03 c0       	mov    $0xc00398be,%edx
c0033573:	b8 c2 98 03 c0       	mov    $0xc00398c2,%eax
c0033578:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c003357f:	c7 85 48 ff ff ff 03 	movl   $0x3,-0xb8(%ebp)
c0033586:	00 00 00 
c0033589:	0f 4e c2             	cmovle %edx,%eax
c003358c:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0033592:	81 a5 4c ff ff ff 7f 	andl   $0xffffff7f,-0xb4(%ebp)
c0033599:	ff ff ff 
c003359c:	c7 85 38 ff ff ff 03 	movl   $0x3,-0xc8(%ebp)
c00335a3:	00 00 00 
c00335a6:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c00335ad:	00 00 00 
c00335b0:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c00335b7:	00 00 00 
c00335ba:	e9 29 ed ff ff       	jmp    c00322e8 <_svfprintf_r+0x298>
c00335bf:	dd 00                	fldl   (%eax)
c00335c1:	83 c0 08             	add    $0x8,%eax
c00335c4:	dd 9d 10 ff ff ff    	fstpl  -0xf0(%ebp)
c00335ca:	89 45 14             	mov    %eax,0x14(%ebp)
c00335cd:	e9 e6 ef ff ff       	jmp    c00325b8 <_svfprintf_r+0x568>
c00335d2:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00335d8:	89 44 24 08          	mov    %eax,0x8(%esp)
c00335dc:	8b 45 0c             	mov    0xc(%ebp),%eax
c00335df:	89 44 24 04          	mov    %eax,0x4(%esp)
c00335e3:	8b 45 08             	mov    0x8(%ebp),%eax
c00335e6:	89 04 24             	mov    %eax,(%esp)
c00335e9:	e8 e2 35 00 00       	call   c0036bd0 <__ssprint_r>
c00335ee:	85 c0                	test   %eax,%eax
c00335f0:	0f 85 2a ec ff ff    	jne    c0032220 <_svfprintf_r+0x1d0>
c00335f6:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00335fc:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00335ff:	e9 6b f6 ff ff       	jmp    c0032c6f <_svfprintf_r+0xc1f>
c0033604:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003360a:	83 c1 01             	add    $0x1,%ecx
c003360d:	83 c7 08             	add    $0x8,%edi
c0033610:	c7 47 f8 ef 98 03 c0 	movl   $0xc00398ef,-0x8(%edi)
c0033617:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
c003361e:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0033624:	83 c0 01             	add    $0x1,%eax
c0033627:	83 f8 07             	cmp    $0x7,%eax
c003362a:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033630:	0f 8f ef 02 00 00    	jg     c0033925 <_svfprintf_r+0x18d5>
c0033636:	85 db                	test   %ebx,%ebx
c0033638:	75 17                	jne    c0033651 <_svfprintf_r+0x1601>
c003363a:	8b 95 1c ff ff ff    	mov    -0xe4(%ebp),%edx
c0033640:	85 d2                	test   %edx,%edx
c0033642:	75 0d                	jne    c0033651 <_svfprintf_r+0x1601>
c0033644:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c003364b:	0f 84 ab f4 ff ff    	je     c0032afc <_svfprintf_r+0xaac>
c0033651:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
c0033657:	83 c7 08             	add    $0x8,%edi
c003365a:	89 47 f8             	mov    %eax,-0x8(%edi)
c003365d:	8b 85 08 ff ff ff    	mov    -0xf8(%ebp),%eax
c0033663:	89 47 fc             	mov    %eax,-0x4(%edi)
c0033666:	8d 14 01             	lea    (%ecx,%eax,1),%edx
c0033669:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003366f:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0033675:	83 c0 01             	add    $0x1,%eax
c0033678:	83 f8 07             	cmp    $0x7,%eax
c003367b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033681:	0f 8f 60 03 00 00    	jg     c00339e7 <_svfprintf_r+0x1997>
c0033687:	f7 db                	neg    %ebx
c0033689:	85 db                	test   %ebx,%ebx
c003368b:	0f 8e 21 03 00 00    	jle    c00339b2 <_svfprintf_r+0x1962>
c0033691:	83 fb 10             	cmp    $0x10,%ebx
c0033694:	0f 8e c3 02 00 00    	jle    c003395d <_svfprintf_r+0x190d>
c003369a:	8d b5 74 ff ff ff    	lea    -0x8c(%ebp),%esi
c00336a0:	eb 12                	jmp    c00336b4 <_svfprintf_r+0x1664>
c00336a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00336a8:	83 eb 10             	sub    $0x10,%ebx
c00336ab:	83 fb 10             	cmp    $0x10,%ebx
c00336ae:	0f 8e a9 02 00 00    	jle    c003395d <_svfprintf_r+0x190d>
c00336b4:	83 c0 01             	add    $0x1,%eax
c00336b7:	83 c2 10             	add    $0x10,%edx
c00336ba:	c7 07 58 9a 03 c0    	movl   $0xc0039a58,(%edi)
c00336c0:	83 c7 08             	add    $0x8,%edi
c00336c3:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c00336ca:	83 f8 07             	cmp    $0x7,%eax
c00336cd:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00336d3:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00336d9:	7e cd                	jle    c00336a8 <_svfprintf_r+0x1658>
c00336db:	8b 45 0c             	mov    0xc(%ebp),%eax
c00336de:	89 74 24 08          	mov    %esi,0x8(%esp)
c00336e2:	89 44 24 04          	mov    %eax,0x4(%esp)
c00336e6:	8b 45 08             	mov    0x8(%ebp),%eax
c00336e9:	89 04 24             	mov    %eax,(%esp)
c00336ec:	e8 df 34 00 00       	call   c0036bd0 <__ssprint_r>
c00336f1:	85 c0                	test   %eax,%eax
c00336f3:	0f 85 27 eb ff ff    	jne    c0032220 <_svfprintf_r+0x1d0>
c00336f9:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00336ff:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033702:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033708:	eb 9e                	jmp    c00336a8 <_svfprintf_r+0x1658>
c003370a:	8b 9d 24 ff ff ff    	mov    -0xdc(%ebp),%ebx
c0033710:	83 e3 df             	and    $0xffffffdf,%ebx
c0033713:	83 bd 44 ff ff ff ff 	cmpl   $0xffffffff,-0xbc(%ebp)
c003371a:	0f 84 05 03 00 00    	je     c0033a25 <_svfprintf_r+0x19d5>
c0033720:	83 fb 47             	cmp    $0x47,%ebx
c0033723:	75 16                	jne    c003373b <_svfprintf_r+0x16eb>
c0033725:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c003372b:	b8 01 00 00 00       	mov    $0x1,%eax
c0033730:	85 d2                	test   %edx,%edx
c0033732:	0f 45 c2             	cmovne %edx,%eax
c0033735:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%ebp)
c003373b:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
c0033741:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0033747:	dd 95 38 ff ff ff    	fstl   -0xc8(%ebp)
c003374d:	80 cc 01             	or     $0x1,%ah
c0033750:	89 85 30 ff ff ff    	mov    %eax,-0xd0(%ebp)
c0033756:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
c003375c:	c6 85 48 ff ff ff 00 	movb   $0x0,-0xb8(%ebp)
c0033763:	85 c0                	test   %eax,%eax
c0033765:	0f 88 ba 05 00 00    	js     c0033d25 <_svfprintf_r+0x1cd5>
c003376b:	83 fb 46             	cmp    $0x46,%ebx
c003376e:	0f 94 c0             	sete   %al
c0033771:	89 c6                	mov    %eax,%esi
c0033773:	0f 84 d4 03 00 00    	je     c0033b4d <_svfprintf_r+0x1afd>
c0033779:	83 fb 45             	cmp    $0x45,%ebx
c003377c:	0f 85 99 05 00 00    	jne    c0033d1b <_svfprintf_r+0x1ccb>
c0033782:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c0033788:	dd 54 24 04          	fstl   0x4(%esp)
c003378c:	c7 44 24 0c 02 00 00 	movl   $0x2,0xc(%esp)
c0033793:	00 
c0033794:	dd 9d 38 ff ff ff    	fstpl  -0xc8(%ebp)
c003379a:	8d 70 01             	lea    0x1(%eax),%esi
c003379d:	8d 85 6c ff ff ff    	lea    -0x94(%ebp),%eax
c00337a3:	89 44 24 1c          	mov    %eax,0x1c(%esp)
c00337a7:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
c00337ad:	89 44 24 18          	mov    %eax,0x18(%esp)
c00337b1:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
c00337b7:	89 44 24 14          	mov    %eax,0x14(%esp)
c00337bb:	8b 45 08             	mov    0x8(%ebp),%eax
c00337be:	89 74 24 10          	mov    %esi,0x10(%esp)
c00337c2:	89 04 24             	mov    %eax,(%esp)
c00337c5:	e8 56 09 00 00       	call   c0034120 <_dtoa_r>
c00337ca:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c00337d0:	8d 0c 30             	lea    (%eax,%esi,1),%ecx
c00337d3:	dd 85 38 ff ff ff    	fldl   -0xc8(%ebp)
c00337d9:	d9 ee                	fldz   
c00337db:	d9 c9                	fxch   %st(1)
c00337dd:	df e9                	fucomip %st(1),%st
c00337df:	dd d8                	fstp   %st(0)
c00337e1:	0f 8a fd 00 00 00    	jp     c00338e4 <_svfprintf_r+0x1894>
c00337e7:	89 c8                	mov    %ecx,%eax
c00337e9:	0f 85 f5 00 00 00    	jne    c00338e4 <_svfprintf_r+0x1894>
c00337ef:	2b 85 28 ff ff ff    	sub    -0xd8(%ebp),%eax
c00337f5:	83 fb 47             	cmp    $0x47,%ebx
c00337f8:	89 85 1c ff ff ff    	mov    %eax,-0xe4(%ebp)
c00337fe:	0f 84 1e 04 00 00    	je     c0033c22 <_svfprintf_r+0x1bd2>
c0033804:	83 bd 24 ff ff ff 65 	cmpl   $0x65,-0xdc(%ebp)
c003380b:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0033811:	0f 8e 65 04 00 00    	jle    c0033c7c <_svfprintf_r+0x1c2c>
c0033817:	83 bd 24 ff ff ff 66 	cmpl   $0x66,-0xdc(%ebp)
c003381e:	89 85 20 ff ff ff    	mov    %eax,-0xe0(%ebp)
c0033824:	0f 84 3c 05 00 00    	je     c0033d66 <_svfprintf_r+0x1d16>
c003382a:	8b 85 20 ff ff ff    	mov    -0xe0(%ebp),%eax
c0033830:	39 85 1c ff ff ff    	cmp    %eax,-0xe4(%ebp)
c0033836:	0f 8f f7 04 00 00    	jg     c0033d33 <_svfprintf_r+0x1ce3>
c003383c:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
c0033842:	83 e0 01             	and    $0x1,%eax
c0033845:	0f 85 e2 05 00 00    	jne    c0033e2d <_svfprintf_r+0x1ddd>
c003384b:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c0033851:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
c0033858:	00 00 00 
c003385b:	85 d2                	test   %edx,%edx
c003385d:	0f 49 c2             	cmovns %edx,%eax
c0033860:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0033866:	80 bd 48 ff ff ff 00 	cmpb   $0x0,-0xb8(%ebp)
c003386d:	0f 85 68 03 00 00    	jne    c0033bdb <_svfprintf_r+0x1b8b>
c0033873:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0033879:	8b 85 30 ff ff ff    	mov    -0xd0(%ebp),%eax
c003387f:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0033886:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c003388d:	00 00 00 
c0033890:	89 85 4c ff ff ff    	mov    %eax,-0xb4(%ebp)
c0033896:	e9 4d ea ff ff       	jmp    c00322e8 <_svfprintf_r+0x298>
c003389b:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00338a1:	89 44 24 08          	mov    %eax,0x8(%esp)
c00338a5:	8b 45 0c             	mov    0xc(%ebp),%eax
c00338a8:	89 44 24 04          	mov    %eax,0x4(%esp)
c00338ac:	8b 45 08             	mov    0x8(%ebp),%eax
c00338af:	89 04 24             	mov    %eax,(%esp)
c00338b2:	e8 19 33 00 00       	call   c0036bd0 <__ssprint_r>
c00338b7:	85 c0                	test   %eax,%eax
c00338b9:	0f 85 61 e9 ff ff    	jne    c0032220 <_svfprintf_r+0x1d0>
c00338bf:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00338c5:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00338c8:	e9 f2 f3 ff ff       	jmp    c0032cbf <_svfprintf_r+0xc6f>
c00338cd:	89 d0                	mov    %edx,%eax
c00338cf:	e9 d1 fa ff ff       	jmp    c00333a5 <_svfprintf_r+0x1355>
c00338d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00338d8:	8d 50 01             	lea    0x1(%eax),%edx
c00338db:	89 95 6c ff ff ff    	mov    %edx,-0x94(%ebp)
c00338e1:	c6 00 30             	movb   $0x30,(%eax)
c00338e4:	8b 85 6c ff ff ff    	mov    -0x94(%ebp),%eax
c00338ea:	39 c1                	cmp    %eax,%ecx
c00338ec:	77 ea                	ja     c00338d8 <_svfprintf_r+0x1888>
c00338ee:	e9 fc fe ff ff       	jmp    c00337ef <_svfprintf_r+0x179f>
c00338f3:	8b 45 08             	mov    0x8(%ebp),%eax
c00338f6:	c7 44 24 04 40 00 00 	movl   $0x40,0x4(%esp)
c00338fd:	00 
c00338fe:	89 04 24             	mov    %eax,(%esp)
c0033901:	e8 4a 1b 00 00       	call   c0035450 <_malloc_r>
c0033906:	8b 55 0c             	mov    0xc(%ebp),%edx
c0033909:	85 c0                	test   %eax,%eax
c003390b:	89 02                	mov    %eax,(%edx)
c003390d:	89 42 10             	mov    %eax,0x10(%edx)
c0033910:	0f 84 15 06 00 00    	je     c0033f2b <_svfprintf_r+0x1edb>
c0033916:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033919:	c7 40 14 40 00 00 00 	movl   $0x40,0x14(%eax)
c0033920:	e9 6c e7 ff ff       	jmp    c0032091 <_svfprintf_r+0x41>
c0033925:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003392b:	89 44 24 08          	mov    %eax,0x8(%esp)
c003392f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033932:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033936:	8b 45 08             	mov    0x8(%ebp),%eax
c0033939:	89 04 24             	mov    %eax,(%esp)
c003393c:	e8 8f 32 00 00       	call   c0036bd0 <__ssprint_r>
c0033941:	85 c0                	test   %eax,%eax
c0033943:	0f 85 d7 e8 ff ff    	jne    c0032220 <_svfprintf_r+0x1d0>
c0033949:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c003394f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033952:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033958:	e9 d9 fc ff ff       	jmp    c0033636 <_svfprintf_r+0x15e6>
c003395d:	83 c0 01             	add    $0x1,%eax
c0033960:	01 da                	add    %ebx,%edx
c0033962:	c7 07 58 9a 03 c0    	movl   $0xc0039a58,(%edi)
c0033968:	83 c7 08             	add    $0x8,%edi
c003396b:	89 5f fc             	mov    %ebx,-0x4(%edi)
c003396e:	83 f8 07             	cmp    $0x7,%eax
c0033971:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0033977:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003397d:	7e 33                	jle    c00339b2 <_svfprintf_r+0x1962>
c003397f:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033985:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033989:	8b 45 0c             	mov    0xc(%ebp),%eax
c003398c:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033990:	8b 45 08             	mov    0x8(%ebp),%eax
c0033993:	89 04 24             	mov    %eax,(%esp)
c0033996:	e8 35 32 00 00       	call   c0036bd0 <__ssprint_r>
c003399b:	85 c0                	test   %eax,%eax
c003399d:	0f 85 7d e8 ff ff    	jne    c0032220 <_svfprintf_r+0x1d0>
c00339a3:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00339a9:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00339ac:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00339b2:	8b 9d 28 ff ff ff    	mov    -0xd8(%ebp),%ebx
c00339b8:	83 c0 01             	add    $0x1,%eax
c00339bb:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00339c1:	89 1f                	mov    %ebx,(%edi)
c00339c3:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c00339c9:	01 da                	add    %ebx,%edx
c00339cb:	83 f8 07             	cmp    $0x7,%eax
c00339ce:	89 5f 04             	mov    %ebx,0x4(%edi)
c00339d1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00339d7:	0f 8f 86 f5 ff ff    	jg     c0032f63 <_svfprintf_r+0xf13>
c00339dd:	83 c7 08             	add    $0x8,%edi
c00339e0:	89 d1                	mov    %edx,%ecx
c00339e2:	e9 15 f1 ff ff       	jmp    c0032afc <_svfprintf_r+0xaac>
c00339e7:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00339ed:	89 44 24 08          	mov    %eax,0x8(%esp)
c00339f1:	8b 45 0c             	mov    0xc(%ebp),%eax
c00339f4:	89 44 24 04          	mov    %eax,0x4(%esp)
c00339f8:	8b 45 08             	mov    0x8(%ebp),%eax
c00339fb:	89 04 24             	mov    %eax,(%esp)
c00339fe:	e8 cd 31 00 00       	call   c0036bd0 <__ssprint_r>
c0033a03:	85 c0                	test   %eax,%eax
c0033a05:	0f 85 15 e8 ff ff    	jne    c0032220 <_svfprintf_r+0x1d0>
c0033a0b:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c0033a11:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033a14:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0033a1a:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033a20:	e9 62 fc ff ff       	jmp    c0033687 <_svfprintf_r+0x1637>
c0033a25:	c7 85 44 ff ff ff 06 	movl   $0x6,-0xbc(%ebp)
c0033a2c:	00 00 00 
c0033a2f:	e9 07 fd ff ff       	jmp    c003373b <_svfprintf_r+0x16eb>
c0033a34:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c0033a3a:	89 04 24             	mov    %eax,(%esp)
c0033a3d:	e8 0e 31 00 00       	call   c0036b50 <strlen>
c0033a42:	e9 6a e8 ff ff       	jmp    c00322b1 <_svfprintf_r+0x261>
c0033a47:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033a4d:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033a51:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033a54:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033a58:	8b 45 08             	mov    0x8(%ebp),%eax
c0033a5b:	89 04 24             	mov    %eax,(%esp)
c0033a5e:	e8 6d 31 00 00       	call   c0036bd0 <__ssprint_r>
c0033a63:	85 c0                	test   %eax,%eax
c0033a65:	0f 85 b5 e7 ff ff    	jne    c0032220 <_svfprintf_r+0x1d0>
c0033a6b:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033a71:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033a74:	e9 76 f6 ff ff       	jmp    c00330ef <_svfprintf_r+0x109f>
c0033a79:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033a7f:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033a83:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033a86:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033a8a:	8b 45 08             	mov    0x8(%ebp),%eax
c0033a8d:	89 04 24             	mov    %eax,(%esp)
c0033a90:	e8 3b 31 00 00       	call   c0036bd0 <__ssprint_r>
c0033a95:	85 c0                	test   %eax,%eax
c0033a97:	0f 85 83 e7 ff ff    	jne    c0032220 <_svfprintf_r+0x1d0>
c0033a9d:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0033aa3:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033aa6:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033aac:	e9 f4 f8 ff ff       	jmp    c00333a5 <_svfprintf_r+0x1355>
c0033ab1:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033ab7:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033abb:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033abe:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033ac2:	8b 45 08             	mov    0x8(%ebp),%eax
c0033ac5:	89 04 24             	mov    %eax,(%esp)
c0033ac8:	e8 03 31 00 00       	call   c0036bd0 <__ssprint_r>
c0033acd:	85 c0                	test   %eax,%eax
c0033acf:	0f 85 4b e7 ff ff    	jne    c0032220 <_svfprintf_r+0x1d0>
c0033ad5:	8b b5 1c ff ff ff    	mov    -0xe4(%ebp),%esi
c0033adb:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033ade:	2b b5 5c ff ff ff    	sub    -0xa4(%ebp),%esi
c0033ae4:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033aea:	e9 fa f8 ff ff       	jmp    c00333e9 <_svfprintf_r+0x1399>
c0033aef:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c0033af5:	b0 06                	mov    $0x6,%al
c0033af7:	89 75 14             	mov    %esi,0x14(%ebp)
c0033afa:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0033b01:	00 00 00 
c0033b04:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0033b0b:	00 00 00 
c0033b0e:	83 fa 06             	cmp    $0x6,%edx
c0033b11:	0f 46 c2             	cmovbe %edx,%eax
c0033b14:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
c0033b1a:	85 c0                	test   %eax,%eax
c0033b1c:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0033b22:	c7 85 28 ff ff ff e8 	movl   $0xc00398e8,-0xd8(%ebp)
c0033b29:	98 03 c0 
c0033b2c:	0f 49 d0             	cmovns %eax,%edx
c0033b2f:	31 db                	xor    %ebx,%ebx
c0033b31:	89 95 48 ff ff ff    	mov    %edx,-0xb8(%ebp)
c0033b37:	e9 b7 e7 ff ff       	jmp    c00322f3 <_svfprintf_r+0x2a3>
c0033b3c:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
c0033b43:	bb 2d 00 00 00       	mov    $0x2d,%ebx
c0033b48:	e9 9d ea ff ff       	jmp    c00325ea <_svfprintf_r+0x59a>
c0033b4d:	ba 03 00 00 00       	mov    $0x3,%edx
c0033b52:	8d 85 6c ff ff ff    	lea    -0x94(%ebp),%eax
c0033b58:	89 44 24 1c          	mov    %eax,0x1c(%esp)
c0033b5c:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
c0033b62:	89 44 24 18          	mov    %eax,0x18(%esp)
c0033b66:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
c0033b6c:	89 44 24 14          	mov    %eax,0x14(%esp)
c0033b70:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c0033b76:	dd 54 24 04          	fstl   0x4(%esp)
c0033b7a:	89 54 24 0c          	mov    %edx,0xc(%esp)
c0033b7e:	dd 9d 38 ff ff ff    	fstpl  -0xc8(%ebp)
c0033b84:	89 44 24 10          	mov    %eax,0x10(%esp)
c0033b88:	8b 45 08             	mov    0x8(%ebp),%eax
c0033b8b:	89 04 24             	mov    %eax,(%esp)
c0033b8e:	e8 8d 05 00 00       	call   c0034120 <_dtoa_r>
c0033b93:	83 fb 47             	cmp    $0x47,%ebx
c0033b96:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0033b9c:	dd 85 38 ff ff ff    	fldl   -0xc8(%ebp)
c0033ba2:	75 09                	jne    c0033bad <_svfprintf_r+0x1b5d>
c0033ba4:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0033bab:	74 5b                	je     c0033c08 <_svfprintf_r+0x1bb8>
c0033bad:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
c0033bb3:	89 f0                	mov    %esi,%eax
c0033bb5:	8b 8d 44 ff ff ff    	mov    -0xbc(%ebp),%ecx
c0033bbb:	01 d1                	add    %edx,%ecx
c0033bbd:	84 c0                	test   %al,%al
c0033bbf:	0f 84 14 fc ff ff    	je     c00337d9 <_svfprintf_r+0x1789>
c0033bc5:	80 3a 30             	cmpb   $0x30,(%edx)
c0033bc8:	0f 84 37 02 00 00    	je     c0033e05 <_svfprintf_r+0x1db5>
c0033bce:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0033bd4:	01 c1                	add    %eax,%ecx
c0033bd6:	e9 fe fb ff ff       	jmp    c00337d9 <_svfprintf_r+0x1789>
c0033bdb:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0033be1:	8b 85 30 ff ff ff    	mov    -0xd0(%ebp),%eax
c0033be7:	bb 2d 00 00 00       	mov    $0x2d,%ebx
c0033bec:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
c0033bf3:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0033bfa:	00 00 00 
c0033bfd:	89 85 4c ff ff ff    	mov    %eax,-0xb4(%ebp)
c0033c03:	e9 e4 e6 ff ff       	jmp    c00322ec <_svfprintf_r+0x29c>
c0033c08:	dd d8                	fstp   %st(0)
c0033c0a:	8b 85 6c ff ff ff    	mov    -0x94(%ebp),%eax
c0033c10:	89 85 1c ff ff ff    	mov    %eax,-0xe4(%ebp)
c0033c16:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c0033c1c:	29 85 1c ff ff ff    	sub    %eax,-0xe4(%ebp)
c0033c22:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0033c28:	83 f8 fd             	cmp    $0xfffffffd,%eax
c0033c2b:	7c 48                	jl     c0033c75 <_svfprintf_r+0x1c25>
c0033c2d:	39 85 44 ff ff ff    	cmp    %eax,-0xbc(%ebp)
c0033c33:	7c 40                	jl     c0033c75 <_svfprintf_r+0x1c25>
c0033c35:	89 85 20 ff ff ff    	mov    %eax,-0xe0(%ebp)
c0033c3b:	e9 ea fb ff ff       	jmp    c003382a <_svfprintf_r+0x17da>
c0033c40:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c0033c46:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0033c4d:	89 75 14             	mov    %esi,0x14(%ebp)
c0033c50:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0033c57:	00 00 00 
c0033c5a:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0033c60:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0033c66:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0033c6d:	00 00 00 
c0033c70:	e9 73 e6 ff ff       	jmp    c00322e8 <_svfprintf_r+0x298>
c0033c75:	83 ad 24 ff ff ff 02 	subl   $0x2,-0xdc(%ebp)
c0033c7c:	8d 48 ff             	lea    -0x1(%eax),%ecx
c0033c7f:	0f b6 85 24 ff ff ff 	movzbl -0xdc(%ebp),%eax
c0033c86:	85 c9                	test   %ecx,%ecx
c0033c88:	89 8d 5c ff ff ff    	mov    %ecx,-0xa4(%ebp)
c0033c8e:	88 85 65 ff ff ff    	mov    %al,-0x9b(%ebp)
c0033c94:	0f 88 2c 02 00 00    	js     c0033ec6 <_svfprintf_r+0x1e76>
c0033c9a:	c6 85 66 ff ff ff 2b 	movb   $0x2b,-0x9a(%ebp)
c0033ca1:	83 f9 09             	cmp    $0x9,%ecx
c0033ca4:	0f 8f ea 00 00 00    	jg     c0033d94 <_svfprintf_r+0x1d44>
c0033caa:	83 c1 30             	add    $0x30,%ecx
c0033cad:	c6 85 67 ff ff ff 30 	movb   $0x30,-0x99(%ebp)
c0033cb4:	8d 85 69 ff ff ff    	lea    -0x97(%ebp),%eax
c0033cba:	88 8d 68 ff ff ff    	mov    %cl,-0x98(%ebp)
c0033cc0:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c0033cc6:	8d 95 65 ff ff ff    	lea    -0x9b(%ebp),%edx
c0033ccc:	29 d0                	sub    %edx,%eax
c0033cce:	89 85 04 ff ff ff    	mov    %eax,-0xfc(%ebp)
c0033cd4:	89 da                	mov    %ebx,%edx
c0033cd6:	01 c2                	add    %eax,%edx
c0033cd8:	83 fb 01             	cmp    $0x1,%ebx
c0033cdb:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0033ce1:	0f 8e 21 02 00 00    	jle    c0033f08 <_svfprintf_r+0x1eb8>
c0033ce7:	31 c0                	xor    %eax,%eax
c0033ce9:	83 85 38 ff ff ff 01 	addl   $0x1,-0xc8(%ebp)
c0033cf0:	0f 49 85 38 ff ff ff 	cmovns -0xc8(%ebp),%eax
c0033cf7:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0033cfe:	00 00 00 
c0033d01:	e9 60 fb ff ff       	jmp    c0033866 <_svfprintf_r+0x1816>
c0033d06:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c0033d0c:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0033d13:	00 00 00 
c0033d16:	e9 68 e4 ff ff       	jmp    c0032183 <_svfprintf_r+0x133>
c0033d1b:	ba 02 00 00 00       	mov    $0x2,%edx
c0033d20:	e9 2d fe ff ff       	jmp    c0033b52 <_svfprintf_r+0x1b02>
c0033d25:	d9 e0                	fchs   
c0033d27:	c6 85 48 ff ff ff 2d 	movb   $0x2d,-0xb8(%ebp)
c0033d2e:	e9 38 fa ff ff       	jmp    c003376b <_svfprintf_r+0x171b>
c0033d33:	8b 8d 20 ff ff ff    	mov    -0xe0(%ebp),%ecx
c0033d39:	ba 01 00 00 00       	mov    $0x1,%edx
c0033d3e:	85 c9                	test   %ecx,%ecx
c0033d40:	0f 8e 5a 01 00 00    	jle    c0033ea0 <_svfprintf_r+0x1e50>
c0033d46:	31 c0                	xor    %eax,%eax
c0033d48:	03 95 1c ff ff ff    	add    -0xe4(%ebp),%edx
c0033d4e:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
c0033d55:	00 00 00 
c0033d58:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0033d5e:	0f 49 c2             	cmovns %edx,%eax
c0033d61:	e9 00 fb ff ff       	jmp    c0033866 <_svfprintf_r+0x1816>
c0033d66:	85 c0                	test   %eax,%eax
c0033d68:	0f 8e 06 01 00 00    	jle    c0033e74 <_svfprintf_r+0x1e24>
c0033d6e:	8b b5 44 ff ff ff    	mov    -0xbc(%ebp),%esi
c0033d74:	85 f6                	test   %esi,%esi
c0033d76:	0f 85 d4 00 00 00    	jne    c0033e50 <_svfprintf_r+0x1e00>
c0033d7c:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0033d83:	0f 85 c7 00 00 00    	jne    c0033e50 <_svfprintf_r+0x1e00>
c0033d89:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0033d8f:	e9 d2 fa ff ff       	jmp    c0033866 <_svfprintf_r+0x1816>
c0033d94:	8d b5 73 ff ff ff    	lea    -0x8d(%ebp),%esi
c0033d9a:	89 f3                	mov    %esi,%ebx
c0033d9c:	b8 67 66 66 66       	mov    $0x66666667,%eax
c0033da1:	83 eb 01             	sub    $0x1,%ebx
c0033da4:	f7 e9                	imul   %ecx
c0033da6:	89 c8                	mov    %ecx,%eax
c0033da8:	c1 f8 1f             	sar    $0x1f,%eax
c0033dab:	c1 fa 02             	sar    $0x2,%edx
c0033dae:	29 c2                	sub    %eax,%edx
c0033db0:	8d 04 92             	lea    (%edx,%edx,4),%eax
c0033db3:	01 c0                	add    %eax,%eax
c0033db5:	29 c1                	sub    %eax,%ecx
c0033db7:	83 fa 09             	cmp    $0x9,%edx
c0033dba:	8d 41 30             	lea    0x30(%ecx),%eax
c0033dbd:	89 d1                	mov    %edx,%ecx
c0033dbf:	88 03                	mov    %al,(%ebx)
c0033dc1:	7f d9                	jg     c0033d9c <_svfprintf_r+0x1d4c>
c0033dc3:	8d 43 ff             	lea    -0x1(%ebx),%eax
c0033dc6:	83 c1 30             	add    $0x30,%ecx
c0033dc9:	39 f0                	cmp    %esi,%eax
c0033dcb:	88 4b ff             	mov    %cl,-0x1(%ebx)
c0033dce:	0f 83 6a 01 00 00    	jae    c0033f3e <_svfprintf_r+0x1eee>
c0033dd4:	8d 95 67 ff ff ff    	lea    -0x99(%ebp),%edx
c0033dda:	eb 07                	jmp    c0033de3 <_svfprintf_r+0x1d93>
c0033ddc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033de0:	0f b6 08             	movzbl (%eax),%ecx
c0033de3:	83 c0 01             	add    $0x1,%eax
c0033de6:	83 c2 01             	add    $0x1,%edx
c0033de9:	39 f0                	cmp    %esi,%eax
c0033deb:	88 4a ff             	mov    %cl,-0x1(%edx)
c0033dee:	75 f0                	jne    c0033de0 <_svfprintf_r+0x1d90>
c0033df0:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033df6:	29 d8                	sub    %ebx,%eax
c0033df8:	8d 95 67 ff ff ff    	lea    -0x99(%ebp),%edx
c0033dfe:	01 d0                	add    %edx,%eax
c0033e00:	e9 bb fe ff ff       	jmp    c0033cc0 <_svfprintf_r+0x1c70>
c0033e05:	d9 ee                	fldz   
c0033e07:	d9 c9                	fxch   %st(1)
c0033e09:	db e9                	fucomi %st(1),%st
c0033e0b:	dd d9                	fstp   %st(1)
c0033e0d:	7a 06                	jp     c0033e15 <_svfprintf_r+0x1dc5>
c0033e0f:	0f 84 b9 fd ff ff    	je     c0033bce <_svfprintf_r+0x1b7e>
c0033e15:	b8 01 00 00 00       	mov    $0x1,%eax
c0033e1a:	2b 85 44 ff ff ff    	sub    -0xbc(%ebp),%eax
c0033e20:	89 85 5c ff ff ff    	mov    %eax,-0xa4(%ebp)
c0033e26:	01 c1                	add    %eax,%ecx
c0033e28:	e9 ac f9 ff ff       	jmp    c00337d9 <_svfprintf_r+0x1789>
c0033e2d:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c0033e33:	31 c0                	xor    %eax,%eax
c0033e35:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
c0033e3c:	00 00 00 
c0033e3f:	83 c2 01             	add    $0x1,%edx
c0033e42:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0033e48:	0f 49 c2             	cmovns %edx,%eax
c0033e4b:	e9 16 fa ff ff       	jmp    c0033866 <_svfprintf_r+0x1816>
c0033e50:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c0033e56:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c0033e5c:	8d 44 10 01          	lea    0x1(%eax,%edx,1),%eax
c0033e60:	89 c2                	mov    %eax,%edx
c0033e62:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0033e68:	31 c0                	xor    %eax,%eax
c0033e6a:	85 d2                	test   %edx,%edx
c0033e6c:	0f 49 c2             	cmovns %edx,%eax
c0033e6f:	e9 f2 f9 ff ff       	jmp    c0033866 <_svfprintf_r+0x1816>
c0033e74:	8b 9d 44 ff ff ff    	mov    -0xbc(%ebp),%ebx
c0033e7a:	85 db                	test   %ebx,%ebx
c0033e7c:	75 2f                	jne    c0033ead <_svfprintf_r+0x1e5d>
c0033e7e:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0033e85:	75 26                	jne    c0033ead <_svfprintf_r+0x1e5d>
c0033e87:	b8 01 00 00 00       	mov    $0x1,%eax
c0033e8c:	c7 85 38 ff ff ff 01 	movl   $0x1,-0xc8(%ebp)
c0033e93:	00 00 00 
c0033e96:	e9 cb f9 ff ff       	jmp    c0033866 <_svfprintf_r+0x1816>
c0033e9b:	90                   	nop
c0033e9c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033ea0:	b2 02                	mov    $0x2,%dl
c0033ea2:	2b 95 20 ff ff ff    	sub    -0xe0(%ebp),%edx
c0033ea8:	e9 99 fe ff ff       	jmp    c0033d46 <_svfprintf_r+0x1cf6>
c0033ead:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c0033eb3:	31 c0                	xor    %eax,%eax
c0033eb5:	83 c2 02             	add    $0x2,%edx
c0033eb8:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0033ebe:	0f 49 c2             	cmovns %edx,%eax
c0033ec1:	e9 a0 f9 ff ff       	jmp    c0033866 <_svfprintf_r+0x1816>
c0033ec6:	f7 d9                	neg    %ecx
c0033ec8:	c6 85 66 ff ff ff 2d 	movb   $0x2d,-0x9a(%ebp)
c0033ecf:	e9 cd fd ff ff       	jmp    c0033ca1 <_svfprintf_r+0x1c51>
c0033ed4:	8b 55 14             	mov    0x14(%ebp),%edx
c0033ed7:	8b 45 14             	mov    0x14(%ebp),%eax
c0033eda:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c0033ee0:	8b 12                	mov    (%edx),%edx
c0033ee2:	83 c0 04             	add    $0x4,%eax
c0033ee5:	89 45 14             	mov    %eax,0x14(%ebp)
c0033ee8:	85 d2                	test   %edx,%edx
c0033eea:	89 95 44 ff ff ff    	mov    %edx,-0xbc(%ebp)
c0033ef0:	0f 89 a9 e2 ff ff    	jns    c003219f <_svfprintf_r+0x14f>
c0033ef6:	c7 85 44 ff ff ff ff 	movl   $0xffffffff,-0xbc(%ebp)
c0033efd:	ff ff ff 
c0033f00:	89 c8                	mov    %ecx,%eax
c0033f02:	e9 76 e2 ff ff       	jmp    c003217d <_svfprintf_r+0x12d>
c0033f07:	90                   	nop
c0033f08:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
c0033f0e:	83 e0 01             	and    $0x1,%eax
c0033f11:	0f 85 d0 fd ff ff    	jne    c0033ce7 <_svfprintf_r+0x1c97>
c0033f17:	85 d2                	test   %edx,%edx
c0033f19:	0f 49 c2             	cmovns %edx,%eax
c0033f1c:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0033f23:	00 00 00 
c0033f26:	e9 3b f9 ff ff       	jmp    c0033866 <_svfprintf_r+0x1816>
c0033f2b:	8b 45 08             	mov    0x8(%ebp),%eax
c0033f2e:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0033f34:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0033f39:	e9 f5 e2 ff ff       	jmp    c0032233 <_svfprintf_r+0x1e3>
c0033f3e:	8d 85 67 ff ff ff    	lea    -0x99(%ebp),%eax
c0033f44:	e9 77 fd ff ff       	jmp    c0033cc0 <_svfprintf_r+0x1c70>
c0033f49:	66 90                	xchg   %ax,%ax
c0033f4b:	66 90                	xchg   %ax,%ax
c0033f4d:	66 90                	xchg   %ax,%ax
c0033f4f:	90                   	nop

c0033f50 <quorem>:
c0033f50:	55                   	push   %ebp
c0033f51:	89 c1                	mov    %eax,%ecx
c0033f53:	89 e5                	mov    %esp,%ebp
c0033f55:	57                   	push   %edi
c0033f56:	89 d7                	mov    %edx,%edi
c0033f58:	56                   	push   %esi
c0033f59:	53                   	push   %ebx
c0033f5a:	83 ec 3c             	sub    $0x3c,%esp
c0033f5d:	89 45 d0             	mov    %eax,-0x30(%ebp)
c0033f60:	8b 42 10             	mov    0x10(%edx),%eax
c0033f63:	3b 41 10             	cmp    0x10(%ecx),%eax
c0033f66:	89 55 c8             	mov    %edx,-0x38(%ebp)
c0033f69:	89 ca                	mov    %ecx,%edx
c0033f6b:	0f 8f 9f 01 00 00    	jg     c0034110 <quorem+0x1c0>
c0033f71:	83 e8 01             	sub    $0x1,%eax
c0033f74:	83 c7 14             	add    $0x14,%edi
c0033f77:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0033f7a:	c1 e0 02             	shl    $0x2,%eax
c0033f7d:	83 c2 14             	add    $0x14,%edx
c0033f80:	8d 1c 07             	lea    (%edi,%eax,1),%ebx
c0033f83:	01 d0                	add    %edx,%eax
c0033f85:	89 55 d8             	mov    %edx,-0x28(%ebp)
c0033f88:	8b 13                	mov    (%ebx),%edx
c0033f8a:	89 45 c4             	mov    %eax,-0x3c(%ebp)
c0033f8d:	8b 00                	mov    (%eax),%eax
c0033f8f:	89 5d e4             	mov    %ebx,-0x1c(%ebp)
c0033f92:	8d 4a 01             	lea    0x1(%edx),%ecx
c0033f95:	31 d2                	xor    %edx,%edx
c0033f97:	f7 f1                	div    %ecx
c0033f99:	85 c0                	test   %eax,%eax
c0033f9b:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0033f9e:	89 45 cc             	mov    %eax,-0x34(%ebp)
c0033fa1:	0f 84 b5 00 00 00    	je     c003405c <quorem+0x10c>
c0033fa7:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0033faa:	31 f6                	xor    %esi,%esi
c0033fac:	89 fa                	mov    %edi,%edx
c0033fae:	89 7d c0             	mov    %edi,-0x40(%ebp)
c0033fb1:	89 f7                	mov    %esi,%edi
c0033fb3:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
c0033fba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0033fc0:	83 c2 04             	add    $0x4,%edx
c0033fc3:	8b 72 fc             	mov    -0x4(%edx),%esi
c0033fc6:	83 c0 04             	add    $0x4,%eax
c0033fc9:	0f b7 ce             	movzwl %si,%ecx
c0033fcc:	0f af 4d e0          	imul   -0x20(%ebp),%ecx
c0033fd0:	03 4d dc             	add    -0x24(%ebp),%ecx
c0033fd3:	c1 ee 10             	shr    $0x10,%esi
c0033fd6:	0f af 75 e0          	imul   -0x20(%ebp),%esi
c0033fda:	89 cb                	mov    %ecx,%ebx
c0033fdc:	0f b7 c9             	movzwl %cx,%ecx
c0033fdf:	c1 eb 10             	shr    $0x10,%ebx
c0033fe2:	29 cf                	sub    %ecx,%edi
c0033fe4:	01 f3                	add    %esi,%ebx
c0033fe6:	89 de                	mov    %ebx,%esi
c0033fe8:	0f b7 db             	movzwl %bx,%ebx
c0033feb:	c1 ee 10             	shr    $0x10,%esi
c0033fee:	89 75 dc             	mov    %esi,-0x24(%ebp)
c0033ff1:	8b 70 fc             	mov    -0x4(%eax),%esi
c0033ff4:	0f b7 ce             	movzwl %si,%ecx
c0033ff7:	01 f9                	add    %edi,%ecx
c0033ff9:	c1 ee 10             	shr    $0x10,%esi
c0033ffc:	29 de                	sub    %ebx,%esi
c0033ffe:	89 cb                	mov    %ecx,%ebx
c0034000:	c1 fb 10             	sar    $0x10,%ebx
c0034003:	0f b7 c9             	movzwl %cx,%ecx
c0034006:	01 de                	add    %ebx,%esi
c0034008:	89 f7                	mov    %esi,%edi
c003400a:	c1 e6 10             	shl    $0x10,%esi
c003400d:	09 ce                	or     %ecx,%esi
c003400f:	c1 ff 10             	sar    $0x10,%edi
c0034012:	39 55 e4             	cmp    %edx,-0x1c(%ebp)
c0034015:	89 70 fc             	mov    %esi,-0x4(%eax)
c0034018:	73 a6                	jae    c0033fc0 <quorem+0x70>
c003401a:	8b 45 c4             	mov    -0x3c(%ebp),%eax
c003401d:	8b 7d c0             	mov    -0x40(%ebp),%edi
c0034020:	8b 10                	mov    (%eax),%edx
c0034022:	85 d2                	test   %edx,%edx
c0034024:	75 36                	jne    c003405c <quorem+0x10c>
c0034026:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c0034029:	89 c2                	mov    %eax,%edx
c003402b:	83 e8 04             	sub    $0x4,%eax
c003402e:	39 c1                	cmp    %eax,%ecx
c0034030:	73 21                	jae    c0034053 <quorem+0x103>
c0034032:	8b 72 fc             	mov    -0x4(%edx),%esi
c0034035:	85 f6                	test   %esi,%esi
c0034037:	75 1a                	jne    c0034053 <quorem+0x103>
c0034039:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c003403c:	eb 08                	jmp    c0034046 <quorem+0xf6>
c003403e:	66 90                	xchg   %ax,%ax
c0034040:	8b 18                	mov    (%eax),%ebx
c0034042:	85 db                	test   %ebx,%ebx
c0034044:	75 0a                	jne    c0034050 <quorem+0x100>
c0034046:	83 e8 04             	sub    $0x4,%eax
c0034049:	83 ea 01             	sub    $0x1,%edx
c003404c:	39 c1                	cmp    %eax,%ecx
c003404e:	72 f0                	jb     c0034040 <quorem+0xf0>
c0034050:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c0034053:	8b 45 d0             	mov    -0x30(%ebp),%eax
c0034056:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c0034059:	89 50 10             	mov    %edx,0x10(%eax)
c003405c:	8b 45 c8             	mov    -0x38(%ebp),%eax
c003405f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034063:	8b 45 d0             	mov    -0x30(%ebp),%eax
c0034066:	89 04 24             	mov    %eax,(%esp)
c0034069:	e8 a2 23 00 00       	call   c0036410 <__mcmp>
c003406e:	85 c0                	test   %eax,%eax
c0034070:	0f 88 8e 00 00 00    	js     c0034104 <quorem+0x1b4>
c0034076:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0034079:	31 f6                	xor    %esi,%esi
c003407b:	83 c0 01             	add    $0x1,%eax
c003407e:	89 45 cc             	mov    %eax,-0x34(%ebp)
c0034081:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0034084:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034088:	83 c7 04             	add    $0x4,%edi
c003408b:	8b 4f fc             	mov    -0x4(%edi),%ecx
c003408e:	83 c0 04             	add    $0x4,%eax
c0034091:	8b 58 fc             	mov    -0x4(%eax),%ebx
c0034094:	0f b7 d1             	movzwl %cx,%edx
c0034097:	29 d6                	sub    %edx,%esi
c0034099:	0f b7 d3             	movzwl %bx,%edx
c003409c:	01 f2                	add    %esi,%edx
c003409e:	c1 e9 10             	shr    $0x10,%ecx
c00340a1:	c1 eb 10             	shr    $0x10,%ebx
c00340a4:	29 cb                	sub    %ecx,%ebx
c00340a6:	89 d1                	mov    %edx,%ecx
c00340a8:	c1 f9 10             	sar    $0x10,%ecx
c00340ab:	0f b7 d2             	movzwl %dx,%edx
c00340ae:	01 cb                	add    %ecx,%ebx
c00340b0:	89 de                	mov    %ebx,%esi
c00340b2:	c1 e3 10             	shl    $0x10,%ebx
c00340b5:	09 d3                	or     %edx,%ebx
c00340b7:	c1 fe 10             	sar    $0x10,%esi
c00340ba:	39 7d e4             	cmp    %edi,-0x1c(%ebp)
c00340bd:	89 58 fc             	mov    %ebx,-0x4(%eax)
c00340c0:	73 c6                	jae    c0034088 <quorem+0x138>
c00340c2:	8b 45 d8             	mov    -0x28(%ebp),%eax
c00340c5:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c00340c8:	8d 14 b8             	lea    (%eax,%edi,4),%edx
c00340cb:	8b 02                	mov    (%edx),%eax
c00340cd:	85 c0                	test   %eax,%eax
c00340cf:	75 33                	jne    c0034104 <quorem+0x1b4>
c00340d1:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c00340d4:	8d 42 fc             	lea    -0x4(%edx),%eax
c00340d7:	39 c1                	cmp    %eax,%ecx
c00340d9:	73 20                	jae    c00340fb <quorem+0x1ab>
c00340db:	8b 72 fc             	mov    -0x4(%edx),%esi
c00340de:	85 f6                	test   %esi,%esi
c00340e0:	75 19                	jne    c00340fb <quorem+0x1ab>
c00340e2:	89 fa                	mov    %edi,%edx
c00340e4:	eb 08                	jmp    c00340ee <quorem+0x19e>
c00340e6:	66 90                	xchg   %ax,%ax
c00340e8:	8b 18                	mov    (%eax),%ebx
c00340ea:	85 db                	test   %ebx,%ebx
c00340ec:	75 0a                	jne    c00340f8 <quorem+0x1a8>
c00340ee:	83 e8 04             	sub    $0x4,%eax
c00340f1:	83 ea 01             	sub    $0x1,%edx
c00340f4:	39 c1                	cmp    %eax,%ecx
c00340f6:	72 f0                	jb     c00340e8 <quorem+0x198>
c00340f8:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c00340fb:	8b 45 d0             	mov    -0x30(%ebp),%eax
c00340fe:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c0034101:	89 78 10             	mov    %edi,0x10(%eax)
c0034104:	8b 45 cc             	mov    -0x34(%ebp),%eax
c0034107:	83 c4 3c             	add    $0x3c,%esp
c003410a:	5b                   	pop    %ebx
c003410b:	5e                   	pop    %esi
c003410c:	5f                   	pop    %edi
c003410d:	5d                   	pop    %ebp
c003410e:	c3                   	ret    
c003410f:	90                   	nop
c0034110:	83 c4 3c             	add    $0x3c,%esp
c0034113:	31 c0                	xor    %eax,%eax
c0034115:	5b                   	pop    %ebx
c0034116:	5e                   	pop    %esi
c0034117:	5f                   	pop    %edi
c0034118:	5d                   	pop    %ebp
c0034119:	c3                   	ret    
c003411a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0034120 <_dtoa_r>:
c0034120:	55                   	push   %ebp
c0034121:	89 e5                	mov    %esp,%ebp
c0034123:	57                   	push   %edi
c0034124:	56                   	push   %esi
c0034125:	53                   	push   %ebx
c0034126:	81 ec 8c 00 00 00    	sub    $0x8c,%esp
c003412c:	8b 75 08             	mov    0x8(%ebp),%esi
c003412f:	dd 45 0c             	fldl   0xc(%ebp)
c0034132:	8b 5d 20             	mov    0x20(%ebp),%ebx
c0034135:	dd 5d c0             	fstpl  -0x40(%ebp)
c0034138:	8b 46 40             	mov    0x40(%esi),%eax
c003413b:	85 c0                	test   %eax,%eax
c003413d:	74 23                	je     c0034162 <_dtoa_r+0x42>
c003413f:	8b 4e 44             	mov    0x44(%esi),%ecx
c0034142:	ba 01 00 00 00       	mov    $0x1,%edx
c0034147:	d3 e2                	shl    %cl,%edx
c0034149:	89 48 04             	mov    %ecx,0x4(%eax)
c003414c:	89 50 08             	mov    %edx,0x8(%eax)
c003414f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034153:	89 34 24             	mov    %esi,(%esp)
c0034156:	e8 95 1b 00 00       	call   c0035cf0 <_Bfree>
c003415b:	c7 46 40 00 00 00 00 	movl   $0x0,0x40(%esi)
c0034162:	8b 7d c4             	mov    -0x3c(%ebp),%edi
c0034165:	85 ff                	test   %edi,%edi
c0034167:	0f 88 3b 02 00 00    	js     c00343a8 <_dtoa_r+0x288>
c003416d:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
c0034173:	89 f8                	mov    %edi,%eax
c0034175:	25 00 00 f0 7f       	and    $0x7ff00000,%eax
c003417a:	3d 00 00 f0 7f       	cmp    $0x7ff00000,%eax
c003417f:	0f 84 e3 01 00 00    	je     c0034368 <_dtoa_r+0x248>
c0034185:	dd 45 c0             	fldl   -0x40(%ebp)
c0034188:	d9 ee                	fldz   
c003418a:	d9 c9                	fxch   %st(1)
c003418c:	db e9                	fucomi %st(1),%st
c003418e:	dd d9                	fstp   %st(1)
c0034190:	7a 36                	jp     c00341c8 <_dtoa_r+0xa8>
c0034192:	75 34                	jne    c00341c8 <_dtoa_r+0xa8>
c0034194:	dd d8                	fstp   %st(0)
c0034196:	8b 4d 24             	mov    0x24(%ebp),%ecx
c0034199:	8b 45 1c             	mov    0x1c(%ebp),%eax
c003419c:	85 c9                	test   %ecx,%ecx
c003419e:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
c00341a4:	0f 84 4e 02 00 00    	je     c00343f8 <_dtoa_r+0x2d8>
c00341aa:	8b 45 24             	mov    0x24(%ebp),%eax
c00341ad:	c7 00 f0 98 03 c0    	movl   $0xc00398f0,(%eax)
c00341b3:	b8 ef 98 03 c0       	mov    $0xc00398ef,%eax
c00341b8:	81 c4 8c 00 00 00    	add    $0x8c,%esp
c00341be:	5b                   	pop    %ebx
c00341bf:	5e                   	pop    %esi
c00341c0:	5f                   	pop    %edi
c00341c1:	5d                   	pop    %ebp
c00341c2:	c3                   	ret    
c00341c3:	90                   	nop
c00341c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00341c8:	8d 45 e0             	lea    -0x20(%ebp),%eax
c00341cb:	89 fb                	mov    %edi,%ebx
c00341cd:	89 44 24 10          	mov    %eax,0x10(%esp)
c00341d1:	8d 45 e4             	lea    -0x1c(%ebp),%eax
c00341d4:	dd 54 24 04          	fstl   0x4(%esp)
c00341d8:	89 44 24 0c          	mov    %eax,0xc(%esp)
c00341dc:	dd 5d b8             	fstpl  -0x48(%ebp)
c00341df:	89 34 24             	mov    %esi,(%esp)
c00341e2:	c1 eb 14             	shr    $0x14,%ebx
c00341e5:	e8 76 25 00 00       	call   c0036760 <__d2b>
c00341ea:	85 db                	test   %ebx,%ebx
c00341ec:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c00341ef:	0f 85 db 01 00 00    	jne    c00343d0 <_dtoa_r+0x2b0>
c00341f5:	8b 45 e0             	mov    -0x20(%ebp),%eax
c00341f8:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
c00341fb:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c00341fe:	01 c3                	add    %eax,%ebx
c0034200:	81 fb ef fb ff ff    	cmp    $0xfffffbef,%ebx
c0034206:	0f 8c ec 07 00 00    	jl     c00349f8 <_dtoa_r+0x8d8>
c003420c:	8b 55 c0             	mov    -0x40(%ebp),%edx
c003420f:	b9 0e fc ff ff       	mov    $0xfffffc0e,%ecx
c0034214:	89 f8                	mov    %edi,%eax
c0034216:	29 d9                	sub    %ebx,%ecx
c0034218:	d3 e0                	shl    %cl,%eax
c003421a:	8d 8b 12 04 00 00    	lea    0x412(%ebx),%ecx
c0034220:	d3 ea                	shr    %cl,%edx
c0034222:	09 d0                	or     %edx,%eax
c0034224:	31 d2                	xor    %edx,%edx
c0034226:	83 eb 01             	sub    $0x1,%ebx
c0034229:	89 55 cc             	mov    %edx,-0x34(%ebp)
c003422c:	8b 55 b4             	mov    -0x4c(%ebp),%edx
c003422f:	89 45 c8             	mov    %eax,-0x38(%ebp)
c0034232:	df 6d c8             	fildll -0x38(%ebp)
c0034235:	dd 5d b8             	fstpl  -0x48(%ebp)
c0034238:	81 6d bc 00 00 f0 01 	subl   $0x1f00000,-0x44(%ebp)
c003423f:	c7 45 8c 01 00 00 00 	movl   $0x1,-0x74(%ebp)
c0034246:	dd 45 b8             	fldl   -0x48(%ebp)
c0034249:	d8 25 88 9a 03 c0    	fsubs  0xc0039a88
c003424f:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
c0034252:	d9 7d d2             	fnstcw -0x2e(%ebp)
c0034255:	dc 0d a0 9a 03 c0    	fmull  0xc0039aa0
c003425b:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c003425f:	b4 0c                	mov    $0xc,%ah
c0034261:	dc 05 a8 9a 03 c0    	faddl  0xc0039aa8
c0034267:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c003426b:	db 45 d4             	fildl  -0x2c(%ebp)
c003426e:	dc 0d b0 9a 03 c0    	fmull  0xc0039ab0
c0034274:	de c1                	faddp  %st,%st(1)
c0034276:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034279:	db 55 b8             	fistl  -0x48(%ebp)
c003427c:	d9 6d d2             	fldcw  -0x2e(%ebp)
c003427f:	d9 ee                	fldz   
c0034281:	df e9                	fucomip %st(1),%st
c0034283:	0f 87 27 07 00 00    	ja     c00349b0 <_dtoa_r+0x890>
c0034289:	dd d8                	fstp   %st(0)
c003428b:	83 7d b8 16          	cmpl   $0x16,-0x48(%ebp)
c003428f:	c7 45 9c 01 00 00 00 	movl   $0x1,-0x64(%ebp)
c0034296:	77 24                	ja     c00342bc <_dtoa_r+0x19c>
c0034298:	8b 45 b8             	mov    -0x48(%ebp),%eax
c003429b:	dd 04 c5 60 9b 03 c0 	fldl   -0x3ffc64a0(,%eax,8)
c00342a2:	dd 45 c0             	fldl   -0x40(%ebp)
c00342a5:	d9 c9                	fxch   %st(1)
c00342a7:	df e9                	fucomip %st(1),%st
c00342a9:	dd d8                	fstp   %st(0)
c00342ab:	0f 86 5f 07 00 00    	jbe    c0034a10 <_dtoa_r+0x8f0>
c00342b1:	83 6d b8 01          	subl   $0x1,-0x48(%ebp)
c00342b5:	c7 45 9c 00 00 00 00 	movl   $0x0,-0x64(%ebp)
c00342bc:	89 d0                	mov    %edx,%eax
c00342be:	29 d8                	sub    %ebx,%eax
c00342c0:	83 e8 01             	sub    $0x1,%eax
c00342c3:	c7 45 a0 00 00 00 00 	movl   $0x0,-0x60(%ebp)
c00342ca:	89 45 ac             	mov    %eax,-0x54(%ebp)
c00342cd:	0f 88 0d 07 00 00    	js     c00349e0 <_dtoa_r+0x8c0>
c00342d3:	8b 45 b8             	mov    -0x48(%ebp),%eax
c00342d6:	85 c0                	test   %eax,%eax
c00342d8:	0f 88 ea 06 00 00    	js     c00349c8 <_dtoa_r+0x8a8>
c00342de:	01 45 ac             	add    %eax,-0x54(%ebp)
c00342e1:	89 45 94             	mov    %eax,-0x6c(%ebp)
c00342e4:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c00342eb:	83 7d 14 09          	cmpl   $0x9,0x14(%ebp)
c00342ef:	0f 87 0b 03 00 00    	ja     c0034600 <_dtoa_r+0x4e0>
c00342f5:	83 7d 14 05          	cmpl   $0x5,0x14(%ebp)
c00342f9:	0f 8e 23 10 00 00    	jle    c0035322 <_dtoa_r+0x1202>
c00342ff:	83 6d 14 04          	subl   $0x4,0x14(%ebp)
c0034303:	31 c0                	xor    %eax,%eax
c0034305:	83 7d 14 03          	cmpl   $0x3,0x14(%ebp)
c0034309:	0f 84 43 0d 00 00    	je     c0035052 <_dtoa_r+0xf32>
c003430f:	0f 8e f3 00 00 00    	jle    c0034408 <_dtoa_r+0x2e8>
c0034315:	83 7d 14 04          	cmpl   $0x4,0x14(%ebp)
c0034319:	c7 45 98 01 00 00 00 	movl   $0x1,-0x68(%ebp)
c0034320:	0f 84 f3 00 00 00    	je     c0034419 <_dtoa_r+0x2f9>
c0034326:	83 7d 14 05          	cmpl   $0x5,0x14(%ebp)
c003432a:	0f 85 d7 02 00 00    	jne    c0034607 <_dtoa_r+0x4e7>
c0034330:	8b 5d b8             	mov    -0x48(%ebp),%ebx
c0034333:	03 5d 18             	add    0x18(%ebp),%ebx
c0034336:	89 5d 90             	mov    %ebx,-0x70(%ebp)
c0034339:	83 c3 01             	add    $0x1,%ebx
c003433c:	83 fb 0e             	cmp    $0xe,%ebx
c003433f:	0f 96 c2             	setbe  %dl
c0034342:	85 db                	test   %ebx,%ebx
c0034344:	89 5d a8             	mov    %ebx,-0x58(%ebp)
c0034347:	0f 8e a7 08 00 00    	jle    c0034bf4 <_dtoa_r+0xad4>
c003434d:	8b 5d a8             	mov    -0x58(%ebp),%ebx
c0034350:	83 fb 0e             	cmp    $0xe,%ebx
c0034353:	89 df                	mov    %ebx,%edi
c0034355:	0f 96 45 b4          	setbe  -0x4c(%ebp)
c0034359:	20 45 b4             	and    %al,-0x4c(%ebp)
c003435c:	e9 d6 00 00 00       	jmp    c0034437 <_dtoa_r+0x317>
c0034361:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034368:	8b 55 c0             	mov    -0x40(%ebp),%edx
c003436b:	8b 45 1c             	mov    0x1c(%ebp),%eax
c003436e:	85 d2                	test   %edx,%edx
c0034370:	c7 00 0f 27 00 00    	movl   $0x270f,(%eax)
c0034376:	b8 81 9a 03 c0       	mov    $0xc0039a81,%eax
c003437b:	74 43                	je     c00343c0 <_dtoa_r+0x2a0>
c003437d:	8b 5d 24             	mov    0x24(%ebp),%ebx
c0034380:	85 db                	test   %ebx,%ebx
c0034382:	0f 84 30 fe ff ff    	je     c00341b8 <_dtoa_r+0x98>
c0034388:	8b 75 24             	mov    0x24(%ebp),%esi
c003438b:	8d 50 08             	lea    0x8(%eax),%edx
c003438e:	80 78 03 00          	cmpb   $0x0,0x3(%eax)
c0034392:	8d 48 03             	lea    0x3(%eax),%ecx
c0034395:	0f 44 d1             	cmove  %ecx,%edx
c0034398:	89 16                	mov    %edx,(%esi)
c003439a:	81 c4 8c 00 00 00    	add    $0x8c,%esp
c00343a0:	5b                   	pop    %ebx
c00343a1:	5e                   	pop    %esi
c00343a2:	5f                   	pop    %edi
c00343a3:	5d                   	pop    %ebp
c00343a4:	c3                   	ret    
c00343a5:	8d 76 00             	lea    0x0(%esi),%esi
c00343a8:	81 e7 ff ff ff 7f    	and    $0x7fffffff,%edi
c00343ae:	c7 03 01 00 00 00    	movl   $0x1,(%ebx)
c00343b4:	89 7d c4             	mov    %edi,-0x3c(%ebp)
c00343b7:	e9 b7 fd ff ff       	jmp    c0034173 <_dtoa_r+0x53>
c00343bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00343c0:	81 e7 ff ff 0f 00    	and    $0xfffff,%edi
c00343c6:	ba 78 9a 03 c0       	mov    $0xc0039a78,%edx
c00343cb:	0f 44 c2             	cmove  %edx,%eax
c00343ce:	eb ad                	jmp    c003437d <_dtoa_r+0x25d>
c00343d0:	8b 45 bc             	mov    -0x44(%ebp),%eax
c00343d3:	81 eb ff 03 00 00    	sub    $0x3ff,%ebx
c00343d9:	8b 55 e0             	mov    -0x20(%ebp),%edx
c00343dc:	c7 45 8c 00 00 00 00 	movl   $0x0,-0x74(%ebp)
c00343e3:	25 ff ff 0f 00       	and    $0xfffff,%eax
c00343e8:	0d 00 00 f0 3f       	or     $0x3ff00000,%eax
c00343ed:	89 45 bc             	mov    %eax,-0x44(%ebp)
c00343f0:	e9 51 fe ff ff       	jmp    c0034246 <_dtoa_r+0x126>
c00343f5:	8d 76 00             	lea    0x0(%esi),%esi
c00343f8:	b8 ef 98 03 c0       	mov    $0xc00398ef,%eax
c00343fd:	e9 b6 fd ff ff       	jmp    c00341b8 <_dtoa_r+0x98>
c0034402:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034408:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c003440c:	c7 45 98 00 00 00 00 	movl   $0x0,-0x68(%ebp)
c0034413:	0f 85 ee 01 00 00    	jne    c0034607 <_dtoa_r+0x4e7>
c0034419:	8b 55 18             	mov    0x18(%ebp),%edx
c003441c:	85 d2                	test   %edx,%edx
c003441e:	0f 8e b6 07 00 00    	jle    c0034bda <_dtoa_r+0xaba>
c0034424:	8b 7d 18             	mov    0x18(%ebp),%edi
c0034427:	83 ff 0e             	cmp    $0xe,%edi
c003442a:	0f 96 45 b4          	setbe  -0x4c(%ebp)
c003442e:	20 45 b4             	and    %al,-0x4c(%ebp)
c0034431:	89 7d 90             	mov    %edi,-0x70(%ebp)
c0034434:	89 7d a8             	mov    %edi,-0x58(%ebp)
c0034437:	83 ff 17             	cmp    $0x17,%edi
c003443a:	c7 46 44 00 00 00 00 	movl   $0x0,0x44(%esi)
c0034441:	0f 86 e5 0e 00 00    	jbe    c003532c <_dtoa_r+0x120c>
c0034447:	b9 01 00 00 00       	mov    $0x1,%ecx
c003444c:	b8 04 00 00 00       	mov    $0x4,%eax
c0034451:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034458:	01 c0                	add    %eax,%eax
c003445a:	89 ca                	mov    %ecx,%edx
c003445c:	8d 58 14             	lea    0x14(%eax),%ebx
c003445f:	39 fb                	cmp    %edi,%ebx
c0034461:	8d 49 01             	lea    0x1(%ecx),%ecx
c0034464:	76 f2                	jbe    c0034458 <_dtoa_r+0x338>
c0034466:	89 56 44             	mov    %edx,0x44(%esi)
c0034469:	89 54 24 04          	mov    %edx,0x4(%esp)
c003446d:	89 34 24             	mov    %esi,(%esp)
c0034470:	e8 db 17 00 00       	call   c0035c50 <_Balloc>
c0034475:	80 7d b4 00          	cmpb   $0x0,-0x4c(%ebp)
c0034479:	89 c7                	mov    %eax,%edi
c003447b:	89 46 40             	mov    %eax,0x40(%esi)
c003447e:	0f 84 bb 01 00 00    	je     c003463f <_dtoa_r+0x51f>
c0034484:	8b 5d b8             	mov    -0x48(%ebp),%ebx
c0034487:	dd 45 c0             	fldl   -0x40(%ebp)
c003448a:	85 db                	test   %ebx,%ebx
c003448c:	0f 8e de 07 00 00    	jle    c0034c70 <_dtoa_r+0xb50>
c0034492:	89 d8                	mov    %ebx,%eax
c0034494:	83 e0 0f             	and    $0xf,%eax
c0034497:	dd 04 c5 60 9b 03 c0 	fldl   -0x3ffc64a0(,%eax,8)
c003449e:	89 d8                	mov    %ebx,%eax
c00344a0:	c1 f8 04             	sar    $0x4,%eax
c00344a3:	a8 10                	test   $0x10,%al
c00344a5:	0f 84 cd 05 00 00    	je     c0034a78 <_dtoa_r+0x958>
c00344ab:	dd 05 40 9b 03 c0    	fldl   0xc0039b40
c00344b1:	83 e0 0f             	and    $0xf,%eax
c00344b4:	b9 03 00 00 00       	mov    $0x3,%ecx
c00344b9:	d8 fa                	fdivr  %st(2),%st
c00344bb:	85 c0                	test   %eax,%eax
c00344bd:	74 22                	je     c00344e1 <_dtoa_r+0x3c1>
c00344bf:	31 d2                	xor    %edx,%edx
c00344c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00344c8:	a8 01                	test   $0x1,%al
c00344ca:	74 0e                	je     c00344da <_dtoa_r+0x3ba>
c00344cc:	d9 c9                	fxch   %st(1)
c00344ce:	dc 0c d5 20 9b 03 c0 	fmull  -0x3ffc64e0(,%edx,8)
c00344d5:	d9 c9                	fxch   %st(1)
c00344d7:	83 c1 01             	add    $0x1,%ecx
c00344da:	83 c2 01             	add    $0x1,%edx
c00344dd:	d1 f8                	sar    %eax
c00344df:	75 e7                	jne    c00344c8 <_dtoa_r+0x3a8>
c00344e1:	de f1                	fdivp  %st,%st(1)
c00344e3:	8b 45 9c             	mov    -0x64(%ebp),%eax
c00344e6:	85 c0                	test   %eax,%eax
c00344e8:	74 0a                	je     c00344f4 <_dtoa_r+0x3d4>
c00344ea:	d9 e8                	fld1   
c00344ec:	df e9                	fucomip %st(1),%st
c00344ee:	0f 87 92 0b 00 00    	ja     c0035086 <_dtoa_r+0xf66>
c00344f4:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c00344f7:	8b 45 a8             	mov    -0x58(%ebp),%eax
c00344fa:	db 45 d4             	fildl  -0x2c(%ebp)
c00344fd:	d8 c9                	fmul   %st(1),%st
c00344ff:	d8 05 94 9a 03 c0    	fadds  0xc0039a94
c0034505:	dd 5d c0             	fstpl  -0x40(%ebp)
c0034508:	81 6d c4 00 00 40 03 	subl   $0x3400000,-0x3c(%ebp)
c003450f:	85 c0                	test   %eax,%eax
c0034511:	0f 84 89 05 00 00    	je     c0034aa0 <_dtoa_r+0x980>
c0034517:	8b 45 b8             	mov    -0x48(%ebp),%eax
c003451a:	8b 4d a8             	mov    -0x58(%ebp),%ecx
c003451d:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034520:	8b 45 98             	mov    -0x68(%ebp),%eax
c0034523:	85 c0                	test   %eax,%eax
c0034525:	0f 84 b5 07 00 00    	je     c0034ce0 <_dtoa_r+0xbc0>
c003452b:	d9 05 9c 9a 03 c0    	flds   0xc0039a9c
c0034531:	8d 57 01             	lea    0x1(%edi),%edx
c0034534:	dc 34 cd 58 9b 03 c0 	fdivl  -0x3ffc64a8(,%ecx,8)
c003453b:	d9 7d d2             	fnstcw -0x2e(%ebp)
c003453e:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c0034542:	b4 0c                	mov    $0xc,%ah
c0034544:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c0034548:	dc 65 c0             	fsubl  -0x40(%ebp)
c003454b:	d9 c9                	fxch   %st(1)
c003454d:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034550:	db 55 d4             	fistl  -0x2c(%ebp)
c0034553:	d9 6d d2             	fldcw  -0x2e(%ebp)
c0034556:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c0034559:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c003455c:	83 c0 30             	add    $0x30,%eax
c003455f:	db 45 d4             	fildl  -0x2c(%ebp)
c0034562:	de e9                	fsubrp %st,%st(1)
c0034564:	d9 c9                	fxch   %st(1)
c0034566:	88 07                	mov    %al,(%edi)
c0034568:	db e9                	fucomi %st(1),%st
c003456a:	77 7f                	ja     c00345eb <_dtoa_r+0x4cb>
c003456c:	d9 c1                	fld    %st(1)
c003456e:	d8 2d 8c 9a 03 c0    	fsubrs 0xc0039a8c
c0034574:	d9 c9                	fxch   %st(1)
c0034576:	db e9                	fucomi %st(1),%st
c0034578:	dd d9                	fstp   %st(1)
c003457a:	0f 87 33 0c 00 00    	ja     c00351b3 <_dtoa_r+0x1093>
c0034580:	83 f9 01             	cmp    $0x1,%ecx
c0034583:	0f 8e c4 06 00 00    	jle    c0034c4d <_dtoa_r+0xb2d>
c0034589:	01 f9                	add    %edi,%ecx
c003458b:	d9 05 90 9a 03 c0    	flds   0xc0039a90
c0034591:	eb 25                	jmp    c00345b8 <_dtoa_r+0x498>
c0034593:	90                   	nop
c0034594:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034598:	d9 c1                	fld    %st(1)
c003459a:	d8 2d 8c 9a 03 c0    	fsubrs 0xc0039a8c
c00345a0:	d9 c9                	fxch   %st(1)
c00345a2:	db e9                	fucomi %st(1),%st
c00345a4:	dd d9                	fstp   %st(1)
c00345a6:	0f 87 14 0c 00 00    	ja     c00351c0 <_dtoa_r+0x10a0>
c00345ac:	39 ca                	cmp    %ecx,%edx
c00345ae:	0f 84 a4 06 00 00    	je     c0034c58 <_dtoa_r+0xb38>
c00345b4:	d9 c9                	fxch   %st(1)
c00345b6:	d9 ca                	fxch   %st(2)
c00345b8:	dc c9                	fmul   %st,%st(1)
c00345ba:	83 c2 01             	add    $0x1,%edx
c00345bd:	dc ca                	fmul   %st,%st(2)
c00345bf:	d9 ca                	fxch   %st(2)
c00345c1:	d9 6d d0             	fldcw  -0x30(%ebp)
c00345c4:	db 55 d4             	fistl  -0x2c(%ebp)
c00345c7:	d9 6d d2             	fldcw  -0x2e(%ebp)
c00345ca:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c00345cd:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c00345d0:	83 c0 30             	add    $0x30,%eax
c00345d3:	db 45 d4             	fildl  -0x2c(%ebp)
c00345d6:	de e9                	fsubrp %st,%st(1)
c00345d8:	d9 c9                	fxch   %st(1)
c00345da:	88 42 ff             	mov    %al,-0x1(%edx)
c00345dd:	db e9                	fucomi %st(1),%st
c00345df:	76 b7                	jbe    c0034598 <_dtoa_r+0x478>
c00345e1:	dd d8                	fstp   %st(0)
c00345e3:	dd d8                	fstp   %st(0)
c00345e5:	dd d8                	fstp   %st(0)
c00345e7:	dd d8                	fstp   %st(0)
c00345e9:	eb 06                	jmp    c00345f1 <_dtoa_r+0x4d1>
c00345eb:	dd d8                	fstp   %st(0)
c00345ed:	dd d8                	fstp   %st(0)
c00345ef:	dd d8                	fstp   %st(0)
c00345f1:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c00345f4:	89 fb                	mov    %edi,%ebx
c00345f6:	89 d7                	mov    %edx,%edi
c00345f8:	89 45 b8             	mov    %eax,-0x48(%ebp)
c00345fb:	e9 70 03 00 00       	jmp    c0034970 <_dtoa_r+0x850>
c0034600:	c7 45 14 00 00 00 00 	movl   $0x0,0x14(%ebp)
c0034607:	c7 46 44 00 00 00 00 	movl   $0x0,0x44(%esi)
c003460e:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0034615:	00 
c0034616:	89 34 24             	mov    %esi,(%esp)
c0034619:	e8 32 16 00 00       	call   c0035c50 <_Balloc>
c003461e:	c7 45 98 01 00 00 00 	movl   $0x1,-0x68(%ebp)
c0034625:	c7 45 a8 ff ff ff ff 	movl   $0xffffffff,-0x58(%ebp)
c003462c:	c7 45 90 ff ff ff ff 	movl   $0xffffffff,-0x70(%ebp)
c0034633:	c7 45 18 00 00 00 00 	movl   $0x0,0x18(%ebp)
c003463a:	89 c7                	mov    %eax,%edi
c003463c:	89 46 40             	mov    %eax,0x40(%esi)
c003463f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0034642:	85 c0                	test   %eax,%eax
c0034644:	0f 88 2e 01 00 00    	js     c0034778 <_dtoa_r+0x658>
c003464a:	83 7d b8 0e          	cmpl   $0xe,-0x48(%ebp)
c003464e:	0f 8f 24 01 00 00    	jg     c0034778 <_dtoa_r+0x658>
c0034654:	8b 45 b8             	mov    -0x48(%ebp),%eax
c0034657:	dd 04 c5 60 9b 03 c0 	fldl   -0x3ffc64a0(,%eax,8)
c003465e:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034661:	85 c0                	test   %eax,%eax
c0034663:	7f 0e                	jg     c0034673 <_dtoa_r+0x553>
c0034665:	8b 45 18             	mov    0x18(%ebp),%eax
c0034668:	c1 e8 1f             	shr    $0x1f,%eax
c003466b:	84 c0                	test   %al,%al
c003466d:	0f 85 9d 07 00 00    	jne    c0034e10 <_dtoa_r+0xcf0>
c0034673:	dd 45 c0             	fldl   -0x40(%ebp)
c0034676:	d9 c0                	fld    %st(0)
c0034678:	d8 f2                	fdiv   %st(2),%st
c003467a:	d9 7d d2             	fnstcw -0x2e(%ebp)
c003467d:	83 7d a8 01          	cmpl   $0x1,-0x58(%ebp)
c0034681:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c0034685:	b4 0c                	mov    $0xc,%ah
c0034687:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c003468b:	8d 47 01             	lea    0x1(%edi),%eax
c003468e:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0034691:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034694:	db 5d d4             	fistpl -0x2c(%ebp)
c0034697:	d9 6d d2             	fldcw  -0x2e(%ebp)
c003469a:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c003469d:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c00346a0:	8d 42 30             	lea    0x30(%edx),%eax
c00346a3:	db 45 d4             	fildl  -0x2c(%ebp)
c00346a6:	d8 ca                	fmul   %st(2),%st
c00346a8:	88 07                	mov    %al,(%edi)
c00346aa:	de e9                	fsubrp %st,%st(1)
c00346ac:	74 66                	je     c0034714 <_dtoa_r+0x5f4>
c00346ae:	d8 0d 90 9a 03 c0    	fmuls  0xc0039a90
c00346b4:	d9 ee                	fldz   
c00346b6:	d9 c9                	fxch   %st(1)
c00346b8:	db e9                	fucomi %st(1),%st
c00346ba:	dd d9                	fstp   %st(1)
c00346bc:	0f 8b 33 0c 00 00    	jnp    c00352f5 <_dtoa_r+0x11d5>
c00346c2:	8b 5d a8             	mov    -0x58(%ebp),%ebx
c00346c5:	8d 47 02             	lea    0x2(%edi),%eax
c00346c8:	d9 05 90 9a 03 c0    	flds   0xc0039a90
c00346ce:	01 fb                	add    %edi,%ebx
c00346d0:	eb 19                	jmp    c00346eb <_dtoa_r+0x5cb>
c00346d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00346d8:	dc c9                	fmul   %st,%st(1)
c00346da:	83 c0 01             	add    $0x1,%eax
c00346dd:	d9 ee                	fldz   
c00346df:	d9 ca                	fxch   %st(2)
c00346e1:	db ea                	fucomi %st(2),%st
c00346e3:	dd da                	fstp   %st(2)
c00346e5:	0f 8b 73 09 00 00    	jnp    c003505e <_dtoa_r+0xf3e>
c00346eb:	d9 c1                	fld    %st(1)
c00346ed:	39 d8                	cmp    %ebx,%eax
c00346ef:	d8 f3                	fdiv   %st(3),%st
c00346f1:	89 45 c0             	mov    %eax,-0x40(%ebp)
c00346f4:	d9 6d d0             	fldcw  -0x30(%ebp)
c00346f7:	db 5d d4             	fistpl -0x2c(%ebp)
c00346fa:	d9 6d d2             	fldcw  -0x2e(%ebp)
c00346fd:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c0034700:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c0034703:	8d 4a 30             	lea    0x30(%edx),%ecx
c0034706:	db 45 d4             	fildl  -0x2c(%ebp)
c0034709:	d8 cb                	fmul   %st(3),%st
c003470b:	88 48 ff             	mov    %cl,-0x1(%eax)
c003470e:	de ea                	fsubrp %st,%st(2)
c0034710:	75 c6                	jne    c00346d8 <_dtoa_r+0x5b8>
c0034712:	dd d8                	fstp   %st(0)
c0034714:	d8 c0                	fadd   %st(0),%st
c0034716:	db e9                	fucomi %st(1),%st
c0034718:	77 1e                	ja     c0034738 <_dtoa_r+0x618>
c003471a:	d9 c9                	fxch   %st(1)
c003471c:	df e9                	fucomip %st(1),%st
c003471e:	dd d8                	fstp   %st(0)
c0034720:	0f 8a 44 09 00 00    	jp     c003506a <_dtoa_r+0xf4a>
c0034726:	0f 85 3e 09 00 00    	jne    c003506a <_dtoa_r+0xf4a>
c003472c:	83 e2 01             	and    $0x1,%edx
c003472f:	90                   	nop
c0034730:	0f 84 34 09 00 00    	je     c003506a <_dtoa_r+0xf4a>
c0034736:	eb 04                	jmp    c003473c <_dtoa_r+0x61c>
c0034738:	dd d8                	fstp   %st(0)
c003473a:	dd d8                	fstp   %st(0)
c003473c:	8b 4d c0             	mov    -0x40(%ebp),%ecx
c003473f:	89 fb                	mov    %edi,%ebx
c0034741:	0f b6 41 ff          	movzbl -0x1(%ecx),%eax
c0034745:	89 cf                	mov    %ecx,%edi
c0034747:	8b 4d b8             	mov    -0x48(%ebp),%ecx
c003474a:	89 4d b4             	mov    %ecx,-0x4c(%ebp)
c003474d:	eb 0f                	jmp    c003475e <_dtoa_r+0x63e>
c003474f:	90                   	nop
c0034750:	39 d3                	cmp    %edx,%ebx
c0034752:	0f 84 75 09 00 00    	je     c00350cd <_dtoa_r+0xfad>
c0034758:	0f b6 42 ff          	movzbl -0x1(%edx),%eax
c003475c:	89 d7                	mov    %edx,%edi
c003475e:	3c 39                	cmp    $0x39,%al
c0034760:	8d 57 ff             	lea    -0x1(%edi),%edx
c0034763:	74 eb                	je     c0034750 <_dtoa_r+0x630>
c0034765:	8b 4d b4             	mov    -0x4c(%ebp),%ecx
c0034768:	83 c0 01             	add    $0x1,%eax
c003476b:	88 02                	mov    %al,(%edx)
c003476d:	89 4d b8             	mov    %ecx,-0x48(%ebp)
c0034770:	e9 fb 01 00 00       	jmp    c0034970 <_dtoa_r+0x850>
c0034775:	8d 76 00             	lea    0x0(%esi),%esi
c0034778:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c003477b:	85 c9                	test   %ecx,%ecx
c003477d:	0f 85 9d 02 00 00    	jne    c0034a20 <_dtoa_r+0x900>
c0034783:	8b 55 b0             	mov    -0x50(%ebp),%edx
c0034786:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c0034789:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c0034790:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0034793:	85 c0                	test   %eax,%eax
c0034795:	7e 14                	jle    c00347ab <_dtoa_r+0x68b>
c0034797:	85 db                	test   %ebx,%ebx
c0034799:	7e 10                	jle    c00347ab <_dtoa_r+0x68b>
c003479b:	8b 45 ac             	mov    -0x54(%ebp),%eax
c003479e:	39 d8                	cmp    %ebx,%eax
c00347a0:	0f 4f c3             	cmovg  %ebx,%eax
c00347a3:	29 45 a0             	sub    %eax,-0x60(%ebp)
c00347a6:	29 c3                	sub    %eax,%ebx
c00347a8:	29 45 ac             	sub    %eax,-0x54(%ebp)
c00347ab:	8b 45 b0             	mov    -0x50(%ebp),%eax
c00347ae:	85 c0                	test   %eax,%eax
c00347b0:	7e 61                	jle    c0034813 <_dtoa_r+0x6f3>
c00347b2:	8b 45 98             	mov    -0x68(%ebp),%eax
c00347b5:	85 c0                	test   %eax,%eax
c00347b7:	0f 84 72 04 00 00    	je     c0034c2f <_dtoa_r+0xb0f>
c00347bd:	85 d2                	test   %edx,%edx
c00347bf:	7e 47                	jle    c0034808 <_dtoa_r+0x6e8>
c00347c1:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c00347c4:	89 54 24 08          	mov    %edx,0x8(%esp)
c00347c8:	89 34 24             	mov    %esi,(%esp)
c00347cb:	89 55 88             	mov    %edx,-0x78(%ebp)
c00347ce:	89 44 24 04          	mov    %eax,0x4(%esp)
c00347d2:	e8 f9 19 00 00       	call   c00361d0 <__pow5mult>
c00347d7:	8b 4d a4             	mov    -0x5c(%ebp),%ecx
c00347da:	89 34 24             	mov    %esi,(%esp)
c00347dd:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c00347e1:	89 44 24 04          	mov    %eax,0x4(%esp)
c00347e5:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c00347e8:	e8 13 18 00 00       	call   c0036000 <__multiply>
c00347ed:	8b 4d a4             	mov    -0x5c(%ebp),%ecx
c00347f0:	89 34 24             	mov    %esi,(%esp)
c00347f3:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c00347f7:	89 45 8c             	mov    %eax,-0x74(%ebp)
c00347fa:	e8 f1 14 00 00       	call   c0035cf0 <_Bfree>
c00347ff:	8b 45 8c             	mov    -0x74(%ebp),%eax
c0034802:	8b 55 88             	mov    -0x78(%ebp),%edx
c0034805:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0034808:	8b 45 b0             	mov    -0x50(%ebp),%eax
c003480b:	29 d0                	sub    %edx,%eax
c003480d:	0f 85 1f 04 00 00    	jne    c0034c32 <_dtoa_r+0xb12>
c0034813:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c003481a:	00 
c003481b:	89 34 24             	mov    %esi,(%esp)
c003481e:	e8 ad 17 00 00       	call   c0035fd0 <__i2b>
c0034823:	8b 4d 94             	mov    -0x6c(%ebp),%ecx
c0034826:	85 c9                	test   %ecx,%ecx
c0034828:	89 45 b0             	mov    %eax,-0x50(%ebp)
c003482b:	7e 13                	jle    c0034840 <_dtoa_r+0x720>
c003482d:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c0034831:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034835:	89 34 24             	mov    %esi,(%esp)
c0034838:	e8 93 19 00 00       	call   c00361d0 <__pow5mult>
c003483d:	89 45 b0             	mov    %eax,-0x50(%ebp)
c0034840:	83 7d 14 01          	cmpl   $0x1,0x14(%ebp)
c0034844:	c7 45 8c 00 00 00 00 	movl   $0x0,-0x74(%ebp)
c003484b:	0f 8e f7 05 00 00    	jle    c0034e48 <_dtoa_r+0xd28>
c0034851:	8b 45 94             	mov    -0x6c(%ebp),%eax
c0034854:	ba 01 00 00 00       	mov    $0x1,%edx
c0034859:	85 c0                	test   %eax,%eax
c003485b:	0f 85 27 05 00 00    	jne    c0034d88 <_dtoa_r+0xc68>
c0034861:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0034864:	01 d0                	add    %edx,%eax
c0034866:	83 e0 1f             	and    $0x1f,%eax
c0034869:	89 c2                	mov    %eax,%edx
c003486b:	0f 84 57 03 00 00    	je     c0034bc8 <_dtoa_r+0xaa8>
c0034871:	b8 20 00 00 00       	mov    $0x20,%eax
c0034876:	29 d0                	sub    %edx,%eax
c0034878:	83 f8 04             	cmp    $0x4,%eax
c003487b:	0f 8e 8c 0a 00 00    	jle    c003530d <_dtoa_r+0x11ed>
c0034881:	b8 1c 00 00 00       	mov    $0x1c,%eax
c0034886:	29 d0                	sub    %edx,%eax
c0034888:	01 45 a0             	add    %eax,-0x60(%ebp)
c003488b:	01 c3                	add    %eax,%ebx
c003488d:	01 45 ac             	add    %eax,-0x54(%ebp)
c0034890:	8b 45 a0             	mov    -0x60(%ebp),%eax
c0034893:	85 c0                	test   %eax,%eax
c0034895:	7e 16                	jle    c00348ad <_dtoa_r+0x78d>
c0034897:	89 44 24 08          	mov    %eax,0x8(%esp)
c003489b:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c003489e:	89 34 24             	mov    %esi,(%esp)
c00348a1:	89 44 24 04          	mov    %eax,0x4(%esp)
c00348a5:	e8 46 1a 00 00       	call   c00362f0 <__lshift>
c00348aa:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c00348ad:	8b 45 ac             	mov    -0x54(%ebp),%eax
c00348b0:	85 c0                	test   %eax,%eax
c00348b2:	7e 16                	jle    c00348ca <_dtoa_r+0x7aa>
c00348b4:	89 44 24 08          	mov    %eax,0x8(%esp)
c00348b8:	8b 45 b0             	mov    -0x50(%ebp),%eax
c00348bb:	89 34 24             	mov    %esi,(%esp)
c00348be:	89 44 24 04          	mov    %eax,0x4(%esp)
c00348c2:	e8 29 1a 00 00       	call   c00362f0 <__lshift>
c00348c7:	89 45 b0             	mov    %eax,-0x50(%ebp)
c00348ca:	8b 45 9c             	mov    -0x64(%ebp),%eax
c00348cd:	85 c0                	test   %eax,%eax
c00348cf:	0f 85 d3 04 00 00    	jne    c0034da8 <_dtoa_r+0xc88>
c00348d5:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c00348d9:	0f 8e 11 02 00 00    	jle    c0034af0 <_dtoa_r+0x9d0>
c00348df:	8b 45 a8             	mov    -0x58(%ebp),%eax
c00348e2:	85 c0                	test   %eax,%eax
c00348e4:	0f 8f 06 02 00 00    	jg     c0034af0 <_dtoa_r+0x9d0>
c00348ea:	8b 45 a8             	mov    -0x58(%ebp),%eax
c00348ed:	85 c0                	test   %eax,%eax
c00348ef:	0f 85 e0 01 00 00    	jne    c0034ad5 <_dtoa_r+0x9b5>
c00348f5:	8b 45 b0             	mov    -0x50(%ebp),%eax
c00348f8:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c00348ff:	00 
c0034900:	c7 44 24 08 05 00 00 	movl   $0x5,0x8(%esp)
c0034907:	00 
c0034908:	89 34 24             	mov    %esi,(%esp)
c003490b:	89 44 24 04          	mov    %eax,0x4(%esp)
c003490f:	e8 fc 13 00 00       	call   c0035d10 <__multadd>
c0034914:	89 45 b0             	mov    %eax,-0x50(%ebp)
c0034917:	89 44 24 04          	mov    %eax,0x4(%esp)
c003491b:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c003491e:	89 04 24             	mov    %eax,(%esp)
c0034921:	e8 ea 1a 00 00       	call   c0036410 <__mcmp>
c0034926:	85 c0                	test   %eax,%eax
c0034928:	0f 8e a7 01 00 00    	jle    c0034ad5 <_dtoa_r+0x9b5>
c003492e:	83 45 b8 01          	addl   $0x1,-0x48(%ebp)
c0034932:	89 fb                	mov    %edi,%ebx
c0034934:	83 c7 01             	add    $0x1,%edi
c0034937:	c6 47 ff 31          	movb   $0x31,-0x1(%edi)
c003493b:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
c0034942:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034945:	89 34 24             	mov    %esi,(%esp)
c0034948:	89 44 24 04          	mov    %eax,0x4(%esp)
c003494c:	e8 9f 13 00 00       	call   c0035cf0 <_Bfree>
c0034951:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034954:	85 c0                	test   %eax,%eax
c0034956:	74 18                	je     c0034970 <_dtoa_r+0x850>
c0034958:	39 45 c0             	cmp    %eax,-0x40(%ebp)
c003495b:	0f 85 a7 02 00 00    	jne    c0034c08 <_dtoa_r+0xae8>
c0034961:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034964:	89 34 24             	mov    %esi,(%esp)
c0034967:	89 44 24 04          	mov    %eax,0x4(%esp)
c003496b:	e8 80 13 00 00       	call   c0035cf0 <_Bfree>
c0034970:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034973:	89 34 24             	mov    %esi,(%esp)
c0034976:	89 44 24 04          	mov    %eax,0x4(%esp)
c003497a:	e8 71 13 00 00       	call   c0035cf0 <_Bfree>
c003497f:	8b 45 b8             	mov    -0x48(%ebp),%eax
c0034982:	8b 75 1c             	mov    0x1c(%ebp),%esi
c0034985:	c6 07 00             	movb   $0x0,(%edi)
c0034988:	83 c0 01             	add    $0x1,%eax
c003498b:	89 06                	mov    %eax,(%esi)
c003498d:	8b 45 24             	mov    0x24(%ebp),%eax
c0034990:	85 c0                	test   %eax,%eax
c0034992:	0f 84 90 02 00 00    	je     c0034c28 <_dtoa_r+0xb08>
c0034998:	8b 45 24             	mov    0x24(%ebp),%eax
c003499b:	89 38                	mov    %edi,(%eax)
c003499d:	81 c4 8c 00 00 00    	add    $0x8c,%esp
c00349a3:	89 d8                	mov    %ebx,%eax
c00349a5:	5b                   	pop    %ebx
c00349a6:	5e                   	pop    %esi
c00349a7:	5f                   	pop    %edi
c00349a8:	5d                   	pop    %ebp
c00349a9:	c3                   	ret    
c00349aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00349b0:	db 45 b8             	fildl  -0x48(%ebp)
c00349b3:	df e9                	fucomip %st(1),%st
c00349b5:	dd d8                	fstp   %st(0)
c00349b7:	7a 06                	jp     c00349bf <_dtoa_r+0x89f>
c00349b9:	0f 84 cc f8 ff ff    	je     c003428b <_dtoa_r+0x16b>
c00349bf:	83 6d b8 01          	subl   $0x1,-0x48(%ebp)
c00349c3:	e9 c3 f8 ff ff       	jmp    c003428b <_dtoa_r+0x16b>
c00349c8:	8b 45 b8             	mov    -0x48(%ebp),%eax
c00349cb:	29 45 a0             	sub    %eax,-0x60(%ebp)
c00349ce:	c7 45 94 00 00 00 00 	movl   $0x0,-0x6c(%ebp)
c00349d5:	f7 d8                	neg    %eax
c00349d7:	89 45 b0             	mov    %eax,-0x50(%ebp)
c00349da:	e9 0c f9 ff ff       	jmp    c00342eb <_dtoa_r+0x1cb>
c00349df:	90                   	nop
c00349e0:	f7 d8                	neg    %eax
c00349e2:	89 45 a0             	mov    %eax,-0x60(%ebp)
c00349e5:	c7 45 ac 00 00 00 00 	movl   $0x0,-0x54(%ebp)
c00349ec:	e9 e2 f8 ff ff       	jmp    c00342d3 <_dtoa_r+0x1b3>
c00349f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00349f8:	8b 45 c0             	mov    -0x40(%ebp),%eax
c00349fb:	b9 ee fb ff ff       	mov    $0xfffffbee,%ecx
c0034a00:	29 d9                	sub    %ebx,%ecx
c0034a02:	d3 e0                	shl    %cl,%eax
c0034a04:	e9 1b f8 ff ff       	jmp    c0034224 <_dtoa_r+0x104>
c0034a09:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034a10:	c7 45 9c 00 00 00 00 	movl   $0x0,-0x64(%ebp)
c0034a17:	e9 a0 f8 ff ff       	jmp    c00342bc <_dtoa_r+0x19c>
c0034a1c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034a20:	83 7d 14 01          	cmpl   $0x1,0x14(%ebp)
c0034a24:	0f 8e fe 06 00 00    	jle    c0035128 <_dtoa_r+0x1008>
c0034a2a:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034a2d:	83 e8 01             	sub    $0x1,%eax
c0034a30:	39 45 b0             	cmp    %eax,-0x50(%ebp)
c0034a33:	0f 8c 3b 06 00 00    	jl     c0035074 <_dtoa_r+0xf54>
c0034a39:	8b 55 b0             	mov    -0x50(%ebp),%edx
c0034a3c:	29 c2                	sub    %eax,%edx
c0034a3e:	8b 4d a8             	mov    -0x58(%ebp),%ecx
c0034a41:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c0034a44:	85 c9                	test   %ecx,%ecx
c0034a46:	89 c8                	mov    %ecx,%eax
c0034a48:	0f 88 83 07 00 00    	js     c00351d1 <_dtoa_r+0x10b1>
c0034a4e:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0034a55:	00 
c0034a56:	89 34 24             	mov    %esi,(%esp)
c0034a59:	89 55 8c             	mov    %edx,-0x74(%ebp)
c0034a5c:	01 45 a0             	add    %eax,-0x60(%ebp)
c0034a5f:	01 45 ac             	add    %eax,-0x54(%ebp)
c0034a62:	e8 69 15 00 00       	call   c0035fd0 <__i2b>
c0034a67:	8b 55 8c             	mov    -0x74(%ebp),%edx
c0034a6a:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034a6d:	e9 1e fd ff ff       	jmp    c0034790 <_dtoa_r+0x670>
c0034a72:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034a78:	d9 c1                	fld    %st(1)
c0034a7a:	b9 02 00 00 00       	mov    $0x2,%ecx
c0034a7f:	e9 37 fa ff ff       	jmp    c00344bb <_dtoa_r+0x39b>
c0034a84:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c0034a87:	db 45 d4             	fildl  -0x2c(%ebp)
c0034a8a:	d8 c9                	fmul   %st(1),%st
c0034a8c:	d8 05 94 9a 03 c0    	fadds  0xc0039a94
c0034a92:	dd 5d c0             	fstpl  -0x40(%ebp)
c0034a95:	81 6d c4 00 00 40 03 	subl   $0x3400000,-0x3c(%ebp)
c0034a9c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034aa0:	d8 25 98 9a 03 c0    	fsubs  0xc0039a98
c0034aa6:	dd 45 c0             	fldl   -0x40(%ebp)
c0034aa9:	d9 c9                	fxch   %st(1)
c0034aab:	db e9                	fucomi %st(1),%st
c0034aad:	0f 87 0d 02 00 00    	ja     c0034cc0 <_dtoa_r+0xba0>
c0034ab3:	d9 c9                	fxch   %st(1)
c0034ab5:	d9 e0                	fchs   
c0034ab7:	df e9                	fucomip %st(1),%st
c0034ab9:	dd d8                	fstp   %st(0)
c0034abb:	0f 86 a7 01 00 00    	jbe    c0034c68 <_dtoa_r+0xb48>
c0034ac1:	dd d8                	fstp   %st(0)
c0034ac3:	eb 02                	jmp    c0034ac7 <_dtoa_r+0x9a7>
c0034ac5:	dd d8                	fstp   %st(0)
c0034ac7:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c0034ace:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c0034ad5:	8b 45 18             	mov    0x18(%ebp),%eax
c0034ad8:	89 fb                	mov    %edi,%ebx
c0034ada:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
c0034ae1:	f7 d0                	not    %eax
c0034ae3:	89 45 b8             	mov    %eax,-0x48(%ebp)
c0034ae6:	e9 57 fe ff ff       	jmp    c0034942 <_dtoa_r+0x822>
c0034aeb:	90                   	nop
c0034aec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034af0:	8b 45 98             	mov    -0x68(%ebp),%eax
c0034af3:	85 c0                	test   %eax,%eax
c0034af5:	0f 85 c5 03 00 00    	jne    c0034ec0 <_dtoa_r+0xda0>
c0034afb:	89 75 08             	mov    %esi,0x8(%ebp)
c0034afe:	bb 01 00 00 00       	mov    $0x1,%ebx
c0034b03:	8b 75 a4             	mov    -0x5c(%ebp),%esi
c0034b06:	eb 24                	jmp    c0034b2c <_dtoa_r+0xa0c>
c0034b08:	8b 45 08             	mov    0x8(%ebp),%eax
c0034b0b:	83 c3 01             	add    $0x1,%ebx
c0034b0e:	89 74 24 04          	mov    %esi,0x4(%esp)
c0034b12:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034b19:	00 
c0034b1a:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034b21:	00 
c0034b22:	89 04 24             	mov    %eax,(%esp)
c0034b25:	e8 e6 11 00 00       	call   c0035d10 <__multadd>
c0034b2a:	89 c6                	mov    %eax,%esi
c0034b2c:	8b 55 b0             	mov    -0x50(%ebp),%edx
c0034b2f:	89 f0                	mov    %esi,%eax
c0034b31:	e8 1a f4 ff ff       	call   c0033f50 <quorem>
c0034b36:	83 c0 30             	add    $0x30,%eax
c0034b39:	3b 5d a8             	cmp    -0x58(%ebp),%ebx
c0034b3c:	88 44 1f ff          	mov    %al,-0x1(%edi,%ebx,1)
c0034b40:	7c c6                	jl     c0034b08 <_dtoa_r+0x9e8>
c0034b42:	89 45 a0             	mov    %eax,-0x60(%ebp)
c0034b45:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034b48:	ba 01 00 00 00       	mov    $0x1,%edx
c0034b4d:	89 75 a4             	mov    %esi,-0x5c(%ebp)
c0034b50:	8b 75 08             	mov    0x8(%ebp),%esi
c0034b53:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
c0034b5a:	85 c0                	test   %eax,%eax
c0034b5c:	0f 4f d0             	cmovg  %eax,%edx
c0034b5f:	01 fa                	add    %edi,%edx
c0034b61:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034b64:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
c0034b6b:	00 
c0034b6c:	89 34 24             	mov    %esi,(%esp)
c0034b6f:	89 55 ac             	mov    %edx,-0x54(%ebp)
c0034b72:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034b76:	e8 75 17 00 00       	call   c00362f0 <__lshift>
c0034b7b:	8b 5d b0             	mov    -0x50(%ebp),%ebx
c0034b7e:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c0034b82:	89 04 24             	mov    %eax,(%esp)
c0034b85:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0034b88:	e8 83 18 00 00       	call   c0036410 <__mcmp>
c0034b8d:	8b 55 ac             	mov    -0x54(%ebp),%edx
c0034b90:	83 f8 00             	cmp    $0x0,%eax
c0034b93:	0f 8e 41 06 00 00    	jle    c00351da <_dtoa_r+0x10ba>
c0034b99:	0f b6 4a ff          	movzbl -0x1(%edx),%ecx
c0034b9d:	eb 0f                	jmp    c0034bae <_dtoa_r+0xa8e>
c0034b9f:	90                   	nop
c0034ba0:	39 c7                	cmp    %eax,%edi
c0034ba2:	0f 84 70 05 00 00    	je     c0035118 <_dtoa_r+0xff8>
c0034ba8:	0f b6 48 ff          	movzbl -0x1(%eax),%ecx
c0034bac:	89 c2                	mov    %eax,%edx
c0034bae:	80 f9 39             	cmp    $0x39,%cl
c0034bb1:	8d 42 ff             	lea    -0x1(%edx),%eax
c0034bb4:	74 ea                	je     c0034ba0 <_dtoa_r+0xa80>
c0034bb6:	83 c1 01             	add    $0x1,%ecx
c0034bb9:	89 fb                	mov    %edi,%ebx
c0034bbb:	88 08                	mov    %cl,(%eax)
c0034bbd:	89 d7                	mov    %edx,%edi
c0034bbf:	e9 7e fd ff ff       	jmp    c0034942 <_dtoa_r+0x822>
c0034bc4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034bc8:	b8 1c 00 00 00       	mov    $0x1c,%eax
c0034bcd:	01 45 a0             	add    %eax,-0x60(%ebp)
c0034bd0:	01 c3                	add    %eax,%ebx
c0034bd2:	01 45 ac             	add    %eax,-0x54(%ebp)
c0034bd5:	e9 b6 fc ff ff       	jmp    c0034890 <_dtoa_r+0x770>
c0034bda:	ba 01 00 00 00       	mov    $0x1,%edx
c0034bdf:	c7 45 90 01 00 00 00 	movl   $0x1,-0x70(%ebp)
c0034be6:	c7 45 a8 01 00 00 00 	movl   $0x1,-0x58(%ebp)
c0034bed:	c7 45 18 01 00 00 00 	movl   $0x1,0x18(%ebp)
c0034bf4:	21 c2                	and    %eax,%edx
c0034bf6:	88 55 b4             	mov    %dl,-0x4c(%ebp)
c0034bf9:	31 d2                	xor    %edx,%edx
c0034bfb:	c7 46 44 00 00 00 00 	movl   $0x0,0x44(%esi)
c0034c02:	e9 62 f8 ff ff       	jmp    c0034469 <_dtoa_r+0x349>
c0034c07:	90                   	nop
c0034c08:	8b 55 c0             	mov    -0x40(%ebp),%edx
c0034c0b:	85 d2                	test   %edx,%edx
c0034c0d:	0f 84 4e fd ff ff    	je     c0034961 <_dtoa_r+0x841>
c0034c13:	8b 45 c0             	mov    -0x40(%ebp),%eax
c0034c16:	89 34 24             	mov    %esi,(%esp)
c0034c19:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034c1d:	e8 ce 10 00 00       	call   c0035cf0 <_Bfree>
c0034c22:	e9 3a fd ff ff       	jmp    c0034961 <_dtoa_r+0x841>
c0034c27:	90                   	nop
c0034c28:	89 d8                	mov    %ebx,%eax
c0034c2a:	e9 89 f5 ff ff       	jmp    c00341b8 <_dtoa_r+0x98>
c0034c2f:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034c32:	89 44 24 08          	mov    %eax,0x8(%esp)
c0034c36:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034c39:	89 34 24             	mov    %esi,(%esp)
c0034c3c:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034c40:	e8 8b 15 00 00       	call   c00361d0 <__pow5mult>
c0034c45:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0034c48:	e9 c6 fb ff ff       	jmp    c0034813 <_dtoa_r+0x6f3>
c0034c4d:	dd d8                	fstp   %st(0)
c0034c4f:	dd d8                	fstp   %st(0)
c0034c51:	eb 15                	jmp    c0034c68 <_dtoa_r+0xb48>
c0034c53:	90                   	nop
c0034c54:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034c58:	dd d8                	fstp   %st(0)
c0034c5a:	dd d8                	fstp   %st(0)
c0034c5c:	dd d8                	fstp   %st(0)
c0034c5e:	eb 08                	jmp    c0034c68 <_dtoa_r+0xb48>
c0034c60:	dd d8                	fstp   %st(0)
c0034c62:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034c68:	dd 5d c0             	fstpl  -0x40(%ebp)
c0034c6b:	e9 cf f9 ff ff       	jmp    c003463f <_dtoa_r+0x51f>
c0034c70:	8b 45 b8             	mov    -0x48(%ebp),%eax
c0034c73:	f7 d8                	neg    %eax
c0034c75:	0f 84 6a 04 00 00    	je     c00350e5 <_dtoa_r+0xfc5>
c0034c7b:	89 c2                	mov    %eax,%edx
c0034c7d:	b9 02 00 00 00       	mov    $0x2,%ecx
c0034c82:	83 e2 0f             	and    $0xf,%edx
c0034c85:	c1 f8 04             	sar    $0x4,%eax
c0034c88:	dd 04 d5 60 9b 03 c0 	fldl   -0x3ffc64a0(,%edx,8)
c0034c8f:	85 c0                	test   %eax,%eax
c0034c91:	d8 c9                	fmul   %st(1),%st
c0034c93:	0f 84 4a f8 ff ff    	je     c00344e3 <_dtoa_r+0x3c3>
c0034c99:	31 d2                	xor    %edx,%edx
c0034c9b:	90                   	nop
c0034c9c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034ca0:	a8 01                	test   $0x1,%al
c0034ca2:	74 0a                	je     c0034cae <_dtoa_r+0xb8e>
c0034ca4:	dc 0c d5 20 9b 03 c0 	fmull  -0x3ffc64e0(,%edx,8)
c0034cab:	83 c1 01             	add    $0x1,%ecx
c0034cae:	83 c2 01             	add    $0x1,%edx
c0034cb1:	d1 f8                	sar    %eax
c0034cb3:	75 eb                	jne    c0034ca0 <_dtoa_r+0xb80>
c0034cb5:	e9 29 f8 ff ff       	jmp    c00344e3 <_dtoa_r+0x3c3>
c0034cba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034cc0:	dd d8                	fstp   %st(0)
c0034cc2:	dd d8                	fstp   %st(0)
c0034cc4:	dd d8                	fstp   %st(0)
c0034cc6:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c0034ccd:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c0034cd4:	e9 55 fc ff ff       	jmp    c003492e <_dtoa_r+0x80e>
c0034cd9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034ce0:	d9 7d d2             	fnstcw -0x2e(%ebp)
c0034ce3:	8d 41 ff             	lea    -0x1(%ecx),%eax
c0034ce6:	dd 45 c0             	fldl   -0x40(%ebp)
c0034ce9:	dc 0c c5 60 9b 03 c0 	fmull  -0x3ffc64a0(,%eax,8)
c0034cf0:	d9 c9                	fxch   %st(1)
c0034cf2:	89 45 88             	mov    %eax,-0x78(%ebp)
c0034cf5:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c0034cf9:	8d 57 01             	lea    0x1(%edi),%edx
c0034cfc:	8d 1c 0f             	lea    (%edi,%ecx,1),%ebx
c0034cff:	b4 0c                	mov    $0xc,%ah
c0034d01:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c0034d05:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034d08:	db 55 d4             	fistl  -0x2c(%ebp)
c0034d0b:	d9 6d d2             	fldcw  -0x2e(%ebp)
c0034d0e:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c0034d11:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0034d14:	83 c0 30             	add    $0x30,%eax
c0034d17:	83 f9 01             	cmp    $0x1,%ecx
c0034d1a:	db 45 d4             	fildl  -0x2c(%ebp)
c0034d1d:	de e9                	fsubrp %st,%st(1)
c0034d1f:	88 07                	mov    %al,(%edi)
c0034d21:	89 d0                	mov    %edx,%eax
c0034d23:	74 37                	je     c0034d5c <_dtoa_r+0xc3c>
c0034d25:	d9 05 90 9a 03 c0    	flds   0xc0039a90
c0034d2b:	eb 05                	jmp    c0034d32 <_dtoa_r+0xc12>
c0034d2d:	8d 76 00             	lea    0x0(%esi),%esi
c0034d30:	d9 c9                	fxch   %st(1)
c0034d32:	dc c9                	fmul   %st,%st(1)
c0034d34:	d9 c9                	fxch   %st(1)
c0034d36:	83 c0 01             	add    $0x1,%eax
c0034d39:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034d3c:	db 55 d4             	fistl  -0x2c(%ebp)
c0034d3f:	d9 6d d2             	fldcw  -0x2e(%ebp)
c0034d42:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
c0034d45:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c0034d48:	83 c1 30             	add    $0x30,%ecx
c0034d4b:	39 d8                	cmp    %ebx,%eax
c0034d4d:	db 45 d4             	fildl  -0x2c(%ebp)
c0034d50:	de e9                	fsubrp %st,%st(1)
c0034d52:	88 48 ff             	mov    %cl,-0x1(%eax)
c0034d55:	75 d9                	jne    c0034d30 <_dtoa_r+0xc10>
c0034d57:	dd d9                	fstp   %st(1)
c0034d59:	03 55 88             	add    -0x78(%ebp),%edx
c0034d5c:	d9 05 9c 9a 03 c0    	flds   0xc0039a9c
c0034d62:	d9 c2                	fld    %st(2)
c0034d64:	d8 c1                	fadd   %st(1),%st
c0034d66:	d9 ca                	fxch   %st(2)
c0034d68:	db ea                	fucomi %st(2),%st
c0034d6a:	dd da                	fstp   %st(2)
c0034d6c:	0f 86 7f 03 00 00    	jbe    c00350f1 <_dtoa_r+0xfd1>
c0034d72:	dd d8                	fstp   %st(0)
c0034d74:	dd d8                	fstp   %st(0)
c0034d76:	dd d8                	fstp   %st(0)
c0034d78:	dd d8                	fstp   %st(0)
c0034d7a:	89 fb                	mov    %edi,%ebx
c0034d7c:	0f b6 42 ff          	movzbl -0x1(%edx),%eax
c0034d80:	89 d7                	mov    %edx,%edi
c0034d82:	e9 d7 f9 ff ff       	jmp    c003475e <_dtoa_r+0x63e>
c0034d87:	90                   	nop
c0034d88:	8b 4d b0             	mov    -0x50(%ebp),%ecx
c0034d8b:	8b 41 10             	mov    0x10(%ecx),%eax
c0034d8e:	8b 44 81 10          	mov    0x10(%ecx,%eax,4),%eax
c0034d92:	89 04 24             	mov    %eax,(%esp)
c0034d95:	e8 56 11 00 00       	call   c0035ef0 <__hi0bits>
c0034d9a:	ba 20 00 00 00       	mov    $0x20,%edx
c0034d9f:	29 c2                	sub    %eax,%edx
c0034da1:	e9 bb fa ff ff       	jmp    c0034861 <_dtoa_r+0x741>
c0034da6:	66 90                	xchg   %ax,%ax
c0034da8:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034dab:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034daf:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034db2:	89 04 24             	mov    %eax,(%esp)
c0034db5:	e8 56 16 00 00       	call   c0036410 <__mcmp>
c0034dba:	85 c0                	test   %eax,%eax
c0034dbc:	0f 89 13 fb ff ff    	jns    c00348d5 <_dtoa_r+0x7b5>
c0034dc2:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034dc5:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034dcc:	00 
c0034dcd:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034dd4:	00 
c0034dd5:	89 34 24             	mov    %esi,(%esp)
c0034dd8:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034ddc:	83 6d b8 01          	subl   $0x1,-0x48(%ebp)
c0034de0:	e8 2b 0f 00 00       	call   c0035d10 <__multadd>
c0034de5:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c0034de8:	85 c9                	test   %ecx,%ecx
c0034dea:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0034ded:	0f 85 8d 00 00 00    	jne    c0034e80 <_dtoa_r+0xd60>
c0034df3:	83 7d 90 00          	cmpl   $0x0,-0x70(%ebp)
c0034df7:	8b 45 90             	mov    -0x70(%ebp),%eax
c0034dfa:	7f 0a                	jg     c0034e06 <_dtoa_r+0xce6>
c0034dfc:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c0034e00:	0f 8f ff 04 00 00    	jg     c0035305 <_dtoa_r+0x11e5>
c0034e06:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0034e09:	e9 ed fc ff ff       	jmp    c0034afb <_dtoa_r+0x9db>
c0034e0e:	66 90                	xchg   %ax,%ax
c0034e10:	8b 5d a8             	mov    -0x58(%ebp),%ebx
c0034e13:	85 db                	test   %ebx,%ebx
c0034e15:	0f 85 aa fc ff ff    	jne    c0034ac5 <_dtoa_r+0x9a5>
c0034e1b:	d8 0d 98 9a 03 c0    	fmuls  0xc0039a98
c0034e21:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c0034e28:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c0034e2f:	dd 45 c0             	fldl   -0x40(%ebp)
c0034e32:	d9 c9                	fxch   %st(1)
c0034e34:	df e9                	fucomip %st(1),%st
c0034e36:	dd d8                	fstp   %st(0)
c0034e38:	0f 83 97 fc ff ff    	jae    c0034ad5 <_dtoa_r+0x9b5>
c0034e3e:	e9 eb fa ff ff       	jmp    c003492e <_dtoa_r+0x80e>
c0034e43:	90                   	nop
c0034e44:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034e48:	8b 45 c0             	mov    -0x40(%ebp),%eax
c0034e4b:	85 c0                	test   %eax,%eax
c0034e4d:	0f 85 fe f9 ff ff    	jne    c0034851 <_dtoa_r+0x731>
c0034e53:	8b 45 c4             	mov    -0x3c(%ebp),%eax
c0034e56:	a9 ff ff 0f 00       	test   $0xfffff,%eax
c0034e5b:	0f 85 f0 f9 ff ff    	jne    c0034851 <_dtoa_r+0x731>
c0034e61:	a9 00 00 f0 7f       	test   $0x7ff00000,%eax
c0034e66:	0f 84 e5 f9 ff ff    	je     c0034851 <_dtoa_r+0x731>
c0034e6c:	83 45 a0 01          	addl   $0x1,-0x60(%ebp)
c0034e70:	83 45 ac 01          	addl   $0x1,-0x54(%ebp)
c0034e74:	c7 45 8c 01 00 00 00 	movl   $0x1,-0x74(%ebp)
c0034e7b:	e9 d1 f9 ff ff       	jmp    c0034851 <_dtoa_r+0x731>
c0034e80:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034e83:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034e8a:	00 
c0034e8b:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034e92:	00 
c0034e93:	89 34 24             	mov    %esi,(%esp)
c0034e96:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034e9a:	e8 71 0e 00 00       	call   c0035d10 <__multadd>
c0034e9f:	8b 55 90             	mov    -0x70(%ebp),%edx
c0034ea2:	85 d2                	test   %edx,%edx
c0034ea4:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034ea7:	8b 45 90             	mov    -0x70(%ebp),%eax
c0034eaa:	7f 0a                	jg     c0034eb6 <_dtoa_r+0xd96>
c0034eac:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c0034eb0:	0f 8f 4f 04 00 00    	jg     c0035305 <_dtoa_r+0x11e5>
c0034eb6:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0034eb9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034ec0:	85 db                	test   %ebx,%ebx
c0034ec2:	7e 16                	jle    c0034eda <_dtoa_r+0xdba>
c0034ec4:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034ec7:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0034ecb:	89 34 24             	mov    %esi,(%esp)
c0034ece:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034ed2:	e8 19 14 00 00       	call   c00362f0 <__lshift>
c0034ed7:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034eda:	8b 5d 8c             	mov    -0x74(%ebp),%ebx
c0034edd:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034ee0:	85 db                	test   %ebx,%ebx
c0034ee2:	89 45 ac             	mov    %eax,-0x54(%ebp)
c0034ee5:	0f 85 11 03 00 00    	jne    c00351fc <_dtoa_r+0x10dc>
c0034eeb:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034eee:	8d 5f 01             	lea    0x1(%edi),%ebx
c0034ef1:	89 7d 8c             	mov    %edi,-0x74(%ebp)
c0034ef4:	01 f8                	add    %edi,%eax
c0034ef6:	8b 7d a4             	mov    -0x5c(%ebp),%edi
c0034ef9:	89 45 90             	mov    %eax,-0x70(%ebp)
c0034efc:	8b 45 c0             	mov    -0x40(%ebp),%eax
c0034eff:	83 e0 01             	and    $0x1,%eax
c0034f02:	89 45 9c             	mov    %eax,-0x64(%ebp)
c0034f05:	eb 2e                	jmp    c0034f35 <_dtoa_r+0xe15>
c0034f07:	90                   	nop
c0034f08:	e8 03 0e 00 00       	call   c0035d10 <__multadd>
c0034f0d:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034f14:	00 
c0034f15:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034f1c:	00 
c0034f1d:	89 34 24             	mov    %esi,(%esp)
c0034f20:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034f23:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0034f26:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034f2a:	e8 e1 0d 00 00       	call   c0035d10 <__multadd>
c0034f2f:	89 45 ac             	mov    %eax,-0x54(%ebp)
c0034f32:	83 c3 01             	add    $0x1,%ebx
c0034f35:	8b 55 b0             	mov    -0x50(%ebp),%edx
c0034f38:	8d 43 ff             	lea    -0x1(%ebx),%eax
c0034f3b:	89 45 98             	mov    %eax,-0x68(%ebp)
c0034f3e:	89 f8                	mov    %edi,%eax
c0034f40:	e8 0b f0 ff ff       	call   c0033f50 <quorem>
c0034f45:	89 3c 24             	mov    %edi,(%esp)
c0034f48:	8d 48 30             	lea    0x30(%eax),%ecx
c0034f4b:	89 4d a0             	mov    %ecx,-0x60(%ebp)
c0034f4e:	8b 4d b4             	mov    -0x4c(%ebp),%ecx
c0034f51:	89 45 94             	mov    %eax,-0x6c(%ebp)
c0034f54:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c0034f58:	e8 b3 14 00 00       	call   c0036410 <__mcmp>
c0034f5d:	8b 4d ac             	mov    -0x54(%ebp),%ecx
c0034f60:	89 34 24             	mov    %esi,(%esp)
c0034f63:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c0034f67:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0034f6a:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034f6d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034f71:	e8 ea 14 00 00       	call   c0036460 <__mdiff>
c0034f76:	8b 48 0c             	mov    0xc(%eax),%ecx
c0034f79:	89 c2                	mov    %eax,%edx
c0034f7b:	85 c9                	test   %ecx,%ecx
c0034f7d:	0f 85 c5 00 00 00    	jne    c0035048 <_dtoa_r+0xf28>
c0034f83:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034f87:	89 3c 24             	mov    %edi,(%esp)
c0034f8a:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0034f8d:	e8 7e 14 00 00       	call   c0036410 <__mcmp>
c0034f92:	8b 55 a8             	mov    -0x58(%ebp),%edx
c0034f95:	89 54 24 04          	mov    %edx,0x4(%esp)
c0034f99:	89 34 24             	mov    %esi,(%esp)
c0034f9c:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0034f9f:	e8 4c 0d 00 00       	call   c0035cf0 <_Bfree>
c0034fa4:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034fa7:	89 c1                	mov    %eax,%ecx
c0034fa9:	0b 4d 14             	or     0x14(%ebp),%ecx
c0034fac:	75 0b                	jne    c0034fb9 <_dtoa_r+0xe99>
c0034fae:	8b 55 9c             	mov    -0x64(%ebp),%edx
c0034fb1:	85 d2                	test   %edx,%edx
c0034fb3:	0f 84 fb 02 00 00    	je     c00352b4 <_dtoa_r+0x1194>
c0034fb9:	8b 55 c0             	mov    -0x40(%ebp),%edx
c0034fbc:	85 d2                	test   %edx,%edx
c0034fbe:	0f 88 7f 01 00 00    	js     c0035143 <_dtoa_r+0x1023>
c0034fc4:	8b 4d c0             	mov    -0x40(%ebp),%ecx
c0034fc7:	0b 4d 14             	or     0x14(%ebp),%ecx
c0034fca:	75 0b                	jne    c0034fd7 <_dtoa_r+0xeb7>
c0034fcc:	8b 4d 9c             	mov    -0x64(%ebp),%ecx
c0034fcf:	85 c9                	test   %ecx,%ecx
c0034fd1:	0f 84 6c 01 00 00    	je     c0035143 <_dtoa_r+0x1023>
c0034fd7:	85 c0                	test   %eax,%eax
c0034fd9:	0f 8f 82 02 00 00    	jg     c0035261 <_dtoa_r+0x1141>
c0034fdf:	0f b6 45 a0          	movzbl -0x60(%ebp),%eax
c0034fe3:	89 da                	mov    %ebx,%edx
c0034fe5:	3b 5d 90             	cmp    -0x70(%ebp),%ebx
c0034fe8:	88 43 ff             	mov    %al,-0x1(%ebx)
c0034feb:	0f 84 8d 02 00 00    	je     c003527e <_dtoa_r+0x115e>
c0034ff1:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0034ff5:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034ffc:	00 
c0034ffd:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0035004:	00 
c0035005:	89 34 24             	mov    %esi,(%esp)
c0035008:	e8 03 0d 00 00       	call   c0035d10 <__multadd>
c003500d:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0035014:	00 
c0035015:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c003501c:	00 
c003501d:	89 34 24             	mov    %esi,(%esp)
c0035020:	89 c7                	mov    %eax,%edi
c0035022:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0035025:	39 45 b4             	cmp    %eax,-0x4c(%ebp)
c0035028:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c003502b:	89 44 24 04          	mov    %eax,0x4(%esp)
c003502f:	0f 85 d3 fe ff ff    	jne    c0034f08 <_dtoa_r+0xde8>
c0035035:	e8 d6 0c 00 00       	call   c0035d10 <__multadd>
c003503a:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c003503d:	89 45 ac             	mov    %eax,-0x54(%ebp)
c0035040:	e9 ed fe ff ff       	jmp    c0034f32 <_dtoa_r+0xe12>
c0035045:	8d 76 00             	lea    0x0(%esi),%esi
c0035048:	b8 01 00 00 00       	mov    $0x1,%eax
c003504d:	e9 43 ff ff ff       	jmp    c0034f95 <_dtoa_r+0xe75>
c0035052:	c7 45 98 00 00 00 00 	movl   $0x0,-0x68(%ebp)
c0035059:	e9 d2 f2 ff ff       	jmp    c0034330 <_dtoa_r+0x210>
c003505e:	0f 85 87 f6 ff ff    	jne    c00346eb <_dtoa_r+0x5cb>
c0035064:	dd d8                	fstp   %st(0)
c0035066:	dd d8                	fstp   %st(0)
c0035068:	dd d8                	fstp   %st(0)
c003506a:	89 fb                	mov    %edi,%ebx
c003506c:	8b 7d c0             	mov    -0x40(%ebp),%edi
c003506f:	e9 fc f8 ff ff       	jmp    c0034970 <_dtoa_r+0x850>
c0035074:	89 c2                	mov    %eax,%edx
c0035076:	2b 55 b0             	sub    -0x50(%ebp),%edx
c0035079:	89 45 b0             	mov    %eax,-0x50(%ebp)
c003507c:	01 55 94             	add    %edx,-0x6c(%ebp)
c003507f:	31 d2                	xor    %edx,%edx
c0035081:	e9 b8 f9 ff ff       	jmp    c0034a3e <_dtoa_r+0x91e>
c0035086:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0035089:	85 c0                	test   %eax,%eax
c003508b:	0f 84 f3 f9 ff ff    	je     c0034a84 <_dtoa_r+0x964>
c0035091:	8b 45 90             	mov    -0x70(%ebp),%eax
c0035094:	85 c0                	test   %eax,%eax
c0035096:	0f 8e c4 fb ff ff    	jle    c0034c60 <_dtoa_r+0xb40>
c003509c:	d8 0d 90 9a 03 c0    	fmuls  0xc0039a90
c00350a2:	83 c1 01             	add    $0x1,%ecx
c00350a5:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c00350a8:	8b 5d b8             	mov    -0x48(%ebp),%ebx
c00350ab:	89 c1                	mov    %eax,%ecx
c00350ad:	83 eb 01             	sub    $0x1,%ebx
c00350b0:	db 45 d4             	fildl  -0x2c(%ebp)
c00350b3:	d8 c9                	fmul   %st(1),%st
c00350b5:	89 5d b4             	mov    %ebx,-0x4c(%ebp)
c00350b8:	d8 05 94 9a 03 c0    	fadds  0xc0039a94
c00350be:	dd 5d c0             	fstpl  -0x40(%ebp)
c00350c1:	81 6d c4 00 00 40 03 	subl   $0x3400000,-0x3c(%ebp)
c00350c8:	e9 53 f4 ff ff       	jmp    c0034520 <_dtoa_r+0x400>
c00350cd:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c00350d0:	c6 03 30             	movb   $0x30,(%ebx)
c00350d3:	83 c0 01             	add    $0x1,%eax
c00350d6:	89 45 b8             	mov    %eax,-0x48(%ebp)
c00350d9:	b8 31 00 00 00       	mov    $0x31,%eax
c00350de:	88 02                	mov    %al,(%edx)
c00350e0:	e9 8b f8 ff ff       	jmp    c0034970 <_dtoa_r+0x850>
c00350e5:	d9 c0                	fld    %st(0)
c00350e7:	b9 02 00 00 00       	mov    $0x2,%ecx
c00350ec:	e9 f2 f3 ff ff       	jmp    c00344e3 <_dtoa_r+0x3c3>
c00350f1:	de e2                	fsubp  %st,%st(2)
c00350f3:	d9 c9                	fxch   %st(1)
c00350f5:	df e9                	fucomip %st(1),%st
c00350f7:	dd d8                	fstp   %st(0)
c00350f9:	0f 86 69 fb ff ff    	jbe    c0034c68 <_dtoa_r+0xb48>
c00350ff:	dd d8                	fstp   %st(0)
c0035101:	eb 07                	jmp    c003510a <_dtoa_r+0xfea>
c0035103:	90                   	nop
c0035104:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035108:	89 c2                	mov    %eax,%edx
c003510a:	80 7a ff 30          	cmpb   $0x30,-0x1(%edx)
c003510e:	8d 42 ff             	lea    -0x1(%edx),%eax
c0035111:	74 f5                	je     c0035108 <_dtoa_r+0xfe8>
c0035113:	e9 d9 f4 ff ff       	jmp    c00345f1 <_dtoa_r+0x4d1>
c0035118:	c6 07 31             	movb   $0x31,(%edi)
c003511b:	89 fb                	mov    %edi,%ebx
c003511d:	89 d7                	mov    %edx,%edi
c003511f:	83 45 b8 01          	addl   $0x1,-0x48(%ebp)
c0035123:	e9 1a f8 ff ff       	jmp    c0034942 <_dtoa_r+0x822>
c0035128:	8b 55 8c             	mov    -0x74(%ebp),%edx
c003512b:	85 d2                	test   %edx,%edx
c003512d:	0f 84 1b 01 00 00    	je     c003524e <_dtoa_r+0x112e>
c0035133:	05 33 04 00 00       	add    $0x433,%eax
c0035138:	8b 55 b0             	mov    -0x50(%ebp),%edx
c003513b:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c003513e:	e9 0b f9 ff ff       	jmp    c0034a4e <_dtoa_r+0x92e>
c0035143:	85 c0                	test   %eax,%eax
c0035145:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c0035148:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c003514b:	7e 45                	jle    c0035192 <_dtoa_r+0x1072>
c003514d:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0035150:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
c0035157:	00 
c0035158:	89 34 24             	mov    %esi,(%esp)
c003515b:	89 44 24 04          	mov    %eax,0x4(%esp)
c003515f:	e8 8c 11 00 00       	call   c00362f0 <__lshift>
c0035164:	8b 5d b0             	mov    -0x50(%ebp),%ebx
c0035167:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c003516b:	89 04 24             	mov    %eax,(%esp)
c003516e:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0035171:	e8 9a 12 00 00       	call   c0036410 <__mcmp>
c0035176:	83 f8 00             	cmp    $0x0,%eax
c0035179:	0f 8e 5b 01 00 00    	jle    c00352da <_dtoa_r+0x11ba>
c003517f:	83 7d a0 39          	cmpl   $0x39,-0x60(%ebp)
c0035183:	0f 84 0c 01 00 00    	je     c0035295 <_dtoa_r+0x1175>
c0035189:	8b 45 94             	mov    -0x6c(%ebp),%eax
c003518c:	83 c0 31             	add    $0x31,%eax
c003518f:	89 45 a0             	mov    %eax,-0x60(%ebp)
c0035192:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c0035195:	0f b6 45 a0          	movzbl -0x60(%ebp),%eax
c0035199:	89 cb                	mov    %ecx,%ebx
c003519b:	88 03                	mov    %al,(%ebx)
c003519d:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c00351a0:	89 fb                	mov    %edi,%ebx
c00351a2:	8d 79 01             	lea    0x1(%ecx),%edi
c00351a5:	89 45 c0             	mov    %eax,-0x40(%ebp)
c00351a8:	8b 45 ac             	mov    -0x54(%ebp),%eax
c00351ab:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c00351ae:	e9 8f f7 ff ff       	jmp    c0034942 <_dtoa_r+0x822>
c00351b3:	dd d8                	fstp   %st(0)
c00351b5:	dd d8                	fstp   %st(0)
c00351b7:	dd d8                	fstp   %st(0)
c00351b9:	eb 0d                	jmp    c00351c8 <_dtoa_r+0x10a8>
c00351bb:	90                   	nop
c00351bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00351c0:	dd d8                	fstp   %st(0)
c00351c2:	dd d8                	fstp   %st(0)
c00351c4:	dd d8                	fstp   %st(0)
c00351c6:	dd d8                	fstp   %st(0)
c00351c8:	89 fb                	mov    %edi,%ebx
c00351ca:	89 d7                	mov    %edx,%edi
c00351cc:	e9 8d f5 ff ff       	jmp    c003475e <_dtoa_r+0x63e>
c00351d1:	29 cb                	sub    %ecx,%ebx
c00351d3:	31 c0                	xor    %eax,%eax
c00351d5:	e9 74 f8 ff ff       	jmp    c0034a4e <_dtoa_r+0x92e>
c00351da:	75 0e                	jne    c00351ea <_dtoa_r+0x10ca>
c00351dc:	f6 45 a0 01          	testb  $0x1,-0x60(%ebp)
c00351e0:	74 08                	je     c00351ea <_dtoa_r+0x10ca>
c00351e2:	e9 b2 f9 ff ff       	jmp    c0034b99 <_dtoa_r+0xa79>
c00351e7:	90                   	nop
c00351e8:	89 c2                	mov    %eax,%edx
c00351ea:	80 7a ff 30          	cmpb   $0x30,-0x1(%edx)
c00351ee:	8d 42 ff             	lea    -0x1(%edx),%eax
c00351f1:	74 f5                	je     c00351e8 <_dtoa_r+0x10c8>
c00351f3:	89 fb                	mov    %edi,%ebx
c00351f5:	89 d7                	mov    %edx,%edi
c00351f7:	e9 46 f7 ff ff       	jmp    c0034942 <_dtoa_r+0x822>
c00351fc:	8b 40 04             	mov    0x4(%eax),%eax
c00351ff:	89 34 24             	mov    %esi,(%esp)
c0035202:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035206:	e8 45 0a 00 00       	call   c0035c50 <_Balloc>
c003520b:	8b 4d b4             	mov    -0x4c(%ebp),%ecx
c003520e:	89 c3                	mov    %eax,%ebx
c0035210:	8b 41 10             	mov    0x10(%ecx),%eax
c0035213:	8d 04 85 08 00 00 00 	lea    0x8(,%eax,4),%eax
c003521a:	89 44 24 08          	mov    %eax,0x8(%esp)
c003521e:	89 c8                	mov    %ecx,%eax
c0035220:	83 c0 0c             	add    $0xc,%eax
c0035223:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035227:	8d 43 0c             	lea    0xc(%ebx),%eax
c003522a:	89 04 24             	mov    %eax,(%esp)
c003522d:	e8 62 cc ff ff       	call   c0031e94 <memcpy>
c0035232:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
c0035239:	00 
c003523a:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c003523e:	89 34 24             	mov    %esi,(%esp)
c0035241:	e8 aa 10 00 00       	call   c00362f0 <__lshift>
c0035246:	89 45 ac             	mov    %eax,-0x54(%ebp)
c0035249:	e9 9d fc ff ff       	jmp    c0034eeb <_dtoa_r+0xdcb>
c003524e:	b8 36 00 00 00       	mov    $0x36,%eax
c0035253:	8b 55 b0             	mov    -0x50(%ebp),%edx
c0035256:	2b 45 e0             	sub    -0x20(%ebp),%eax
c0035259:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c003525c:	e9 ed f7 ff ff       	jmp    c0034a4e <_dtoa_r+0x92e>
c0035261:	83 7d a0 39          	cmpl   $0x39,-0x60(%ebp)
c0035265:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c0035268:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c003526b:	74 28                	je     c0035295 <_dtoa_r+0x1175>
c003526d:	0f b6 45 a0          	movzbl -0x60(%ebp),%eax
c0035271:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c0035274:	83 c0 01             	add    $0x1,%eax
c0035277:	89 cb                	mov    %ecx,%ebx
c0035279:	e9 1d ff ff ff       	jmp    c003519b <_dtoa_r+0x107b>
c003527e:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0035281:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c0035284:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c0035287:	89 45 c0             	mov    %eax,-0x40(%ebp)
c003528a:	8b 45 ac             	mov    -0x54(%ebp),%eax
c003528d:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0035290:	e9 cc f8 ff ff       	jmp    c0034b61 <_dtoa_r+0xa41>
c0035295:	8b 45 98             	mov    -0x68(%ebp),%eax
c0035298:	b9 39 00 00 00       	mov    $0x39,%ecx
c003529d:	8d 50 01             	lea    0x1(%eax),%edx
c00352a0:	c6 00 39             	movb   $0x39,(%eax)
c00352a3:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c00352a6:	89 45 c0             	mov    %eax,-0x40(%ebp)
c00352a9:	8b 45 ac             	mov    -0x54(%ebp),%eax
c00352ac:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c00352af:	e9 fa f8 ff ff       	jmp    c0034bae <_dtoa_r+0xa8e>
c00352b4:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c00352b7:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c00352ba:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c00352bd:	83 fb 39             	cmp    $0x39,%ebx
c00352c0:	74 d3                	je     c0035295 <_dtoa_r+0x1175>
c00352c2:	8b 4d c0             	mov    -0x40(%ebp),%ecx
c00352c5:	8b 45 94             	mov    -0x6c(%ebp),%eax
c00352c8:	83 c0 31             	add    $0x31,%eax
c00352cb:	85 c9                	test   %ecx,%ecx
c00352cd:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c00352d0:	0f 4e c3             	cmovle %ebx,%eax
c00352d3:	89 cb                	mov    %ecx,%ebx
c00352d5:	e9 c1 fe ff ff       	jmp    c003519b <_dtoa_r+0x107b>
c00352da:	0f 85 b2 fe ff ff    	jne    c0035192 <_dtoa_r+0x1072>
c00352e0:	f6 45 a0 01          	testb  $0x1,-0x60(%ebp)
c00352e4:	0f 84 a8 fe ff ff    	je     c0035192 <_dtoa_r+0x1072>
c00352ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00352f0:	e9 8a fe ff ff       	jmp    c003517f <_dtoa_r+0x105f>
c00352f5:	0f 85 c7 f3 ff ff    	jne    c00346c2 <_dtoa_r+0x5a2>
c00352fb:	dd d8                	fstp   %st(0)
c00352fd:	dd d8                	fstp   %st(0)
c00352ff:	90                   	nop
c0035300:	e9 65 fd ff ff       	jmp    c003506a <_dtoa_r+0xf4a>
c0035305:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0035308:	e9 dd f5 ff ff       	jmp    c00348ea <_dtoa_r+0x7ca>
c003530d:	8d 76 00             	lea    0x0(%esi),%esi
c0035310:	0f 84 7a f5 ff ff    	je     c0034890 <_dtoa_r+0x770>
c0035316:	b8 3c 00 00 00       	mov    $0x3c,%eax
c003531b:	29 d0                	sub    %edx,%eax
c003531d:	e9 ab f8 ff ff       	jmp    c0034bcd <_dtoa_r+0xaad>
c0035322:	b8 01 00 00 00       	mov    $0x1,%eax
c0035327:	e9 d9 ef ff ff       	jmp    c0034305 <_dtoa_r+0x1e5>
c003532c:	31 d2                	xor    %edx,%edx
c003532e:	e9 36 f1 ff ff       	jmp    c0034469 <_dtoa_r+0x349>
c0035333:	66 90                	xchg   %ax,%ax
c0035335:	66 90                	xchg   %ax,%ax
c0035337:	66 90                	xchg   %ax,%ax
c0035339:	66 90                	xchg   %ax,%ax
c003533b:	66 90                	xchg   %ax,%ax
c003533d:	66 90                	xchg   %ax,%ax
c003533f:	90                   	nop

c0035340 <_setlocale_r>:
c0035340:	55                   	push   %ebp
c0035341:	89 e5                	mov    %esp,%ebp
c0035343:	53                   	push   %ebx
c0035344:	83 ec 14             	sub    $0x14,%esp
c0035347:	8b 5d 10             	mov    0x10(%ebp),%ebx
c003534a:	85 db                	test   %ebx,%ebx
c003534c:	74 14                	je     c0035362 <_setlocale_r+0x22>
c003534e:	c7 44 24 04 b8 9a 03 	movl   $0xc0039ab8,0x4(%esp)
c0035355:	c0 
c0035356:	89 1c 24             	mov    %ebx,(%esp)
c0035359:	e8 82 17 00 00       	call   c0036ae0 <strcmp>
c003535e:	85 c0                	test   %eax,%eax
c0035360:	75 0e                	jne    c0035370 <_setlocale_r+0x30>
c0035362:	83 c4 14             	add    $0x14,%esp
c0035365:	b8 b4 98 03 c0       	mov    $0xc00398b4,%eax
c003536a:	5b                   	pop    %ebx
c003536b:	5d                   	pop    %ebp
c003536c:	c3                   	ret    
c003536d:	8d 76 00             	lea    0x0(%esi),%esi
c0035370:	c7 44 24 04 b4 98 03 	movl   $0xc00398b4,0x4(%esp)
c0035377:	c0 
c0035378:	89 1c 24             	mov    %ebx,(%esp)
c003537b:	e8 60 17 00 00       	call   c0036ae0 <strcmp>
c0035380:	85 c0                	test   %eax,%eax
c0035382:	74 de                	je     c0035362 <_setlocale_r+0x22>
c0035384:	89 1c 24             	mov    %ebx,(%esp)
c0035387:	c7 44 24 04 ee 98 03 	movl   $0xc00398ee,0x4(%esp)
c003538e:	c0 
c003538f:	e8 4c 17 00 00       	call   c0036ae0 <strcmp>
c0035394:	89 c2                	mov    %eax,%edx
c0035396:	31 c0                	xor    %eax,%eax
c0035398:	85 d2                	test   %edx,%edx
c003539a:	ba b4 98 03 c0       	mov    $0xc00398b4,%edx
c003539f:	0f 44 c2             	cmove  %edx,%eax
c00353a2:	83 c4 14             	add    $0x14,%esp
c00353a5:	5b                   	pop    %ebx
c00353a6:	5d                   	pop    %ebp
c00353a7:	c3                   	ret    
c00353a8:	90                   	nop
c00353a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c00353b0 <__locale_charset>:
c00353b0:	55                   	push   %ebp
c00353b1:	b8 c0 d4 03 c0       	mov    $0xc003d4c0,%eax
c00353b6:	89 e5                	mov    %esp,%ebp
c00353b8:	5d                   	pop    %ebp
c00353b9:	c3                   	ret    
c00353ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c00353c0 <__locale_mb_cur_max>:
c00353c0:	55                   	push   %ebp
c00353c1:	a1 18 d5 03 c0       	mov    0xc003d518,%eax
c00353c6:	89 e5                	mov    %esp,%ebp
c00353c8:	5d                   	pop    %ebp
c00353c9:	c3                   	ret    
c00353ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c00353d0 <__locale_msgcharset>:
c00353d0:	55                   	push   %ebp
c00353d1:	b8 a0 d4 03 c0       	mov    $0xc003d4a0,%eax
c00353d6:	89 e5                	mov    %esp,%ebp
c00353d8:	5d                   	pop    %ebp
c00353d9:	c3                   	ret    
c00353da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c00353e0 <__locale_cjk_lang>:
c00353e0:	55                   	push   %ebp
c00353e1:	31 c0                	xor    %eax,%eax
c00353e3:	89 e5                	mov    %esp,%ebp
c00353e5:	5d                   	pop    %ebp
c00353e6:	c3                   	ret    
c00353e7:	89 f6                	mov    %esi,%esi
c00353e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c00353f0 <_localeconv_r>:
c00353f0:	55                   	push   %ebp
c00353f1:	b8 e0 d4 03 c0       	mov    $0xc003d4e0,%eax
c00353f6:	89 e5                	mov    %esp,%ebp
c00353f8:	5d                   	pop    %ebp
c00353f9:	c3                   	ret    
c00353fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0035400 <setlocale>:
c0035400:	55                   	push   %ebp
c0035401:	89 e5                	mov    %esp,%ebp
c0035403:	83 ec 18             	sub    $0x18,%esp
c0035406:	e8 35 cc ff ff       	call   c0032040 <__getreent>
c003540b:	8b 55 0c             	mov    0xc(%ebp),%edx
c003540e:	89 54 24 08          	mov    %edx,0x8(%esp)
c0035412:	8b 55 08             	mov    0x8(%ebp),%edx
c0035415:	89 04 24             	mov    %eax,(%esp)
c0035418:	89 54 24 04          	mov    %edx,0x4(%esp)
c003541c:	e8 1f ff ff ff       	call   c0035340 <_setlocale_r>
c0035421:	c9                   	leave  
c0035422:	c3                   	ret    
c0035423:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035429:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0035430 <localeconv>:
c0035430:	55                   	push   %ebp
c0035431:	89 e5                	mov    %esp,%ebp
c0035433:	83 ec 08             	sub    $0x8,%esp
c0035436:	e8 05 cc ff ff       	call   c0032040 <__getreent>
c003543b:	b8 e0 d4 03 c0       	mov    $0xc003d4e0,%eax
c0035440:	c9                   	leave  
c0035441:	c3                   	ret    
c0035442:	66 90                	xchg   %ax,%ax
c0035444:	66 90                	xchg   %ax,%ax
c0035446:	66 90                	xchg   %ax,%ax
c0035448:	66 90                	xchg   %ax,%ax
c003544a:	66 90                	xchg   %ax,%ax
c003544c:	66 90                	xchg   %ax,%ax
c003544e:	66 90                	xchg   %ax,%ax

c0035450 <_malloc_r>:
c0035450:	55                   	push   %ebp
c0035451:	89 e5                	mov    %esp,%ebp
c0035453:	57                   	push   %edi
c0035454:	56                   	push   %esi
c0035455:	53                   	push   %ebx
c0035456:	83 ec 2c             	sub    $0x2c,%esp
c0035459:	8b 45 0c             	mov    0xc(%ebp),%eax
c003545c:	8d 50 0b             	lea    0xb(%eax),%edx
c003545f:	83 fa 16             	cmp    $0x16,%edx
c0035462:	76 6c                	jbe    c00354d0 <_malloc_r+0x80>
c0035464:	89 d7                	mov    %edx,%edi
c0035466:	83 e7 f8             	and    $0xfffffff8,%edi
c0035469:	89 fe                	mov    %edi,%esi
c003546b:	c1 ee 1f             	shr    $0x1f,%esi
c003546e:	39 c7                	cmp    %eax,%edi
c0035470:	8b 45 08             	mov    0x8(%ebp),%eax
c0035473:	89 f2                	mov    %esi,%edx
c0035475:	72 67                	jb     c00354de <_malloc_r+0x8e>
c0035477:	84 d2                	test   %dl,%dl
c0035479:	75 63                	jne    c00354de <_malloc_r+0x8e>
c003547b:	89 04 24             	mov    %eax,(%esp)
c003547e:	e8 ad 07 00 00       	call   c0035c30 <__malloc_lock>
c0035483:	81 ff f7 01 00 00    	cmp    $0x1f7,%edi
c0035489:	77 65                	ja     c00354f0 <_malloc_r+0xa0>
c003548b:	89 fa                	mov    %edi,%edx
c003548d:	c1 ea 03             	shr    $0x3,%edx
c0035490:	8d 04 d5 40 d5 03 c0 	lea    -0x3ffc2ac0(,%edx,8),%eax
c0035497:	8b 58 0c             	mov    0xc(%eax),%ebx
c003549a:	39 c3                	cmp    %eax,%ebx
c003549c:	0f 84 3e 05 00 00    	je     c00359e0 <_malloc_r+0x590>
c00354a2:	8b 43 04             	mov    0x4(%ebx),%eax
c00354a5:	83 e0 fc             	and    $0xfffffffc,%eax
c00354a8:	8b 53 0c             	mov    0xc(%ebx),%edx
c00354ab:	8b 4b 08             	mov    0x8(%ebx),%ecx
c00354ae:	89 51 0c             	mov    %edx,0xc(%ecx)
c00354b1:	89 4a 08             	mov    %ecx,0x8(%edx)
c00354b4:	83 4c 03 04 01       	orl    $0x1,0x4(%ebx,%eax,1)
c00354b9:	8b 45 08             	mov    0x8(%ebp),%eax
c00354bc:	89 04 24             	mov    %eax,(%esp)
c00354bf:	e8 7c 07 00 00       	call   c0035c40 <__malloc_unlock>
c00354c4:	8d 43 08             	lea    0x8(%ebx),%eax
c00354c7:	83 c4 2c             	add    $0x2c,%esp
c00354ca:	5b                   	pop    %ebx
c00354cb:	5e                   	pop    %esi
c00354cc:	5f                   	pop    %edi
c00354cd:	5d                   	pop    %ebp
c00354ce:	c3                   	ret    
c00354cf:	90                   	nop
c00354d0:	bf 10 00 00 00       	mov    $0x10,%edi
c00354d5:	31 d2                	xor    %edx,%edx
c00354d7:	39 c7                	cmp    %eax,%edi
c00354d9:	8b 45 08             	mov    0x8(%ebp),%eax
c00354dc:	73 99                	jae    c0035477 <_malloc_r+0x27>
c00354de:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c00354e4:	83 c4 2c             	add    $0x2c,%esp
c00354e7:	31 c0                	xor    %eax,%eax
c00354e9:	5b                   	pop    %ebx
c00354ea:	5e                   	pop    %esi
c00354eb:	5f                   	pop    %edi
c00354ec:	5d                   	pop    %ebp
c00354ed:	c3                   	ret    
c00354ee:	66 90                	xchg   %ax,%ax
c00354f0:	89 fe                	mov    %edi,%esi
c00354f2:	c1 ee 09             	shr    $0x9,%esi
c00354f5:	85 f6                	test   %esi,%esi
c00354f7:	0f 84 ab 01 00 00    	je     c00356a8 <_malloc_r+0x258>
c00354fd:	83 fe 04             	cmp    $0x4,%esi
c0035500:	0f 87 8a 03 00 00    	ja     c0035890 <_malloc_r+0x440>
c0035506:	89 fe                	mov    %edi,%esi
c0035508:	c1 ee 06             	shr    $0x6,%esi
c003550b:	83 c6 38             	add    $0x38,%esi
c003550e:	8d 04 36             	lea    (%esi,%esi,1),%eax
c0035511:	8d 0c 85 40 d5 03 c0 	lea    -0x3ffc2ac0(,%eax,4),%ecx
c0035518:	8b 59 0c             	mov    0xc(%ecx),%ebx
c003551b:	39 d9                	cmp    %ebx,%ecx
c003551d:	75 18                	jne    c0035537 <_malloc_r+0xe7>
c003551f:	eb 28                	jmp    c0035549 <_malloc_r+0xf9>
c0035521:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0035528:	85 d2                	test   %edx,%edx
c003552a:	0f 89 78 ff ff ff    	jns    c00354a8 <_malloc_r+0x58>
c0035530:	8b 5b 0c             	mov    0xc(%ebx),%ebx
c0035533:	39 d9                	cmp    %ebx,%ecx
c0035535:	74 12                	je     c0035549 <_malloc_r+0xf9>
c0035537:	8b 43 04             	mov    0x4(%ebx),%eax
c003553a:	83 e0 fc             	and    $0xfffffffc,%eax
c003553d:	89 c2                	mov    %eax,%edx
c003553f:	29 fa                	sub    %edi,%edx
c0035541:	83 fa 0f             	cmp    $0xf,%edx
c0035544:	7e e2                	jle    c0035528 <_malloc_r+0xd8>
c0035546:	83 ee 01             	sub    $0x1,%esi
c0035549:	8d 46 01             	lea    0x1(%esi),%eax
c003554c:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c003554f:	8b 1d 50 d5 03 c0    	mov    0xc003d550,%ebx
c0035555:	a1 44 d5 03 c0       	mov    0xc003d544,%eax
c003555a:	81 fb 48 d5 03 c0    	cmp    $0xc003d548,%ebx
c0035560:	74 6b                	je     c00355cd <_malloc_r+0x17d>
c0035562:	8b 73 04             	mov    0x4(%ebx),%esi
c0035565:	83 e6 fc             	and    $0xfffffffc,%esi
c0035568:	89 f0                	mov    %esi,%eax
c003556a:	29 f8                	sub    %edi,%eax
c003556c:	83 f8 0f             	cmp    $0xf,%eax
c003556f:	0f 8f a3 03 00 00    	jg     c0035918 <_malloc_r+0x4c8>
c0035575:	85 c0                	test   %eax,%eax
c0035577:	c7 05 54 d5 03 c0 48 	movl   $0xc003d548,0xc003d554
c003557e:	d5 03 c0 
c0035581:	c7 05 50 d5 03 c0 48 	movl   $0xc003d548,0xc003d550
c0035588:	d5 03 c0 
c003558b:	0f 89 27 01 00 00    	jns    c00356b8 <_malloc_r+0x268>
c0035591:	81 fe ff 01 00 00    	cmp    $0x1ff,%esi
c0035597:	0f 87 1b 03 00 00    	ja     c00358b8 <_malloc_r+0x468>
c003559d:	c1 ee 03             	shr    $0x3,%esi
c00355a0:	b8 01 00 00 00       	mov    $0x1,%eax
c00355a5:	89 f1                	mov    %esi,%ecx
c00355a7:	8d 14 f5 40 d5 03 c0 	lea    -0x3ffc2ac0(,%esi,8),%edx
c00355ae:	c1 f9 02             	sar    $0x2,%ecx
c00355b1:	d3 e0                	shl    %cl,%eax
c00355b3:	8b 4a 08             	mov    0x8(%edx),%ecx
c00355b6:	0b 05 44 d5 03 c0    	or     0xc003d544,%eax
c00355bc:	89 53 0c             	mov    %edx,0xc(%ebx)
c00355bf:	89 4b 08             	mov    %ecx,0x8(%ebx)
c00355c2:	a3 44 d5 03 c0       	mov    %eax,0xc003d544
c00355c7:	89 5a 08             	mov    %ebx,0x8(%edx)
c00355ca:	89 59 0c             	mov    %ebx,0xc(%ecx)
c00355cd:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c00355d0:	be 01 00 00 00       	mov    $0x1,%esi
c00355d5:	c1 f9 02             	sar    $0x2,%ecx
c00355d8:	d3 e6                	shl    %cl,%esi
c00355da:	39 c6                	cmp    %eax,%esi
c00355dc:	0f 87 f6 00 00 00    	ja     c00356d8 <_malloc_r+0x288>
c00355e2:	85 f0                	test   %esi,%eax
c00355e4:	0f 85 76 03 00 00    	jne    c0035960 <_malloc_r+0x510>
c00355ea:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c00355ed:	01 f6                	add    %esi,%esi
c00355ef:	83 e2 fc             	and    $0xfffffffc,%edx
c00355f2:	85 f0                	test   %esi,%eax
c00355f4:	8d 4a 04             	lea    0x4(%edx),%ecx
c00355f7:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c00355fa:	0f 85 60 03 00 00    	jne    c0035960 <_malloc_r+0x510>
c0035600:	89 ca                	mov    %ecx,%edx
c0035602:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035608:	01 f6                	add    %esi,%esi
c003560a:	83 c2 04             	add    $0x4,%edx
c003560d:	85 f0                	test   %esi,%eax
c003560f:	74 f7                	je     c0035608 <_malloc_r+0x1b8>
c0035611:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c0035614:	89 75 dc             	mov    %esi,-0x24(%ebp)
c0035617:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c003561a:	8d 34 c5 40 d5 03 c0 	lea    -0x3ffc2ac0(,%eax,8),%esi
c0035621:	89 f1                	mov    %esi,%ecx
c0035623:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0035626:	8b 59 0c             	mov    0xc(%ecx),%ebx
c0035629:	39 d9                	cmp    %ebx,%ecx
c003562b:	75 1e                	jne    c003564b <_malloc_r+0x1fb>
c003562d:	e9 36 03 00 00       	jmp    c0035968 <_malloc_r+0x518>
c0035632:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035638:	85 d2                	test   %edx,%edx
c003563a:	0f 89 c0 03 00 00    	jns    c0035a00 <_malloc_r+0x5b0>
c0035640:	8b 5b 0c             	mov    0xc(%ebx),%ebx
c0035643:	39 d9                	cmp    %ebx,%ecx
c0035645:	0f 84 1d 03 00 00    	je     c0035968 <_malloc_r+0x518>
c003564b:	8b 43 04             	mov    0x4(%ebx),%eax
c003564e:	83 e0 fc             	and    $0xfffffffc,%eax
c0035651:	89 c2                	mov    %eax,%edx
c0035653:	29 fa                	sub    %edi,%edx
c0035655:	83 fa 0f             	cmp    $0xf,%edx
c0035658:	7e de                	jle    c0035638 <_malloc_r+0x1e8>
c003565a:	8b 4b 0c             	mov    0xc(%ebx),%ecx
c003565d:	8d 04 3b             	lea    (%ebx,%edi,1),%eax
c0035660:	83 cf 01             	or     $0x1,%edi
c0035663:	8b 73 08             	mov    0x8(%ebx),%esi
c0035666:	89 7b 04             	mov    %edi,0x4(%ebx)
c0035669:	89 4e 0c             	mov    %ecx,0xc(%esi)
c003566c:	89 71 08             	mov    %esi,0x8(%ecx)
c003566f:	89 d1                	mov    %edx,%ecx
c0035671:	83 c9 01             	or     $0x1,%ecx
c0035674:	a3 54 d5 03 c0       	mov    %eax,0xc003d554
c0035679:	a3 50 d5 03 c0       	mov    %eax,0xc003d550
c003567e:	c7 40 0c 48 d5 03 c0 	movl   $0xc003d548,0xc(%eax)
c0035685:	c7 40 08 48 d5 03 c0 	movl   $0xc003d548,0x8(%eax)
c003568c:	89 48 04             	mov    %ecx,0x4(%eax)
c003568f:	89 14 10             	mov    %edx,(%eax,%edx,1)
c0035692:	8b 45 08             	mov    0x8(%ebp),%eax
c0035695:	89 04 24             	mov    %eax,(%esp)
c0035698:	e8 a3 05 00 00       	call   c0035c40 <__malloc_unlock>
c003569d:	8d 43 08             	lea    0x8(%ebx),%eax
c00356a0:	e9 22 fe ff ff       	jmp    c00354c7 <_malloc_r+0x77>
c00356a5:	8d 76 00             	lea    0x0(%esi),%esi
c00356a8:	b8 7e 00 00 00       	mov    $0x7e,%eax
c00356ad:	be 3f 00 00 00       	mov    $0x3f,%esi
c00356b2:	e9 5a fe ff ff       	jmp    c0035511 <_malloc_r+0xc1>
c00356b7:	90                   	nop
c00356b8:	8b 45 08             	mov    0x8(%ebp),%eax
c00356bb:	83 4c 33 04 01       	orl    $0x1,0x4(%ebx,%esi,1)
c00356c0:	89 04 24             	mov    %eax,(%esp)
c00356c3:	e8 78 05 00 00       	call   c0035c40 <__malloc_unlock>
c00356c8:	83 c4 2c             	add    $0x2c,%esp
c00356cb:	8d 43 08             	lea    0x8(%ebx),%eax
c00356ce:	5b                   	pop    %ebx
c00356cf:	5e                   	pop    %esi
c00356d0:	5f                   	pop    %edi
c00356d1:	5d                   	pop    %ebp
c00356d2:	c3                   	ret    
c00356d3:	90                   	nop
c00356d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00356d8:	8b 1d 48 d5 03 c0    	mov    0xc003d548,%ebx
c00356de:	8b 73 04             	mov    0x4(%ebx),%esi
c00356e1:	83 e6 fc             	and    $0xfffffffc,%esi
c00356e4:	39 f7                	cmp    %esi,%edi
c00356e6:	77 0d                	ja     c00356f5 <_malloc_r+0x2a5>
c00356e8:	89 f0                	mov    %esi,%eax
c00356ea:	29 f8                	sub    %edi,%eax
c00356ec:	83 f8 0f             	cmp    $0xf,%eax
c00356ef:	0f 8f 6b 01 00 00    	jg     c0035860 <_malloc_r+0x410>
c00356f5:	8b 0d 50 00 07 c0    	mov    0xc0070050,%ecx
c00356fb:	8d 04 33             	lea    (%ebx,%esi,1),%eax
c00356fe:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0035701:	01 f9                	add    %edi,%ecx
c0035703:	8d 81 0f 10 00 00    	lea    0x100f(%ecx),%eax
c0035709:	83 c1 10             	add    $0x10,%ecx
c003570c:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0035711:	83 3d 20 d5 03 c0 ff 	cmpl   $0xffffffff,0xc003d520
c0035718:	0f 44 c1             	cmove  %ecx,%eax
c003571b:	89 45 e0             	mov    %eax,-0x20(%ebp)
c003571e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035722:	8b 45 08             	mov    0x8(%ebp),%eax
c0035725:	89 04 24             	mov    %eax,(%esp)
c0035728:	e8 03 13 00 00       	call   c0036a30 <_sbrk_r>
c003572d:	83 f8 ff             	cmp    $0xffffffff,%eax
c0035730:	89 c1                	mov    %eax,%ecx
c0035732:	0f 84 17 03 00 00    	je     c0035a4f <_malloc_r+0x5ff>
c0035738:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
c003573b:	0f 87 02 03 00 00    	ja     c0035a43 <_malloc_r+0x5f3>
c0035741:	8b 55 e0             	mov    -0x20(%ebp),%edx
c0035744:	03 15 20 00 07 c0    	add    0xc0070020,%edx
c003574a:	39 4d e4             	cmp    %ecx,-0x1c(%ebp)
c003574d:	89 15 20 00 07 c0    	mov    %edx,0xc0070020
c0035753:	0f 84 a9 03 00 00    	je     c0035b02 <_malloc_r+0x6b2>
c0035759:	83 3d 20 d5 03 c0 ff 	cmpl   $0xffffffff,0xc003d520
c0035760:	0f 84 ca 03 00 00    	je     c0035b30 <_malloc_r+0x6e0>
c0035766:	89 c8                	mov    %ecx,%eax
c0035768:	2b 45 e4             	sub    -0x1c(%ebp),%eax
c003576b:	01 d0                	add    %edx,%eax
c003576d:	a3 20 00 07 c0       	mov    %eax,0xc0070020
c0035772:	89 c8                	mov    %ecx,%eax
c0035774:	ba 00 10 00 00       	mov    $0x1000,%edx
c0035779:	83 e0 07             	and    $0x7,%eax
c003577c:	74 0c                	je     c003578a <_malloc_r+0x33a>
c003577e:	29 c1                	sub    %eax,%ecx
c0035780:	ba 08 10 00 00       	mov    $0x1008,%edx
c0035785:	8d 49 08             	lea    0x8(%ecx),%ecx
c0035788:	29 c2                	sub    %eax,%edx
c003578a:	8b 45 e0             	mov    -0x20(%ebp),%eax
c003578d:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0035790:	01 c8                	add    %ecx,%eax
c0035792:	25 ff 0f 00 00       	and    $0xfff,%eax
c0035797:	29 c2                	sub    %eax,%edx
c0035799:	8b 45 08             	mov    0x8(%ebp),%eax
c003579c:	89 54 24 04          	mov    %edx,0x4(%esp)
c00357a0:	89 55 e0             	mov    %edx,-0x20(%ebp)
c00357a3:	89 04 24             	mov    %eax,(%esp)
c00357a6:	e8 85 12 00 00       	call   c0036a30 <_sbrk_r>
c00357ab:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c00357ae:	83 f8 ff             	cmp    $0xffffffff,%eax
c00357b1:	0f 84 6d 03 00 00    	je     c0035b24 <_malloc_r+0x6d4>
c00357b7:	8b 55 e0             	mov    -0x20(%ebp),%edx
c00357ba:	29 c8                	sub    %ecx,%eax
c00357bc:	01 d0                	add    %edx,%eax
c00357be:	83 c8 01             	or     $0x1,%eax
c00357c1:	03 15 20 00 07 c0    	add    0xc0070020,%edx
c00357c7:	81 fb 40 d5 03 c0    	cmp    $0xc003d540,%ebx
c00357cd:	89 0d 48 d5 03 c0    	mov    %ecx,0xc003d548
c00357d3:	89 41 04             	mov    %eax,0x4(%ecx)
c00357d6:	89 15 20 00 07 c0    	mov    %edx,0xc0070020
c00357dc:	0f 84 f2 02 00 00    	je     c0035ad4 <_malloc_r+0x684>
c00357e2:	83 fe 0f             	cmp    $0xf,%esi
c00357e5:	0f 86 8d 02 00 00    	jbe    c0035a78 <_malloc_r+0x628>
c00357eb:	8b 43 04             	mov    0x4(%ebx),%eax
c00357ee:	83 ee 0c             	sub    $0xc,%esi
c00357f1:	83 e6 f8             	and    $0xfffffff8,%esi
c00357f4:	83 e0 01             	and    $0x1,%eax
c00357f7:	09 f0                	or     %esi,%eax
c00357f9:	83 fe 0f             	cmp    $0xf,%esi
c00357fc:	89 43 04             	mov    %eax,0x4(%ebx)
c00357ff:	a1 48 d5 03 c0       	mov    0xc003d548,%eax
c0035804:	c7 44 33 04 05 00 00 	movl   $0x5,0x4(%ebx,%esi,1)
c003580b:	00 
c003580c:	c7 44 33 08 05 00 00 	movl   $0x5,0x8(%ebx,%esi,1)
c0035813:	00 
c0035814:	0f 87 a2 02 00 00    	ja     c0035abc <_malloc_r+0x66c>
c003581a:	3b 15 4c 00 07 c0    	cmp    0xc007004c,%edx
c0035820:	76 06                	jbe    c0035828 <_malloc_r+0x3d8>
c0035822:	89 15 4c 00 07 c0    	mov    %edx,0xc007004c
c0035828:	3b 15 48 00 07 c0    	cmp    0xc0070048,%edx
c003582e:	76 06                	jbe    c0035836 <_malloc_r+0x3e6>
c0035830:	89 15 48 00 07 c0    	mov    %edx,0xc0070048
c0035836:	8b 50 04             	mov    0x4(%eax),%edx
c0035839:	89 c3                	mov    %eax,%ebx
c003583b:	83 e2 fc             	and    $0xfffffffc,%edx
c003583e:	89 d0                	mov    %edx,%eax
c0035840:	29 f8                	sub    %edi,%eax
c0035842:	39 d7                	cmp    %edx,%edi
c0035844:	77 05                	ja     c003584b <_malloc_r+0x3fb>
c0035846:	83 f8 0f             	cmp    $0xf,%eax
c0035849:	7f 15                	jg     c0035860 <_malloc_r+0x410>
c003584b:	8b 45 08             	mov    0x8(%ebp),%eax
c003584e:	89 04 24             	mov    %eax,(%esp)
c0035851:	e8 ea 03 00 00       	call   c0035c40 <__malloc_unlock>
c0035856:	31 c0                	xor    %eax,%eax
c0035858:	e9 6a fc ff ff       	jmp    c00354c7 <_malloc_r+0x77>
c003585d:	8d 76 00             	lea    0x0(%esi),%esi
c0035860:	89 fa                	mov    %edi,%edx
c0035862:	83 c8 01             	or     $0x1,%eax
c0035865:	83 ca 01             	or     $0x1,%edx
c0035868:	89 53 04             	mov    %edx,0x4(%ebx)
c003586b:	8d 14 3b             	lea    (%ebx,%edi,1),%edx
c003586e:	89 15 48 d5 03 c0    	mov    %edx,0xc003d548
c0035874:	89 42 04             	mov    %eax,0x4(%edx)
c0035877:	8b 45 08             	mov    0x8(%ebp),%eax
c003587a:	89 04 24             	mov    %eax,(%esp)
c003587d:	e8 be 03 00 00       	call   c0035c40 <__malloc_unlock>
c0035882:	83 c4 2c             	add    $0x2c,%esp
c0035885:	8d 43 08             	lea    0x8(%ebx),%eax
c0035888:	5b                   	pop    %ebx
c0035889:	5e                   	pop    %esi
c003588a:	5f                   	pop    %edi
c003588b:	5d                   	pop    %ebp
c003588c:	c3                   	ret    
c003588d:	8d 76 00             	lea    0x0(%esi),%esi
c0035890:	83 fe 14             	cmp    $0x14,%esi
c0035893:	0f 86 8f 01 00 00    	jbe    c0035a28 <_malloc_r+0x5d8>
c0035899:	83 fe 54             	cmp    $0x54,%esi
c003589c:	0f 87 be 01 00 00    	ja     c0035a60 <_malloc_r+0x610>
c00358a2:	89 fe                	mov    %edi,%esi
c00358a4:	c1 ee 0c             	shr    $0xc,%esi
c00358a7:	83 c6 6e             	add    $0x6e,%esi
c00358aa:	8d 04 36             	lea    (%esi,%esi,1),%eax
c00358ad:	e9 5f fc ff ff       	jmp    c0035511 <_malloc_r+0xc1>
c00358b2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00358b8:	89 f1                	mov    %esi,%ecx
c00358ba:	c1 e9 09             	shr    $0x9,%ecx
c00358bd:	83 f9 04             	cmp    $0x4,%ecx
c00358c0:	0f 86 6d 01 00 00    	jbe    c0035a33 <_malloc_r+0x5e3>
c00358c6:	83 f9 14             	cmp    $0x14,%ecx
c00358c9:	0f 87 0f 02 00 00    	ja     c0035ade <_malloc_r+0x68e>
c00358cf:	83 c1 5b             	add    $0x5b,%ecx
c00358d2:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c00358d5:	8d 04 85 40 d5 03 c0 	lea    -0x3ffc2ac0(,%eax,4),%eax
c00358dc:	8b 50 08             	mov    0x8(%eax),%edx
c00358df:	39 c2                	cmp    %eax,%edx
c00358e1:	0f 84 a1 01 00 00    	je     c0035a88 <_malloc_r+0x638>
c00358e7:	90                   	nop
c00358e8:	8b 4a 04             	mov    0x4(%edx),%ecx
c00358eb:	83 e1 fc             	and    $0xfffffffc,%ecx
c00358ee:	39 ce                	cmp    %ecx,%esi
c00358f0:	73 07                	jae    c00358f9 <_malloc_r+0x4a9>
c00358f2:	8b 52 08             	mov    0x8(%edx),%edx
c00358f5:	39 d0                	cmp    %edx,%eax
c00358f7:	75 ef                	jne    c00358e8 <_malloc_r+0x498>
c00358f9:	8b 4a 0c             	mov    0xc(%edx),%ecx
c00358fc:	a1 44 d5 03 c0       	mov    0xc003d544,%eax
c0035901:	89 4b 0c             	mov    %ecx,0xc(%ebx)
c0035904:	89 53 08             	mov    %edx,0x8(%ebx)
c0035907:	89 59 08             	mov    %ebx,0x8(%ecx)
c003590a:	89 5a 0c             	mov    %ebx,0xc(%edx)
c003590d:	e9 bb fc ff ff       	jmp    c00355cd <_malloc_r+0x17d>
c0035912:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035918:	89 c1                	mov    %eax,%ecx
c003591a:	8d 14 3b             	lea    (%ebx,%edi,1),%edx
c003591d:	83 c9 01             	or     $0x1,%ecx
c0035920:	83 cf 01             	or     $0x1,%edi
c0035923:	89 7b 04             	mov    %edi,0x4(%ebx)
c0035926:	89 15 54 d5 03 c0    	mov    %edx,0xc003d554
c003592c:	89 15 50 d5 03 c0    	mov    %edx,0xc003d550
c0035932:	c7 42 0c 48 d5 03 c0 	movl   $0xc003d548,0xc(%edx)
c0035939:	c7 42 08 48 d5 03 c0 	movl   $0xc003d548,0x8(%edx)
c0035940:	89 4a 04             	mov    %ecx,0x4(%edx)
c0035943:	89 04 02             	mov    %eax,(%edx,%eax,1)
c0035946:	8b 45 08             	mov    0x8(%ebp),%eax
c0035949:	89 04 24             	mov    %eax,(%esp)
c003594c:	e8 ef 02 00 00       	call   c0035c40 <__malloc_unlock>
c0035951:	8d 43 08             	lea    0x8(%ebx),%eax
c0035954:	e9 6e fb ff ff       	jmp    c00354c7 <_malloc_r+0x77>
c0035959:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0035960:	89 75 dc             	mov    %esi,-0x24(%ebp)
c0035963:	e9 af fc ff ff       	jmp    c0035617 <_malloc_r+0x1c7>
c0035968:	83 45 e0 01          	addl   $0x1,-0x20(%ebp)
c003596c:	83 c1 08             	add    $0x8,%ecx
c003596f:	f6 45 e0 03          	testb  $0x3,-0x20(%ebp)
c0035973:	0f 85 ad fc ff ff    	jne    c0035626 <_malloc_r+0x1d6>
c0035979:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c003597c:	eb 12                	jmp    c0035990 <_malloc_r+0x540>
c003597e:	66 90                	xchg   %ax,%ax
c0035980:	8d 56 f8             	lea    -0x8(%esi),%edx
c0035983:	8b 36                	mov    (%esi),%esi
c0035985:	83 e8 01             	sub    $0x1,%eax
c0035988:	39 d6                	cmp    %edx,%esi
c003598a:	0f 85 ea 01 00 00    	jne    c0035b7a <_malloc_r+0x72a>
c0035990:	a8 03                	test   $0x3,%al
c0035992:	75 ec                	jne    c0035980 <_malloc_r+0x530>
c0035994:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0035997:	f7 d0                	not    %eax
c0035999:	23 05 44 d5 03 c0    	and    0xc003d544,%eax
c003599f:	a3 44 d5 03 c0       	mov    %eax,0xc003d544
c00359a4:	d1 65 dc             	shll   -0x24(%ebp)
c00359a7:	8b 55 dc             	mov    -0x24(%ebp),%edx
c00359aa:	39 c2                	cmp    %eax,%edx
c00359ac:	0f 87 26 fd ff ff    	ja     c00356d8 <_malloc_r+0x288>
c00359b2:	85 d2                	test   %edx,%edx
c00359b4:	0f 84 1e fd ff ff    	je     c00356d8 <_malloc_r+0x288>
c00359ba:	85 c2                	test   %eax,%edx
c00359bc:	0f 85 c2 01 00 00    	jne    c0035b84 <_malloc_r+0x734>
c00359c2:	8b 75 e0             	mov    -0x20(%ebp),%esi
c00359c5:	89 f1                	mov    %esi,%ecx
c00359c7:	01 d2                	add    %edx,%edx
c00359c9:	83 c1 04             	add    $0x4,%ecx
c00359cc:	85 d0                	test   %edx,%eax
c00359ce:	74 f7                	je     c00359c7 <_malloc_r+0x577>
c00359d0:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c00359d3:	89 55 dc             	mov    %edx,-0x24(%ebp)
c00359d6:	e9 3c fc ff ff       	jmp    c0035617 <_malloc_r+0x1c7>
c00359db:	90                   	nop
c00359dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00359e0:	8d 43 08             	lea    0x8(%ebx),%eax
c00359e3:	8b 5b 14             	mov    0x14(%ebx),%ebx
c00359e6:	39 d8                	cmp    %ebx,%eax
c00359e8:	0f 85 b4 fa ff ff    	jne    c00354a2 <_malloc_r+0x52>
c00359ee:	8d 42 02             	lea    0x2(%edx),%eax
c00359f1:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c00359f4:	e9 56 fb ff ff       	jmp    c003554f <_malloc_r+0xff>
c00359f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0035a00:	83 4c 03 04 01       	orl    $0x1,0x4(%ebx,%eax,1)
c0035a05:	8b 53 08             	mov    0x8(%ebx),%edx
c0035a08:	8b 43 0c             	mov    0xc(%ebx),%eax
c0035a0b:	89 42 0c             	mov    %eax,0xc(%edx)
c0035a0e:	89 50 08             	mov    %edx,0x8(%eax)
c0035a11:	8b 45 08             	mov    0x8(%ebp),%eax
c0035a14:	89 04 24             	mov    %eax,(%esp)
c0035a17:	e8 24 02 00 00       	call   c0035c40 <__malloc_unlock>
c0035a1c:	8d 43 08             	lea    0x8(%ebx),%eax
c0035a1f:	e9 a3 fa ff ff       	jmp    c00354c7 <_malloc_r+0x77>
c0035a24:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035a28:	83 c6 5b             	add    $0x5b,%esi
c0035a2b:	8d 04 36             	lea    (%esi,%esi,1),%eax
c0035a2e:	e9 de fa ff ff       	jmp    c0035511 <_malloc_r+0xc1>
c0035a33:	89 f1                	mov    %esi,%ecx
c0035a35:	c1 e9 06             	shr    $0x6,%ecx
c0035a38:	83 c1 38             	add    $0x38,%ecx
c0035a3b:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c0035a3e:	e9 92 fe ff ff       	jmp    c00358d5 <_malloc_r+0x485>
c0035a43:	81 fb 40 d5 03 c0    	cmp    $0xc003d540,%ebx
c0035a49:	0f 84 f2 fc ff ff    	je     c0035741 <_malloc_r+0x2f1>
c0035a4f:	8b 1d 48 d5 03 c0    	mov    0xc003d548,%ebx
c0035a55:	8b 53 04             	mov    0x4(%ebx),%edx
c0035a58:	83 e2 fc             	and    $0xfffffffc,%edx
c0035a5b:	e9 de fd ff ff       	jmp    c003583e <_malloc_r+0x3ee>
c0035a60:	81 fe 54 01 00 00    	cmp    $0x154,%esi
c0035a66:	77 3c                	ja     c0035aa4 <_malloc_r+0x654>
c0035a68:	89 fe                	mov    %edi,%esi
c0035a6a:	c1 ee 0f             	shr    $0xf,%esi
c0035a6d:	83 c6 77             	add    $0x77,%esi
c0035a70:	8d 04 36             	lea    (%esi,%esi,1),%eax
c0035a73:	e9 99 fa ff ff       	jmp    c0035511 <_malloc_r+0xc1>
c0035a78:	c7 41 04 01 00 00 00 	movl   $0x1,0x4(%ecx)
c0035a7f:	89 cb                	mov    %ecx,%ebx
c0035a81:	31 d2                	xor    %edx,%edx
c0035a83:	e9 b6 fd ff ff       	jmp    c003583e <_malloc_r+0x3ee>
c0035a88:	c1 f9 02             	sar    $0x2,%ecx
c0035a8b:	b8 01 00 00 00       	mov    $0x1,%eax
c0035a90:	d3 e0                	shl    %cl,%eax
c0035a92:	89 d1                	mov    %edx,%ecx
c0035a94:	0b 05 44 d5 03 c0    	or     0xc003d544,%eax
c0035a9a:	a3 44 d5 03 c0       	mov    %eax,0xc003d544
c0035a9f:	e9 5d fe ff ff       	jmp    c0035901 <_malloc_r+0x4b1>
c0035aa4:	81 fe 54 05 00 00    	cmp    $0x554,%esi
c0035aaa:	77 47                	ja     c0035af3 <_malloc_r+0x6a3>
c0035aac:	89 fe                	mov    %edi,%esi
c0035aae:	c1 ee 12             	shr    $0x12,%esi
c0035ab1:	83 c6 7c             	add    $0x7c,%esi
c0035ab4:	8d 04 36             	lea    (%esi,%esi,1),%eax
c0035ab7:	e9 55 fa ff ff       	jmp    c0035511 <_malloc_r+0xc1>
c0035abc:	8b 45 08             	mov    0x8(%ebp),%eax
c0035abf:	83 c3 08             	add    $0x8,%ebx
c0035ac2:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c0035ac6:	89 04 24             	mov    %eax,(%esp)
c0035ac9:	e8 c2 22 00 00       	call   c0037d90 <_free_r>
c0035ace:	8b 15 20 00 07 c0    	mov    0xc0070020,%edx
c0035ad4:	a1 48 d5 03 c0       	mov    0xc003d548,%eax
c0035ad9:	e9 3c fd ff ff       	jmp    c003581a <_malloc_r+0x3ca>
c0035ade:	83 f9 54             	cmp    $0x54,%ecx
c0035ae1:	77 58                	ja     c0035b3b <_malloc_r+0x6eb>
c0035ae3:	89 f1                	mov    %esi,%ecx
c0035ae5:	c1 e9 0c             	shr    $0xc,%ecx
c0035ae8:	83 c1 6e             	add    $0x6e,%ecx
c0035aeb:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c0035aee:	e9 e2 fd ff ff       	jmp    c00358d5 <_malloc_r+0x485>
c0035af3:	b8 fc 00 00 00       	mov    $0xfc,%eax
c0035af8:	be 7e 00 00 00       	mov    $0x7e,%esi
c0035afd:	e9 0f fa ff ff       	jmp    c0035511 <_malloc_r+0xc1>
c0035b02:	f7 45 e4 ff 0f 00 00 	testl  $0xfff,-0x1c(%ebp)
c0035b09:	0f 85 4a fc ff ff    	jne    c0035759 <_malloc_r+0x309>
c0035b0f:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0035b12:	a1 48 d5 03 c0       	mov    0xc003d548,%eax
c0035b17:	01 f1                	add    %esi,%ecx
c0035b19:	83 c9 01             	or     $0x1,%ecx
c0035b1c:	89 48 04             	mov    %ecx,0x4(%eax)
c0035b1f:	e9 f6 fc ff ff       	jmp    c003581a <_malloc_r+0x3ca>
c0035b24:	b8 01 00 00 00       	mov    $0x1,%eax
c0035b29:	31 d2                	xor    %edx,%edx
c0035b2b:	e9 91 fc ff ff       	jmp    c00357c1 <_malloc_r+0x371>
c0035b30:	89 0d 20 d5 03 c0    	mov    %ecx,0xc003d520
c0035b36:	e9 37 fc ff ff       	jmp    c0035772 <_malloc_r+0x322>
c0035b3b:	81 f9 54 01 00 00    	cmp    $0x154,%ecx
c0035b41:	77 10                	ja     c0035b53 <_malloc_r+0x703>
c0035b43:	89 f1                	mov    %esi,%ecx
c0035b45:	c1 e9 0f             	shr    $0xf,%ecx
c0035b48:	83 c1 77             	add    $0x77,%ecx
c0035b4b:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c0035b4e:	e9 82 fd ff ff       	jmp    c00358d5 <_malloc_r+0x485>
c0035b53:	81 f9 54 05 00 00    	cmp    $0x554,%ecx
c0035b59:	77 10                	ja     c0035b6b <_malloc_r+0x71b>
c0035b5b:	89 f1                	mov    %esi,%ecx
c0035b5d:	c1 e9 12             	shr    $0x12,%ecx
c0035b60:	83 c1 7c             	add    $0x7c,%ecx
c0035b63:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c0035b66:	e9 6a fd ff ff       	jmp    c00358d5 <_malloc_r+0x485>
c0035b6b:	b8 fc 00 00 00       	mov    $0xfc,%eax
c0035b70:	b9 7e 00 00 00       	mov    $0x7e,%ecx
c0035b75:	e9 5b fd ff ff       	jmp    c00358d5 <_malloc_r+0x485>
c0035b7a:	a1 44 d5 03 c0       	mov    0xc003d544,%eax
c0035b7f:	e9 20 fe ff ff       	jmp    c00359a4 <_malloc_r+0x554>
c0035b84:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0035b87:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0035b8a:	e9 88 fa ff ff       	jmp    c0035617 <_malloc_r+0x1c7>
c0035b8f:	90                   	nop

c0035b90 <memchr>:
c0035b90:	55                   	push   %ebp
c0035b91:	89 e5                	mov    %esp,%ebp
c0035b93:	57                   	push   %edi
c0035b94:	0f b6 45 0c          	movzbl 0xc(%ebp),%eax
c0035b98:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0035b9b:	8b 7d 08             	mov    0x8(%ebp),%edi
c0035b9e:	31 d2                	xor    %edx,%edx
c0035ba0:	85 c9                	test   %ecx,%ecx
c0035ba2:	74 79                	je     c0035c1d <L20>
c0035ba4:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0035baa:	74 28                	je     c0035bd4 <L5>
c0035bac:	3a 07                	cmp    (%edi),%al
c0035bae:	74 6a                	je     c0035c1a <L15>
c0035bb0:	47                   	inc    %edi
c0035bb1:	49                   	dec    %ecx
c0035bb2:	74 69                	je     c0035c1d <L20>
c0035bb4:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0035bba:	74 18                	je     c0035bd4 <L5>
c0035bbc:	3a 07                	cmp    (%edi),%al
c0035bbe:	74 5a                	je     c0035c1a <L15>
c0035bc0:	47                   	inc    %edi
c0035bc1:	49                   	dec    %ecx
c0035bc2:	74 59                	je     c0035c1d <L20>
c0035bc4:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0035bca:	74 08                	je     c0035bd4 <L5>
c0035bcc:	3a 07                	cmp    (%edi),%al
c0035bce:	74 4a                	je     c0035c1a <L15>
c0035bd0:	47                   	inc    %edi
c0035bd1:	49                   	dec    %ecx
c0035bd2:	74 49                	je     c0035c1d <L20>

c0035bd4 <L5>:
c0035bd4:	88 c4                	mov    %al,%ah
c0035bd6:	89 c2                	mov    %eax,%edx
c0035bd8:	c1 e2 10             	shl    $0x10,%edx
c0035bdb:	09 d0                	or     %edx,%eax
c0035bdd:	53                   	push   %ebx
c0035bde:	66 90                	xchg   %ax,%ax

c0035be0 <L8>:
c0035be0:	83 e9 04             	sub    $0x4,%ecx
c0035be3:	72 1c                	jb     c0035c01 <L9>
c0035be5:	8b 17                	mov    (%edi),%edx
c0035be7:	83 c7 04             	add    $0x4,%edi
c0035bea:	31 c2                	xor    %eax,%edx
c0035bec:	8d 9a ff fe fe fe    	lea    -0x1010101(%edx),%ebx
c0035bf2:	f7 d2                	not    %edx
c0035bf4:	21 d3                	and    %edx,%ebx
c0035bf6:	f7 c3 80 80 80 80    	test   $0x80808080,%ebx
c0035bfc:	74 e2                	je     c0035be0 <L8>
c0035bfe:	83 ef 04             	sub    $0x4,%edi

c0035c01 <L9>:
c0035c01:	5b                   	pop    %ebx
c0035c02:	31 d2                	xor    %edx,%edx
c0035c04:	83 c1 04             	add    $0x4,%ecx
c0035c07:	74 14                	je     c0035c1d <L20>
c0035c09:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0035c10 <L10>:
c0035c10:	3a 07                	cmp    (%edi),%al
c0035c12:	74 06                	je     c0035c1a <L15>
c0035c14:	47                   	inc    %edi
c0035c15:	49                   	dec    %ecx
c0035c16:	75 f8                	jne    c0035c10 <L10>
c0035c18:	31 ff                	xor    %edi,%edi

c0035c1a <L15>:
c0035c1a:	4a                   	dec    %edx
c0035c1b:	21 fa                	and    %edi,%edx

c0035c1d <L20>:
c0035c1d:	89 d0                	mov    %edx,%eax
c0035c1f:	8d 65 fc             	lea    -0x4(%ebp),%esp
c0035c22:	5f                   	pop    %edi
c0035c23:	c9                   	leave  
c0035c24:	c3                   	ret    
c0035c25:	66 90                	xchg   %ax,%ax
c0035c27:	66 90                	xchg   %ax,%ax
c0035c29:	66 90                	xchg   %ax,%ax
c0035c2b:	66 90                	xchg   %ax,%ax
c0035c2d:	66 90                	xchg   %ax,%ax
c0035c2f:	90                   	nop

c0035c30 <__malloc_lock>:
c0035c30:	55                   	push   %ebp
c0035c31:	89 e5                	mov    %esp,%ebp
c0035c33:	5d                   	pop    %ebp
c0035c34:	c3                   	ret    
c0035c35:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035c39:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0035c40 <__malloc_unlock>:
c0035c40:	55                   	push   %ebp
c0035c41:	89 e5                	mov    %esp,%ebp
c0035c43:	5d                   	pop    %ebp
c0035c44:	c3                   	ret    
c0035c45:	66 90                	xchg   %ax,%ax
c0035c47:	66 90                	xchg   %ax,%ax
c0035c49:	66 90                	xchg   %ax,%ax
c0035c4b:	66 90                	xchg   %ax,%ax
c0035c4d:	66 90                	xchg   %ax,%ax
c0035c4f:	90                   	nop

c0035c50 <_Balloc>:
c0035c50:	55                   	push   %ebp
c0035c51:	89 e5                	mov    %esp,%ebp
c0035c53:	57                   	push   %edi
c0035c54:	56                   	push   %esi
c0035c55:	53                   	push   %ebx
c0035c56:	83 ec 1c             	sub    $0x1c,%esp
c0035c59:	8b 75 08             	mov    0x8(%ebp),%esi
c0035c5c:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c0035c5f:	8b 46 4c             	mov    0x4c(%esi),%eax
c0035c62:	85 c0                	test   %eax,%eax
c0035c64:	74 2a                	je     c0035c90 <_Balloc+0x40>
c0035c66:	8d 14 98             	lea    (%eax,%ebx,4),%edx
c0035c69:	8b 02                	mov    (%edx),%eax
c0035c6b:	85 c0                	test   %eax,%eax
c0035c6d:	74 49                	je     c0035cb8 <_Balloc+0x68>
c0035c6f:	8b 08                	mov    (%eax),%ecx
c0035c71:	89 0a                	mov    %ecx,(%edx)
c0035c73:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%eax)
c0035c7a:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c0035c81:	83 c4 1c             	add    $0x1c,%esp
c0035c84:	5b                   	pop    %ebx
c0035c85:	5e                   	pop    %esi
c0035c86:	5f                   	pop    %edi
c0035c87:	5d                   	pop    %ebp
c0035c88:	c3                   	ret    
c0035c89:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0035c90:	c7 44 24 08 21 00 00 	movl   $0x21,0x8(%esp)
c0035c97:	00 
c0035c98:	c7 44 24 04 04 00 00 	movl   $0x4,0x4(%esp)
c0035c9f:	00 
c0035ca0:	89 34 24             	mov    %esi,(%esp)
c0035ca3:	e8 38 1f 00 00       	call   c0037be0 <_calloc_r>
c0035ca8:	85 c0                	test   %eax,%eax
c0035caa:	89 46 4c             	mov    %eax,0x4c(%esi)
c0035cad:	75 b7                	jne    c0035c66 <_Balloc+0x16>
c0035caf:	31 c0                	xor    %eax,%eax
c0035cb1:	eb ce                	jmp    c0035c81 <_Balloc+0x31>
c0035cb3:	90                   	nop
c0035cb4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035cb8:	89 d9                	mov    %ebx,%ecx
c0035cba:	bf 01 00 00 00       	mov    $0x1,%edi
c0035cbf:	d3 e7                	shl    %cl,%edi
c0035cc1:	8d 04 bd 14 00 00 00 	lea    0x14(,%edi,4),%eax
c0035cc8:	89 44 24 08          	mov    %eax,0x8(%esp)
c0035ccc:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0035cd3:	00 
c0035cd4:	89 34 24             	mov    %esi,(%esp)
c0035cd7:	e8 04 1f 00 00       	call   c0037be0 <_calloc_r>
c0035cdc:	85 c0                	test   %eax,%eax
c0035cde:	74 cf                	je     c0035caf <_Balloc+0x5f>
c0035ce0:	89 58 04             	mov    %ebx,0x4(%eax)
c0035ce3:	89 78 08             	mov    %edi,0x8(%eax)
c0035ce6:	eb 8b                	jmp    c0035c73 <_Balloc+0x23>
c0035ce8:	90                   	nop
c0035ce9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0035cf0 <_Bfree>:
c0035cf0:	55                   	push   %ebp
c0035cf1:	89 e5                	mov    %esp,%ebp
c0035cf3:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035cf6:	85 c0                	test   %eax,%eax
c0035cf8:	74 12                	je     c0035d0c <_Bfree+0x1c>
c0035cfa:	8b 55 08             	mov    0x8(%ebp),%edx
c0035cfd:	8b 48 04             	mov    0x4(%eax),%ecx
c0035d00:	8b 52 4c             	mov    0x4c(%edx),%edx
c0035d03:	8d 14 8a             	lea    (%edx,%ecx,4),%edx
c0035d06:	8b 0a                	mov    (%edx),%ecx
c0035d08:	89 08                	mov    %ecx,(%eax)
c0035d0a:	89 02                	mov    %eax,(%edx)
c0035d0c:	5d                   	pop    %ebp
c0035d0d:	c3                   	ret    
c0035d0e:	66 90                	xchg   %ax,%ax

c0035d10 <__multadd>:
c0035d10:	55                   	push   %ebp
c0035d11:	89 e5                	mov    %esp,%ebp
c0035d13:	57                   	push   %edi
c0035d14:	56                   	push   %esi
c0035d15:	53                   	push   %ebx
c0035d16:	83 ec 2c             	sub    $0x2c,%esp
c0035d19:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035d1c:	8b 5d 14             	mov    0x14(%ebp),%ebx
c0035d1f:	8b 40 10             	mov    0x10(%eax),%eax
c0035d22:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0035d25:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035d28:	8d 78 14             	lea    0x14(%eax),%edi
c0035d2b:	31 c0                	xor    %eax,%eax
c0035d2d:	8d 76 00             	lea    0x0(%esi),%esi
c0035d30:	8b 0c 87             	mov    (%edi,%eax,4),%ecx
c0035d33:	0f b7 d1             	movzwl %cx,%edx
c0035d36:	0f af 55 10          	imul   0x10(%ebp),%edx
c0035d3a:	c1 e9 10             	shr    $0x10,%ecx
c0035d3d:	0f af 4d 10          	imul   0x10(%ebp),%ecx
c0035d41:	01 da                	add    %ebx,%edx
c0035d43:	89 d3                	mov    %edx,%ebx
c0035d45:	0f b7 d2             	movzwl %dx,%edx
c0035d48:	c1 eb 10             	shr    $0x10,%ebx
c0035d4b:	01 d9                	add    %ebx,%ecx
c0035d4d:	89 ce                	mov    %ecx,%esi
c0035d4f:	c1 e1 10             	shl    $0x10,%ecx
c0035d52:	01 d1                	add    %edx,%ecx
c0035d54:	c1 ee 10             	shr    $0x10,%esi
c0035d57:	89 0c 87             	mov    %ecx,(%edi,%eax,4)
c0035d5a:	83 c0 01             	add    $0x1,%eax
c0035d5d:	89 f3                	mov    %esi,%ebx
c0035d5f:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
c0035d62:	7f cc                	jg     c0035d30 <__multadd+0x20>
c0035d64:	85 f6                	test   %esi,%esi
c0035d66:	74 1b                	je     c0035d83 <__multadd+0x73>
c0035d68:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035d6b:	8b 7d e4             	mov    -0x1c(%ebp),%edi
c0035d6e:	3b 78 08             	cmp    0x8(%eax),%edi
c0035d71:	7d 1d                	jge    c0035d90 <__multadd+0x80>
c0035d73:	8b 7d 0c             	mov    0xc(%ebp),%edi
c0035d76:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0035d79:	89 74 87 14          	mov    %esi,0x14(%edi,%eax,4)
c0035d7d:	83 c0 01             	add    $0x1,%eax
c0035d80:	89 47 10             	mov    %eax,0x10(%edi)
c0035d83:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035d86:	83 c4 2c             	add    $0x2c,%esp
c0035d89:	5b                   	pop    %ebx
c0035d8a:	5e                   	pop    %esi
c0035d8b:	5f                   	pop    %edi
c0035d8c:	5d                   	pop    %ebp
c0035d8d:	c3                   	ret    
c0035d8e:	66 90                	xchg   %ax,%ax
c0035d90:	8b 40 04             	mov    0x4(%eax),%eax
c0035d93:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0035d96:	83 c0 01             	add    $0x1,%eax
c0035d99:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035d9d:	8b 45 08             	mov    0x8(%ebp),%eax
c0035da0:	89 04 24             	mov    %eax,(%esp)
c0035da3:	e8 a8 fe ff ff       	call   c0035c50 <_Balloc>
c0035da8:	89 c3                	mov    %eax,%ebx
c0035daa:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035dad:	8b 40 10             	mov    0x10(%eax),%eax
c0035db0:	8d 04 85 08 00 00 00 	lea    0x8(,%eax,4),%eax
c0035db7:	89 44 24 08          	mov    %eax,0x8(%esp)
c0035dbb:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035dbe:	83 c0 0c             	add    $0xc,%eax
c0035dc1:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035dc5:	8d 43 0c             	lea    0xc(%ebx),%eax
c0035dc8:	89 04 24             	mov    %eax,(%esp)
c0035dcb:	e8 c4 c0 ff ff       	call   c0031e94 <memcpy>
c0035dd0:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035dd3:	8b 7d 0c             	mov    0xc(%ebp),%edi
c0035dd6:	89 5d 0c             	mov    %ebx,0xc(%ebp)
c0035dd9:	8b 50 04             	mov    0x4(%eax),%edx
c0035ddc:	8b 45 08             	mov    0x8(%ebp),%eax
c0035ddf:	8b 40 4c             	mov    0x4c(%eax),%eax
c0035de2:	8d 04 90             	lea    (%eax,%edx,4),%eax
c0035de5:	8b 10                	mov    (%eax),%edx
c0035de7:	89 17                	mov    %edx,(%edi)
c0035de9:	89 38                	mov    %edi,(%eax)
c0035deb:	eb 86                	jmp    c0035d73 <__multadd+0x63>
c0035ded:	8d 76 00             	lea    0x0(%esi),%esi

c0035df0 <__s2b>:
c0035df0:	55                   	push   %ebp
c0035df1:	ba 39 8e e3 38       	mov    $0x38e38e39,%edx
c0035df6:	89 e5                	mov    %esp,%ebp
c0035df8:	57                   	push   %edi
c0035df9:	56                   	push   %esi
c0035dfa:	53                   	push   %ebx
c0035dfb:	83 ec 2c             	sub    $0x2c,%esp
c0035dfe:	8b 45 14             	mov    0x14(%ebp),%eax
c0035e01:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0035e04:	8b 75 0c             	mov    0xc(%ebp),%esi
c0035e07:	8d 48 08             	lea    0x8(%eax),%ecx
c0035e0a:	89 c8                	mov    %ecx,%eax
c0035e0c:	f7 ea                	imul   %edx
c0035e0e:	c1 f9 1f             	sar    $0x1f,%ecx
c0035e11:	d1 fa                	sar    %edx
c0035e13:	29 ca                	sub    %ecx,%edx
c0035e15:	83 fa 01             	cmp    $0x1,%edx
c0035e18:	0f 8e be 00 00 00    	jle    c0035edc <__s2b+0xec>
c0035e1e:	b8 01 00 00 00       	mov    $0x1,%eax
c0035e23:	31 c9                	xor    %ecx,%ecx
c0035e25:	8d 76 00             	lea    0x0(%esi),%esi
c0035e28:	01 c0                	add    %eax,%eax
c0035e2a:	83 c1 01             	add    $0x1,%ecx
c0035e2d:	39 c2                	cmp    %eax,%edx
c0035e2f:	7f f7                	jg     c0035e28 <__s2b+0x38>
c0035e31:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c0035e35:	89 1c 24             	mov    %ebx,(%esp)
c0035e38:	e8 13 fe ff ff       	call   c0035c50 <_Balloc>
c0035e3d:	8b 55 18             	mov    0x18(%ebp),%edx
c0035e40:	83 7d 10 09          	cmpl   $0x9,0x10(%ebp)
c0035e44:	89 50 14             	mov    %edx,0x14(%eax)
c0035e47:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c0035e4e:	0f 8e 7c 00 00 00    	jle    c0035ed0 <__s2b+0xe0>
c0035e54:	8d 4e 09             	lea    0x9(%esi),%ecx
c0035e57:	03 75 10             	add    0x10(%ebp),%esi
c0035e5a:	89 cf                	mov    %ecx,%edi
c0035e5c:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0035e5f:	90                   	nop
c0035e60:	83 c7 01             	add    $0x1,%edi
c0035e63:	0f be 57 ff          	movsbl -0x1(%edi),%edx
c0035e67:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0035e6e:	00 
c0035e6f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035e73:	89 1c 24             	mov    %ebx,(%esp)
c0035e76:	83 ea 30             	sub    $0x30,%edx
c0035e79:	89 54 24 0c          	mov    %edx,0xc(%esp)
c0035e7d:	e8 8e fe ff ff       	call   c0035d10 <__multadd>
c0035e82:	39 f7                	cmp    %esi,%edi
c0035e84:	75 da                	jne    c0035e60 <__s2b+0x70>
c0035e86:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0035e89:	8b 7d 10             	mov    0x10(%ebp),%edi
c0035e8c:	8d 74 39 f8          	lea    -0x8(%ecx,%edi,1),%esi
c0035e90:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0035e93:	39 4d 14             	cmp    %ecx,0x14(%ebp)
c0035e96:	7e 2e                	jle    c0035ec6 <__s2b+0xd6>
c0035e98:	8b 7d 14             	mov    0x14(%ebp),%edi
c0035e9b:	29 cf                	sub    %ecx,%edi
c0035e9d:	01 f7                	add    %esi,%edi
c0035e9f:	90                   	nop
c0035ea0:	83 c6 01             	add    $0x1,%esi
c0035ea3:	0f be 56 ff          	movsbl -0x1(%esi),%edx
c0035ea7:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0035eae:	00 
c0035eaf:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035eb3:	89 1c 24             	mov    %ebx,(%esp)
c0035eb6:	83 ea 30             	sub    $0x30,%edx
c0035eb9:	89 54 24 0c          	mov    %edx,0xc(%esp)
c0035ebd:	e8 4e fe ff ff       	call   c0035d10 <__multadd>
c0035ec2:	39 fe                	cmp    %edi,%esi
c0035ec4:	75 da                	jne    c0035ea0 <__s2b+0xb0>
c0035ec6:	83 c4 2c             	add    $0x2c,%esp
c0035ec9:	5b                   	pop    %ebx
c0035eca:	5e                   	pop    %esi
c0035ecb:	5f                   	pop    %edi
c0035ecc:	5d                   	pop    %ebp
c0035ecd:	c3                   	ret    
c0035ece:	66 90                	xchg   %ax,%ax
c0035ed0:	83 c6 0a             	add    $0xa,%esi
c0035ed3:	c7 45 10 09 00 00 00 	movl   $0x9,0x10(%ebp)
c0035eda:	eb b4                	jmp    c0035e90 <__s2b+0xa0>
c0035edc:	31 c9                	xor    %ecx,%ecx
c0035ede:	e9 4e ff ff ff       	jmp    c0035e31 <__s2b+0x41>
c0035ee3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035ee9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0035ef0 <__hi0bits>:
c0035ef0:	55                   	push   %ebp
c0035ef1:	31 c9                	xor    %ecx,%ecx
c0035ef3:	89 e5                	mov    %esp,%ebp
c0035ef5:	8b 55 08             	mov    0x8(%ebp),%edx
c0035ef8:	f7 c2 00 00 ff ff    	test   $0xffff0000,%edx
c0035efe:	75 05                	jne    c0035f05 <__hi0bits+0x15>
c0035f00:	c1 e2 10             	shl    $0x10,%edx
c0035f03:	b1 10                	mov    $0x10,%cl
c0035f05:	f7 c2 00 00 00 ff    	test   $0xff000000,%edx
c0035f0b:	75 06                	jne    c0035f13 <__hi0bits+0x23>
c0035f0d:	83 c1 08             	add    $0x8,%ecx
c0035f10:	c1 e2 08             	shl    $0x8,%edx
c0035f13:	f7 c2 00 00 00 f0    	test   $0xf0000000,%edx
c0035f19:	75 06                	jne    c0035f21 <__hi0bits+0x31>
c0035f1b:	83 c1 04             	add    $0x4,%ecx
c0035f1e:	c1 e2 04             	shl    $0x4,%edx
c0035f21:	f7 c2 00 00 00 c0    	test   $0xc0000000,%edx
c0035f27:	75 06                	jne    c0035f2f <__hi0bits+0x3f>
c0035f29:	83 c1 02             	add    $0x2,%ecx
c0035f2c:	c1 e2 02             	shl    $0x2,%edx
c0035f2f:	85 d2                	test   %edx,%edx
c0035f31:	89 c8                	mov    %ecx,%eax
c0035f33:	78 0d                	js     c0035f42 <__hi0bits+0x52>
c0035f35:	81 e2 00 00 00 40    	and    $0x40000000,%edx
c0035f3b:	b8 20 00 00 00       	mov    $0x20,%eax
c0035f40:	75 06                	jne    c0035f48 <__hi0bits+0x58>
c0035f42:	5d                   	pop    %ebp
c0035f43:	c3                   	ret    
c0035f44:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035f48:	8d 41 01             	lea    0x1(%ecx),%eax
c0035f4b:	5d                   	pop    %ebp
c0035f4c:	c3                   	ret    
c0035f4d:	8d 76 00             	lea    0x0(%esi),%esi

c0035f50 <__lo0bits>:
c0035f50:	55                   	push   %ebp
c0035f51:	89 e5                	mov    %esp,%ebp
c0035f53:	53                   	push   %ebx
c0035f54:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0035f57:	8b 13                	mov    (%ebx),%edx
c0035f59:	f6 c2 07             	test   $0x7,%dl
c0035f5c:	74 1a                	je     c0035f78 <__lo0bits+0x28>
c0035f5e:	31 c0                	xor    %eax,%eax
c0035f60:	f6 c2 01             	test   $0x1,%dl
c0035f63:	75 0f                	jne    c0035f74 <__lo0bits+0x24>
c0035f65:	f6 c2 02             	test   $0x2,%dl
c0035f68:	75 56                	jne    c0035fc0 <__lo0bits+0x70>
c0035f6a:	c1 ea 02             	shr    $0x2,%edx
c0035f6d:	b8 02 00 00 00       	mov    $0x2,%eax
c0035f72:	89 13                	mov    %edx,(%ebx)
c0035f74:	5b                   	pop    %ebx
c0035f75:	5d                   	pop    %ebp
c0035f76:	c3                   	ret    
c0035f77:	90                   	nop
c0035f78:	31 c9                	xor    %ecx,%ecx
c0035f7a:	66 85 d2             	test   %dx,%dx
c0035f7d:	75 05                	jne    c0035f84 <__lo0bits+0x34>
c0035f7f:	c1 ea 10             	shr    $0x10,%edx
c0035f82:	b1 10                	mov    $0x10,%cl
c0035f84:	84 d2                	test   %dl,%dl
c0035f86:	75 06                	jne    c0035f8e <__lo0bits+0x3e>
c0035f88:	83 c1 08             	add    $0x8,%ecx
c0035f8b:	c1 ea 08             	shr    $0x8,%edx
c0035f8e:	f6 c2 0f             	test   $0xf,%dl
c0035f91:	75 06                	jne    c0035f99 <__lo0bits+0x49>
c0035f93:	83 c1 04             	add    $0x4,%ecx
c0035f96:	c1 ea 04             	shr    $0x4,%edx
c0035f99:	f6 c2 03             	test   $0x3,%dl
c0035f9c:	75 06                	jne    c0035fa4 <__lo0bits+0x54>
c0035f9e:	83 c1 02             	add    $0x2,%ecx
c0035fa1:	c1 ea 02             	shr    $0x2,%edx
c0035fa4:	f6 c2 01             	test   $0x1,%dl
c0035fa7:	75 0c                	jne    c0035fb5 <__lo0bits+0x65>
c0035fa9:	d1 ea                	shr    %edx
c0035fab:	b8 20 00 00 00       	mov    $0x20,%eax
c0035fb0:	74 c2                	je     c0035f74 <__lo0bits+0x24>
c0035fb2:	83 c1 01             	add    $0x1,%ecx
c0035fb5:	89 13                	mov    %edx,(%ebx)
c0035fb7:	89 c8                	mov    %ecx,%eax
c0035fb9:	5b                   	pop    %ebx
c0035fba:	5d                   	pop    %ebp
c0035fbb:	c3                   	ret    
c0035fbc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035fc0:	d1 ea                	shr    %edx
c0035fc2:	b0 01                	mov    $0x1,%al
c0035fc4:	89 13                	mov    %edx,(%ebx)
c0035fc6:	5b                   	pop    %ebx
c0035fc7:	5d                   	pop    %ebp
c0035fc8:	c3                   	ret    
c0035fc9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0035fd0 <__i2b>:
c0035fd0:	55                   	push   %ebp
c0035fd1:	89 e5                	mov    %esp,%ebp
c0035fd3:	83 ec 18             	sub    $0x18,%esp
c0035fd6:	8b 45 08             	mov    0x8(%ebp),%eax
c0035fd9:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0035fe0:	00 
c0035fe1:	89 04 24             	mov    %eax,(%esp)
c0035fe4:	e8 67 fc ff ff       	call   c0035c50 <_Balloc>
c0035fe9:	8b 55 0c             	mov    0xc(%ebp),%edx
c0035fec:	89 50 14             	mov    %edx,0x14(%eax)
c0035fef:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c0035ff6:	c9                   	leave  
c0035ff7:	c3                   	ret    
c0035ff8:	90                   	nop
c0035ff9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0036000 <__multiply>:
c0036000:	55                   	push   %ebp
c0036001:	89 e5                	mov    %esp,%ebp
c0036003:	57                   	push   %edi
c0036004:	56                   	push   %esi
c0036005:	53                   	push   %ebx
c0036006:	83 ec 3c             	sub    $0x3c,%esp
c0036009:	8b 75 0c             	mov    0xc(%ebp),%esi
c003600c:	8b 45 10             	mov    0x10(%ebp),%eax
c003600f:	8b 7e 10             	mov    0x10(%esi),%edi
c0036012:	8b 58 10             	mov    0x10(%eax),%ebx
c0036015:	39 df                	cmp    %ebx,%edi
c0036017:	7d 0e                	jge    c0036027 <__multiply+0x27>
c0036019:	89 f8                	mov    %edi,%eax
c003601b:	89 df                	mov    %ebx,%edi
c003601d:	89 c3                	mov    %eax,%ebx
c003601f:	89 f0                	mov    %esi,%eax
c0036021:	8b 75 10             	mov    0x10(%ebp),%esi
c0036024:	89 45 10             	mov    %eax,0x10(%ebp)
c0036027:	8d 04 1f             	lea    (%edi,%ebx,1),%eax
c003602a:	3b 46 08             	cmp    0x8(%esi),%eax
c003602d:	89 45 c8             	mov    %eax,-0x38(%ebp)
c0036030:	0f 9f c0             	setg   %al
c0036033:	0f b6 c0             	movzbl %al,%eax
c0036036:	03 46 04             	add    0x4(%esi),%eax
c0036039:	89 44 24 04          	mov    %eax,0x4(%esp)
c003603d:	8b 45 08             	mov    0x8(%ebp),%eax
c0036040:	89 04 24             	mov    %eax,(%esp)
c0036043:	e8 08 fc ff ff       	call   c0035c50 <_Balloc>
c0036048:	8b 55 c8             	mov    -0x38(%ebp),%edx
c003604b:	89 45 c0             	mov    %eax,-0x40(%ebp)
c003604e:	8d 40 14             	lea    0x14(%eax),%eax
c0036051:	8d 14 90             	lea    (%eax,%edx,4),%edx
c0036054:	89 d1                	mov    %edx,%ecx
c0036056:	39 c8                	cmp    %ecx,%eax
c0036058:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c003605b:	89 55 c4             	mov    %edx,-0x3c(%ebp)
c003605e:	73 15                	jae    c0036075 <__multiply+0x75>
c0036060:	8b 55 c4             	mov    -0x3c(%ebp),%edx
c0036063:	90                   	nop
c0036064:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036068:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c003606e:	83 c0 04             	add    $0x4,%eax
c0036071:	39 c2                	cmp    %eax,%edx
c0036073:	77 f3                	ja     c0036068 <__multiply+0x68>
c0036075:	8d 46 14             	lea    0x14(%esi),%eax
c0036078:	89 45 d0             	mov    %eax,-0x30(%ebp)
c003607b:	8d 04 b8             	lea    (%eax,%edi,4),%eax
c003607e:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0036081:	8b 45 10             	mov    0x10(%ebp),%eax
c0036084:	83 c0 14             	add    $0x14,%eax
c0036087:	8d 3c 98             	lea    (%eax,%ebx,4),%edi
c003608a:	39 f8                	cmp    %edi,%eax
c003608c:	89 45 d8             	mov    %eax,-0x28(%ebp)
c003608f:	89 7d cc             	mov    %edi,-0x34(%ebp)
c0036092:	0f 83 e8 00 00 00    	jae    c0036180 <__multiply+0x180>
c0036098:	8b 45 d8             	mov    -0x28(%ebp),%eax
c003609b:	8b 00                	mov    (%eax),%eax
c003609d:	0f b7 f8             	movzwl %ax,%edi
c00360a0:	85 ff                	test   %edi,%edi
c00360a2:	89 7d e4             	mov    %edi,-0x1c(%ebp)
c00360a5:	74 5a                	je     c0036101 <__multiply+0x101>
c00360a7:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c00360aa:	31 db                	xor    %ebx,%ebx
c00360ac:	8b 75 d0             	mov    -0x30(%ebp),%esi
c00360af:	eb 09                	jmp    c00360ba <__multiply+0xba>
c00360b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00360b8:	89 fa                	mov    %edi,%edx
c00360ba:	8b 0e                	mov    (%esi),%ecx
c00360bc:	83 c6 04             	add    $0x4,%esi
c00360bf:	0f b7 3a             	movzwl (%edx),%edi
c00360c2:	0f b7 c1             	movzwl %cx,%eax
c00360c5:	0f af 45 e4          	imul   -0x1c(%ebp),%eax
c00360c9:	c1 e9 10             	shr    $0x10,%ecx
c00360cc:	0f af 4d e4          	imul   -0x1c(%ebp),%ecx
c00360d0:	01 f8                	add    %edi,%eax
c00360d2:	01 d8                	add    %ebx,%eax
c00360d4:	8b 1a                	mov    (%edx),%ebx
c00360d6:	8d 7a 04             	lea    0x4(%edx),%edi
c00360d9:	c1 eb 10             	shr    $0x10,%ebx
c00360dc:	01 d9                	add    %ebx,%ecx
c00360de:	89 c3                	mov    %eax,%ebx
c00360e0:	c1 eb 10             	shr    $0x10,%ebx
c00360e3:	0f b7 c0             	movzwl %ax,%eax
c00360e6:	01 d9                	add    %ebx,%ecx
c00360e8:	89 cb                	mov    %ecx,%ebx
c00360ea:	c1 e1 10             	shl    $0x10,%ecx
c00360ed:	09 c1                	or     %eax,%ecx
c00360ef:	c1 eb 10             	shr    $0x10,%ebx
c00360f2:	39 75 dc             	cmp    %esi,-0x24(%ebp)
c00360f5:	89 0a                	mov    %ecx,(%edx)
c00360f7:	77 bf                	ja     c00360b8 <__multiply+0xb8>
c00360f9:	8b 45 d8             	mov    -0x28(%ebp),%eax
c00360fc:	89 5a 04             	mov    %ebx,0x4(%edx)
c00360ff:	8b 00                	mov    (%eax),%eax
c0036101:	c1 e8 10             	shr    $0x10,%eax
c0036104:	85 c0                	test   %eax,%eax
c0036106:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0036109:	74 61                	je     c003616c <__multiply+0x16c>
c003610b:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c003610e:	31 ff                	xor    %edi,%edi
c0036110:	89 fe                	mov    %edi,%esi
c0036112:	8b 10                	mov    (%eax),%edx
c0036114:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0036117:	8b 45 d0             	mov    -0x30(%ebp),%eax
c003611a:	89 d3                	mov    %edx,%ebx
c003611c:	eb 05                	jmp    c0036123 <__multiply+0x123>
c003611e:	66 90                	xchg   %ax,%ax
c0036120:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0036123:	0f b7 08             	movzwl (%eax),%ecx
c0036126:	c1 eb 10             	shr    $0x10,%ebx
c0036129:	0f b7 d2             	movzwl %dx,%edx
c003612c:	0f af 4d e4          	imul   -0x1c(%ebp),%ecx
c0036130:	83 c0 04             	add    $0x4,%eax
c0036133:	8d 3c 19             	lea    (%ecx,%ebx,1),%edi
c0036136:	01 f7                	add    %esi,%edi
c0036138:	8b 75 e0             	mov    -0x20(%ebp),%esi
c003613b:	89 fb                	mov    %edi,%ebx
c003613d:	c1 e3 10             	shl    $0x10,%ebx
c0036140:	09 d3                	or     %edx,%ebx
c0036142:	89 1e                	mov    %ebx,(%esi)
c0036144:	8b 5e 04             	mov    0x4(%esi),%ebx
c0036147:	8d 4e 04             	lea    0x4(%esi),%ecx
c003614a:	0f b7 50 fe          	movzwl -0x2(%eax),%edx
c003614e:	c1 ef 10             	shr    $0x10,%edi
c0036151:	0f af 55 e4          	imul   -0x1c(%ebp),%edx
c0036155:	0f b7 f3             	movzwl %bx,%esi
c0036158:	01 f2                	add    %esi,%edx
c003615a:	01 fa                	add    %edi,%edx
c003615c:	89 d6                	mov    %edx,%esi
c003615e:	c1 ee 10             	shr    $0x10,%esi
c0036161:	39 45 dc             	cmp    %eax,-0x24(%ebp)
c0036164:	77 ba                	ja     c0036120 <__multiply+0x120>
c0036166:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0036169:	89 50 04             	mov    %edx,0x4(%eax)
c003616c:	83 45 d8 04          	addl   $0x4,-0x28(%ebp)
c0036170:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0036173:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
c0036177:	39 45 cc             	cmp    %eax,-0x34(%ebp)
c003617a:	0f 87 18 ff ff ff    	ja     c0036098 <__multiply+0x98>
c0036180:	8b 75 c8             	mov    -0x38(%ebp),%esi
c0036183:	85 f6                	test   %esi,%esi
c0036185:	7e 29                	jle    c00361b0 <__multiply+0x1b0>
c0036187:	8b 7d c4             	mov    -0x3c(%ebp),%edi
c003618a:	8b 5f fc             	mov    -0x4(%edi),%ebx
c003618d:	85 db                	test   %ebx,%ebx
c003618f:	75 1f                	jne    c00361b0 <__multiply+0x1b0>
c0036191:	8b 55 c8             	mov    -0x38(%ebp),%edx
c0036194:	89 d0                	mov    %edx,%eax
c0036196:	c1 e0 02             	shl    $0x2,%eax
c0036199:	29 c7                	sub    %eax,%edi
c003619b:	89 f8                	mov    %edi,%eax
c003619d:	eb 09                	jmp    c00361a8 <__multiply+0x1a8>
c003619f:	90                   	nop
c00361a0:	8b 4c 90 fc          	mov    -0x4(%eax,%edx,4),%ecx
c00361a4:	85 c9                	test   %ecx,%ecx
c00361a6:	75 05                	jne    c00361ad <__multiply+0x1ad>
c00361a8:	83 ea 01             	sub    $0x1,%edx
c00361ab:	75 f3                	jne    c00361a0 <__multiply+0x1a0>
c00361ad:	89 55 c8             	mov    %edx,-0x38(%ebp)
c00361b0:	8b 45 c0             	mov    -0x40(%ebp),%eax
c00361b3:	8b 7d c8             	mov    -0x38(%ebp),%edi
c00361b6:	89 78 10             	mov    %edi,0x10(%eax)
c00361b9:	83 c4 3c             	add    $0x3c,%esp
c00361bc:	5b                   	pop    %ebx
c00361bd:	5e                   	pop    %esi
c00361be:	5f                   	pop    %edi
c00361bf:	5d                   	pop    %ebp
c00361c0:	c3                   	ret    
c00361c1:	eb 0d                	jmp    c00361d0 <__pow5mult>
c00361c3:	90                   	nop
c00361c4:	90                   	nop
c00361c5:	90                   	nop
c00361c6:	90                   	nop
c00361c7:	90                   	nop
c00361c8:	90                   	nop
c00361c9:	90                   	nop
c00361ca:	90                   	nop
c00361cb:	90                   	nop
c00361cc:	90                   	nop
c00361cd:	90                   	nop
c00361ce:	90                   	nop
c00361cf:	90                   	nop

c00361d0 <__pow5mult>:
c00361d0:	55                   	push   %ebp
c00361d1:	89 e5                	mov    %esp,%ebp
c00361d3:	57                   	push   %edi
c00361d4:	56                   	push   %esi
c00361d5:	53                   	push   %ebx
c00361d6:	83 ec 2c             	sub    $0x2c,%esp
c00361d9:	8b 5d 10             	mov    0x10(%ebp),%ebx
c00361dc:	8b 4d 08             	mov    0x8(%ebp),%ecx
c00361df:	8b 7d 0c             	mov    0xc(%ebp),%edi
c00361e2:	89 d8                	mov    %ebx,%eax
c00361e4:	83 e0 03             	and    $0x3,%eax
c00361e7:	0f 85 a3 00 00 00    	jne    c0036290 <__pow5mult+0xc0>
c00361ed:	c1 fb 02             	sar    $0x2,%ebx
c00361f0:	85 db                	test   %ebx,%ebx
c00361f2:	74 5c                	je     c0036250 <__pow5mult+0x80>
c00361f4:	8b 71 48             	mov    0x48(%ecx),%esi
c00361f7:	85 f6                	test   %esi,%esi
c00361f9:	0f 84 bd 00 00 00    	je     c00362bc <__pow5mult+0xec>
c00361ff:	f6 c3 01             	test   $0x1,%bl
c0036202:	75 15                	jne    c0036219 <__pow5mult+0x49>
c0036204:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036208:	d1 fb                	sar    %ebx
c003620a:	74 44                	je     c0036250 <__pow5mult+0x80>
c003620c:	8b 06                	mov    (%esi),%eax
c003620e:	85 c0                	test   %eax,%eax
c0036210:	74 4e                	je     c0036260 <__pow5mult+0x90>
c0036212:	89 c6                	mov    %eax,%esi
c0036214:	f6 c3 01             	test   $0x1,%bl
c0036217:	74 ef                	je     c0036208 <__pow5mult+0x38>
c0036219:	89 0c 24             	mov    %ecx,(%esp)
c003621c:	89 74 24 08          	mov    %esi,0x8(%esp)
c0036220:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0036224:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0036227:	e8 d4 fd ff ff       	call   c0036000 <__multiply>
c003622c:	85 ff                	test   %edi,%edi
c003622e:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0036231:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0036234:	74 52                	je     c0036288 <__pow5mult+0xb8>
c0036236:	8b 57 04             	mov    0x4(%edi),%edx
c0036239:	d1 fb                	sar    %ebx
c003623b:	8b 41 4c             	mov    0x4c(%ecx),%eax
c003623e:	8d 04 90             	lea    (%eax,%edx,4),%eax
c0036241:	8b 10                	mov    (%eax),%edx
c0036243:	89 17                	mov    %edx,(%edi)
c0036245:	89 38                	mov    %edi,(%eax)
c0036247:	8b 7d e0             	mov    -0x20(%ebp),%edi
c003624a:	75 c0                	jne    c003620c <__pow5mult+0x3c>
c003624c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036250:	83 c4 2c             	add    $0x2c,%esp
c0036253:	89 f8                	mov    %edi,%eax
c0036255:	5b                   	pop    %ebx
c0036256:	5e                   	pop    %esi
c0036257:	5f                   	pop    %edi
c0036258:	5d                   	pop    %ebp
c0036259:	c3                   	ret    
c003625a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036260:	89 74 24 08          	mov    %esi,0x8(%esp)
c0036264:	89 74 24 04          	mov    %esi,0x4(%esp)
c0036268:	89 0c 24             	mov    %ecx,(%esp)
c003626b:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c003626e:	e8 8d fd ff ff       	call   c0036000 <__multiply>
c0036273:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0036276:	89 06                	mov    %eax,(%esi)
c0036278:	89 c6                	mov    %eax,%esi
c003627a:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0036280:	eb 92                	jmp    c0036214 <__pow5mult+0x44>
c0036282:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036288:	8b 7d e0             	mov    -0x20(%ebp),%edi
c003628b:	e9 78 ff ff ff       	jmp    c0036208 <__pow5mult+0x38>
c0036290:	8b 04 85 bc 9a 03 c0 	mov    -0x3ffc6544(,%eax,4),%eax
c0036297:	89 7c 24 04          	mov    %edi,0x4(%esp)
c003629b:	89 0c 24             	mov    %ecx,(%esp)
c003629e:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c00362a5:	00 
c00362a6:	89 44 24 08          	mov    %eax,0x8(%esp)
c00362aa:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c00362ad:	e8 5e fa ff ff       	call   c0035d10 <__multadd>
c00362b2:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c00362b5:	89 c7                	mov    %eax,%edi
c00362b7:	e9 31 ff ff ff       	jmp    c00361ed <__pow5mult+0x1d>
c00362bc:	89 0c 24             	mov    %ecx,(%esp)
c00362bf:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c00362c6:	00 
c00362c7:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c00362ca:	e8 81 f9 ff ff       	call   c0035c50 <_Balloc>
c00362cf:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c00362d2:	c7 40 14 71 02 00 00 	movl   $0x271,0x14(%eax)
c00362d9:	89 c6                	mov    %eax,%esi
c00362db:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c00362e2:	89 41 48             	mov    %eax,0x48(%ecx)
c00362e5:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c00362eb:	e9 0f ff ff ff       	jmp    c00361ff <__pow5mult+0x2f>

c00362f0 <__lshift>:
c00362f0:	55                   	push   %ebp
c00362f1:	89 e5                	mov    %esp,%ebp
c00362f3:	57                   	push   %edi
c00362f4:	56                   	push   %esi
c00362f5:	53                   	push   %ebx
c00362f6:	83 ec 2c             	sub    $0x2c,%esp
c00362f9:	8b 45 0c             	mov    0xc(%ebp),%eax
c00362fc:	8b 75 10             	mov    0x10(%ebp),%esi
c00362ff:	89 c7                	mov    %eax,%edi
c0036301:	8b 50 04             	mov    0x4(%eax),%edx
c0036304:	8b 40 10             	mov    0x10(%eax),%eax
c0036307:	89 f3                	mov    %esi,%ebx
c0036309:	c1 fb 05             	sar    $0x5,%ebx
c003630c:	01 d8                	add    %ebx,%eax
c003630e:	89 45 d0             	mov    %eax,-0x30(%ebp)
c0036311:	83 c0 01             	add    $0x1,%eax
c0036314:	89 c1                	mov    %eax,%ecx
c0036316:	89 45 d8             	mov    %eax,-0x28(%ebp)
c0036319:	8b 47 08             	mov    0x8(%edi),%eax
c003631c:	39 c1                	cmp    %eax,%ecx
c003631e:	7e 09                	jle    c0036329 <__lshift+0x39>
c0036320:	01 c0                	add    %eax,%eax
c0036322:	83 c2 01             	add    $0x1,%edx
c0036325:	39 c1                	cmp    %eax,%ecx
c0036327:	7f f7                	jg     c0036320 <__lshift+0x30>
c0036329:	8b 45 08             	mov    0x8(%ebp),%eax
c003632c:	89 54 24 04          	mov    %edx,0x4(%esp)
c0036330:	89 04 24             	mov    %eax,(%esp)
c0036333:	e8 18 f9 ff ff       	call   c0035c50 <_Balloc>
c0036338:	85 db                	test   %ebx,%ebx
c003633a:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c003633d:	8d 50 14             	lea    0x14(%eax),%edx
c0036340:	7e 17                	jle    c0036359 <__lshift+0x69>
c0036342:	31 c0                	xor    %eax,%eax
c0036344:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036348:	c7 04 82 00 00 00 00 	movl   $0x0,(%edx,%eax,4)
c003634f:	83 c0 01             	add    $0x1,%eax
c0036352:	39 d8                	cmp    %ebx,%eax
c0036354:	75 f2                	jne    c0036348 <__lshift+0x58>
c0036356:	8d 14 82             	lea    (%edx,%eax,4),%edx
c0036359:	8b 7d 0c             	mov    0xc(%ebp),%edi
c003635c:	8b 45 0c             	mov    0xc(%ebp),%eax
c003635f:	8b 4f 10             	mov    0x10(%edi),%ecx
c0036362:	83 c0 14             	add    $0x14,%eax
c0036365:	83 e6 1f             	and    $0x1f,%esi
c0036368:	89 75 e0             	mov    %esi,-0x20(%ebp)
c003636b:	8d 3c 88             	lea    (%eax,%ecx,4),%edi
c003636e:	89 7d e4             	mov    %edi,-0x1c(%ebp)
c0036371:	74 7d                	je     c00363f0 <__lshift+0x100>
c0036373:	c7 45 dc 20 00 00 00 	movl   $0x20,-0x24(%ebp)
c003637a:	29 75 dc             	sub    %esi,-0x24(%ebp)
c003637d:	31 f6                	xor    %esi,%esi
c003637f:	eb 09                	jmp    c003638a <__lshift+0x9a>
c0036381:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036388:	89 fa                	mov    %edi,%edx
c003638a:	8b 18                	mov    (%eax),%ebx
c003638c:	83 c0 04             	add    $0x4,%eax
c003638f:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
c0036393:	8d 7a 04             	lea    0x4(%edx),%edi
c0036396:	d3 e3                	shl    %cl,%ebx
c0036398:	0f b6 4d dc          	movzbl -0x24(%ebp),%ecx
c003639c:	09 f3                	or     %esi,%ebx
c003639e:	89 1a                	mov    %ebx,(%edx)
c00363a0:	8b 70 fc             	mov    -0x4(%eax),%esi
c00363a3:	d3 ee                	shr    %cl,%esi
c00363a5:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
c00363a8:	77 de                	ja     c0036388 <__lshift+0x98>
c00363aa:	8b 45 d0             	mov    -0x30(%ebp),%eax
c00363ad:	89 72 04             	mov    %esi,0x4(%edx)
c00363b0:	83 c0 02             	add    $0x2,%eax
c00363b3:	85 f6                	test   %esi,%esi
c00363b5:	0f 44 45 d8          	cmove  -0x28(%ebp),%eax
c00363b9:	89 45 d8             	mov    %eax,-0x28(%ebp)
c00363bc:	8b 45 d8             	mov    -0x28(%ebp),%eax
c00363bf:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c00363c2:	8b 75 0c             	mov    0xc(%ebp),%esi
c00363c5:	83 e8 01             	sub    $0x1,%eax
c00363c8:	89 47 10             	mov    %eax,0x10(%edi)
c00363cb:	8b 45 0c             	mov    0xc(%ebp),%eax
c00363ce:	8b 50 04             	mov    0x4(%eax),%edx
c00363d1:	8b 45 08             	mov    0x8(%ebp),%eax
c00363d4:	8b 40 4c             	mov    0x4c(%eax),%eax
c00363d7:	8d 04 90             	lea    (%eax,%edx,4),%eax
c00363da:	8b 10                	mov    (%eax),%edx
c00363dc:	89 16                	mov    %edx,(%esi)
c00363de:	89 30                	mov    %esi,(%eax)
c00363e0:	83 c4 2c             	add    $0x2c,%esp
c00363e3:	89 f8                	mov    %edi,%eax
c00363e5:	5b                   	pop    %ebx
c00363e6:	5e                   	pop    %esi
c00363e7:	5f                   	pop    %edi
c00363e8:	5d                   	pop    %ebp
c00363e9:	c3                   	ret    
c00363ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00363f0:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
c00363f3:	90                   	nop
c00363f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00363f8:	83 c0 04             	add    $0x4,%eax
c00363fb:	8b 48 fc             	mov    -0x4(%eax),%ecx
c00363fe:	83 c2 04             	add    $0x4,%edx
c0036401:	39 c3                	cmp    %eax,%ebx
c0036403:	89 4a fc             	mov    %ecx,-0x4(%edx)
c0036406:	77 f0                	ja     c00363f8 <__lshift+0x108>
c0036408:	eb b2                	jmp    c00363bc <__lshift+0xcc>
c003640a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0036410 <__mcmp>:
c0036410:	55                   	push   %ebp
c0036411:	89 e5                	mov    %esp,%ebp
c0036413:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0036416:	8b 55 0c             	mov    0xc(%ebp),%edx
c0036419:	53                   	push   %ebx
c003641a:	8b 41 10             	mov    0x10(%ecx),%eax
c003641d:	8b 5a 10             	mov    0x10(%edx),%ebx
c0036420:	29 d8                	sub    %ebx,%eax
c0036422:	85 c0                	test   %eax,%eax
c0036424:	75 27                	jne    c003644d <__mcmp+0x3d>
c0036426:	c1 e3 02             	shl    $0x2,%ebx
c0036429:	83 c1 14             	add    $0x14,%ecx
c003642c:	8d 04 19             	lea    (%ecx,%ebx,1),%eax
c003642f:	8d 54 1a 14          	lea    0x14(%edx,%ebx,1),%edx
c0036433:	eb 07                	jmp    c003643c <__mcmp+0x2c>
c0036435:	8d 76 00             	lea    0x0(%esi),%esi
c0036438:	39 c1                	cmp    %eax,%ecx
c003643a:	73 14                	jae    c0036450 <__mcmp+0x40>
c003643c:	83 ea 04             	sub    $0x4,%edx
c003643f:	83 e8 04             	sub    $0x4,%eax
c0036442:	8b 1a                	mov    (%edx),%ebx
c0036444:	39 18                	cmp    %ebx,(%eax)
c0036446:	74 f0                	je     c0036438 <__mcmp+0x28>
c0036448:	19 c0                	sbb    %eax,%eax
c003644a:	83 c8 01             	or     $0x1,%eax
c003644d:	5b                   	pop    %ebx
c003644e:	5d                   	pop    %ebp
c003644f:	c3                   	ret    
c0036450:	31 c0                	xor    %eax,%eax
c0036452:	5b                   	pop    %ebx
c0036453:	5d                   	pop    %ebp
c0036454:	c3                   	ret    
c0036455:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036459:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0036460 <__mdiff>:
c0036460:	55                   	push   %ebp
c0036461:	89 e5                	mov    %esp,%ebp
c0036463:	57                   	push   %edi
c0036464:	56                   	push   %esi
c0036465:	53                   	push   %ebx
c0036466:	83 ec 2c             	sub    $0x2c,%esp
c0036469:	8b 75 0c             	mov    0xc(%ebp),%esi
c003646c:	8b 5d 10             	mov    0x10(%ebp),%ebx
c003646f:	89 34 24             	mov    %esi,(%esp)
c0036472:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c0036476:	e8 95 ff ff ff       	call   c0036410 <__mcmp>
c003647b:	85 c0                	test   %eax,%eax
c003647d:	0f 84 25 01 00 00    	je     c00365a8 <__mdiff+0x148>
c0036483:	0f 88 0f 01 00 00    	js     c0036598 <__mdiff+0x138>
c0036489:	31 ff                	xor    %edi,%edi
c003648b:	8b 46 04             	mov    0x4(%esi),%eax
c003648e:	83 c6 14             	add    $0x14,%esi
c0036491:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036495:	8b 45 08             	mov    0x8(%ebp),%eax
c0036498:	89 04 24             	mov    %eax,(%esp)
c003649b:	e8 b0 f7 ff ff       	call   c0035c50 <_Balloc>
c00364a0:	8d 4b 14             	lea    0x14(%ebx),%ecx
c00364a3:	89 c2                	mov    %eax,%edx
c00364a5:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c00364a8:	89 78 0c             	mov    %edi,0xc(%eax)
c00364ab:	8b 46 fc             	mov    -0x4(%esi),%eax
c00364ae:	89 75 e4             	mov    %esi,-0x1c(%ebp)
c00364b1:	89 45 dc             	mov    %eax,-0x24(%ebp)
c00364b4:	8d 04 86             	lea    (%esi,%eax,4),%eax
c00364b7:	89 45 d8             	mov    %eax,-0x28(%ebp)
c00364ba:	8b 43 10             	mov    0x10(%ebx),%eax
c00364bd:	31 db                	xor    %ebx,%ebx
c00364bf:	8d 04 81             	lea    (%ecx,%eax,4),%eax
c00364c2:	89 45 e0             	mov    %eax,-0x20(%ebp)
c00364c5:	89 d0                	mov    %edx,%eax
c00364c7:	83 c0 14             	add    $0x14,%eax
c00364ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00364d0:	8b 75 e4             	mov    -0x1c(%ebp),%esi
c00364d3:	83 c0 04             	add    $0x4,%eax
c00364d6:	83 c1 04             	add    $0x4,%ecx
c00364d9:	83 45 e4 04          	addl   $0x4,-0x1c(%ebp)
c00364dd:	8b 3e                	mov    (%esi),%edi
c00364df:	8b 71 fc             	mov    -0x4(%ecx),%esi
c00364e2:	0f b7 d7             	movzwl %di,%edx
c00364e5:	01 da                	add    %ebx,%edx
c00364e7:	0f b7 de             	movzwl %si,%ebx
c00364ea:	29 da                	sub    %ebx,%edx
c00364ec:	c1 ef 10             	shr    $0x10,%edi
c00364ef:	89 d3                	mov    %edx,%ebx
c00364f1:	c1 ee 10             	shr    $0x10,%esi
c00364f4:	0f b7 d2             	movzwl %dx,%edx
c00364f7:	c1 fb 10             	sar    $0x10,%ebx
c00364fa:	29 f7                	sub    %esi,%edi
c00364fc:	01 df                	add    %ebx,%edi
c00364fe:	89 fb                	mov    %edi,%ebx
c0036500:	c1 e7 10             	shl    $0x10,%edi
c0036503:	09 d7                	or     %edx,%edi
c0036505:	c1 fb 10             	sar    $0x10,%ebx
c0036508:	39 4d e0             	cmp    %ecx,-0x20(%ebp)
c003650b:	89 78 fc             	mov    %edi,-0x4(%eax)
c003650e:	77 c0                	ja     c00364d0 <__mdiff+0x70>
c0036510:	8b 75 e4             	mov    -0x1c(%ebp),%esi
c0036513:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c0036516:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0036519:	89 75 e0             	mov    %esi,-0x20(%ebp)
c003651c:	39 f1                	cmp    %esi,%ecx
c003651e:	76 3f                	jbe    c003655f <__mdiff+0xff>
c0036520:	8b 3e                	mov    (%esi),%edi
c0036522:	83 c6 04             	add    $0x4,%esi
c0036525:	83 c0 04             	add    $0x4,%eax
c0036528:	0f b7 d7             	movzwl %di,%edx
c003652b:	01 da                	add    %ebx,%edx
c003652d:	89 d3                	mov    %edx,%ebx
c003652f:	0f b7 d2             	movzwl %dx,%edx
c0036532:	c1 fb 10             	sar    $0x10,%ebx
c0036535:	c1 ef 10             	shr    $0x10,%edi
c0036538:	01 df                	add    %ebx,%edi
c003653a:	89 fb                	mov    %edi,%ebx
c003653c:	c1 e7 10             	shl    $0x10,%edi
c003653f:	09 d7                	or     %edx,%edi
c0036541:	c1 fb 10             	sar    $0x10,%ebx
c0036544:	39 f1                	cmp    %esi,%ecx
c0036546:	89 78 fc             	mov    %edi,-0x4(%eax)
c0036549:	77 d5                	ja     c0036520 <__mdiff+0xc0>
c003654b:	8b 45 e0             	mov    -0x20(%ebp),%eax
c003654e:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c0036551:	f7 d0                	not    %eax
c0036553:	01 c8                	add    %ecx,%eax
c0036555:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0036558:	c1 e8 02             	shr    $0x2,%eax
c003655b:	8d 44 81 04          	lea    0x4(%ecx,%eax,4),%eax
c003655f:	85 ff                	test   %edi,%edi
c0036561:	75 23                	jne    c0036586 <__mdiff+0x126>
c0036563:	8b 4d dc             	mov    -0x24(%ebp),%ecx
c0036566:	8d 14 8d 00 00 00 00 	lea    0x0(,%ecx,4),%edx
c003656d:	29 d0                	sub    %edx,%eax
c003656f:	89 ca                	mov    %ecx,%edx
c0036571:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036578:	83 ea 01             	sub    $0x1,%edx
c003657b:	8b 4c 90 fc          	mov    -0x4(%eax,%edx,4),%ecx
c003657f:	85 c9                	test   %ecx,%ecx
c0036581:	74 f5                	je     c0036578 <__mdiff+0x118>
c0036583:	89 55 dc             	mov    %edx,-0x24(%ebp)
c0036586:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c0036589:	8b 4d dc             	mov    -0x24(%ebp),%ecx
c003658c:	89 48 10             	mov    %ecx,0x10(%eax)
c003658f:	83 c4 2c             	add    $0x2c,%esp
c0036592:	5b                   	pop    %ebx
c0036593:	5e                   	pop    %esi
c0036594:	5f                   	pop    %edi
c0036595:	5d                   	pop    %ebp
c0036596:	c3                   	ret    
c0036597:	90                   	nop
c0036598:	89 f0                	mov    %esi,%eax
c003659a:	bf 01 00 00 00       	mov    $0x1,%edi
c003659f:	89 de                	mov    %ebx,%esi
c00365a1:	89 c3                	mov    %eax,%ebx
c00365a3:	e9 e3 fe ff ff       	jmp    c003648b <__mdiff+0x2b>
c00365a8:	8b 45 08             	mov    0x8(%ebp),%eax
c00365ab:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c00365b2:	00 
c00365b3:	89 04 24             	mov    %eax,(%esp)
c00365b6:	e8 95 f6 ff ff       	call   c0035c50 <_Balloc>
c00365bb:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c00365c2:	c7 40 14 00 00 00 00 	movl   $0x0,0x14(%eax)
c00365c9:	83 c4 2c             	add    $0x2c,%esp
c00365cc:	5b                   	pop    %ebx
c00365cd:	5e                   	pop    %esi
c00365ce:	5f                   	pop    %edi
c00365cf:	5d                   	pop    %ebp
c00365d0:	c3                   	ret    
c00365d1:	eb 0d                	jmp    c00365e0 <__ulp>
c00365d3:	90                   	nop
c00365d4:	90                   	nop
c00365d5:	90                   	nop
c00365d6:	90                   	nop
c00365d7:	90                   	nop
c00365d8:	90                   	nop
c00365d9:	90                   	nop
c00365da:	90                   	nop
c00365db:	90                   	nop
c00365dc:	90                   	nop
c00365dd:	90                   	nop
c00365de:	90                   	nop
c00365df:	90                   	nop

c00365e0 <__ulp>:
c00365e0:	55                   	push   %ebp
c00365e1:	89 e5                	mov    %esp,%ebp
c00365e3:	83 ec 08             	sub    $0x8,%esp
c00365e6:	dd 45 08             	fldl   0x8(%ebp)
c00365e9:	dd 5d f8             	fstpl  -0x8(%ebp)
c00365ec:	8b 4d fc             	mov    -0x4(%ebp),%ecx
c00365ef:	81 e1 00 00 f0 7f    	and    $0x7ff00000,%ecx
c00365f5:	81 e9 00 00 40 03    	sub    $0x3400000,%ecx
c00365fb:	85 c9                	test   %ecx,%ecx
c00365fd:	7e 11                	jle    c0036610 <__ulp+0x30>
c00365ff:	89 4d fc             	mov    %ecx,-0x4(%ebp)
c0036602:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0036609:	dd 45 f8             	fldl   -0x8(%ebp)
c003660c:	c9                   	leave  
c003660d:	c3                   	ret    
c003660e:	66 90                	xchg   %ax,%ax
c0036610:	f7 d9                	neg    %ecx
c0036612:	c1 f9 14             	sar    $0x14,%ecx
c0036615:	83 f9 13             	cmp    $0x13,%ecx
c0036618:	7e 26                	jle    c0036640 <__ulp+0x60>
c003661a:	83 f9 32             	cmp    $0x32,%ecx
c003661d:	b8 01 00 00 00       	mov    $0x1,%eax
c0036622:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0036629:	7f 0b                	jg     c0036636 <__ulp+0x56>
c003662b:	ba 33 00 00 00       	mov    $0x33,%edx
c0036630:	29 ca                	sub    %ecx,%edx
c0036632:	89 d1                	mov    %edx,%ecx
c0036634:	d3 e0                	shl    %cl,%eax
c0036636:	89 45 f8             	mov    %eax,-0x8(%ebp)
c0036639:	dd 45 f8             	fldl   -0x8(%ebp)
c003663c:	c9                   	leave  
c003663d:	c3                   	ret    
c003663e:	66 90                	xchg   %ax,%ax
c0036640:	b8 00 00 08 00       	mov    $0x80000,%eax
c0036645:	d3 f8                	sar    %cl,%eax
c0036647:	89 45 fc             	mov    %eax,-0x4(%ebp)
c003664a:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0036651:	dd 45 f8             	fldl   -0x8(%ebp)
c0036654:	c9                   	leave  
c0036655:	c3                   	ret    
c0036656:	8d 76 00             	lea    0x0(%esi),%esi
c0036659:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0036660 <__b2d>:
c0036660:	55                   	push   %ebp
c0036661:	89 e5                	mov    %esp,%ebp
c0036663:	57                   	push   %edi
c0036664:	56                   	push   %esi
c0036665:	53                   	push   %ebx
c0036666:	83 ec 18             	sub    $0x18,%esp
c0036669:	8b 45 08             	mov    0x8(%ebp),%eax
c003666c:	8d 78 14             	lea    0x14(%eax),%edi
c003666f:	8b 40 10             	mov    0x10(%eax),%eax
c0036672:	8d 1c 87             	lea    (%edi,%eax,4),%ebx
c0036675:	8b 73 fc             	mov    -0x4(%ebx),%esi
c0036678:	8d 43 fc             	lea    -0x4(%ebx),%eax
c003667b:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c003667e:	89 34 24             	mov    %esi,(%esp)
c0036681:	e8 6a f8 ff ff       	call   c0035ef0 <__hi0bits>
c0036686:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c0036689:	ba 20 00 00 00       	mov    $0x20,%edx
c003668e:	29 c2                	sub    %eax,%edx
c0036690:	83 f8 0a             	cmp    $0xa,%eax
c0036693:	89 11                	mov    %edx,(%ecx)
c0036695:	7f 41                	jg     c00366d8 <__b2d+0x78>
c0036697:	b9 0b 00 00 00       	mov    $0xb,%ecx
c003669c:	89 f2                	mov    %esi,%edx
c003669e:	29 c1                	sub    %eax,%ecx
c00366a0:	d3 ea                	shr    %cl,%edx
c00366a2:	81 ca 00 00 f0 3f    	or     $0x3ff00000,%edx
c00366a8:	89 55 ec             	mov    %edx,-0x14(%ebp)
c00366ab:	31 d2                	xor    %edx,%edx
c00366ad:	3b 7d e4             	cmp    -0x1c(%ebp),%edi
c00366b0:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
c00366b7:	73 05                	jae    c00366be <__b2d+0x5e>
c00366b9:	8b 53 f8             	mov    -0x8(%ebx),%edx
c00366bc:	d3 ea                	shr    %cl,%edx
c00366be:	8d 48 15             	lea    0x15(%eax),%ecx
c00366c1:	d3 e6                	shl    %cl,%esi
c00366c3:	09 f2                	or     %esi,%edx
c00366c5:	89 55 e8             	mov    %edx,-0x18(%ebp)
c00366c8:	dd 45 e8             	fldl   -0x18(%ebp)
c00366cb:	83 c4 18             	add    $0x18,%esp
c00366ce:	5b                   	pop    %ebx
c00366cf:	5e                   	pop    %esi
c00366d0:	5f                   	pop    %edi
c00366d1:	5d                   	pop    %ebp
c00366d2:	c3                   	ret    
c00366d3:	90                   	nop
c00366d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00366d8:	31 d2                	xor    %edx,%edx
c00366da:	3b 7d e4             	cmp    -0x1c(%ebp),%edi
c00366dd:	73 09                	jae    c00366e8 <__b2d+0x88>
c00366df:	8b 53 f8             	mov    -0x8(%ebx),%edx
c00366e2:	8d 4b f8             	lea    -0x8(%ebx),%ecx
c00366e5:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c00366e8:	89 c3                	mov    %eax,%ebx
c00366ea:	83 eb 0b             	sub    $0xb,%ebx
c00366ed:	89 5d e0             	mov    %ebx,-0x20(%ebp)
c00366f0:	74 4e                	je     c0036740 <__b2d+0xe0>
c00366f2:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
c00366f6:	bb 2b 00 00 00       	mov    $0x2b,%ebx
c00366fb:	29 c3                	sub    %eax,%ebx
c00366fd:	89 d0                	mov    %edx,%eax
c00366ff:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
c0036706:	d3 e6                	shl    %cl,%esi
c0036708:	89 d9                	mov    %ebx,%ecx
c003670a:	d3 e8                	shr    %cl,%eax
c003670c:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c003670f:	81 ce 00 00 f0 3f    	or     $0x3ff00000,%esi
c0036715:	09 c6                	or     %eax,%esi
c0036717:	31 c0                	xor    %eax,%eax
c0036719:	89 75 ec             	mov    %esi,-0x14(%ebp)
c003671c:	39 f9                	cmp    %edi,%ecx
c003671e:	76 07                	jbe    c0036727 <__b2d+0xc7>
c0036720:	8b 41 fc             	mov    -0x4(%ecx),%eax
c0036723:	89 d9                	mov    %ebx,%ecx
c0036725:	d3 e8                	shr    %cl,%eax
c0036727:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
c003672b:	d3 e2                	shl    %cl,%edx
c003672d:	09 d0                	or     %edx,%eax
c003672f:	89 45 e8             	mov    %eax,-0x18(%ebp)
c0036732:	dd 45 e8             	fldl   -0x18(%ebp)
c0036735:	83 c4 18             	add    $0x18,%esp
c0036738:	5b                   	pop    %ebx
c0036739:	5e                   	pop    %esi
c003673a:	5f                   	pop    %edi
c003673b:	5d                   	pop    %ebp
c003673c:	c3                   	ret    
c003673d:	8d 76 00             	lea    0x0(%esi),%esi
c0036740:	81 ce 00 00 f0 3f    	or     $0x3ff00000,%esi
c0036746:	89 75 ec             	mov    %esi,-0x14(%ebp)
c0036749:	89 55 e8             	mov    %edx,-0x18(%ebp)
c003674c:	dd 45 e8             	fldl   -0x18(%ebp)
c003674f:	83 c4 18             	add    $0x18,%esp
c0036752:	5b                   	pop    %ebx
c0036753:	5e                   	pop    %esi
c0036754:	5f                   	pop    %edi
c0036755:	5d                   	pop    %ebp
c0036756:	c3                   	ret    
c0036757:	89 f6                	mov    %esi,%esi
c0036759:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0036760 <__d2b>:
c0036760:	55                   	push   %ebp
c0036761:	89 e5                	mov    %esp,%ebp
c0036763:	57                   	push   %edi
c0036764:	56                   	push   %esi
c0036765:	53                   	push   %ebx
c0036766:	83 ec 2c             	sub    $0x2c,%esp
c0036769:	8b 45 08             	mov    0x8(%ebp),%eax
c003676c:	dd 45 0c             	fldl   0xc(%ebp)
c003676f:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0036776:	00 
c0036777:	dd 5d d0             	fstpl  -0x30(%ebp)
c003677a:	89 04 24             	mov    %eax,(%esp)
c003677d:	e8 ce f4 ff ff       	call   c0035c50 <_Balloc>
c0036782:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
c0036785:	89 c6                	mov    %eax,%esi
c0036787:	89 d8                	mov    %ebx,%eax
c0036789:	81 e3 ff ff ff 7f    	and    $0x7fffffff,%ebx
c003678f:	25 ff ff 0f 00       	and    $0xfffff,%eax
c0036794:	c1 eb 14             	shr    $0x14,%ebx
c0036797:	85 db                	test   %ebx,%ebx
c0036799:	74 05                	je     c00367a0 <__d2b+0x40>
c003679b:	0d 00 00 10 00       	or     $0x100000,%eax
c00367a0:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c00367a3:	8b 45 d0             	mov    -0x30(%ebp),%eax
c00367a6:	85 c0                	test   %eax,%eax
c00367a8:	74 56                	je     c0036800 <__d2b+0xa0>
c00367aa:	89 45 e0             	mov    %eax,-0x20(%ebp)
c00367ad:	8d 45 e0             	lea    -0x20(%ebp),%eax
c00367b0:	89 04 24             	mov    %eax,(%esp)
c00367b3:	e8 98 f7 ff ff       	call   c0035f50 <__lo0bits>
c00367b8:	85 c0                	test   %eax,%eax
c00367ba:	0f 85 90 00 00 00    	jne    c0036850 <__d2b+0xf0>
c00367c0:	8b 55 e0             	mov    -0x20(%ebp),%edx
c00367c3:	89 56 14             	mov    %edx,0x14(%esi)
c00367c6:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c00367c9:	83 fa 01             	cmp    $0x1,%edx
c00367cc:	19 ff                	sbb    %edi,%edi
c00367ce:	83 c7 02             	add    $0x2,%edi
c00367d1:	85 db                	test   %ebx,%ebx
c00367d3:	89 56 18             	mov    %edx,0x18(%esi)
c00367d6:	89 7e 10             	mov    %edi,0x10(%esi)
c00367d9:	74 49                	je     c0036824 <__d2b+0xc4>
c00367db:	8b 4d 14             	mov    0x14(%ebp),%ecx
c00367de:	8d 94 18 cd fb ff ff 	lea    -0x433(%eax,%ebx,1),%edx
c00367e5:	89 11                	mov    %edx,(%ecx)
c00367e7:	ba 35 00 00 00       	mov    $0x35,%edx
c00367ec:	29 c2                	sub    %eax,%edx
c00367ee:	8b 45 18             	mov    0x18(%ebp),%eax
c00367f1:	89 10                	mov    %edx,(%eax)
c00367f3:	83 c4 2c             	add    $0x2c,%esp
c00367f6:	89 f0                	mov    %esi,%eax
c00367f8:	5b                   	pop    %ebx
c00367f9:	5e                   	pop    %esi
c00367fa:	5f                   	pop    %edi
c00367fb:	5d                   	pop    %ebp
c00367fc:	c3                   	ret    
c00367fd:	8d 76 00             	lea    0x0(%esi),%esi
c0036800:	8d 45 e4             	lea    -0x1c(%ebp),%eax
c0036803:	bf 01 00 00 00       	mov    $0x1,%edi
c0036808:	89 04 24             	mov    %eax,(%esp)
c003680b:	e8 40 f7 ff ff       	call   c0035f50 <__lo0bits>
c0036810:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c0036813:	c7 46 10 01 00 00 00 	movl   $0x1,0x10(%esi)
c003681a:	89 56 14             	mov    %edx,0x14(%esi)
c003681d:	83 c0 20             	add    $0x20,%eax
c0036820:	85 db                	test   %ebx,%ebx
c0036822:	75 b7                	jne    c00367db <__d2b+0x7b>
c0036824:	8b 4d 14             	mov    0x14(%ebp),%ecx
c0036827:	2d 32 04 00 00       	sub    $0x432,%eax
c003682c:	89 01                	mov    %eax,(%ecx)
c003682e:	8b 44 be 10          	mov    0x10(%esi,%edi,4),%eax
c0036832:	c1 e7 05             	shl    $0x5,%edi
c0036835:	89 04 24             	mov    %eax,(%esp)
c0036838:	e8 b3 f6 ff ff       	call   c0035ef0 <__hi0bits>
c003683d:	29 c7                	sub    %eax,%edi
c003683f:	8b 45 18             	mov    0x18(%ebp),%eax
c0036842:	89 38                	mov    %edi,(%eax)
c0036844:	83 c4 2c             	add    $0x2c,%esp
c0036847:	89 f0                	mov    %esi,%eax
c0036849:	5b                   	pop    %ebx
c003684a:	5e                   	pop    %esi
c003684b:	5f                   	pop    %edi
c003684c:	5d                   	pop    %ebp
c003684d:	c3                   	ret    
c003684e:	66 90                	xchg   %ax,%ax
c0036850:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c0036853:	b9 20 00 00 00       	mov    $0x20,%ecx
c0036858:	29 c1                	sub    %eax,%ecx
c003685a:	89 d7                	mov    %edx,%edi
c003685c:	d3 e7                	shl    %cl,%edi
c003685e:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0036861:	09 f9                	or     %edi,%ecx
c0036863:	89 4e 14             	mov    %ecx,0x14(%esi)
c0036866:	89 c1                	mov    %eax,%ecx
c0036868:	d3 ea                	shr    %cl,%edx
c003686a:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c003686d:	e9 57 ff ff ff       	jmp    c00367c9 <__d2b+0x69>
c0036872:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036879:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0036880 <__ratio>:
c0036880:	55                   	push   %ebp
c0036881:	89 e5                	mov    %esp,%ebp
c0036883:	56                   	push   %esi
c0036884:	53                   	push   %ebx
c0036885:	83 ec 30             	sub    $0x30,%esp
c0036888:	8b 75 08             	mov    0x8(%ebp),%esi
c003688b:	8d 45 f0             	lea    -0x10(%ebp),%eax
c003688e:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c0036891:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036895:	89 34 24             	mov    %esi,(%esp)
c0036898:	e8 c3 fd ff ff       	call   c0036660 <__b2d>
c003689d:	8d 45 f4             	lea    -0xc(%ebp),%eax
c00368a0:	89 44 24 04          	mov    %eax,0x4(%esp)
c00368a4:	89 1c 24             	mov    %ebx,(%esp)
c00368a7:	dd 55 e0             	fstl   -0x20(%ebp)
c00368aa:	dd 5d d8             	fstpl  -0x28(%ebp)
c00368ad:	e8 ae fd ff ff       	call   c0036660 <__b2d>
c00368b2:	8b 46 10             	mov    0x10(%esi),%eax
c00368b5:	2b 43 10             	sub    0x10(%ebx),%eax
c00368b8:	8b 55 f0             	mov    -0x10(%ebp),%edx
c00368bb:	2b 55 f4             	sub    -0xc(%ebp),%edx
c00368be:	c1 e0 05             	shl    $0x5,%eax
c00368c1:	01 d0                	add    %edx,%eax
c00368c3:	dd 55 d0             	fstl   -0x30(%ebp)
c00368c6:	85 c0                	test   %eax,%eax
c00368c8:	dd 45 d8             	fldl   -0x28(%ebp)
c00368cb:	7e 1b                	jle    c00368e8 <__ratio+0x68>
c00368cd:	dd d8                	fstp   %st(0)
c00368cf:	c1 e0 14             	shl    $0x14,%eax
c00368d2:	01 45 e4             	add    %eax,-0x1c(%ebp)
c00368d5:	dd 45 e0             	fldl   -0x20(%ebp)
c00368d8:	83 c4 30             	add    $0x30,%esp
c00368db:	5b                   	pop    %ebx
c00368dc:	de f1                	fdivp  %st,%st(1)
c00368de:	5e                   	pop    %esi
c00368df:	5d                   	pop    %ebp
c00368e0:	c3                   	ret    
c00368e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00368e8:	dd d9                	fstp   %st(1)
c00368ea:	c1 e0 14             	shl    $0x14,%eax
c00368ed:	29 45 d4             	sub    %eax,-0x2c(%ebp)
c00368f0:	dd 45 d0             	fldl   -0x30(%ebp)
c00368f3:	83 c4 30             	add    $0x30,%esp
c00368f6:	5b                   	pop    %ebx
c00368f7:	de f9                	fdivrp %st,%st(1)
c00368f9:	5e                   	pop    %esi
c00368fa:	5d                   	pop    %ebp
c00368fb:	c3                   	ret    
c00368fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

c0036900 <_mprec_log10>:
c0036900:	55                   	push   %ebp
c0036901:	89 e5                	mov    %esp,%ebp
c0036903:	8b 45 08             	mov    0x8(%ebp),%eax
c0036906:	83 f8 17             	cmp    $0x17,%eax
c0036909:	7e 1d                	jle    c0036928 <_mprec_log10+0x28>
c003690b:	d9 e8                	fld1   
c003690d:	d9 05 90 9a 03 c0    	flds   0xc0039a90
c0036913:	90                   	nop
c0036914:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036918:	83 e8 01             	sub    $0x1,%eax
c003691b:	dc c9                	fmul   %st,%st(1)
c003691d:	75 f9                	jne    c0036918 <_mprec_log10+0x18>
c003691f:	dd d8                	fstp   %st(0)
c0036921:	5d                   	pop    %ebp
c0036922:	c3                   	ret    
c0036923:	90                   	nop
c0036924:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036928:	dd 04 c5 60 9b 03 c0 	fldl   -0x3ffc64a0(,%eax,8)
c003692f:	5d                   	pop    %ebp
c0036930:	c3                   	ret    
c0036931:	eb 0d                	jmp    c0036940 <__copybits>
c0036933:	90                   	nop
c0036934:	90                   	nop
c0036935:	90                   	nop
c0036936:	90                   	nop
c0036937:	90                   	nop
c0036938:	90                   	nop
c0036939:	90                   	nop
c003693a:	90                   	nop
c003693b:	90                   	nop
c003693c:	90                   	nop
c003693d:	90                   	nop
c003693e:	90                   	nop
c003693f:	90                   	nop

c0036940 <__copybits>:
c0036940:	55                   	push   %ebp
c0036941:	89 e5                	mov    %esp,%ebp
c0036943:	57                   	push   %edi
c0036944:	8b 7d 10             	mov    0x10(%ebp),%edi
c0036947:	56                   	push   %esi
c0036948:	8b 75 0c             	mov    0xc(%ebp),%esi
c003694b:	8b 45 08             	mov    0x8(%ebp),%eax
c003694e:	53                   	push   %ebx
c003694f:	8b 4f 10             	mov    0x10(%edi),%ecx
c0036952:	8d 56 ff             	lea    -0x1(%esi),%edx
c0036955:	c1 fa 05             	sar    $0x5,%edx
c0036958:	8d 74 90 04          	lea    0x4(%eax,%edx,4),%esi
c003695c:	8d 57 14             	lea    0x14(%edi),%edx
c003695f:	8d 1c 8a             	lea    (%edx,%ecx,4),%ebx
c0036962:	39 da                	cmp    %ebx,%edx
c0036964:	73 34                	jae    c003699a <__copybits+0x5a>
c0036966:	89 c1                	mov    %eax,%ecx
c0036968:	83 c2 04             	add    $0x4,%edx
c003696b:	8b 42 fc             	mov    -0x4(%edx),%eax
c003696e:	83 c1 04             	add    $0x4,%ecx
c0036971:	39 d3                	cmp    %edx,%ebx
c0036973:	89 41 fc             	mov    %eax,-0x4(%ecx)
c0036976:	77 f0                	ja     c0036968 <__copybits+0x28>
c0036978:	8b 45 08             	mov    0x8(%ebp),%eax
c003697b:	29 fb                	sub    %edi,%ebx
c003697d:	8d 53 eb             	lea    -0x15(%ebx),%edx
c0036980:	c1 ea 02             	shr    $0x2,%edx
c0036983:	8d 44 90 04          	lea    0x4(%eax,%edx,4),%eax
c0036987:	39 c6                	cmp    %eax,%esi
c0036989:	76 13                	jbe    c003699e <__copybits+0x5e>
c003698b:	90                   	nop
c003698c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036990:	83 c0 04             	add    $0x4,%eax
c0036993:	c7 40 fc 00 00 00 00 	movl   $0x0,-0x4(%eax)
c003699a:	39 c6                	cmp    %eax,%esi
c003699c:	77 f2                	ja     c0036990 <__copybits+0x50>
c003699e:	5b                   	pop    %ebx
c003699f:	5e                   	pop    %esi
c00369a0:	5f                   	pop    %edi
c00369a1:	5d                   	pop    %ebp
c00369a2:	c3                   	ret    
c00369a3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00369a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c00369b0 <__any_on>:
c00369b0:	55                   	push   %ebp
c00369b1:	89 e5                	mov    %esp,%ebp
c00369b3:	8b 45 08             	mov    0x8(%ebp),%eax
c00369b6:	57                   	push   %edi
c00369b7:	56                   	push   %esi
c00369b8:	53                   	push   %ebx
c00369b9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c00369bc:	8d 50 14             	lea    0x14(%eax),%edx
c00369bf:	8b 40 10             	mov    0x10(%eax),%eax
c00369c2:	c1 fb 05             	sar    $0x5,%ebx
c00369c5:	39 d8                	cmp    %ebx,%eax
c00369c7:	7d 2f                	jge    c00369f8 <__any_on+0x48>
c00369c9:	8d 1c 82             	lea    (%edx,%eax,4),%ebx
c00369cc:	39 da                	cmp    %ebx,%edx
c00369ce:	73 1d                	jae    c00369ed <__any_on+0x3d>
c00369d0:	8d 43 fc             	lea    -0x4(%ebx),%eax
c00369d3:	8b 5b fc             	mov    -0x4(%ebx),%ebx
c00369d6:	85 db                	test   %ebx,%ebx
c00369d8:	74 0f                	je     c00369e9 <__any_on+0x39>
c00369da:	eb 44                	jmp    c0036a20 <__any_on+0x70>
c00369dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00369e0:	83 e8 04             	sub    $0x4,%eax
c00369e3:	8b 08                	mov    (%eax),%ecx
c00369e5:	85 c9                	test   %ecx,%ecx
c00369e7:	75 37                	jne    c0036a20 <__any_on+0x70>
c00369e9:	39 c2                	cmp    %eax,%edx
c00369eb:	72 f3                	jb     c00369e0 <__any_on+0x30>
c00369ed:	31 c0                	xor    %eax,%eax
c00369ef:	5b                   	pop    %ebx
c00369f0:	5e                   	pop    %esi
c00369f1:	5f                   	pop    %edi
c00369f2:	5d                   	pop    %ebp
c00369f3:	c3                   	ret    
c00369f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00369f8:	7e 1e                	jle    c0036a18 <__any_on+0x68>
c00369fa:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c00369fd:	8d 1c 9a             	lea    (%edx,%ebx,4),%ebx
c0036a00:	83 e1 1f             	and    $0x1f,%ecx
c0036a03:	74 c7                	je     c00369cc <__any_on+0x1c>
c0036a05:	8b 3b                	mov    (%ebx),%edi
c0036a07:	b8 01 00 00 00       	mov    $0x1,%eax
c0036a0c:	89 fe                	mov    %edi,%esi
c0036a0e:	d3 ee                	shr    %cl,%esi
c0036a10:	d3 e6                	shl    %cl,%esi
c0036a12:	39 fe                	cmp    %edi,%esi
c0036a14:	75 d9                	jne    c00369ef <__any_on+0x3f>
c0036a16:	eb b4                	jmp    c00369cc <__any_on+0x1c>
c0036a18:	8d 1c 9a             	lea    (%edx,%ebx,4),%ebx
c0036a1b:	eb af                	jmp    c00369cc <__any_on+0x1c>
c0036a1d:	8d 76 00             	lea    0x0(%esi),%esi
c0036a20:	5b                   	pop    %ebx
c0036a21:	b8 01 00 00 00       	mov    $0x1,%eax
c0036a26:	5e                   	pop    %esi
c0036a27:	5f                   	pop    %edi
c0036a28:	5d                   	pop    %ebp
c0036a29:	c3                   	ret    
c0036a2a:	66 90                	xchg   %ax,%ax
c0036a2c:	66 90                	xchg   %ax,%ax
c0036a2e:	66 90                	xchg   %ax,%ax

c0036a30 <_sbrk_r>:
c0036a30:	55                   	push   %ebp
c0036a31:	89 e5                	mov    %esp,%ebp
c0036a33:	83 ec 18             	sub    $0x18,%esp
c0036a36:	8b 45 0c             	mov    0xc(%ebp),%eax
c0036a39:	c7 05 04 40 09 c0 00 	movl   $0x0,0xc0094004
c0036a40:	00 00 00 
c0036a43:	89 04 24             	mov    %eax,(%esp)
c0036a46:	e8 1c a8 ff ff       	call   c0031267 <sbrk>
c0036a4b:	83 f8 ff             	cmp    $0xffffffff,%eax
c0036a4e:	74 08                	je     c0036a58 <_sbrk_r+0x28>
c0036a50:	c9                   	leave  
c0036a51:	c3                   	ret    
c0036a52:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036a58:	8b 15 04 40 09 c0    	mov    0xc0094004,%edx
c0036a5e:	85 d2                	test   %edx,%edx
c0036a60:	74 ee                	je     c0036a50 <_sbrk_r+0x20>
c0036a62:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0036a65:	89 11                	mov    %edx,(%ecx)
c0036a67:	c9                   	leave  
c0036a68:	c3                   	ret    
c0036a69:	66 90                	xchg   %ax,%ax
c0036a6b:	66 90                	xchg   %ax,%ax
c0036a6d:	66 90                	xchg   %ax,%ax
c0036a6f:	90                   	nop

c0036a70 <__fpclassifyd>:
c0036a70:	55                   	push   %ebp
c0036a71:	b8 02 00 00 00       	mov    $0x2,%eax
c0036a76:	89 e5                	mov    %esp,%ebp
c0036a78:	53                   	push   %ebx
c0036a79:	83 ec 0c             	sub    $0xc,%esp
c0036a7c:	dd 45 08             	fldl   0x8(%ebp)
c0036a7f:	dd 5d f0             	fstpl  -0x10(%ebp)
c0036a82:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0036a85:	8b 4d f4             	mov    -0xc(%ebp),%ecx
c0036a88:	89 d3                	mov    %edx,%ebx
c0036a8a:	09 cb                	or     %ecx,%ebx
c0036a8c:	75 0a                	jne    c0036a98 <__fpclassifyd+0x28>
c0036a8e:	83 c4 0c             	add    $0xc,%esp
c0036a91:	5b                   	pop    %ebx
c0036a92:	5d                   	pop    %ebp
c0036a93:	c3                   	ret    
c0036a94:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036a98:	85 d2                	test   %edx,%edx
c0036a9a:	0f 94 c2             	sete   %dl
c0036a9d:	75 08                	jne    c0036aa7 <__fpclassifyd+0x37>
c0036a9f:	81 f9 00 00 00 80    	cmp    $0x80000000,%ecx
c0036aa5:	74 e7                	je     c0036a8e <__fpclassifyd+0x1e>
c0036aa7:	81 e1 ff ff ff 7f    	and    $0x7fffffff,%ecx
c0036aad:	b8 04 00 00 00       	mov    $0x4,%eax
c0036ab2:	8d 99 00 00 f0 ff    	lea    -0x100000(%ecx),%ebx
c0036ab8:	81 fb ff ff df 7f    	cmp    $0x7fdfffff,%ebx
c0036abe:	76 ce                	jbe    c0036a8e <__fpclassifyd+0x1e>
c0036ac0:	81 f9 ff ff 0f 00    	cmp    $0xfffff,%ecx
c0036ac6:	b0 03                	mov    $0x3,%al
c0036ac8:	76 c4                	jbe    c0036a8e <__fpclassifyd+0x1e>
c0036aca:	31 c0                	xor    %eax,%eax
c0036acc:	81 f9 00 00 f0 7f    	cmp    $0x7ff00000,%ecx
c0036ad2:	0f 94 c0             	sete   %al
c0036ad5:	21 d0                	and    %edx,%eax
c0036ad7:	eb b5                	jmp    c0036a8e <__fpclassifyd+0x1e>
c0036ad9:	66 90                	xchg   %ax,%ax
c0036adb:	66 90                	xchg   %ax,%ax
c0036add:	66 90                	xchg   %ax,%ax
c0036adf:	90                   	nop

c0036ae0 <strcmp>:
c0036ae0:	55                   	push   %ebp
c0036ae1:	89 e5                	mov    %esp,%ebp
c0036ae3:	8b 45 08             	mov    0x8(%ebp),%eax
c0036ae6:	8b 55 0c             	mov    0xc(%ebp),%edx
c0036ae9:	53                   	push   %ebx
c0036aea:	89 c1                	mov    %eax,%ecx
c0036aec:	09 d1                	or     %edx,%ecx
c0036aee:	83 e1 03             	and    $0x3,%ecx
c0036af1:	75 17                	jne    c0036b0a <strcmp+0x2a>
c0036af3:	8b 08                	mov    (%eax),%ecx
c0036af5:	3b 0a                	cmp    (%edx),%ecx
c0036af7:	74 33                	je     c0036b2c <strcmp+0x4c>
c0036af9:	eb 0f                	jmp    c0036b0a <strcmp+0x2a>
c0036afb:	90                   	nop
c0036afc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036b00:	3a 0a                	cmp    (%edx),%cl
c0036b02:	75 0d                	jne    c0036b11 <strcmp+0x31>
c0036b04:	83 c0 01             	add    $0x1,%eax
c0036b07:	83 c2 01             	add    $0x1,%edx
c0036b0a:	0f b6 08             	movzbl (%eax),%ecx
c0036b0d:	84 c9                	test   %cl,%cl
c0036b0f:	75 ef                	jne    c0036b00 <strcmp+0x20>
c0036b11:	0f b6 00             	movzbl (%eax),%eax
c0036b14:	0f b6 12             	movzbl (%edx),%edx
c0036b17:	5b                   	pop    %ebx
c0036b18:	5d                   	pop    %ebp
c0036b19:	29 d0                	sub    %edx,%eax
c0036b1b:	c3                   	ret    
c0036b1c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036b20:	83 c0 04             	add    $0x4,%eax
c0036b23:	83 c2 04             	add    $0x4,%edx
c0036b26:	8b 08                	mov    (%eax),%ecx
c0036b28:	3b 0a                	cmp    (%edx),%ecx
c0036b2a:	75 de                	jne    c0036b0a <strcmp+0x2a>
c0036b2c:	8d 99 ff fe fe fe    	lea    -0x1010101(%ecx),%ebx
c0036b32:	f7 d1                	not    %ecx
c0036b34:	21 cb                	and    %ecx,%ebx
c0036b36:	81 e3 80 80 80 80    	and    $0x80808080,%ebx
c0036b3c:	74 e2                	je     c0036b20 <strcmp+0x40>
c0036b3e:	31 c0                	xor    %eax,%eax
c0036b40:	5b                   	pop    %ebx
c0036b41:	5d                   	pop    %ebp
c0036b42:	c3                   	ret    
c0036b43:	66 90                	xchg   %ax,%ax
c0036b45:	66 90                	xchg   %ax,%ax
c0036b47:	66 90                	xchg   %ax,%ax
c0036b49:	66 90                	xchg   %ax,%ax
c0036b4b:	66 90                	xchg   %ax,%ax
c0036b4d:	66 90                	xchg   %ax,%ax
c0036b4f:	90                   	nop

c0036b50 <strlen>:
c0036b50:	55                   	push   %ebp
c0036b51:	89 e5                	mov    %esp,%ebp
c0036b53:	57                   	push   %edi
c0036b54:	8b 55 08             	mov    0x8(%ebp),%edx
c0036b57:	89 d7                	mov    %edx,%edi
c0036b59:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0036b5f:	74 25                	je     c0036b86 <L5>
c0036b61:	8a 0f                	mov    (%edi),%cl
c0036b63:	47                   	inc    %edi
c0036b64:	84 c9                	test   %cl,%cl
c0036b66:	74 56                	je     c0036bbe <L15>
c0036b68:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0036b6e:	74 16                	je     c0036b86 <L5>
c0036b70:	8a 0f                	mov    (%edi),%cl
c0036b72:	47                   	inc    %edi
c0036b73:	84 c9                	test   %cl,%cl
c0036b75:	74 47                	je     c0036bbe <L15>
c0036b77:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0036b7d:	74 07                	je     c0036b86 <L5>
c0036b7f:	8a 0f                	mov    (%edi),%cl
c0036b81:	47                   	inc    %edi
c0036b82:	84 c9                	test   %cl,%cl
c0036b84:	74 38                	je     c0036bbe <L15>

c0036b86 <L5>:
c0036b86:	83 ef 04             	sub    $0x4,%edi
c0036b89:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0036b90 <L10>:
c0036b90:	83 c7 04             	add    $0x4,%edi
c0036b93:	8b 0f                	mov    (%edi),%ecx
c0036b95:	8d 81 ff fe fe fe    	lea    -0x1010101(%ecx),%eax
c0036b9b:	f7 d1                	not    %ecx
c0036b9d:	21 c8                	and    %ecx,%eax
c0036b9f:	a9 80 80 80 80       	test   $0x80808080,%eax
c0036ba4:	74 ea                	je     c0036b90 <L10>
c0036ba6:	f7 d1                	not    %ecx
c0036ba8:	47                   	inc    %edi
c0036ba9:	84 c9                	test   %cl,%cl
c0036bab:	74 11                	je     c0036bbe <L15>
c0036bad:	47                   	inc    %edi
c0036bae:	c1 e9 08             	shr    $0x8,%ecx
c0036bb1:	84 c9                	test   %cl,%cl
c0036bb3:	74 09                	je     c0036bbe <L15>
c0036bb5:	47                   	inc    %edi
c0036bb6:	c1 e9 08             	shr    $0x8,%ecx
c0036bb9:	84 c9                	test   %cl,%cl
c0036bbb:	74 01                	je     c0036bbe <L15>
c0036bbd:	47                   	inc    %edi

c0036bbe <L15>:
c0036bbe:	29 d7                	sub    %edx,%edi
c0036bc0:	8d 47 ff             	lea    -0x1(%edi),%eax
c0036bc3:	8d 65 fc             	lea    -0x4(%ebp),%esp
c0036bc6:	5f                   	pop    %edi
c0036bc7:	c9                   	leave  
c0036bc8:	c3                   	ret    
c0036bc9:	66 90                	xchg   %ax,%ax
c0036bcb:	66 90                	xchg   %ax,%ax
c0036bcd:	66 90                	xchg   %ax,%ax
c0036bcf:	90                   	nop

c0036bd0 <__ssprint_r>:
c0036bd0:	55                   	push   %ebp
c0036bd1:	89 e5                	mov    %esp,%ebp
c0036bd3:	57                   	push   %edi
c0036bd4:	56                   	push   %esi
c0036bd5:	53                   	push   %ebx
c0036bd6:	83 ec 2c             	sub    $0x2c,%esp
c0036bd9:	8b 45 10             	mov    0x10(%ebp),%eax
c0036bdc:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c0036bdf:	8b 00                	mov    (%eax),%eax
c0036be1:	89 c7                	mov    %eax,%edi
c0036be3:	8b 45 10             	mov    0x10(%ebp),%eax
c0036be6:	8b 40 08             	mov    0x8(%eax),%eax
c0036be9:	85 c0                	test   %eax,%eax
c0036beb:	0f 84 af 01 00 00    	je     c0036da0 <__ssprint_r+0x1d0>
c0036bf1:	31 c9                	xor    %ecx,%ecx
c0036bf3:	31 d2                	xor    %edx,%edx
c0036bf5:	8b 03                	mov    (%ebx),%eax
c0036bf7:	89 ce                	mov    %ecx,%esi
c0036bf9:	85 f6                	test   %esi,%esi
c0036bfb:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c0036bfe:	0f 84 ec 00 00 00    	je     c0036cf0 <__ssprint_r+0x120>
c0036c04:	8b 53 08             	mov    0x8(%ebx),%edx
c0036c07:	39 d6                	cmp    %edx,%esi
c0036c09:	0f 82 fc 00 00 00    	jb     c0036d0b <__ssprint_r+0x13b>
c0036c0f:	0f b7 4b 0c          	movzwl 0xc(%ebx),%ecx
c0036c13:	66 f7 c1 80 04       	test   $0x480,%cx
c0036c18:	0f 84 fa 00 00 00    	je     c0036d18 <__ssprint_r+0x148>
c0036c1e:	8b 53 10             	mov    0x10(%ebx),%edx
c0036c21:	29 d0                	sub    %edx,%eax
c0036c23:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0036c26:	8b 43 14             	mov    0x14(%ebx),%eax
c0036c29:	89 55 d8             	mov    %edx,-0x28(%ebp)
c0036c2c:	8d 04 40             	lea    (%eax,%eax,2),%eax
c0036c2f:	89 c2                	mov    %eax,%edx
c0036c31:	c1 ea 1f             	shr    $0x1f,%edx
c0036c34:	01 d0                	add    %edx,%eax
c0036c36:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0036c39:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0036c3c:	d1 7d e0             	sarl   -0x20(%ebp)
c0036c3f:	8d 44 06 01          	lea    0x1(%esi,%eax,1),%eax
c0036c43:	39 45 e0             	cmp    %eax,-0x20(%ebp)
c0036c46:	0f 83 34 01 00 00    	jae    c0036d80 <__ssprint_r+0x1b0>
c0036c4c:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0036c4f:	80 e5 04             	and    $0x4,%ch
c0036c52:	0f 84 c8 00 00 00    	je     c0036d20 <__ssprint_r+0x150>
c0036c58:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036c5c:	8b 45 08             	mov    0x8(%ebp),%eax
c0036c5f:	89 04 24             	mov    %eax,(%esp)
c0036c62:	e8 e9 e7 ff ff       	call   c0035450 <_malloc_r>
c0036c67:	85 c0                	test   %eax,%eax
c0036c69:	89 c2                	mov    %eax,%edx
c0036c6b:	0f 84 e1 00 00 00    	je     c0036d52 <__ssprint_r+0x182>
c0036c71:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0036c74:	89 55 d8             	mov    %edx,-0x28(%ebp)
c0036c77:	89 44 24 08          	mov    %eax,0x8(%esp)
c0036c7b:	8b 43 10             	mov    0x10(%ebx),%eax
c0036c7e:	89 14 24             	mov    %edx,(%esp)
c0036c81:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036c85:	e8 0a b2 ff ff       	call   c0031e94 <memcpy>
c0036c8a:	0f b7 43 0c          	movzwl 0xc(%ebx),%eax
c0036c8e:	8b 55 d8             	mov    -0x28(%ebp),%edx
c0036c91:	66 25 7f fb          	and    $0xfb7f,%ax
c0036c95:	0c 80                	or     $0x80,%al
c0036c97:	66 89 43 0c          	mov    %ax,0xc(%ebx)
c0036c9b:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0036c9e:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0036ca1:	89 53 10             	mov    %edx,0x10(%ebx)
c0036ca4:	89 4b 14             	mov    %ecx,0x14(%ebx)
c0036ca7:	2b 4d dc             	sub    -0x24(%ebp),%ecx
c0036caa:	01 d0                	add    %edx,%eax
c0036cac:	89 03                	mov    %eax,(%ebx)
c0036cae:	89 f2                	mov    %esi,%edx
c0036cb0:	89 4b 08             	mov    %ecx,0x8(%ebx)
c0036cb3:	89 f1                	mov    %esi,%ecx
c0036cb5:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c0036cb9:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0036cbc:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0036cbf:	89 04 24             	mov    %eax,(%esp)
c0036cc2:	89 55 dc             	mov    %edx,-0x24(%ebp)
c0036cc5:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c0036cc9:	e8 22 13 00 00       	call   c0037ff0 <memmove>
c0036cce:	8b 03                	mov    (%ebx),%eax
c0036cd0:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0036cd3:	8b 55 dc             	mov    -0x24(%ebp),%edx
c0036cd6:	29 53 08             	sub    %edx,0x8(%ebx)
c0036cd9:	01 c8                	add    %ecx,%eax
c0036cdb:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0036cde:	89 03                	mov    %eax,(%ebx)
c0036ce0:	8b 51 08             	mov    0x8(%ecx),%edx
c0036ce3:	29 f2                	sub    %esi,%edx
c0036ce5:	85 d2                	test   %edx,%edx
c0036ce7:	89 51 08             	mov    %edx,0x8(%ecx)
c0036cea:	0f 84 98 00 00 00    	je     c0036d88 <__ssprint_r+0x1b8>
c0036cf0:	8b 77 04             	mov    0x4(%edi),%esi
c0036cf3:	83 c7 08             	add    $0x8,%edi
c0036cf6:	8b 4f f8             	mov    -0x8(%edi),%ecx
c0036cf9:	85 f6                	test   %esi,%esi
c0036cfb:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0036cfe:	74 f0                	je     c0036cf0 <__ssprint_r+0x120>
c0036d00:	8b 53 08             	mov    0x8(%ebx),%edx
c0036d03:	39 d6                	cmp    %edx,%esi
c0036d05:	0f 83 04 ff ff ff    	jae    c0036c0f <__ssprint_r+0x3f>
c0036d0b:	89 f2                	mov    %esi,%edx
c0036d0d:	89 f1                	mov    %esi,%ecx
c0036d0f:	eb a4                	jmp    c0036cb5 <__ssprint_r+0xe5>
c0036d11:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036d18:	89 d1                	mov    %edx,%ecx
c0036d1a:	eb 99                	jmp    c0036cb5 <__ssprint_r+0xe5>
c0036d1c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036d20:	89 44 24 08          	mov    %eax,0x8(%esp)
c0036d24:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0036d27:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036d2b:	8b 45 08             	mov    0x8(%ebp),%eax
c0036d2e:	89 04 24             	mov    %eax,(%esp)
c0036d31:	e8 4a 13 00 00       	call   c0038080 <_realloc_r>
c0036d36:	85 c0                	test   %eax,%eax
c0036d38:	89 c2                	mov    %eax,%edx
c0036d3a:	0f 85 5b ff ff ff    	jne    c0036c9b <__ssprint_r+0xcb>
c0036d40:	8b 43 10             	mov    0x10(%ebx),%eax
c0036d43:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036d47:	8b 45 08             	mov    0x8(%ebp),%eax
c0036d4a:	89 04 24             	mov    %eax,(%esp)
c0036d4d:	e8 3e 10 00 00       	call   c0037d90 <_free_r>
c0036d52:	8b 45 08             	mov    0x8(%ebp),%eax
c0036d55:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0036d5b:	8b 45 10             	mov    0x10(%ebp),%eax
c0036d5e:	66 83 4b 0c 40       	orw    $0x40,0xc(%ebx)
c0036d63:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
c0036d6a:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c0036d71:	83 c4 2c             	add    $0x2c,%esp
c0036d74:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0036d79:	5b                   	pop    %ebx
c0036d7a:	5e                   	pop    %esi
c0036d7b:	5f                   	pop    %edi
c0036d7c:	5d                   	pop    %ebp
c0036d7d:	c3                   	ret    
c0036d7e:	66 90                	xchg   %ax,%ax
c0036d80:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0036d83:	e9 c7 fe ff ff       	jmp    c0036c4f <__ssprint_r+0x7f>
c0036d88:	c7 41 04 00 00 00 00 	movl   $0x0,0x4(%ecx)
c0036d8f:	83 c4 2c             	add    $0x2c,%esp
c0036d92:	31 c0                	xor    %eax,%eax
c0036d94:	5b                   	pop    %ebx
c0036d95:	5e                   	pop    %esi
c0036d96:	5f                   	pop    %edi
c0036d97:	5d                   	pop    %ebp
c0036d98:	c3                   	ret    
c0036d99:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036da0:	8b 45 10             	mov    0x10(%ebp),%eax
c0036da3:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c0036daa:	83 c4 2c             	add    $0x2c,%esp
c0036dad:	31 c0                	xor    %eax,%eax
c0036daf:	5b                   	pop    %ebx
c0036db0:	5e                   	pop    %esi
c0036db1:	5f                   	pop    %edi
c0036db2:	5d                   	pop    %ebp
c0036db3:	c3                   	ret    
c0036db4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036dba:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

c0036dc0 <_svfiprintf_r>:
c0036dc0:	55                   	push   %ebp
c0036dc1:	89 e5                	mov    %esp,%ebp
c0036dc3:	57                   	push   %edi
c0036dc4:	56                   	push   %esi
c0036dc5:	53                   	push   %ebx
c0036dc6:	81 ec cc 00 00 00    	sub    $0xcc,%esp
c0036dcc:	8b 45 0c             	mov    0xc(%ebp),%eax
c0036dcf:	f6 40 0c 80          	testb  $0x80,0xc(%eax)
c0036dd3:	74 0b                	je     c0036de0 <_svfiprintf_r+0x20>
c0036dd5:	8b 50 10             	mov    0x10(%eax),%edx
c0036dd8:	85 d2                	test   %edx,%edx
c0036dda:	0f 84 1c 0d 00 00    	je     c0037afc <_svfiprintf_r+0xd3c>
c0036de0:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0036de3:	8d 5d a7             	lea    -0x59(%ebp),%ebx
c0036de6:	89 c6                	mov    %eax,%esi
c0036de8:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%ebp)
c0036dee:	29 d8                	sub    %ebx,%eax
c0036df0:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%ebp)
c0036df7:	00 00 00 
c0036dfa:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c0036e01:	00 00 00 
c0036e04:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0036e0b:	00 00 00 
c0036e0e:	c7 85 50 ff ff ff 00 	movl   $0x0,-0xb0(%ebp)
c0036e15:	00 00 00 
c0036e18:	89 85 3c ff ff ff    	mov    %eax,-0xc4(%ebp)
c0036e1e:	8b 45 10             	mov    0x10(%ebp),%eax
c0036e21:	8b 5d 10             	mov    0x10(%ebp),%ebx
c0036e24:	0f b6 00             	movzbl (%eax),%eax
c0036e27:	84 c0                	test   %al,%al
c0036e29:	74 58                	je     c0036e83 <_svfiprintf_r+0xc3>
c0036e2b:	3c 25                	cmp    $0x25,%al
c0036e2d:	75 13                	jne    c0036e42 <_svfiprintf_r+0x82>
c0036e2f:	eb 52                	jmp    c0036e83 <_svfiprintf_r+0xc3>
c0036e31:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036e38:	84 c0                	test   %al,%al
c0036e3a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036e40:	74 0a                	je     c0036e4c <_svfiprintf_r+0x8c>
c0036e42:	83 c3 01             	add    $0x1,%ebx
c0036e45:	0f b6 03             	movzbl (%ebx),%eax
c0036e48:	3c 25                	cmp    $0x25,%al
c0036e4a:	75 ec                	jne    c0036e38 <_svfiprintf_r+0x78>
c0036e4c:	89 df                	mov    %ebx,%edi
c0036e4e:	2b 7d 10             	sub    0x10(%ebp),%edi
c0036e51:	74 30                	je     c0036e83 <_svfiprintf_r+0xc3>
c0036e53:	8b 45 10             	mov    0x10(%ebp),%eax
c0036e56:	83 c6 08             	add    $0x8,%esi
c0036e59:	89 7e fc             	mov    %edi,-0x4(%esi)
c0036e5c:	01 bd 7c ff ff ff    	add    %edi,-0x84(%ebp)
c0036e62:	89 46 f8             	mov    %eax,-0x8(%esi)
c0036e65:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0036e6b:	83 c0 01             	add    $0x1,%eax
c0036e6e:	83 f8 07             	cmp    $0x7,%eax
c0036e71:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0036e77:	0f 8f eb 0a 00 00    	jg     c0037968 <_svfiprintf_r+0xba8>
c0036e7d:	01 bd 50 ff ff ff    	add    %edi,-0xb0(%ebp)
c0036e83:	80 3b 00             	cmpb   $0x0,(%ebx)
c0036e86:	0f 84 11 09 00 00    	je     c003779d <_svfiprintf_r+0x9dd>
c0036e8c:	8d 43 01             	lea    0x1(%ebx),%eax
c0036e8f:	31 ff                	xor    %edi,%edi
c0036e91:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c0036e98:	c7 85 5c ff ff ff ff 	movl   $0xffffffff,-0xa4(%ebp)
c0036e9f:	ff ff ff 
c0036ea2:	c7 85 54 ff ff ff 00 	movl   $0x0,-0xac(%ebp)
c0036ea9:	00 00 00 
c0036eac:	c7 85 64 ff ff ff 00 	movl   $0x0,-0x9c(%ebp)
c0036eb3:	00 00 00 
c0036eb6:	8d 50 01             	lea    0x1(%eax),%edx
c0036eb9:	0f be 00             	movsbl (%eax),%eax
c0036ebc:	8d 48 e0             	lea    -0x20(%eax),%ecx
c0036ebf:	83 f9 58             	cmp    $0x58,%ecx
c0036ec2:	0f 87 63 03 00 00    	ja     c003722b <_svfiprintf_r+0x46b>
c0036ec8:	ff 24 8d 28 9c 03 c0 	jmp    *-0x3ffc63d8(,%ecx,4)
c0036ecf:	90                   	nop
c0036ed0:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c0036ed7:	89 d0                	mov    %edx,%eax
c0036ed9:	eb db                	jmp    c0036eb6 <_svfiprintf_r+0xf6>
c0036edb:	8b 45 14             	mov    0x14(%ebp),%eax
c0036ede:	8b 5d 14             	mov    0x14(%ebp),%ebx
c0036ee1:	8b 00                	mov    (%eax),%eax
c0036ee3:	83 c3 04             	add    $0x4,%ebx
c0036ee6:	89 5d 14             	mov    %ebx,0x14(%ebp)
c0036ee9:	85 c0                	test   %eax,%eax
c0036eeb:	89 85 54 ff ff ff    	mov    %eax,-0xac(%ebp)
c0036ef1:	79 e4                	jns    c0036ed7 <_svfiprintf_r+0x117>
c0036ef3:	f7 9d 54 ff ff ff    	negl   -0xac(%ebp)
c0036ef9:	83 8d 64 ff ff ff 04 	orl    $0x4,-0x9c(%ebp)
c0036f00:	89 d0                	mov    %edx,%eax
c0036f02:	eb b2                	jmp    c0036eb6 <_svfiprintf_r+0xf6>
c0036f04:	bf 2b 00 00 00       	mov    $0x2b,%edi
c0036f09:	89 d0                	mov    %edx,%eax
c0036f0b:	eb a9                	jmp    c0036eb6 <_svfiprintf_r+0xf6>
c0036f0d:	8b 45 14             	mov    0x14(%ebp),%eax
c0036f10:	83 8d 64 ff ff ff 02 	orl    $0x2,-0x9c(%ebp)
c0036f17:	89 55 10             	mov    %edx,0x10(%ebp)
c0036f1a:	ba 02 00 00 00       	mov    $0x2,%edx
c0036f1f:	8b 08                	mov    (%eax),%ecx
c0036f21:	83 c0 04             	add    $0x4,%eax
c0036f24:	c6 85 72 ff ff ff 30 	movb   $0x30,-0x8e(%ebp)
c0036f2b:	c6 85 73 ff ff ff 78 	movb   $0x78,-0x8d(%ebp)
c0036f32:	89 45 14             	mov    %eax,0x14(%ebp)
c0036f35:	c7 85 44 ff ff ff d7 	movl   $0xc00398d7,-0xbc(%ebp)
c0036f3c:	98 03 c0 
c0036f3f:	90                   	nop
c0036f40:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c0036f47:	31 ff                	xor    %edi,%edi
c0036f49:	8b 9d 64 ff ff ff    	mov    -0x9c(%ebp),%ebx
c0036f4f:	89 d8                	mov    %ebx,%eax
c0036f51:	24 7f                	and    $0x7f,%al
c0036f53:	83 bd 5c ff ff ff 00 	cmpl   $0x0,-0xa4(%ebp)
c0036f5a:	0f 48 c3             	cmovs  %ebx,%eax
c0036f5d:	89 85 64 ff ff ff    	mov    %eax,-0x9c(%ebp)
c0036f63:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0036f69:	85 c0                	test   %eax,%eax
c0036f6b:	75 08                	jne    c0036f75 <_svfiprintf_r+0x1b5>
c0036f6d:	85 c9                	test   %ecx,%ecx
c0036f6f:	0f 84 03 08 00 00    	je     c0037778 <_svfiprintf_r+0x9b8>
c0036f75:	80 fa 01             	cmp    $0x1,%dl
c0036f78:	0f 84 8a 0a 00 00    	je     c0037a08 <_svfiprintf_r+0xc48>
c0036f7e:	80 fa 02             	cmp    $0x2,%dl
c0036f81:	8d 5d a8             	lea    -0x58(%ebp),%ebx
c0036f84:	0f 85 86 01 00 00    	jne    c0037110 <_svfiprintf_r+0x350>
c0036f8a:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c0036f90:	89 c8                	mov    %ecx,%eax
c0036f92:	83 eb 01             	sub    $0x1,%ebx
c0036f95:	83 e0 0f             	and    $0xf,%eax
c0036f98:	0f b6 04 02          	movzbl (%edx,%eax,1),%eax
c0036f9c:	c1 e9 04             	shr    $0x4,%ecx
c0036f9f:	85 c9                	test   %ecx,%ecx
c0036fa1:	88 03                	mov    %al,(%ebx)
c0036fa3:	75 eb                	jne    c0036f90 <_svfiprintf_r+0x1d0>
c0036fa5:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0036fa8:	29 d8                	sub    %ebx,%eax
c0036faa:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0036fb0:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0036fb6:	8b 8d 58 ff ff ff    	mov    -0xa8(%ebp),%ecx
c0036fbc:	39 c1                	cmp    %eax,%ecx
c0036fbe:	0f 4d c1             	cmovge %ecx,%eax
c0036fc1:	89 85 60 ff ff ff    	mov    %eax,-0xa0(%ebp)
c0036fc7:	89 f8                	mov    %edi,%eax
c0036fc9:	3c 01                	cmp    $0x1,%al
c0036fcb:	83 9d 60 ff ff ff ff 	sbbl   $0xffffffff,-0xa0(%ebp)
c0036fd2:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
c0036fd8:	8b 8d 64 ff ff ff    	mov    -0x9c(%ebp),%ecx
c0036fde:	89 d0                	mov    %edx,%eax
c0036fe0:	89 cf                	mov    %ecx,%edi
c0036fe2:	83 c0 02             	add    $0x2,%eax
c0036fe5:	83 e7 02             	and    $0x2,%edi
c0036fe8:	89 bd 4c ff ff ff    	mov    %edi,-0xb4(%ebp)
c0036fee:	89 cf                	mov    %ecx,%edi
c0036ff0:	0f 44 c2             	cmove  %edx,%eax
c0036ff3:	81 e7 84 00 00 00    	and    $0x84,%edi
c0036ff9:	89 85 60 ff ff ff    	mov    %eax,-0xa0(%ebp)
c0036fff:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c0037005:	0f 85 cd 04 00 00    	jne    c00374d8 <_svfiprintf_r+0x718>
c003700b:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
c0037011:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
c0037017:	85 ff                	test   %edi,%edi
c0037019:	0f 8e b9 04 00 00    	jle    c00374d8 <_svfiprintf_r+0x718>
c003701f:	83 ff 10             	cmp    $0x10,%edi
c0037022:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037028:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003702e:	7e 7c                	jle    c00370ac <_svfiprintf_r+0x2ec>
c0037030:	89 9d 40 ff ff ff    	mov    %ebx,-0xc0(%ebp)
c0037036:	89 f1                	mov    %esi,%ecx
c0037038:	8b 5d 08             	mov    0x8(%ebp),%ebx
c003703b:	8b 75 0c             	mov    0xc(%ebp),%esi
c003703e:	eb 08                	jmp    c0037048 <_svfiprintf_r+0x288>
c0037040:	83 ef 10             	sub    $0x10,%edi
c0037043:	83 ff 10             	cmp    $0x10,%edi
c0037046:	7e 5c                	jle    c00370a4 <_svfiprintf_r+0x2e4>
c0037048:	83 c0 01             	add    $0x1,%eax
c003704b:	83 c2 10             	add    $0x10,%edx
c003704e:	c7 01 9c 9d 03 c0    	movl   $0xc0039d9c,(%ecx)
c0037054:	83 c1 08             	add    $0x8,%ecx
c0037057:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c003705e:	83 f8 07             	cmp    $0x7,%eax
c0037061:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037067:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003706d:	7e d1                	jle    c0037040 <_svfiprintf_r+0x280>
c003706f:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037075:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037079:	89 74 24 04          	mov    %esi,0x4(%esp)
c003707d:	89 1c 24             	mov    %ebx,(%esp)
c0037080:	e8 4b fb ff ff       	call   c0036bd0 <__ssprint_r>
c0037085:	85 c0                	test   %eax,%eax
c0037087:	0f 85 3b 07 00 00    	jne    c00377c8 <_svfiprintf_r+0xa08>
c003708d:	83 ef 10             	sub    $0x10,%edi
c0037090:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037096:	83 ff 10             	cmp    $0x10,%edi
c0037099:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003709f:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c00370a2:	7f a4                	jg     c0037048 <_svfiprintf_r+0x288>
c00370a4:	8b 9d 40 ff ff ff    	mov    -0xc0(%ebp),%ebx
c00370aa:	89 ce                	mov    %ecx,%esi
c00370ac:	83 c0 01             	add    $0x1,%eax
c00370af:	01 fa                	add    %edi,%edx
c00370b1:	c7 06 9c 9d 03 c0    	movl   $0xc0039d9c,(%esi)
c00370b7:	83 c6 08             	add    $0x8,%esi
c00370ba:	89 7e fc             	mov    %edi,-0x4(%esi)
c00370bd:	83 f8 07             	cmp    $0x7,%eax
c00370c0:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00370c6:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00370cc:	0f 8e 12 04 00 00    	jle    c00374e4 <_svfiprintf_r+0x724>
c00370d2:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00370d8:	89 44 24 08          	mov    %eax,0x8(%esp)
c00370dc:	8b 45 0c             	mov    0xc(%ebp),%eax
c00370df:	89 44 24 04          	mov    %eax,0x4(%esp)
c00370e3:	8b 45 08             	mov    0x8(%ebp),%eax
c00370e6:	89 04 24             	mov    %eax,(%esp)
c00370e9:	e8 e2 fa ff ff       	call   c0036bd0 <__ssprint_r>
c00370ee:	85 c0                	test   %eax,%eax
c00370f0:	0f 85 d2 06 00 00    	jne    c00377c8 <_svfiprintf_r+0xa08>
c00370f6:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00370fc:	8d 75 a8             	lea    -0x58(%ebp),%esi
c00370ff:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037105:	e9 da 03 00 00       	jmp    c00374e4 <_svfiprintf_r+0x724>
c003710a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037110:	89 c8                	mov    %ecx,%eax
c0037112:	83 eb 01             	sub    $0x1,%ebx
c0037115:	83 e0 07             	and    $0x7,%eax
c0037118:	c1 e9 03             	shr    $0x3,%ecx
c003711b:	83 c0 30             	add    $0x30,%eax
c003711e:	85 c9                	test   %ecx,%ecx
c0037120:	88 03                	mov    %al,(%ebx)
c0037122:	75 ec                	jne    c0037110 <_svfiprintf_r+0x350>
c0037124:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
c003712b:	89 da                	mov    %ebx,%edx
c003712d:	0f 84 72 fe ff ff    	je     c0036fa5 <_svfiprintf_r+0x1e5>
c0037133:	3c 30                	cmp    $0x30,%al
c0037135:	0f 84 6a fe ff ff    	je     c0036fa5 <_svfiprintf_r+0x1e5>
c003713b:	83 eb 01             	sub    $0x1,%ebx
c003713e:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0037141:	29 d8                	sub    %ebx,%eax
c0037143:	c6 42 ff 30          	movb   $0x30,-0x1(%edx)
c0037147:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c003714d:	e9 5e fe ff ff       	jmp    c0036fb0 <_svfiprintf_r+0x1f0>
c0037152:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c0037159:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c0037160:	89 55 10             	mov    %edx,0x10(%ebp)
c0037163:	8b 45 14             	mov    0x14(%ebp),%eax
c0037166:	0f 85 48 01 00 00    	jne    c00372b4 <_svfiprintf_r+0x4f4>
c003716c:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c0037173:	0f 84 3b 01 00 00    	je     c00372b4 <_svfiprintf_r+0x4f4>
c0037179:	0f b7 08             	movzwl (%eax),%ecx
c003717c:	83 c0 04             	add    $0x4,%eax
c003717f:	31 d2                	xor    %edx,%edx
c0037181:	89 45 14             	mov    %eax,0x14(%ebp)
c0037184:	e9 b7 fd ff ff       	jmp    c0036f40 <_svfiprintf_r+0x180>
c0037189:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c0037190:	89 f8                	mov    %edi,%eax
c0037192:	89 55 10             	mov    %edx,0x10(%ebp)
c0037195:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
c003719b:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c00371a2:	8b 45 14             	mov    0x14(%ebp),%eax
c00371a5:	75 0d                	jne    c00371b4 <_svfiprintf_r+0x3f4>
c00371a7:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c00371ae:	0f 85 f2 08 00 00    	jne    c0037aa6 <_svfiprintf_r+0xce6>
c00371b4:	8b 08                	mov    (%eax),%ecx
c00371b6:	83 c0 04             	add    $0x4,%eax
c00371b9:	89 45 14             	mov    %eax,0x14(%ebp)
c00371bc:	85 c9                	test   %ecx,%ecx
c00371be:	0f 88 f3 08 00 00    	js     c0037ab7 <_svfiprintf_r+0xcf7>
c00371c4:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c00371cb:	ba 01 00 00 00       	mov    $0x1,%edx
c00371d0:	e9 74 fd ff ff       	jmp    c0036f49 <_svfiprintf_r+0x189>
c00371d5:	0f be 02             	movsbl (%edx),%eax
c00371d8:	8d 5a 01             	lea    0x1(%edx),%ebx
c00371db:	83 f8 2a             	cmp    $0x2a,%eax
c00371de:	0f 84 af 09 00 00    	je     c0037b93 <_svfiprintf_r+0xdd3>
c00371e4:	8d 48 d0             	lea    -0x30(%eax),%ecx
c00371e7:	31 d2                	xor    %edx,%edx
c00371e9:	83 f9 09             	cmp    $0x9,%ecx
c00371ec:	0f 87 90 09 00 00    	ja     c0037b82 <_svfiprintf_r+0xdc2>
c00371f2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00371f8:	8d 04 92             	lea    (%edx,%edx,4),%eax
c00371fb:	83 c3 01             	add    $0x1,%ebx
c00371fe:	8d 14 41             	lea    (%ecx,%eax,2),%edx
c0037201:	0f be 43 ff          	movsbl -0x1(%ebx),%eax
c0037205:	8d 48 d0             	lea    -0x30(%eax),%ecx
c0037208:	83 f9 09             	cmp    $0x9,%ecx
c003720b:	76 eb                	jbe    c00371f8 <_svfiprintf_r+0x438>
c003720d:	85 d2                	test   %edx,%edx
c003720f:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
c0037214:	0f 48 d1             	cmovs  %ecx,%edx
c0037217:	8d 48 e0             	lea    -0x20(%eax),%ecx
c003721a:	83 f9 58             	cmp    $0x58,%ecx
c003721d:	89 95 5c ff ff ff    	mov    %edx,-0xa4(%ebp)
c0037223:	89 da                	mov    %ebx,%edx
c0037225:	0f 86 9d fc ff ff    	jbe    c0036ec8 <_svfiprintf_r+0x108>
c003722b:	89 fb                	mov    %edi,%ebx
c003722d:	85 c0                	test   %eax,%eax
c003722f:	89 55 10             	mov    %edx,0x10(%ebp)
c0037232:	88 9d 71 ff ff ff    	mov    %bl,-0x8f(%ebp)
c0037238:	0f 84 5f 05 00 00    	je     c003779d <_svfiprintf_r+0x9dd>
c003723e:	88 45 80             	mov    %al,-0x80(%ebp)
c0037241:	8d 5d 80             	lea    -0x80(%ebp),%ebx
c0037244:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c003724b:	c7 85 60 ff ff ff 01 	movl   $0x1,-0xa0(%ebp)
c0037252:	00 00 00 
c0037255:	c7 85 58 ff ff ff 01 	movl   $0x1,-0xa8(%ebp)
c003725c:	00 00 00 
c003725f:	e9 5a 01 00 00       	jmp    c00373be <_svfiprintf_r+0x5fe>
c0037264:	31 db                	xor    %ebx,%ebx
c0037266:	8d 48 d0             	lea    -0x30(%eax),%ecx
c0037269:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0037270:	8d 04 9b             	lea    (%ebx,%ebx,4),%eax
c0037273:	83 c2 01             	add    $0x1,%edx
c0037276:	8d 1c 41             	lea    (%ecx,%eax,2),%ebx
c0037279:	0f be 42 ff          	movsbl -0x1(%edx),%eax
c003727d:	8d 48 d0             	lea    -0x30(%eax),%ecx
c0037280:	83 f9 09             	cmp    $0x9,%ecx
c0037283:	76 eb                	jbe    c0037270 <_svfiprintf_r+0x4b0>
c0037285:	89 9d 54 ff ff ff    	mov    %ebx,-0xac(%ebp)
c003728b:	e9 2c fc ff ff       	jmp    c0036ebc <_svfiprintf_r+0xfc>
c0037290:	81 8d 64 ff ff ff 80 	orl    $0x80,-0x9c(%ebp)
c0037297:	00 00 00 
c003729a:	89 d0                	mov    %edx,%eax
c003729c:	e9 15 fc ff ff       	jmp    c0036eb6 <_svfiprintf_r+0xf6>
c00372a1:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c00372a8:	89 55 10             	mov    %edx,0x10(%ebp)
c00372ab:	8b 45 14             	mov    0x14(%ebp),%eax
c00372ae:	0f 84 b8 fe ff ff    	je     c003716c <_svfiprintf_r+0x3ac>
c00372b4:	8b 08                	mov    (%eax),%ecx
c00372b6:	83 c0 04             	add    $0x4,%eax
c00372b9:	31 d2                	xor    %edx,%edx
c00372bb:	89 45 14             	mov    %eax,0x14(%ebp)
c00372be:	e9 7d fc ff ff       	jmp    c0036f40 <_svfiprintf_r+0x180>
c00372c3:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c00372ca:	89 f8                	mov    %edi,%eax
c00372cc:	89 55 10             	mov    %edx,0x10(%ebp)
c00372cf:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
c00372d5:	0f 85 a2 07 00 00    	jne    c0037a7d <_svfiprintf_r+0xcbd>
c00372db:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c00372e2:	0f 84 95 07 00 00    	je     c0037a7d <_svfiprintf_r+0xcbd>
c00372e8:	8b 45 14             	mov    0x14(%ebp),%eax
c00372eb:	0f b7 9d 50 ff ff ff 	movzwl -0xb0(%ebp),%ebx
c00372f2:	8b 00                	mov    (%eax),%eax
c00372f4:	66 89 18             	mov    %bx,(%eax)
c00372f7:	8b 45 14             	mov    0x14(%ebp),%eax
c00372fa:	83 c0 04             	add    $0x4,%eax
c00372fd:	89 45 14             	mov    %eax,0x14(%ebp)
c0037300:	e9 19 fb ff ff       	jmp    c0036e1e <_svfiprintf_r+0x5e>
c0037305:	89 fb                	mov    %edi,%ebx
c0037307:	89 55 10             	mov    %edx,0x10(%ebp)
c003730a:	88 9d 71 ff ff ff    	mov    %bl,-0x8f(%ebp)
c0037310:	c7 85 44 ff ff ff d7 	movl   $0xc00398d7,-0xbc(%ebp)
c0037317:	98 03 c0 
c003731a:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c0037321:	8b 5d 14             	mov    0x14(%ebp),%ebx
c0037324:	75 0d                	jne    c0037333 <_svfiprintf_r+0x573>
c0037326:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c003732d:	0f 85 65 07 00 00    	jne    c0037a98 <_svfiprintf_r+0xcd8>
c0037333:	8b 0b                	mov    (%ebx),%ecx
c0037335:	83 c3 04             	add    $0x4,%ebx
c0037338:	89 5d 14             	mov    %ebx,0x14(%ebp)
c003733b:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
c0037342:	ba 02 00 00 00       	mov    $0x2,%edx
c0037347:	0f 84 f3 fb ff ff    	je     c0036f40 <_svfiprintf_r+0x180>
c003734d:	85 c9                	test   %ecx,%ecx
c003734f:	0f 84 eb fb ff ff    	je     c0036f40 <_svfiprintf_r+0x180>
c0037355:	c6 85 72 ff ff ff 30 	movb   $0x30,-0x8e(%ebp)
c003735c:	88 85 73 ff ff ff    	mov    %al,-0x8d(%ebp)
c0037362:	83 8d 64 ff ff ff 02 	orl    $0x2,-0x9c(%ebp)
c0037369:	e9 d2 fb ff ff       	jmp    c0036f40 <_svfiprintf_r+0x180>
c003736e:	83 8d 64 ff ff ff 40 	orl    $0x40,-0x9c(%ebp)
c0037375:	89 d0                	mov    %edx,%eax
c0037377:	e9 3a fb ff ff       	jmp    c0036eb6 <_svfiprintf_r+0xf6>
c003737c:	89 f8                	mov    %edi,%eax
c003737e:	89 55 10             	mov    %edx,0x10(%ebp)
c0037381:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
c0037387:	e9 0f fe ff ff       	jmp    c003719b <_svfiprintf_r+0x3db>
c003738c:	8b 45 14             	mov    0x14(%ebp),%eax
c003738f:	8d 5d 80             	lea    -0x80(%ebp),%ebx
c0037392:	89 55 10             	mov    %edx,0x10(%ebp)
c0037395:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c003739c:	c7 85 60 ff ff ff 01 	movl   $0x1,-0xa0(%ebp)
c00373a3:	00 00 00 
c00373a6:	8b 00                	mov    (%eax),%eax
c00373a8:	c7 85 58 ff ff ff 01 	movl   $0x1,-0xa8(%ebp)
c00373af:	00 00 00 
c00373b2:	88 45 80             	mov    %al,-0x80(%ebp)
c00373b5:	8b 45 14             	mov    0x14(%ebp),%eax
c00373b8:	83 c0 04             	add    $0x4,%eax
c00373bb:	89 45 14             	mov    %eax,0x14(%ebp)
c00373be:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c00373c5:	00 00 00 
c00373c8:	e9 05 fc ff ff       	jmp    c0036fd2 <_svfiprintf_r+0x212>
c00373cd:	89 fb                	mov    %edi,%ebx
c00373cf:	89 55 10             	mov    %edx,0x10(%ebp)
c00373d2:	88 9d 71 ff ff ff    	mov    %bl,-0x8f(%ebp)
c00373d8:	c7 85 44 ff ff ff c6 	movl   $0xc00398c6,-0xbc(%ebp)
c00373df:	98 03 c0 
c00373e2:	e9 33 ff ff ff       	jmp    c003731a <_svfiprintf_r+0x55a>
c00373e7:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c00373ee:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c00373f5:	89 55 10             	mov    %edx,0x10(%ebp)
c00373f8:	8b 45 14             	mov    0x14(%ebp),%eax
c00373fb:	75 39                	jne    c0037436 <_svfiprintf_r+0x676>
c00373fd:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c0037404:	74 30                	je     c0037436 <_svfiprintf_r+0x676>
c0037406:	0f b7 08             	movzwl (%eax),%ecx
c0037409:	83 c0 04             	add    $0x4,%eax
c003740c:	ba 01 00 00 00       	mov    $0x1,%edx
c0037411:	89 45 14             	mov    %eax,0x14(%ebp)
c0037414:	e9 27 fb ff ff       	jmp    c0036f40 <_svfiprintf_r+0x180>
c0037419:	83 8d 64 ff ff ff 01 	orl    $0x1,-0x9c(%ebp)
c0037420:	89 d0                	mov    %edx,%eax
c0037422:	e9 8f fa ff ff       	jmp    c0036eb6 <_svfiprintf_r+0xf6>
c0037427:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c003742e:	89 55 10             	mov    %edx,0x10(%ebp)
c0037431:	8b 45 14             	mov    0x14(%ebp),%eax
c0037434:	74 c7                	je     c00373fd <_svfiprintf_r+0x63d>
c0037436:	8b 08                	mov    (%eax),%ecx
c0037438:	83 c0 04             	add    $0x4,%eax
c003743b:	ba 01 00 00 00       	mov    $0x1,%edx
c0037440:	89 45 14             	mov    %eax,0x14(%ebp)
c0037443:	e9 f8 fa ff ff       	jmp    c0036f40 <_svfiprintf_r+0x180>
c0037448:	8b 45 14             	mov    0x14(%ebp),%eax
c003744b:	89 55 10             	mov    %edx,0x10(%ebp)
c003744e:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c0037455:	8b 18                	mov    (%eax),%ebx
c0037457:	8d 50 04             	lea    0x4(%eax),%edx
c003745a:	85 db                	test   %ebx,%ebx
c003745c:	0f 84 cc 06 00 00    	je     c0037b2e <_svfiprintf_r+0xd6e>
c0037462:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
c0037468:	89 95 60 ff ff ff    	mov    %edx,-0xa0(%ebp)
c003746e:	85 ff                	test   %edi,%edi
c0037470:	0f 88 59 06 00 00    	js     c0037acf <_svfiprintf_r+0xd0f>
c0037476:	89 7c 24 08          	mov    %edi,0x8(%esp)
c003747a:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0037481:	00 
c0037482:	89 1c 24             	mov    %ebx,(%esp)
c0037485:	e8 06 e7 ff ff       	call   c0035b90 <memchr>
c003748a:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
c0037490:	85 c0                	test   %eax,%eax
c0037492:	0f 84 c5 06 00 00    	je     c0037b5d <_svfiprintf_r+0xd9d>
c0037498:	29 d8                	sub    %ebx,%eax
c003749a:	39 f8                	cmp    %edi,%eax
c003749c:	0f 4f c7             	cmovg  %edi,%eax
c003749f:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c00374a6:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c00374ac:	89 55 14             	mov    %edx,0x14(%ebp)
c00374af:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c00374b6:	00 00 00 
c00374b9:	e9 f2 fa ff ff       	jmp    c0036fb0 <_svfiprintf_r+0x1f0>
c00374be:	89 f8                	mov    %edi,%eax
c00374c0:	84 c0                	test   %al,%al
c00374c2:	b8 20 00 00 00       	mov    $0x20,%eax
c00374c7:	0f 44 f8             	cmove  %eax,%edi
c00374ca:	89 d0                	mov    %edx,%eax
c00374cc:	e9 e5 f9 ff ff       	jmp    c0036eb6 <_svfiprintf_r+0xf6>
c00374d1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00374d8:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00374de:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00374e4:	80 bd 71 ff ff ff 00 	cmpb   $0x0,-0x8f(%ebp)
c00374eb:	74 2e                	je     c003751b <_svfiprintf_r+0x75b>
c00374ed:	83 c0 01             	add    $0x1,%eax
c00374f0:	83 c2 01             	add    $0x1,%edx
c00374f3:	8d 8d 71 ff ff ff    	lea    -0x8f(%ebp),%ecx
c00374f9:	83 c6 08             	add    $0x8,%esi
c00374fc:	89 4e f8             	mov    %ecx,-0x8(%esi)
c00374ff:	c7 46 fc 01 00 00 00 	movl   $0x1,-0x4(%esi)
c0037506:	83 f8 07             	cmp    $0x7,%eax
c0037509:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c003750f:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0037515:	0f 8f b5 04 00 00    	jg     c00379d0 <_svfiprintf_r+0xc10>
c003751b:	8b 8d 4c ff ff ff    	mov    -0xb4(%ebp),%ecx
c0037521:	85 c9                	test   %ecx,%ecx
c0037523:	74 2e                	je     c0037553 <_svfiprintf_r+0x793>
c0037525:	83 c0 01             	add    $0x1,%eax
c0037528:	83 c2 02             	add    $0x2,%edx
c003752b:	8d 8d 72 ff ff ff    	lea    -0x8e(%ebp),%ecx
c0037531:	83 c6 08             	add    $0x8,%esi
c0037534:	89 4e f8             	mov    %ecx,-0x8(%esi)
c0037537:	c7 46 fc 02 00 00 00 	movl   $0x2,-0x4(%esi)
c003753e:	83 f8 07             	cmp    $0x7,%eax
c0037541:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037547:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003754d:	0f 8f 45 04 00 00    	jg     c0037998 <_svfiprintf_r+0xbd8>
c0037553:	81 bd 48 ff ff ff 80 	cmpl   $0x80,-0xb8(%ebp)
c003755a:	00 00 00 
c003755d:	0f 84 9d 02 00 00    	je     c0037800 <_svfiprintf_r+0xa40>
c0037563:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
c0037569:	2b bd 58 ff ff ff    	sub    -0xa8(%ebp),%edi
c003756f:	85 ff                	test   %edi,%edi
c0037571:	0f 8e e1 00 00 00    	jle    c0037658 <_svfiprintf_r+0x898>
c0037577:	83 ff 10             	cmp    $0x10,%edi
c003757a:	0f 8e 7c 00 00 00    	jle    c00375fc <_svfiprintf_r+0x83c>
c0037580:	89 9d 5c ff ff ff    	mov    %ebx,-0xa4(%ebp)
c0037586:	89 f1                	mov    %esi,%ecx
c0037588:	8b 5d 08             	mov    0x8(%ebp),%ebx
c003758b:	8b 75 0c             	mov    0xc(%ebp),%esi
c003758e:	eb 08                	jmp    c0037598 <_svfiprintf_r+0x7d8>
c0037590:	83 ef 10             	sub    $0x10,%edi
c0037593:	83 ff 10             	cmp    $0x10,%edi
c0037596:	7e 5c                	jle    c00375f4 <_svfiprintf_r+0x834>
c0037598:	83 c0 01             	add    $0x1,%eax
c003759b:	83 c2 10             	add    $0x10,%edx
c003759e:	c7 01 8c 9d 03 c0    	movl   $0xc0039d8c,(%ecx)
c00375a4:	83 c1 08             	add    $0x8,%ecx
c00375a7:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c00375ae:	83 f8 07             	cmp    $0x7,%eax
c00375b1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00375b7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00375bd:	7e d1                	jle    c0037590 <_svfiprintf_r+0x7d0>
c00375bf:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00375c5:	89 44 24 08          	mov    %eax,0x8(%esp)
c00375c9:	89 74 24 04          	mov    %esi,0x4(%esp)
c00375cd:	89 1c 24             	mov    %ebx,(%esp)
c00375d0:	e8 fb f5 ff ff       	call   c0036bd0 <__ssprint_r>
c00375d5:	85 c0                	test   %eax,%eax
c00375d7:	0f 85 eb 01 00 00    	jne    c00377c8 <_svfiprintf_r+0xa08>
c00375dd:	83 ef 10             	sub    $0x10,%edi
c00375e0:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00375e6:	83 ff 10             	cmp    $0x10,%edi
c00375e9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00375ef:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c00375f2:	7f a4                	jg     c0037598 <_svfiprintf_r+0x7d8>
c00375f4:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c00375fa:	89 ce                	mov    %ecx,%esi
c00375fc:	83 c0 01             	add    $0x1,%eax
c00375ff:	01 fa                	add    %edi,%edx
c0037601:	c7 06 8c 9d 03 c0    	movl   $0xc0039d8c,(%esi)
c0037607:	83 c6 08             	add    $0x8,%esi
c003760a:	89 7e fc             	mov    %edi,-0x4(%esi)
c003760d:	83 f8 07             	cmp    $0x7,%eax
c0037610:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037616:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003761c:	7e 3a                	jle    c0037658 <_svfiprintf_r+0x898>
c003761e:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037624:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037628:	8b 45 0c             	mov    0xc(%ebp),%eax
c003762b:	89 44 24 04          	mov    %eax,0x4(%esp)
c003762f:	8b 45 08             	mov    0x8(%ebp),%eax
c0037632:	89 04 24             	mov    %eax,(%esp)
c0037635:	e8 96 f5 ff ff       	call   c0036bd0 <__ssprint_r>
c003763a:	85 c0                	test   %eax,%eax
c003763c:	0f 85 86 01 00 00    	jne    c00377c8 <_svfiprintf_r+0xa08>
c0037642:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037648:	8d 75 a8             	lea    -0x58(%ebp),%esi
c003764b:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037651:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0037658:	89 1e                	mov    %ebx,(%esi)
c003765a:	8b 9d 58 ff ff ff    	mov    -0xa8(%ebp),%ebx
c0037660:	83 c0 01             	add    $0x1,%eax
c0037663:	83 c6 08             	add    $0x8,%esi
c0037666:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003766c:	89 5e fc             	mov    %ebx,-0x4(%esi)
c003766f:	01 da                	add    %ebx,%edx
c0037671:	83 f8 07             	cmp    $0x7,%eax
c0037674:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c003767a:	0f 8f 80 02 00 00    	jg     c0037900 <_svfiprintf_r+0xb40>
c0037680:	f6 85 64 ff ff ff 04 	testb  $0x4,-0x9c(%ebp)
c0037687:	0f 84 b9 00 00 00    	je     c0037746 <_svfiprintf_r+0x986>
c003768d:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
c0037693:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
c0037699:	85 ff                	test   %edi,%edi
c003769b:	0f 8e a5 00 00 00    	jle    c0037746 <_svfiprintf_r+0x986>
c00376a1:	83 ff 10             	cmp    $0x10,%edi
c00376a4:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00376aa:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c00376b0:	7e 71                	jle    c0037723 <_svfiprintf_r+0x963>
c00376b2:	89 f1                	mov    %esi,%ecx
c00376b4:	8b 75 08             	mov    0x8(%ebp),%esi
c00376b7:	eb 0f                	jmp    c00376c8 <_svfiprintf_r+0x908>
c00376b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00376c0:	83 ef 10             	sub    $0x10,%edi
c00376c3:	83 ff 10             	cmp    $0x10,%edi
c00376c6:	7e 59                	jle    c0037721 <_svfiprintf_r+0x961>
c00376c8:	83 c0 01             	add    $0x1,%eax
c00376cb:	83 c2 10             	add    $0x10,%edx
c00376ce:	c7 01 9c 9d 03 c0    	movl   $0xc0039d9c,(%ecx)
c00376d4:	83 c1 08             	add    $0x8,%ecx
c00376d7:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c00376de:	83 f8 07             	cmp    $0x7,%eax
c00376e1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00376e7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00376ed:	7e d1                	jle    c00376c0 <_svfiprintf_r+0x900>
c00376ef:	8b 45 0c             	mov    0xc(%ebp),%eax
c00376f2:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c00376f6:	89 34 24             	mov    %esi,(%esp)
c00376f9:	89 44 24 04          	mov    %eax,0x4(%esp)
c00376fd:	e8 ce f4 ff ff       	call   c0036bd0 <__ssprint_r>
c0037702:	85 c0                	test   %eax,%eax
c0037704:	0f 85 be 00 00 00    	jne    c00377c8 <_svfiprintf_r+0xa08>
c003770a:	83 ef 10             	sub    $0x10,%edi
c003770d:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037713:	83 ff 10             	cmp    $0x10,%edi
c0037716:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003771c:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c003771f:	7f a7                	jg     c00376c8 <_svfiprintf_r+0x908>
c0037721:	89 ce                	mov    %ecx,%esi
c0037723:	83 c0 01             	add    $0x1,%eax
c0037726:	01 fa                	add    %edi,%edx
c0037728:	83 f8 07             	cmp    $0x7,%eax
c003772b:	c7 06 9c 9d 03 c0    	movl   $0xc0039d9c,(%esi)
c0037731:	89 7e 04             	mov    %edi,0x4(%esi)
c0037734:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c003773a:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0037740:	0f 8f ee 02 00 00    	jg     c0037a34 <_svfiprintf_r+0xc74>
c0037746:	8b 85 54 ff ff ff    	mov    -0xac(%ebp),%eax
c003774c:	8b b5 60 ff ff ff    	mov    -0xa0(%ebp),%esi
c0037752:	39 c6                	cmp    %eax,%esi
c0037754:	0f 4d c6             	cmovge %esi,%eax
c0037757:	01 85 50 ff ff ff    	add    %eax,-0xb0(%ebp)
c003775d:	85 d2                	test   %edx,%edx
c003775f:	0f 85 d3 01 00 00    	jne    c0037938 <_svfiprintf_r+0xb78>
c0037765:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c003776c:	00 00 00 
c003776f:	8d 75 a8             	lea    -0x58(%ebp),%esi
c0037772:	e9 a7 f6 ff ff       	jmp    c0036e1e <_svfiprintf_r+0x5e>
c0037777:	90                   	nop
c0037778:	84 d2                	test   %dl,%dl
c003777a:	75 6c                	jne    c00377e8 <_svfiprintf_r+0xa28>
c003777c:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
c0037783:	74 63                	je     c00377e8 <_svfiprintf_r+0xa28>
c0037785:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
c003778b:	8d 5d a7             	lea    -0x59(%ebp),%ebx
c003778e:	c6 45 a7 30          	movb   $0x30,-0x59(%ebp)
c0037792:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0037798:	e9 13 f8 ff ff       	jmp    c0036fb0 <_svfiprintf_r+0x1f0>
c003779d:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
c00377a3:	85 c0                	test   %eax,%eax
c00377a5:	74 21                	je     c00377c8 <_svfiprintf_r+0xa08>
c00377a7:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00377ad:	89 44 24 08          	mov    %eax,0x8(%esp)
c00377b1:	8b 45 0c             	mov    0xc(%ebp),%eax
c00377b4:	89 44 24 04          	mov    %eax,0x4(%esp)
c00377b8:	8b 45 08             	mov    0x8(%ebp),%eax
c00377bb:	89 04 24             	mov    %eax,(%esp)
c00377be:	e8 0d f4 ff ff       	call   c0036bd0 <__ssprint_r>
c00377c3:	90                   	nop
c00377c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00377c8:	8b 75 0c             	mov    0xc(%ebp),%esi
c00377cb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c00377d0:	f6 46 0c 40          	testb  $0x40,0xc(%esi)
c00377d4:	0f 44 85 50 ff ff ff 	cmove  -0xb0(%ebp),%eax
c00377db:	81 c4 cc 00 00 00    	add    $0xcc,%esp
c00377e1:	5b                   	pop    %ebx
c00377e2:	5e                   	pop    %esi
c00377e3:	5f                   	pop    %edi
c00377e4:	5d                   	pop    %ebp
c00377e5:	c3                   	ret    
c00377e6:	66 90                	xchg   %ax,%ax
c00377e8:	c7 85 58 ff ff ff 00 	movl   $0x0,-0xa8(%ebp)
c00377ef:	00 00 00 
c00377f2:	8d 5d a8             	lea    -0x58(%ebp),%ebx
c00377f5:	e9 b6 f7 ff ff       	jmp    c0036fb0 <_svfiprintf_r+0x1f0>
c00377fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037800:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
c0037806:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
c003780c:	85 ff                	test   %edi,%edi
c003780e:	0f 8e 4f fd ff ff    	jle    c0037563 <_svfiprintf_r+0x7a3>
c0037814:	83 ff 10             	cmp    $0x10,%edi
c0037817:	0f 8e 7f 00 00 00    	jle    c003789c <_svfiprintf_r+0xadc>
c003781d:	89 9d 4c ff ff ff    	mov    %ebx,-0xb4(%ebp)
c0037823:	89 f1                	mov    %esi,%ecx
c0037825:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0037828:	8b 75 0c             	mov    0xc(%ebp),%esi
c003782b:	eb 0b                	jmp    c0037838 <_svfiprintf_r+0xa78>
c003782d:	8d 76 00             	lea    0x0(%esi),%esi
c0037830:	83 ef 10             	sub    $0x10,%edi
c0037833:	83 ff 10             	cmp    $0x10,%edi
c0037836:	7e 5c                	jle    c0037894 <_svfiprintf_r+0xad4>
c0037838:	83 c0 01             	add    $0x1,%eax
c003783b:	83 c2 10             	add    $0x10,%edx
c003783e:	c7 01 8c 9d 03 c0    	movl   $0xc0039d8c,(%ecx)
c0037844:	83 c1 08             	add    $0x8,%ecx
c0037847:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c003784e:	83 f8 07             	cmp    $0x7,%eax
c0037851:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037857:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003785d:	7e d1                	jle    c0037830 <_svfiprintf_r+0xa70>
c003785f:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037865:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037869:	89 74 24 04          	mov    %esi,0x4(%esp)
c003786d:	89 1c 24             	mov    %ebx,(%esp)
c0037870:	e8 5b f3 ff ff       	call   c0036bd0 <__ssprint_r>
c0037875:	85 c0                	test   %eax,%eax
c0037877:	0f 85 4b ff ff ff    	jne    c00377c8 <_svfiprintf_r+0xa08>
c003787d:	83 ef 10             	sub    $0x10,%edi
c0037880:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037886:	83 ff 10             	cmp    $0x10,%edi
c0037889:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003788f:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c0037892:	7f a4                	jg     c0037838 <_svfiprintf_r+0xa78>
c0037894:	8b 9d 4c ff ff ff    	mov    -0xb4(%ebp),%ebx
c003789a:	89 ce                	mov    %ecx,%esi
c003789c:	83 c0 01             	add    $0x1,%eax
c003789f:	01 fa                	add    %edi,%edx
c00378a1:	c7 06 8c 9d 03 c0    	movl   $0xc0039d8c,(%esi)
c00378a7:	83 c6 08             	add    $0x8,%esi
c00378aa:	89 7e fc             	mov    %edi,-0x4(%esi)
c00378ad:	83 f8 07             	cmp    $0x7,%eax
c00378b0:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00378b6:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00378bc:	0f 8e a1 fc ff ff    	jle    c0037563 <_svfiprintf_r+0x7a3>
c00378c2:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00378c8:	89 44 24 08          	mov    %eax,0x8(%esp)
c00378cc:	8b 45 0c             	mov    0xc(%ebp),%eax
c00378cf:	89 44 24 04          	mov    %eax,0x4(%esp)
c00378d3:	8b 45 08             	mov    0x8(%ebp),%eax
c00378d6:	89 04 24             	mov    %eax,(%esp)
c00378d9:	e8 f2 f2 ff ff       	call   c0036bd0 <__ssprint_r>
c00378de:	85 c0                	test   %eax,%eax
c00378e0:	0f 85 e2 fe ff ff    	jne    c00377c8 <_svfiprintf_r+0xa08>
c00378e6:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00378ec:	8d 75 a8             	lea    -0x58(%ebp),%esi
c00378ef:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00378f5:	e9 69 fc ff ff       	jmp    c0037563 <_svfiprintf_r+0x7a3>
c00378fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037900:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037906:	89 44 24 08          	mov    %eax,0x8(%esp)
c003790a:	8b 45 0c             	mov    0xc(%ebp),%eax
c003790d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037911:	8b 45 08             	mov    0x8(%ebp),%eax
c0037914:	89 04 24             	mov    %eax,(%esp)
c0037917:	e8 b4 f2 ff ff       	call   c0036bd0 <__ssprint_r>
c003791c:	85 c0                	test   %eax,%eax
c003791e:	0f 85 a4 fe ff ff    	jne    c00377c8 <_svfiprintf_r+0xa08>
c0037924:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003792a:	8d 75 a8             	lea    -0x58(%ebp),%esi
c003792d:	e9 4e fd ff ff       	jmp    c0037680 <_svfiprintf_r+0x8c0>
c0037932:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037938:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003793e:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037942:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037945:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037949:	8b 45 08             	mov    0x8(%ebp),%eax
c003794c:	89 04 24             	mov    %eax,(%esp)
c003794f:	e8 7c f2 ff ff       	call   c0036bd0 <__ssprint_r>
c0037954:	85 c0                	test   %eax,%eax
c0037956:	0f 84 09 fe ff ff    	je     c0037765 <_svfiprintf_r+0x9a5>
c003795c:	e9 67 fe ff ff       	jmp    c00377c8 <_svfiprintf_r+0xa08>
c0037961:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0037968:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003796e:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037972:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037975:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037979:	8b 45 08             	mov    0x8(%ebp),%eax
c003797c:	89 04 24             	mov    %eax,(%esp)
c003797f:	e8 4c f2 ff ff       	call   c0036bd0 <__ssprint_r>
c0037984:	85 c0                	test   %eax,%eax
c0037986:	0f 85 3c fe ff ff    	jne    c00377c8 <_svfiprintf_r+0xa08>
c003798c:	8d 75 a8             	lea    -0x58(%ebp),%esi
c003798f:	e9 e9 f4 ff ff       	jmp    c0036e7d <_svfiprintf_r+0xbd>
c0037994:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037998:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003799e:	89 44 24 08          	mov    %eax,0x8(%esp)
c00379a2:	8b 45 0c             	mov    0xc(%ebp),%eax
c00379a5:	89 44 24 04          	mov    %eax,0x4(%esp)
c00379a9:	8b 45 08             	mov    0x8(%ebp),%eax
c00379ac:	89 04 24             	mov    %eax,(%esp)
c00379af:	e8 1c f2 ff ff       	call   c0036bd0 <__ssprint_r>
c00379b4:	85 c0                	test   %eax,%eax
c00379b6:	0f 85 0c fe ff ff    	jne    c00377c8 <_svfiprintf_r+0xa08>
c00379bc:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00379c2:	8d 75 a8             	lea    -0x58(%ebp),%esi
c00379c5:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00379cb:	e9 83 fb ff ff       	jmp    c0037553 <_svfiprintf_r+0x793>
c00379d0:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00379d6:	89 44 24 08          	mov    %eax,0x8(%esp)
c00379da:	8b 45 0c             	mov    0xc(%ebp),%eax
c00379dd:	89 44 24 04          	mov    %eax,0x4(%esp)
c00379e1:	8b 45 08             	mov    0x8(%ebp),%eax
c00379e4:	89 04 24             	mov    %eax,(%esp)
c00379e7:	e8 e4 f1 ff ff       	call   c0036bd0 <__ssprint_r>
c00379ec:	85 c0                	test   %eax,%eax
c00379ee:	0f 85 d4 fd ff ff    	jne    c00377c8 <_svfiprintf_r+0xa08>
c00379f4:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00379fa:	8d 75 a8             	lea    -0x58(%ebp),%esi
c00379fd:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037a03:	e9 13 fb ff ff       	jmp    c003751b <_svfiprintf_r+0x75b>
c0037a08:	83 f9 09             	cmp    $0x9,%ecx
c0037a0b:	76 56                	jbe    c0037a63 <_svfiprintf_r+0xca3>
c0037a0d:	8d 5d a8             	lea    -0x58(%ebp),%ebx
c0037a10:	b8 cd cc cc cc       	mov    $0xcccccccd,%eax
c0037a15:	83 eb 01             	sub    $0x1,%ebx
c0037a18:	f7 e1                	mul    %ecx
c0037a1a:	c1 ea 03             	shr    $0x3,%edx
c0037a1d:	8d 04 92             	lea    (%edx,%edx,4),%eax
c0037a20:	01 c0                	add    %eax,%eax
c0037a22:	29 c1                	sub    %eax,%ecx
c0037a24:	83 c1 30             	add    $0x30,%ecx
c0037a27:	85 d2                	test   %edx,%edx
c0037a29:	88 0b                	mov    %cl,(%ebx)
c0037a2b:	89 d1                	mov    %edx,%ecx
c0037a2d:	75 e1                	jne    c0037a10 <_svfiprintf_r+0xc50>
c0037a2f:	e9 71 f5 ff ff       	jmp    c0036fa5 <_svfiprintf_r+0x1e5>
c0037a34:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037a3a:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037a3e:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037a41:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037a45:	8b 45 08             	mov    0x8(%ebp),%eax
c0037a48:	89 04 24             	mov    %eax,(%esp)
c0037a4b:	e8 80 f1 ff ff       	call   c0036bd0 <__ssprint_r>
c0037a50:	85 c0                	test   %eax,%eax
c0037a52:	0f 85 70 fd ff ff    	jne    c00377c8 <_svfiprintf_r+0xa08>
c0037a58:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037a5e:	e9 e3 fc ff ff       	jmp    c0037746 <_svfiprintf_r+0x986>
c0037a63:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
c0037a69:	83 c1 30             	add    $0x30,%ecx
c0037a6c:	88 4d a7             	mov    %cl,-0x59(%ebp)
c0037a6f:	8d 5d a7             	lea    -0x59(%ebp),%ebx
c0037a72:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0037a78:	e9 33 f5 ff ff       	jmp    c0036fb0 <_svfiprintf_r+0x1f0>
c0037a7d:	8b 45 14             	mov    0x14(%ebp),%eax
c0037a80:	8b 9d 50 ff ff ff    	mov    -0xb0(%ebp),%ebx
c0037a86:	8b 00                	mov    (%eax),%eax
c0037a88:	89 18                	mov    %ebx,(%eax)
c0037a8a:	8b 45 14             	mov    0x14(%ebp),%eax
c0037a8d:	83 c0 04             	add    $0x4,%eax
c0037a90:	89 45 14             	mov    %eax,0x14(%ebp)
c0037a93:	e9 86 f3 ff ff       	jmp    c0036e1e <_svfiprintf_r+0x5e>
c0037a98:	0f b7 0b             	movzwl (%ebx),%ecx
c0037a9b:	83 c3 04             	add    $0x4,%ebx
c0037a9e:	89 5d 14             	mov    %ebx,0x14(%ebp)
c0037aa1:	e9 95 f8 ff ff       	jmp    c003733b <_svfiprintf_r+0x57b>
c0037aa6:	0f bf 08             	movswl (%eax),%ecx
c0037aa9:	83 c0 04             	add    $0x4,%eax
c0037aac:	89 45 14             	mov    %eax,0x14(%ebp)
c0037aaf:	85 c9                	test   %ecx,%ecx
c0037ab1:	0f 89 0d f7 ff ff    	jns    c00371c4 <_svfiprintf_r+0x404>
c0037ab7:	f7 d9                	neg    %ecx
c0037ab9:	bf 2d 00 00 00       	mov    $0x2d,%edi
c0037abe:	c6 85 71 ff ff ff 2d 	movb   $0x2d,-0x8f(%ebp)
c0037ac5:	ba 01 00 00 00       	mov    $0x1,%edx
c0037aca:	e9 7a f4 ff ff       	jmp    c0036f49 <_svfiprintf_r+0x189>
c0037acf:	89 1c 24             	mov    %ebx,(%esp)
c0037ad2:	e8 79 f0 ff ff       	call   c0036b50 <strlen>
c0037ad7:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
c0037add:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c0037ae4:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c0037aeb:	00 00 00 
c0037aee:	89 55 14             	mov    %edx,0x14(%ebp)
c0037af1:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0037af7:	e9 b4 f4 ff ff       	jmp    c0036fb0 <_svfiprintf_r+0x1f0>
c0037afc:	8b 45 08             	mov    0x8(%ebp),%eax
c0037aff:	c7 44 24 04 40 00 00 	movl   $0x40,0x4(%esp)
c0037b06:	00 
c0037b07:	89 04 24             	mov    %eax,(%esp)
c0037b0a:	e8 41 d9 ff ff       	call   c0035450 <_malloc_r>
c0037b0f:	8b 75 0c             	mov    0xc(%ebp),%esi
c0037b12:	85 c0                	test   %eax,%eax
c0037b14:	89 06                	mov    %eax,(%esi)
c0037b16:	89 46 10             	mov    %eax,0x10(%esi)
c0037b19:	0f 84 a3 00 00 00    	je     c0037bc2 <_svfiprintf_r+0xe02>
c0037b1f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037b22:	c7 40 14 40 00 00 00 	movl   $0x40,0x14(%eax)
c0037b29:	e9 b2 f2 ff ff       	jmp    c0036de0 <_svfiprintf_r+0x20>
c0037b2e:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
c0037b34:	b8 06 00 00 00       	mov    $0x6,%eax
c0037b39:	89 55 14             	mov    %edx,0x14(%ebp)
c0037b3c:	83 ff 06             	cmp    $0x6,%edi
c0037b3f:	0f 46 c7             	cmovbe %edi,%eax
c0037b42:	85 c0                	test   %eax,%eax
c0037b44:	0f 49 d8             	cmovns %eax,%ebx
c0037b47:	89 9d 60 ff ff ff    	mov    %ebx,-0xa0(%ebp)
c0037b4d:	bb e8 98 03 c0       	mov    $0xc00398e8,%ebx
c0037b52:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0037b58:	e9 61 f8 ff ff       	jmp    c00373be <_svfiprintf_r+0x5fe>
c0037b5d:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0037b63:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c0037b6a:	89 55 14             	mov    %edx,0x14(%ebp)
c0037b6d:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c0037b74:	00 00 00 
c0037b77:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0037b7d:	e9 2e f4 ff ff       	jmp    c0036fb0 <_svfiprintf_r+0x1f0>
c0037b82:	89 da                	mov    %ebx,%edx
c0037b84:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c0037b8b:	00 00 00 
c0037b8e:	e9 29 f3 ff ff       	jmp    c0036ebc <_svfiprintf_r+0xfc>
c0037b93:	8b 4d 14             	mov    0x14(%ebp),%ecx
c0037b96:	89 da                	mov    %ebx,%edx
c0037b98:	8b 45 14             	mov    0x14(%ebp),%eax
c0037b9b:	8b 09                	mov    (%ecx),%ecx
c0037b9d:	83 c0 04             	add    $0x4,%eax
c0037ba0:	89 45 14             	mov    %eax,0x14(%ebp)
c0037ba3:	85 c9                	test   %ecx,%ecx
c0037ba5:	89 8d 5c ff ff ff    	mov    %ecx,-0xa4(%ebp)
c0037bab:	0f 89 26 f3 ff ff    	jns    c0036ed7 <_svfiprintf_r+0x117>
c0037bb1:	c7 85 5c ff ff ff ff 	movl   $0xffffffff,-0xa4(%ebp)
c0037bb8:	ff ff ff 
c0037bbb:	89 d0                	mov    %edx,%eax
c0037bbd:	e9 f4 f2 ff ff       	jmp    c0036eb6 <_svfiprintf_r+0xf6>
c0037bc2:	8b 45 08             	mov    0x8(%ebp),%eax
c0037bc5:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0037bcb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0037bd0:	e9 06 fc ff ff       	jmp    c00377db <_svfiprintf_r+0xa1b>
c0037bd5:	66 90                	xchg   %ax,%ax
c0037bd7:	66 90                	xchg   %ax,%ax
c0037bd9:	66 90                	xchg   %ax,%ax
c0037bdb:	66 90                	xchg   %ax,%ax
c0037bdd:	66 90                	xchg   %ax,%ax
c0037bdf:	90                   	nop

c0037be0 <_calloc_r>:
c0037be0:	55                   	push   %ebp
c0037be1:	89 e5                	mov    %esp,%ebp
c0037be3:	53                   	push   %ebx
c0037be4:	83 ec 14             	sub    $0x14,%esp
c0037be7:	8b 45 10             	mov    0x10(%ebp),%eax
c0037bea:	0f af 45 0c          	imul   0xc(%ebp),%eax
c0037bee:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037bf2:	8b 45 08             	mov    0x8(%ebp),%eax
c0037bf5:	89 04 24             	mov    %eax,(%esp)
c0037bf8:	e8 53 d8 ff ff       	call   c0035450 <_malloc_r>
c0037bfd:	85 c0                	test   %eax,%eax
c0037bff:	89 c3                	mov    %eax,%ebx
c0037c01:	0f 84 91 00 00 00    	je     c0037c98 <_calloc_r+0xb8>
c0037c07:	8b 40 fc             	mov    -0x4(%eax),%eax
c0037c0a:	83 e0 fc             	and    $0xfffffffc,%eax
c0037c0d:	83 e8 04             	sub    $0x4,%eax
c0037c10:	83 f8 24             	cmp    $0x24,%eax
c0037c13:	77 63                	ja     c0037c78 <_calloc_r+0x98>
c0037c15:	83 f8 13             	cmp    $0x13,%eax
c0037c18:	89 da                	mov    %ebx,%edx
c0037c1a:	77 1c                	ja     c0037c38 <_calloc_r+0x58>
c0037c1c:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
c0037c22:	89 d8                	mov    %ebx,%eax
c0037c24:	c7 42 04 00 00 00 00 	movl   $0x0,0x4(%edx)
c0037c2b:	c7 42 08 00 00 00 00 	movl   $0x0,0x8(%edx)
c0037c32:	83 c4 14             	add    $0x14,%esp
c0037c35:	5b                   	pop    %ebx
c0037c36:	5d                   	pop    %ebp
c0037c37:	c3                   	ret    
c0037c38:	83 f8 1b             	cmp    $0x1b,%eax
c0037c3b:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
c0037c41:	8d 53 08             	lea    0x8(%ebx),%edx
c0037c44:	c7 43 04 00 00 00 00 	movl   $0x0,0x4(%ebx)
c0037c4b:	76 cf                	jbe    c0037c1c <_calloc_r+0x3c>
c0037c4d:	83 f8 24             	cmp    $0x24,%eax
c0037c50:	c7 43 08 00 00 00 00 	movl   $0x0,0x8(%ebx)
c0037c57:	8d 53 10             	lea    0x10(%ebx),%edx
c0037c5a:	c7 43 0c 00 00 00 00 	movl   $0x0,0xc(%ebx)
c0037c61:	75 b9                	jne    c0037c1c <_calloc_r+0x3c>
c0037c63:	c7 43 10 00 00 00 00 	movl   $0x0,0x10(%ebx)
c0037c6a:	8d 53 18             	lea    0x18(%ebx),%edx
c0037c6d:	c7 43 14 00 00 00 00 	movl   $0x0,0x14(%ebx)
c0037c74:	eb a6                	jmp    c0037c1c <_calloc_r+0x3c>
c0037c76:	66 90                	xchg   %ax,%ax
c0037c78:	89 1c 24             	mov    %ebx,(%esp)
c0037c7b:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037c7f:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0037c86:	00 
c0037c87:	e8 50 a2 ff ff       	call   c0031edc <memset>
c0037c8c:	83 c4 14             	add    $0x14,%esp
c0037c8f:	89 d8                	mov    %ebx,%eax
c0037c91:	5b                   	pop    %ebx
c0037c92:	5d                   	pop    %ebp
c0037c93:	c3                   	ret    
c0037c94:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037c98:	31 c0                	xor    %eax,%eax
c0037c9a:	eb 96                	jmp    c0037c32 <_calloc_r+0x52>
c0037c9c:	66 90                	xchg   %ax,%ax
c0037c9e:	66 90                	xchg   %ax,%ax

c0037ca0 <_malloc_trim_r>:
c0037ca0:	55                   	push   %ebp
c0037ca1:	89 e5                	mov    %esp,%ebp
c0037ca3:	57                   	push   %edi
c0037ca4:	56                   	push   %esi
c0037ca5:	53                   	push   %ebx
c0037ca6:	83 ec 1c             	sub    $0x1c,%esp
c0037ca9:	8b 75 08             	mov    0x8(%ebp),%esi
c0037cac:	89 34 24             	mov    %esi,(%esp)
c0037caf:	e8 7c df ff ff       	call   c0035c30 <__malloc_lock>
c0037cb4:	a1 48 d5 03 c0       	mov    0xc003d548,%eax
c0037cb9:	8b 58 04             	mov    0x4(%eax),%ebx
c0037cbc:	83 e3 fc             	and    $0xfffffffc,%ebx
c0037cbf:	89 d8                	mov    %ebx,%eax
c0037cc1:	2b 45 0c             	sub    0xc(%ebp),%eax
c0037cc4:	05 ef 0f 00 00       	add    $0xfef,%eax
c0037cc9:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0037cce:	8d b8 00 f0 ff ff    	lea    -0x1000(%eax),%edi
c0037cd4:	81 ff ff 0f 00 00    	cmp    $0xfff,%edi
c0037cda:	7e 1c                	jle    c0037cf8 <_malloc_trim_r+0x58>
c0037cdc:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0037ce3:	00 
c0037ce4:	89 34 24             	mov    %esi,(%esp)
c0037ce7:	e8 44 ed ff ff       	call   c0036a30 <_sbrk_r>
c0037cec:	8b 15 48 d5 03 c0    	mov    0xc003d548,%edx
c0037cf2:	01 da                	add    %ebx,%edx
c0037cf4:	39 d0                	cmp    %edx,%eax
c0037cf6:	74 18                	je     c0037d10 <_malloc_trim_r+0x70>
c0037cf8:	89 34 24             	mov    %esi,(%esp)
c0037cfb:	e8 40 df ff ff       	call   c0035c40 <__malloc_unlock>
c0037d00:	83 c4 1c             	add    $0x1c,%esp
c0037d03:	31 c0                	xor    %eax,%eax
c0037d05:	5b                   	pop    %ebx
c0037d06:	5e                   	pop    %esi
c0037d07:	5f                   	pop    %edi
c0037d08:	5d                   	pop    %ebp
c0037d09:	c3                   	ret    
c0037d0a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037d10:	89 f8                	mov    %edi,%eax
c0037d12:	f7 d8                	neg    %eax
c0037d14:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037d18:	89 34 24             	mov    %esi,(%esp)
c0037d1b:	e8 10 ed ff ff       	call   c0036a30 <_sbrk_r>
c0037d20:	83 f8 ff             	cmp    $0xffffffff,%eax
c0037d23:	74 2b                	je     c0037d50 <_malloc_trim_r+0xb0>
c0037d25:	a1 48 d5 03 c0       	mov    0xc003d548,%eax
c0037d2a:	29 fb                	sub    %edi,%ebx
c0037d2c:	83 cb 01             	or     $0x1,%ebx
c0037d2f:	29 3d 20 00 07 c0    	sub    %edi,0xc0070020
c0037d35:	89 58 04             	mov    %ebx,0x4(%eax)
c0037d38:	89 34 24             	mov    %esi,(%esp)
c0037d3b:	e8 00 df ff ff       	call   c0035c40 <__malloc_unlock>
c0037d40:	83 c4 1c             	add    $0x1c,%esp
c0037d43:	b8 01 00 00 00       	mov    $0x1,%eax
c0037d48:	5b                   	pop    %ebx
c0037d49:	5e                   	pop    %esi
c0037d4a:	5f                   	pop    %edi
c0037d4b:	5d                   	pop    %ebp
c0037d4c:	c3                   	ret    
c0037d4d:	8d 76 00             	lea    0x0(%esi),%esi
c0037d50:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0037d57:	00 
c0037d58:	89 34 24             	mov    %esi,(%esp)
c0037d5b:	e8 d0 ec ff ff       	call   c0036a30 <_sbrk_r>
c0037d60:	8b 15 48 d5 03 c0    	mov    0xc003d548,%edx
c0037d66:	89 c1                	mov    %eax,%ecx
c0037d68:	29 d1                	sub    %edx,%ecx
c0037d6a:	83 f9 0f             	cmp    $0xf,%ecx
c0037d6d:	7e 89                	jle    c0037cf8 <_malloc_trim_r+0x58>
c0037d6f:	2b 05 20 d5 03 c0    	sub    0xc003d520,%eax
c0037d75:	83 c9 01             	or     $0x1,%ecx
c0037d78:	89 4a 04             	mov    %ecx,0x4(%edx)
c0037d7b:	a3 20 00 07 c0       	mov    %eax,0xc0070020
c0037d80:	e9 73 ff ff ff       	jmp    c0037cf8 <_malloc_trim_r+0x58>
c0037d85:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037d89:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0037d90 <_free_r>:
c0037d90:	55                   	push   %ebp
c0037d91:	89 e5                	mov    %esp,%ebp
c0037d93:	57                   	push   %edi
c0037d94:	56                   	push   %esi
c0037d95:	53                   	push   %ebx
c0037d96:	83 ec 1c             	sub    $0x1c,%esp
c0037d99:	8b 75 0c             	mov    0xc(%ebp),%esi
c0037d9c:	8b 45 08             	mov    0x8(%ebp),%eax
c0037d9f:	85 f6                	test   %esi,%esi
c0037da1:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0037da4:	0f 84 fe 00 00 00    	je     c0037ea8 <_free_r+0x118>
c0037daa:	89 04 24             	mov    %eax,(%esp)
c0037dad:	e8 7e de ff ff       	call   c0035c30 <__malloc_lock>
c0037db2:	8b 7e fc             	mov    -0x4(%esi),%edi
c0037db5:	8d 56 f8             	lea    -0x8(%esi),%edx
c0037db8:	89 f8                	mov    %edi,%eax
c0037dba:	83 e0 fe             	and    $0xfffffffe,%eax
c0037dbd:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
c0037dc0:	8b 59 04             	mov    0x4(%ecx),%ebx
c0037dc3:	83 e3 fc             	and    $0xfffffffc,%ebx
c0037dc6:	39 0d 48 d5 03 c0    	cmp    %ecx,0xc003d548
c0037dcc:	0f 84 0e 01 00 00    	je     c0037ee0 <_free_r+0x150>
c0037dd2:	83 e7 01             	and    $0x1,%edi
c0037dd5:	89 59 04             	mov    %ebx,0x4(%ecx)
c0037dd8:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
c0037ddf:	75 1f                	jne    c0037e00 <_free_r+0x70>
c0037de1:	8b 76 f8             	mov    -0x8(%esi),%esi
c0037de4:	29 f2                	sub    %esi,%edx
c0037de6:	01 f0                	add    %esi,%eax
c0037de8:	8b 72 08             	mov    0x8(%edx),%esi
c0037deb:	81 fe 48 d5 03 c0    	cmp    $0xc003d548,%esi
c0037df1:	0f 84 39 01 00 00    	je     c0037f30 <_free_r+0x1a0>
c0037df7:	8b 7a 0c             	mov    0xc(%edx),%edi
c0037dfa:	89 7e 0c             	mov    %edi,0xc(%esi)
c0037dfd:	89 77 08             	mov    %esi,0x8(%edi)
c0037e00:	f6 44 19 04 01       	testb  $0x1,0x4(%ecx,%ebx,1)
c0037e05:	75 21                	jne    c0037e28 <_free_r+0x98>
c0037e07:	8b 75 e0             	mov    -0x20(%ebp),%esi
c0037e0a:	01 d8                	add    %ebx,%eax
c0037e0c:	8b 59 08             	mov    0x8(%ecx),%ebx
c0037e0f:	85 f6                	test   %esi,%esi
c0037e11:	75 0c                	jne    c0037e1f <_free_r+0x8f>
c0037e13:	81 fb 48 d5 03 c0    	cmp    $0xc003d548,%ebx
c0037e19:	0f 84 21 01 00 00    	je     c0037f40 <_free_r+0x1b0>
c0037e1f:	8b 49 0c             	mov    0xc(%ecx),%ecx
c0037e22:	89 4b 0c             	mov    %ecx,0xc(%ebx)
c0037e25:	89 59 08             	mov    %ebx,0x8(%ecx)
c0037e28:	89 c1                	mov    %eax,%ecx
c0037e2a:	83 c9 01             	or     $0x1,%ecx
c0037e2d:	89 4a 04             	mov    %ecx,0x4(%edx)
c0037e30:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0037e33:	89 04 02             	mov    %eax,(%edx,%eax,1)
c0037e36:	85 c9                	test   %ecx,%ecx
c0037e38:	75 56                	jne    c0037e90 <_free_r+0x100>
c0037e3a:	3d ff 01 00 00       	cmp    $0x1ff,%eax
c0037e3f:	76 6f                	jbe    c0037eb0 <_free_r+0x120>
c0037e41:	89 c1                	mov    %eax,%ecx
c0037e43:	c1 e9 09             	shr    $0x9,%ecx
c0037e46:	83 f9 04             	cmp    $0x4,%ecx
c0037e49:	0f 87 21 01 00 00    	ja     c0037f70 <_free_r+0x1e0>
c0037e4f:	89 c1                	mov    %eax,%ecx
c0037e51:	c1 e9 06             	shr    $0x6,%ecx
c0037e54:	83 c1 38             	add    $0x38,%ecx
c0037e57:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0037e5a:	8d 34 9d 40 d5 03 c0 	lea    -0x3ffc2ac0(,%ebx,4),%esi
c0037e61:	8b 5e 08             	mov    0x8(%esi),%ebx
c0037e64:	39 f3                	cmp    %esi,%ebx
c0037e66:	0f 84 14 01 00 00    	je     c0037f80 <_free_r+0x1f0>
c0037e6c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037e70:	8b 4b 04             	mov    0x4(%ebx),%ecx
c0037e73:	83 e1 fc             	and    $0xfffffffc,%ecx
c0037e76:	39 c8                	cmp    %ecx,%eax
c0037e78:	73 07                	jae    c0037e81 <_free_r+0xf1>
c0037e7a:	8b 5b 08             	mov    0x8(%ebx),%ebx
c0037e7d:	39 de                	cmp    %ebx,%esi
c0037e7f:	75 ef                	jne    c0037e70 <_free_r+0xe0>
c0037e81:	8b 43 0c             	mov    0xc(%ebx),%eax
c0037e84:	89 42 0c             	mov    %eax,0xc(%edx)
c0037e87:	89 5a 08             	mov    %ebx,0x8(%edx)
c0037e8a:	89 50 08             	mov    %edx,0x8(%eax)
c0037e8d:	89 53 0c             	mov    %edx,0xc(%ebx)
c0037e90:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0037e93:	89 45 08             	mov    %eax,0x8(%ebp)
c0037e96:	83 c4 1c             	add    $0x1c,%esp
c0037e99:	5b                   	pop    %ebx
c0037e9a:	5e                   	pop    %esi
c0037e9b:	5f                   	pop    %edi
c0037e9c:	5d                   	pop    %ebp
c0037e9d:	e9 9e dd ff ff       	jmp    c0035c40 <__malloc_unlock>
c0037ea2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037ea8:	83 c4 1c             	add    $0x1c,%esp
c0037eab:	5b                   	pop    %ebx
c0037eac:	5e                   	pop    %esi
c0037ead:	5f                   	pop    %edi
c0037eae:	5d                   	pop    %ebp
c0037eaf:	c3                   	ret    
c0037eb0:	c1 e8 03             	shr    $0x3,%eax
c0037eb3:	bb 01 00 00 00       	mov    $0x1,%ebx
c0037eb8:	89 c1                	mov    %eax,%ecx
c0037eba:	c1 f9 02             	sar    $0x2,%ecx
c0037ebd:	8d 04 c5 40 d5 03 c0 	lea    -0x3ffc2ac0(,%eax,8),%eax
c0037ec4:	d3 e3                	shl    %cl,%ebx
c0037ec6:	8b 48 08             	mov    0x8(%eax),%ecx
c0037ec9:	09 1d 44 d5 03 c0    	or     %ebx,0xc003d544
c0037ecf:	89 42 0c             	mov    %eax,0xc(%edx)
c0037ed2:	89 4a 08             	mov    %ecx,0x8(%edx)
c0037ed5:	89 50 08             	mov    %edx,0x8(%eax)
c0037ed8:	89 51 0c             	mov    %edx,0xc(%ecx)
c0037edb:	eb b3                	jmp    c0037e90 <_free_r+0x100>
c0037edd:	8d 76 00             	lea    0x0(%esi),%esi
c0037ee0:	01 d8                	add    %ebx,%eax
c0037ee2:	83 e7 01             	and    $0x1,%edi
c0037ee5:	75 13                	jne    c0037efa <_free_r+0x16a>
c0037ee7:	8b 4e f8             	mov    -0x8(%esi),%ecx
c0037eea:	29 ca                	sub    %ecx,%edx
c0037eec:	01 c8                	add    %ecx,%eax
c0037eee:	8b 5a 08             	mov    0x8(%edx),%ebx
c0037ef1:	8b 4a 0c             	mov    0xc(%edx),%ecx
c0037ef4:	89 4b 0c             	mov    %ecx,0xc(%ebx)
c0037ef7:	89 59 08             	mov    %ebx,0x8(%ecx)
c0037efa:	89 c1                	mov    %eax,%ecx
c0037efc:	83 c9 01             	or     $0x1,%ecx
c0037eff:	3b 05 24 d5 03 c0    	cmp    0xc003d524,%eax
c0037f05:	89 4a 04             	mov    %ecx,0x4(%edx)
c0037f08:	89 15 48 d5 03 c0    	mov    %edx,0xc003d548
c0037f0e:	72 80                	jb     c0037e90 <_free_r+0x100>
c0037f10:	a1 50 00 07 c0       	mov    0xc0070050,%eax
c0037f15:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037f19:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0037f1c:	89 04 24             	mov    %eax,(%esp)
c0037f1f:	e8 7c fd ff ff       	call   c0037ca0 <_malloc_trim_r>
c0037f24:	e9 67 ff ff ff       	jmp    c0037e90 <_free_r+0x100>
c0037f29:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0037f30:	c7 45 e0 01 00 00 00 	movl   $0x1,-0x20(%ebp)
c0037f37:	e9 c4 fe ff ff       	jmp    c0037e00 <_free_r+0x70>
c0037f3c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037f40:	89 c1                	mov    %eax,%ecx
c0037f42:	83 c9 01             	or     $0x1,%ecx
c0037f45:	89 15 54 d5 03 c0    	mov    %edx,0xc003d554
c0037f4b:	89 15 50 d5 03 c0    	mov    %edx,0xc003d550
c0037f51:	c7 42 0c 48 d5 03 c0 	movl   $0xc003d548,0xc(%edx)
c0037f58:	c7 42 08 48 d5 03 c0 	movl   $0xc003d548,0x8(%edx)
c0037f5f:	89 4a 04             	mov    %ecx,0x4(%edx)
c0037f62:	89 04 02             	mov    %eax,(%edx,%eax,1)
c0037f65:	e9 26 ff ff ff       	jmp    c0037e90 <_free_r+0x100>
c0037f6a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037f70:	83 f9 14             	cmp    $0x14,%ecx
c0037f73:	77 23                	ja     c0037f98 <_free_r+0x208>
c0037f75:	83 c1 5b             	add    $0x5b,%ecx
c0037f78:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0037f7b:	e9 da fe ff ff       	jmp    c0037e5a <_free_r+0xca>
c0037f80:	c1 f9 02             	sar    $0x2,%ecx
c0037f83:	b8 01 00 00 00       	mov    $0x1,%eax
c0037f88:	d3 e0                	shl    %cl,%eax
c0037f8a:	09 05 44 d5 03 c0    	or     %eax,0xc003d544
c0037f90:	89 d8                	mov    %ebx,%eax
c0037f92:	e9 ed fe ff ff       	jmp    c0037e84 <_free_r+0xf4>
c0037f97:	90                   	nop
c0037f98:	83 f9 54             	cmp    $0x54,%ecx
c0037f9b:	77 10                	ja     c0037fad <_free_r+0x21d>
c0037f9d:	89 c1                	mov    %eax,%ecx
c0037f9f:	c1 e9 0c             	shr    $0xc,%ecx
c0037fa2:	83 c1 6e             	add    $0x6e,%ecx
c0037fa5:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0037fa8:	e9 ad fe ff ff       	jmp    c0037e5a <_free_r+0xca>
c0037fad:	81 f9 54 01 00 00    	cmp    $0x154,%ecx
c0037fb3:	77 10                	ja     c0037fc5 <_free_r+0x235>
c0037fb5:	89 c1                	mov    %eax,%ecx
c0037fb7:	c1 e9 0f             	shr    $0xf,%ecx
c0037fba:	83 c1 77             	add    $0x77,%ecx
c0037fbd:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0037fc0:	e9 95 fe ff ff       	jmp    c0037e5a <_free_r+0xca>
c0037fc5:	81 f9 54 05 00 00    	cmp    $0x554,%ecx
c0037fcb:	77 10                	ja     c0037fdd <_free_r+0x24d>
c0037fcd:	89 c1                	mov    %eax,%ecx
c0037fcf:	c1 e9 12             	shr    $0x12,%ecx
c0037fd2:	83 c1 7c             	add    $0x7c,%ecx
c0037fd5:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0037fd8:	e9 7d fe ff ff       	jmp    c0037e5a <_free_r+0xca>
c0037fdd:	bb fc 00 00 00       	mov    $0xfc,%ebx
c0037fe2:	b9 7e 00 00 00       	mov    $0x7e,%ecx
c0037fe7:	e9 6e fe ff ff       	jmp    c0037e5a <_free_r+0xca>
c0037fec:	66 90                	xchg   %ax,%ax
c0037fee:	66 90                	xchg   %ax,%ax

c0037ff0 <memmove>:
c0037ff0:	55                   	push   %ebp
c0037ff1:	89 e5                	mov    %esp,%ebp
c0037ff3:	56                   	push   %esi
c0037ff4:	57                   	push   %edi
c0037ff5:	53                   	push   %ebx
c0037ff6:	8b 7d 08             	mov    0x8(%ebp),%edi
c0037ff9:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0037ffc:	8b 75 0c             	mov    0xc(%ebp),%esi
c0037fff:	fc                   	cld    
c0038000:	39 fe                	cmp    %edi,%esi
c0038002:	73 43                	jae    c0038047 <memmove+0x57>
c0038004:	8d 5c 31 ff          	lea    -0x1(%ecx,%esi,1),%ebx
c0038008:	39 df                	cmp    %ebx,%edi
c003800a:	77 3b                	ja     c0038047 <memmove+0x57>
c003800c:	01 ce                	add    %ecx,%esi
c003800e:	01 cf                	add    %ecx,%edi
c0038010:	fd                   	std    
c0038011:	83 f9 08             	cmp    $0x8,%ecx
c0038014:	76 2b                	jbe    c0038041 <memmove+0x51>
c0038016:	89 fa                	mov    %edi,%edx
c0038018:	89 cb                	mov    %ecx,%ebx
c003801a:	83 e2 03             	and    $0x3,%edx
c003801d:	74 0c                	je     c003802b <memmove+0x3b>
c003801f:	89 d1                	mov    %edx,%ecx
c0038021:	4e                   	dec    %esi
c0038022:	4f                   	dec    %edi
c0038023:	29 cb                	sub    %ecx,%ebx
c0038025:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0038027:	89 d9                	mov    %ebx,%ecx
c0038029:	46                   	inc    %esi
c003802a:	47                   	inc    %edi
c003802b:	c1 e9 02             	shr    $0x2,%ecx
c003802e:	83 ee 04             	sub    $0x4,%esi
c0038031:	83 ef 04             	sub    $0x4,%edi
c0038034:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
c0038036:	83 c6 04             	add    $0x4,%esi
c0038039:	83 c7 04             	add    $0x4,%edi
c003803c:	89 d9                	mov    %ebx,%ecx
c003803e:	83 e1 03             	and    $0x3,%ecx
c0038041:	4e                   	dec    %esi
c0038042:	4f                   	dec    %edi
c0038043:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0038045:	eb 2a                	jmp    c0038071 <memmove+0x81>
c0038047:	83 f9 08             	cmp    $0x8,%ecx
c003804a:	76 23                	jbe    c003806f <memmove+0x7f>
c003804c:	89 fa                	mov    %edi,%edx
c003804e:	89 cb                	mov    %ecx,%ebx
c0038050:	83 e2 03             	and    $0x3,%edx
c0038053:	74 10                	je     c0038065 <memmove+0x75>
c0038055:	b9 04 00 00 00       	mov    $0x4,%ecx
c003805a:	29 d1                	sub    %edx,%ecx
c003805c:	83 e1 03             	and    $0x3,%ecx
c003805f:	29 cb                	sub    %ecx,%ebx
c0038061:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0038063:	89 d9                	mov    %ebx,%ecx
c0038065:	c1 e9 02             	shr    $0x2,%ecx
c0038068:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
c003806a:	89 d9                	mov    %ebx,%ecx
c003806c:	83 e1 03             	and    $0x3,%ecx
c003806f:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0038071:	8b 45 08             	mov    0x8(%ebp),%eax
c0038074:	fc                   	cld    
c0038075:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0038078:	5b                   	pop    %ebx
c0038079:	5f                   	pop    %edi
c003807a:	5e                   	pop    %esi
c003807b:	c9                   	leave  
c003807c:	c3                   	ret    
c003807d:	66 90                	xchg   %ax,%ax
c003807f:	90                   	nop

c0038080 <_realloc_r>:
c0038080:	55                   	push   %ebp
c0038081:	89 e5                	mov    %esp,%ebp
c0038083:	57                   	push   %edi
c0038084:	56                   	push   %esi
c0038085:	53                   	push   %ebx
c0038086:	83 ec 3c             	sub    $0x3c,%esp
c0038089:	8b 45 08             	mov    0x8(%ebp),%eax
c003808c:	8b 7d 0c             	mov    0xc(%ebp),%edi
c003808f:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0038092:	8b 45 10             	mov    0x10(%ebp),%eax
c0038095:	85 ff                	test   %edi,%edi
c0038097:	89 45 e0             	mov    %eax,-0x20(%ebp)
c003809a:	0f 84 50 02 00 00    	je     c00382f0 <_realloc_r+0x270>
c00380a0:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c00380a3:	8d 77 f8             	lea    -0x8(%edi),%esi
c00380a6:	89 04 24             	mov    %eax,(%esp)
c00380a9:	e8 82 db ff ff       	call   c0035c30 <__malloc_lock>
c00380ae:	8b 47 fc             	mov    -0x4(%edi),%eax
c00380b1:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c00380b4:	89 c3                	mov    %eax,%ebx
c00380b6:	8d 51 0b             	lea    0xb(%ecx),%edx
c00380b9:	83 e3 fc             	and    $0xfffffffc,%ebx
c00380bc:	83 fa 16             	cmp    $0x16,%edx
c00380bf:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c00380c2:	0f 87 00 01 00 00    	ja     c00381c8 <_realloc_r+0x148>
c00380c8:	31 d2                	xor    %edx,%edx
c00380ca:	c7 45 d8 10 00 00 00 	movl   $0x10,-0x28(%ebp)
c00380d1:	c7 45 dc 10 00 00 00 	movl   $0x10,-0x24(%ebp)
c00380d8:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c00380db:	39 4d dc             	cmp    %ecx,-0x24(%ebp)
c00380de:	0f 82 1c 02 00 00    	jb     c0038300 <_realloc_r+0x280>
c00380e4:	84 d2                	test   %dl,%dl
c00380e6:	0f 85 14 02 00 00    	jne    c0038300 <_realloc_r+0x280>
c00380ec:	3b 5d d8             	cmp    -0x28(%ebp),%ebx
c00380ef:	0f 8d eb 00 00 00    	jge    c00381e0 <_realloc_r+0x160>
c00380f5:	8b 0d 48 d5 03 c0    	mov    0xc003d548,%ecx
c00380fb:	8d 14 1e             	lea    (%esi,%ebx,1),%edx
c00380fe:	39 d1                	cmp    %edx,%ecx
c0038100:	89 4d cc             	mov    %ecx,-0x34(%ebp)
c0038103:	0f 84 6f 02 00 00    	je     c0038378 <_realloc_r+0x2f8>
c0038109:	8b 4a 04             	mov    0x4(%edx),%ecx
c003810c:	89 c8                	mov    %ecx,%eax
c003810e:	83 e0 fe             	and    $0xfffffffe,%eax
c0038111:	f6 44 02 04 01       	testb  $0x1,0x4(%edx,%eax,1)
c0038116:	0f 84 f4 00 00 00    	je     c0038210 <_realloc_r+0x190>
c003811c:	c7 45 d0 00 00 00 00 	movl   $0x0,-0x30(%ebp)
c0038123:	31 d2                	xor    %edx,%edx
c0038125:	f6 45 d4 01          	testb  $0x1,-0x2c(%ebp)
c0038129:	0f 85 39 01 00 00    	jne    c0038268 <_realloc_r+0x1e8>
c003812f:	89 f1                	mov    %esi,%ecx
c0038131:	2b 4f f8             	sub    -0x8(%edi),%ecx
c0038134:	8b 41 04             	mov    0x4(%ecx),%eax
c0038137:	83 e0 fc             	and    $0xfffffffc,%eax
c003813a:	85 d2                	test   %edx,%edx
c003813c:	0f 84 f6 02 00 00    	je     c0038438 <_realloc_r+0x3b8>
c0038142:	3b 55 cc             	cmp    -0x34(%ebp),%edx
c0038145:	0f 84 f5 02 00 00    	je     c0038440 <_realloc_r+0x3c0>
c003814b:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c003814e:	8b 55 d0             	mov    -0x30(%ebp),%edx
c0038151:	01 d8                	add    %ebx,%eax
c0038153:	01 c2                	add    %eax,%edx
c0038155:	3b 55 d8             	cmp    -0x28(%ebp),%edx
c0038158:	89 55 d0             	mov    %edx,-0x30(%ebp)
c003815b:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c003815e:	0f 8c ac 01 00 00    	jl     c0038310 <_realloc_r+0x290>
c0038164:	8b 42 0c             	mov    0xc(%edx),%eax
c0038167:	83 eb 04             	sub    $0x4,%ebx
c003816a:	8b 52 08             	mov    0x8(%edx),%edx
c003816d:	83 fb 24             	cmp    $0x24,%ebx
c0038170:	8d 71 08             	lea    0x8(%ecx),%esi
c0038173:	89 42 0c             	mov    %eax,0xc(%edx)
c0038176:	89 50 08             	mov    %edx,0x8(%eax)
c0038179:	8b 41 0c             	mov    0xc(%ecx),%eax
c003817c:	8b 51 08             	mov    0x8(%ecx),%edx
c003817f:	89 42 0c             	mov    %eax,0xc(%edx)
c0038182:	89 50 08             	mov    %edx,0x8(%eax)
c0038185:	0f 87 85 03 00 00    	ja     c0038510 <_realloc_r+0x490>
c003818b:	83 fb 13             	cmp    $0x13,%ebx
c003818e:	89 f0                	mov    %esi,%eax
c0038190:	76 1a                	jbe    c00381ac <_realloc_r+0x12c>
c0038192:	8b 07                	mov    (%edi),%eax
c0038194:	83 fb 1b             	cmp    $0x1b,%ebx
c0038197:	89 41 08             	mov    %eax,0x8(%ecx)
c003819a:	8b 47 04             	mov    0x4(%edi),%eax
c003819d:	89 41 0c             	mov    %eax,0xc(%ecx)
c00381a0:	0f 87 8f 03 00 00    	ja     c0038535 <_realloc_r+0x4b5>
c00381a6:	8d 41 10             	lea    0x10(%ecx),%eax
c00381a9:	83 c7 08             	add    $0x8,%edi
c00381ac:	8b 17                	mov    (%edi),%edx
c00381ae:	8b 5d d0             	mov    -0x30(%ebp),%ebx
c00381b1:	89 10                	mov    %edx,(%eax)
c00381b3:	8b 57 04             	mov    0x4(%edi),%edx
c00381b6:	89 50 04             	mov    %edx,0x4(%eax)
c00381b9:	8b 57 08             	mov    0x8(%edi),%edx
c00381bc:	89 f7                	mov    %esi,%edi
c00381be:	89 ce                	mov    %ecx,%esi
c00381c0:	89 50 08             	mov    %edx,0x8(%eax)
c00381c3:	8b 41 04             	mov    0x4(%ecx),%eax
c00381c6:	eb 1b                	jmp    c00381e3 <_realloc_r+0x163>
c00381c8:	83 e2 f8             	and    $0xfffffff8,%edx
c00381cb:	89 55 dc             	mov    %edx,-0x24(%ebp)
c00381ce:	89 55 d8             	mov    %edx,-0x28(%ebp)
c00381d1:	c1 ea 1f             	shr    $0x1f,%edx
c00381d4:	e9 ff fe ff ff       	jmp    c00380d8 <_realloc_r+0x58>
c00381d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00381e0:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c00381e3:	89 da                	mov    %ebx,%edx
c00381e5:	2b 55 dc             	sub    -0x24(%ebp),%edx
c00381e8:	83 fa 0f             	cmp    $0xf,%edx
c00381eb:	77 4b                	ja     c0038238 <_realloc_r+0x1b8>
c00381ed:	83 e0 01             	and    $0x1,%eax
c00381f0:	09 d8                	or     %ebx,%eax
c00381f2:	89 46 04             	mov    %eax,0x4(%esi)
c00381f5:	83 4c 1e 04 01       	orl    $0x1,0x4(%esi,%ebx,1)
c00381fa:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c00381fd:	89 04 24             	mov    %eax,(%esp)
c0038200:	e8 3b da ff ff       	call   c0035c40 <__malloc_unlock>
c0038205:	89 f8                	mov    %edi,%eax
c0038207:	83 c4 3c             	add    $0x3c,%esp
c003820a:	5b                   	pop    %ebx
c003820b:	5e                   	pop    %esi
c003820c:	5f                   	pop    %edi
c003820d:	5d                   	pop    %ebp
c003820e:	c3                   	ret    
c003820f:	90                   	nop
c0038210:	83 e1 fc             	and    $0xfffffffc,%ecx
c0038213:	89 4d d0             	mov    %ecx,-0x30(%ebp)
c0038216:	01 d9                	add    %ebx,%ecx
c0038218:	3b 4d d8             	cmp    -0x28(%ebp),%ecx
c003821b:	0f 8c 04 ff ff ff    	jl     c0038125 <_realloc_r+0xa5>
c0038221:	8b 5a 0c             	mov    0xc(%edx),%ebx
c0038224:	8b 52 08             	mov    0x8(%edx),%edx
c0038227:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c003822a:	89 5a 0c             	mov    %ebx,0xc(%edx)
c003822d:	89 53 08             	mov    %edx,0x8(%ebx)
c0038230:	89 cb                	mov    %ecx,%ebx
c0038232:	eb af                	jmp    c00381e3 <_realloc_r+0x163>
c0038234:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0038238:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c003823b:	83 e0 01             	and    $0x1,%eax
c003823e:	09 d8                	or     %ebx,%eax
c0038240:	89 46 04             	mov    %eax,0x4(%esi)
c0038243:	89 d0                	mov    %edx,%eax
c0038245:	8d 0c 1e             	lea    (%esi,%ebx,1),%ecx
c0038248:	83 c8 01             	or     $0x1,%eax
c003824b:	89 41 04             	mov    %eax,0x4(%ecx)
c003824e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0038251:	83 4c 11 04 01       	orl    $0x1,0x4(%ecx,%edx,1)
c0038256:	83 c1 08             	add    $0x8,%ecx
c0038259:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c003825d:	89 04 24             	mov    %eax,(%esp)
c0038260:	e8 2b fb ff ff       	call   c0037d90 <_free_r>
c0038265:	eb 93                	jmp    c00381fa <_realloc_r+0x17a>
c0038267:	90                   	nop
c0038268:	8b 45 e0             	mov    -0x20(%ebp),%eax
c003826b:	89 44 24 04          	mov    %eax,0x4(%esp)
c003826f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0038272:	89 04 24             	mov    %eax,(%esp)
c0038275:	e8 d6 d1 ff ff       	call   c0035450 <_malloc_r>
c003827a:	85 c0                	test   %eax,%eax
c003827c:	89 c1                	mov    %eax,%ecx
c003827e:	0f 84 65 03 00 00    	je     c00385e9 <_realloc_r+0x569>
c0038284:	8b 47 fc             	mov    -0x4(%edi),%eax
c0038287:	8d 51 f8             	lea    -0x8(%ecx),%edx
c003828a:	89 55 e0             	mov    %edx,-0x20(%ebp)
c003828d:	89 c2                	mov    %eax,%edx
c003828f:	83 e2 fe             	and    $0xfffffffe,%edx
c0038292:	01 f2                	add    %esi,%edx
c0038294:	39 55 e0             	cmp    %edx,-0x20(%ebp)
c0038297:	0f 84 63 02 00 00    	je     c0038500 <_realloc_r+0x480>
c003829d:	83 eb 04             	sub    $0x4,%ebx
c00382a0:	83 fb 24             	cmp    $0x24,%ebx
c00382a3:	0f 87 6f 01 00 00    	ja     c0038418 <_realloc_r+0x398>
c00382a9:	83 fb 13             	cmp    $0x13,%ebx
c00382ac:	0f 87 ee 00 00 00    	ja     c00383a0 <_realloc_r+0x320>
c00382b2:	89 c8                	mov    %ecx,%eax
c00382b4:	89 fa                	mov    %edi,%edx
c00382b6:	8b 1a                	mov    (%edx),%ebx
c00382b8:	89 18                	mov    %ebx,(%eax)
c00382ba:	8b 5a 04             	mov    0x4(%edx),%ebx
c00382bd:	89 58 04             	mov    %ebx,0x4(%eax)
c00382c0:	8b 52 08             	mov    0x8(%edx),%edx
c00382c3:	89 50 08             	mov    %edx,0x8(%eax)
c00382c6:	8b 75 e4             	mov    -0x1c(%ebp),%esi
c00382c9:	89 7c 24 04          	mov    %edi,0x4(%esp)
c00382cd:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c00382d0:	89 34 24             	mov    %esi,(%esp)
c00382d3:	e8 b8 fa ff ff       	call   c0037d90 <_free_r>
c00382d8:	89 34 24             	mov    %esi,(%esp)
c00382db:	e8 60 d9 ff ff       	call   c0035c40 <__malloc_unlock>
c00382e0:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c00382e3:	83 c4 3c             	add    $0x3c,%esp
c00382e6:	5b                   	pop    %ebx
c00382e7:	5e                   	pop    %esi
c00382e8:	5f                   	pop    %edi
c00382e9:	89 c8                	mov    %ecx,%eax
c00382eb:	5d                   	pop    %ebp
c00382ec:	c3                   	ret    
c00382ed:	8d 76 00             	lea    0x0(%esi),%esi
c00382f0:	89 45 0c             	mov    %eax,0xc(%ebp)
c00382f3:	83 c4 3c             	add    $0x3c,%esp
c00382f6:	5b                   	pop    %ebx
c00382f7:	5e                   	pop    %esi
c00382f8:	5f                   	pop    %edi
c00382f9:	5d                   	pop    %ebp
c00382fa:	e9 51 d1 ff ff       	jmp    c0035450 <_malloc_r>
c00382ff:	90                   	nop
c0038300:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0038303:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0038309:	31 c0                	xor    %eax,%eax
c003830b:	e9 f7 fe ff ff       	jmp    c0038207 <_realloc_r+0x187>
c0038310:	89 c2                	mov    %eax,%edx
c0038312:	3b 55 d8             	cmp    -0x28(%ebp),%edx
c0038315:	0f 8c 4d ff ff ff    	jl     c0038268 <_realloc_r+0x1e8>
c003831b:	8b 71 08             	mov    0x8(%ecx),%esi
c003831e:	83 eb 04             	sub    $0x4,%ebx
c0038321:	8b 41 0c             	mov    0xc(%ecx),%eax
c0038324:	83 fb 24             	cmp    $0x24,%ebx
c0038327:	89 46 0c             	mov    %eax,0xc(%esi)
c003832a:	89 70 08             	mov    %esi,0x8(%eax)
c003832d:	8d 71 08             	lea    0x8(%ecx),%esi
c0038330:	0f 87 88 00 00 00    	ja     c00383be <_realloc_r+0x33e>
c0038336:	83 fb 13             	cmp    $0x13,%ebx
c0038339:	89 f0                	mov    %esi,%eax
c003833b:	76 1a                	jbe    c0038357 <_realloc_r+0x2d7>
c003833d:	8b 07                	mov    (%edi),%eax
c003833f:	83 fb 1b             	cmp    $0x1b,%ebx
c0038342:	89 41 08             	mov    %eax,0x8(%ecx)
c0038345:	8b 47 04             	mov    0x4(%edi),%eax
c0038348:	89 41 0c             	mov    %eax,0xc(%ecx)
c003834b:	0f 87 17 02 00 00    	ja     c0038568 <_realloc_r+0x4e8>
c0038351:	8d 41 10             	lea    0x10(%ecx),%eax
c0038354:	83 c7 08             	add    $0x8,%edi
c0038357:	8b 1f                	mov    (%edi),%ebx
c0038359:	89 18                	mov    %ebx,(%eax)
c003835b:	8b 5f 04             	mov    0x4(%edi),%ebx
c003835e:	89 58 04             	mov    %ebx,0x4(%eax)
c0038361:	8b 5f 08             	mov    0x8(%edi),%ebx
c0038364:	89 f7                	mov    %esi,%edi
c0038366:	89 ce                	mov    %ecx,%esi
c0038368:	89 58 08             	mov    %ebx,0x8(%eax)
c003836b:	89 d3                	mov    %edx,%ebx
c003836d:	8b 41 04             	mov    0x4(%ecx),%eax
c0038370:	e9 6e fe ff ff       	jmp    c00381e3 <_realloc_r+0x163>
c0038375:	8d 76 00             	lea    0x0(%esi),%esi
c0038378:	8b 45 cc             	mov    -0x34(%ebp),%eax
c003837b:	8b 55 dc             	mov    -0x24(%ebp),%edx
c003837e:	8b 48 04             	mov    0x4(%eax),%ecx
c0038381:	83 c2 10             	add    $0x10,%edx
c0038384:	89 4d d0             	mov    %ecx,-0x30(%ebp)
c0038387:	83 65 d0 fc          	andl   $0xfffffffc,-0x30(%ebp)
c003838b:	8b 4d d0             	mov    -0x30(%ebp),%ecx
c003838e:	01 d9                	add    %ebx,%ecx
c0038390:	39 d1                	cmp    %edx,%ecx
c0038392:	7d 54                	jge    c00383e8 <_realloc_r+0x368>
c0038394:	89 c2                	mov    %eax,%edx
c0038396:	e9 8a fd ff ff       	jmp    c0038125 <_realloc_r+0xa5>
c003839b:	90                   	nop
c003839c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00383a0:	8b 07                	mov    (%edi),%eax
c00383a2:	83 fb 1b             	cmp    $0x1b,%ebx
c00383a5:	89 01                	mov    %eax,(%ecx)
c00383a7:	8b 47 04             	mov    0x4(%edi),%eax
c00383aa:	89 41 04             	mov    %eax,0x4(%ecx)
c00383ad:	0f 87 2d 01 00 00    	ja     c00384e0 <_realloc_r+0x460>
c00383b3:	8d 41 08             	lea    0x8(%ecx),%eax
c00383b6:	8d 57 08             	lea    0x8(%edi),%edx
c00383b9:	e9 f8 fe ff ff       	jmp    c00382b6 <_realloc_r+0x236>
c00383be:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c00383c2:	89 7c 24 04          	mov    %edi,0x4(%esp)
c00383c6:	89 f7                	mov    %esi,%edi
c00383c8:	89 34 24             	mov    %esi,(%esp)
c00383cb:	89 55 d8             	mov    %edx,-0x28(%ebp)
c00383ce:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c00383d1:	e8 1a fc ff ff       	call   c0037ff0 <memmove>
c00383d6:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c00383d9:	8b 55 d8             	mov    -0x28(%ebp),%edx
c00383dc:	8b 41 04             	mov    0x4(%ecx),%eax
c00383df:	89 ce                	mov    %ecx,%esi
c00383e1:	89 d3                	mov    %edx,%ebx
c00383e3:	e9 fb fd ff ff       	jmp    c00381e3 <_realloc_r+0x163>
c00383e8:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c00383eb:	29 d9                	sub    %ebx,%ecx
c00383ed:	01 de                	add    %ebx,%esi
c00383ef:	83 c9 01             	or     $0x1,%ecx
c00383f2:	89 35 48 d5 03 c0    	mov    %esi,0xc003d548
c00383f8:	89 4e 04             	mov    %ecx,0x4(%esi)
c00383fb:	8b 47 fc             	mov    -0x4(%edi),%eax
c00383fe:	83 e0 01             	and    $0x1,%eax
c0038401:	09 d8                	or     %ebx,%eax
c0038403:	89 47 fc             	mov    %eax,-0x4(%edi)
c0038406:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0038409:	89 04 24             	mov    %eax,(%esp)
c003840c:	e8 2f d8 ff ff       	call   c0035c40 <__malloc_unlock>
c0038411:	89 f8                	mov    %edi,%eax
c0038413:	e9 ef fd ff ff       	jmp    c0038207 <_realloc_r+0x187>
c0038418:	89 0c 24             	mov    %ecx,(%esp)
c003841b:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c003841f:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0038423:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0038426:	e8 c5 fb ff ff       	call   c0037ff0 <memmove>
c003842b:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c003842e:	e9 93 fe ff ff       	jmp    c00382c6 <_realloc_r+0x246>
c0038433:	90                   	nop
c0038434:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0038438:	8d 14 18             	lea    (%eax,%ebx,1),%edx
c003843b:	e9 d2 fe ff ff       	jmp    c0038312 <_realloc_r+0x292>
c0038440:	8d 14 18             	lea    (%eax,%ebx,1),%edx
c0038443:	8b 45 d0             	mov    -0x30(%ebp),%eax
c0038446:	01 d0                	add    %edx,%eax
c0038448:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c003844b:	8b 45 dc             	mov    -0x24(%ebp),%eax
c003844e:	83 c0 10             	add    $0x10,%eax
c0038451:	39 45 d4             	cmp    %eax,-0x2c(%ebp)
c0038454:	0f 8c b8 fe ff ff    	jl     c0038312 <_realloc_r+0x292>
c003845a:	8b 41 0c             	mov    0xc(%ecx),%eax
c003845d:	83 eb 04             	sub    $0x4,%ebx
c0038460:	8b 51 08             	mov    0x8(%ecx),%edx
c0038463:	83 fb 24             	cmp    $0x24,%ebx
c0038466:	8d 71 08             	lea    0x8(%ecx),%esi
c0038469:	89 42 0c             	mov    %eax,0xc(%edx)
c003846c:	89 50 08             	mov    %edx,0x8(%eax)
c003846f:	0f 87 3d 01 00 00    	ja     c00385b2 <_realloc_r+0x532>
c0038475:	83 fb 13             	cmp    $0x13,%ebx
c0038478:	89 f0                	mov    %esi,%eax
c003847a:	76 1a                	jbe    c0038496 <_realloc_r+0x416>
c003847c:	8b 07                	mov    (%edi),%eax
c003847e:	83 fb 1b             	cmp    $0x1b,%ebx
c0038481:	89 41 08             	mov    %eax,0x8(%ecx)
c0038484:	8b 47 04             	mov    0x4(%edi),%eax
c0038487:	89 41 0c             	mov    %eax,0xc(%ecx)
c003848a:	0f 87 3d 01 00 00    	ja     c00385cd <_realloc_r+0x54d>
c0038490:	8d 41 10             	lea    0x10(%ecx),%eax
c0038493:	83 c7 08             	add    $0x8,%edi
c0038496:	8b 17                	mov    (%edi),%edx
c0038498:	89 10                	mov    %edx,(%eax)
c003849a:	8b 57 04             	mov    0x4(%edi),%edx
c003849d:	89 50 04             	mov    %edx,0x4(%eax)
c00384a0:	8b 57 08             	mov    0x8(%edi),%edx
c00384a3:	89 50 08             	mov    %edx,0x8(%eax)
c00384a6:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c00384a9:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c00384ac:	89 d8                	mov    %ebx,%eax
c00384ae:	29 df                	sub    %ebx,%edi
c00384b0:	01 c8                	add    %ecx,%eax
c00384b2:	83 cf 01             	or     $0x1,%edi
c00384b5:	a3 48 d5 03 c0       	mov    %eax,0xc003d548
c00384ba:	89 78 04             	mov    %edi,0x4(%eax)
c00384bd:	8b 41 04             	mov    0x4(%ecx),%eax
c00384c0:	83 e0 01             	and    $0x1,%eax
c00384c3:	09 d8                	or     %ebx,%eax
c00384c5:	89 41 04             	mov    %eax,0x4(%ecx)
c00384c8:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c00384cb:	89 04 24             	mov    %eax,(%esp)
c00384ce:	e8 6d d7 ff ff       	call   c0035c40 <__malloc_unlock>
c00384d3:	89 f0                	mov    %esi,%eax
c00384d5:	e9 2d fd ff ff       	jmp    c0038207 <_realloc_r+0x187>
c00384da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00384e0:	8b 47 08             	mov    0x8(%edi),%eax
c00384e3:	83 fb 24             	cmp    $0x24,%ebx
c00384e6:	89 41 08             	mov    %eax,0x8(%ecx)
c00384e9:	8b 47 0c             	mov    0xc(%edi),%eax
c00384ec:	89 41 0c             	mov    %eax,0xc(%ecx)
c00384ef:	74 60                	je     c0038551 <_realloc_r+0x4d1>
c00384f1:	8d 41 10             	lea    0x10(%ecx),%eax
c00384f4:	8d 57 10             	lea    0x10(%edi),%edx
c00384f7:	e9 ba fd ff ff       	jmp    c00382b6 <_realloc_r+0x236>
c00384fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0038500:	8b 51 fc             	mov    -0x4(%ecx),%edx
c0038503:	83 e2 fc             	and    $0xfffffffc,%edx
c0038506:	01 d3                	add    %edx,%ebx
c0038508:	e9 d6 fc ff ff       	jmp    c00381e3 <_realloc_r+0x163>
c003850d:	8d 76 00             	lea    0x0(%esi),%esi
c0038510:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0038514:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0038518:	89 f7                	mov    %esi,%edi
c003851a:	89 34 24             	mov    %esi,(%esp)
c003851d:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0038520:	e8 cb fa ff ff       	call   c0037ff0 <memmove>
c0038525:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0038528:	8b 5d d0             	mov    -0x30(%ebp),%ebx
c003852b:	8b 41 04             	mov    0x4(%ecx),%eax
c003852e:	89 ce                	mov    %ecx,%esi
c0038530:	e9 ae fc ff ff       	jmp    c00381e3 <_realloc_r+0x163>
c0038535:	8b 47 08             	mov    0x8(%edi),%eax
c0038538:	83 fb 24             	cmp    $0x24,%ebx
c003853b:	89 41 10             	mov    %eax,0x10(%ecx)
c003853e:	8b 47 0c             	mov    0xc(%edi),%eax
c0038541:	89 41 14             	mov    %eax,0x14(%ecx)
c0038544:	74 3e                	je     c0038584 <_realloc_r+0x504>
c0038546:	8d 41 18             	lea    0x18(%ecx),%eax
c0038549:	83 c7 10             	add    $0x10,%edi
c003854c:	e9 5b fc ff ff       	jmp    c00381ac <_realloc_r+0x12c>
c0038551:	8b 47 10             	mov    0x10(%edi),%eax
c0038554:	8d 57 18             	lea    0x18(%edi),%edx
c0038557:	89 41 10             	mov    %eax,0x10(%ecx)
c003855a:	8b 5f 14             	mov    0x14(%edi),%ebx
c003855d:	8d 41 18             	lea    0x18(%ecx),%eax
c0038560:	89 59 14             	mov    %ebx,0x14(%ecx)
c0038563:	e9 4e fd ff ff       	jmp    c00382b6 <_realloc_r+0x236>
c0038568:	8b 47 08             	mov    0x8(%edi),%eax
c003856b:	83 fb 24             	cmp    $0x24,%ebx
c003856e:	89 41 10             	mov    %eax,0x10(%ecx)
c0038571:	8b 47 0c             	mov    0xc(%edi),%eax
c0038574:	89 41 14             	mov    %eax,0x14(%ecx)
c0038577:	74 22                	je     c003859b <_realloc_r+0x51b>
c0038579:	8d 41 18             	lea    0x18(%ecx),%eax
c003857c:	83 c7 10             	add    $0x10,%edi
c003857f:	e9 d3 fd ff ff       	jmp    c0038357 <_realloc_r+0x2d7>
c0038584:	8b 47 10             	mov    0x10(%edi),%eax
c0038587:	83 c7 18             	add    $0x18,%edi
c003858a:	89 41 18             	mov    %eax,0x18(%ecx)
c003858d:	8b 57 fc             	mov    -0x4(%edi),%edx
c0038590:	8d 41 20             	lea    0x20(%ecx),%eax
c0038593:	89 51 1c             	mov    %edx,0x1c(%ecx)
c0038596:	e9 11 fc ff ff       	jmp    c00381ac <_realloc_r+0x12c>
c003859b:	8b 47 10             	mov    0x10(%edi),%eax
c003859e:	83 c7 18             	add    $0x18,%edi
c00385a1:	89 41 18             	mov    %eax,0x18(%ecx)
c00385a4:	8b 5f fc             	mov    -0x4(%edi),%ebx
c00385a7:	8d 41 20             	lea    0x20(%ecx),%eax
c00385aa:	89 59 1c             	mov    %ebx,0x1c(%ecx)
c00385ad:	e9 a5 fd ff ff       	jmp    c0038357 <_realloc_r+0x2d7>
c00385b2:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c00385b6:	89 7c 24 04          	mov    %edi,0x4(%esp)
c00385ba:	89 34 24             	mov    %esi,(%esp)
c00385bd:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c00385c0:	e8 2b fa ff ff       	call   c0037ff0 <memmove>
c00385c5:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c00385c8:	e9 d9 fe ff ff       	jmp    c00384a6 <_realloc_r+0x426>
c00385cd:	8b 47 08             	mov    0x8(%edi),%eax
c00385d0:	83 fb 24             	cmp    $0x24,%ebx
c00385d3:	89 41 10             	mov    %eax,0x10(%ecx)
c00385d6:	8b 47 0c             	mov    0xc(%edi),%eax
c00385d9:	89 41 14             	mov    %eax,0x14(%ecx)
c00385dc:	74 1d                	je     c00385fb <_realloc_r+0x57b>
c00385de:	8d 41 18             	lea    0x18(%ecx),%eax
c00385e1:	83 c7 10             	add    $0x10,%edi
c00385e4:	e9 ad fe ff ff       	jmp    c0038496 <_realloc_r+0x416>
c00385e9:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c00385ec:	89 04 24             	mov    %eax,(%esp)
c00385ef:	e8 4c d6 ff ff       	call   c0035c40 <__malloc_unlock>
c00385f4:	31 c0                	xor    %eax,%eax
c00385f6:	e9 0c fc ff ff       	jmp    c0038207 <_realloc_r+0x187>
c00385fb:	8b 47 10             	mov    0x10(%edi),%eax
c00385fe:	83 c7 18             	add    $0x18,%edi
c0038601:	89 41 18             	mov    %eax,0x18(%ecx)
c0038604:	8b 57 fc             	mov    -0x4(%edi),%edx
c0038607:	8d 41 20             	lea    0x20(%ecx),%eax
c003860a:	89 51 1c             	mov    %edx,0x1c(%ecx)
c003860d:	e9 84 fe ff ff       	jmp    c0038496 <_realloc_r+0x416>
c0038612:	66 90                	xchg   %ax,%ax
c0038614:	66 90                	xchg   %ax,%ax
c0038616:	66 90                	xchg   %ax,%ax
c0038618:	66 90                	xchg   %ax,%ax
c003861a:	66 90                	xchg   %ax,%ax
c003861c:	66 90                	xchg   %ax,%ax
c003861e:	66 90                	xchg   %ax,%ax

c0038620 <cleanup_glue>:
c0038620:	55                   	push   %ebp
c0038621:	89 e5                	mov    %esp,%ebp
c0038623:	56                   	push   %esi
c0038624:	53                   	push   %ebx
c0038625:	83 ec 10             	sub    $0x10,%esp
c0038628:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c003862b:	8b 75 08             	mov    0x8(%ebp),%esi
c003862e:	8b 03                	mov    (%ebx),%eax
c0038630:	85 c0                	test   %eax,%eax
c0038632:	74 0c                	je     c0038640 <cleanup_glue+0x20>
c0038634:	89 44 24 04          	mov    %eax,0x4(%esp)
c0038638:	89 34 24             	mov    %esi,(%esp)
c003863b:	e8 e0 ff ff ff       	call   c0038620 <cleanup_glue>
c0038640:	89 5d 0c             	mov    %ebx,0xc(%ebp)
c0038643:	89 75 08             	mov    %esi,0x8(%ebp)
c0038646:	83 c4 10             	add    $0x10,%esp
c0038649:	5b                   	pop    %ebx
c003864a:	5e                   	pop    %esi
c003864b:	5d                   	pop    %ebp
c003864c:	e9 3f f7 ff ff       	jmp    c0037d90 <_free_r>
c0038651:	eb 0d                	jmp    c0038660 <_reclaim_reent>
c0038653:	90                   	nop
c0038654:	90                   	nop
c0038655:	90                   	nop
c0038656:	90                   	nop
c0038657:	90                   	nop
c0038658:	90                   	nop
c0038659:	90                   	nop
c003865a:	90                   	nop
c003865b:	90                   	nop
c003865c:	90                   	nop
c003865d:	90                   	nop
c003865e:	90                   	nop
c003865f:	90                   	nop

c0038660 <_reclaim_reent>:
c0038660:	55                   	push   %ebp
c0038661:	89 e5                	mov    %esp,%ebp
c0038663:	57                   	push   %edi
c0038664:	56                   	push   %esi
c0038665:	53                   	push   %ebx
c0038666:	83 ec 1c             	sub    $0x1c,%esp
c0038669:	8b 5d 08             	mov    0x8(%ebp),%ebx
c003866c:	3b 1d 40 d0 03 c0    	cmp    0xc003d040,%ebx
c0038672:	0f 84 a6 00 00 00    	je     c003871e <_reclaim_reent+0xbe>
c0038678:	8b 53 4c             	mov    0x4c(%ebx),%edx
c003867b:	85 d2                	test   %edx,%edx
c003867d:	74 46                	je     c00386c5 <_reclaim_reent+0x65>
c003867f:	31 c0                	xor    %eax,%eax
c0038681:	31 f6                	xor    %esi,%esi
c0038683:	90                   	nop
c0038684:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0038688:	8b 04 82             	mov    (%edx,%eax,4),%eax
c003868b:	85 c0                	test   %eax,%eax
c003868d:	75 0b                	jne    c003869a <_reclaim_reent+0x3a>
c003868f:	eb 1e                	jmp    c00386af <_reclaim_reent+0x4f>
c0038691:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0038698:	89 f8                	mov    %edi,%eax
c003869a:	8b 38                	mov    (%eax),%edi
c003869c:	89 44 24 04          	mov    %eax,0x4(%esp)
c00386a0:	89 1c 24             	mov    %ebx,(%esp)
c00386a3:	e8 e8 f6 ff ff       	call   c0037d90 <_free_r>
c00386a8:	85 ff                	test   %edi,%edi
c00386aa:	75 ec                	jne    c0038698 <_reclaim_reent+0x38>
c00386ac:	8b 53 4c             	mov    0x4c(%ebx),%edx
c00386af:	83 c6 01             	add    $0x1,%esi
c00386b2:	83 fe 20             	cmp    $0x20,%esi
c00386b5:	89 f0                	mov    %esi,%eax
c00386b7:	75 cf                	jne    c0038688 <_reclaim_reent+0x28>
c00386b9:	89 54 24 04          	mov    %edx,0x4(%esp)
c00386bd:	89 1c 24             	mov    %ebx,(%esp)
c00386c0:	e8 cb f6 ff ff       	call   c0037d90 <_free_r>
c00386c5:	8b 43 40             	mov    0x40(%ebx),%eax
c00386c8:	85 c0                	test   %eax,%eax
c00386ca:	74 0c                	je     c00386d8 <_reclaim_reent+0x78>
c00386cc:	89 44 24 04          	mov    %eax,0x4(%esp)
c00386d0:	89 1c 24             	mov    %ebx,(%esp)
c00386d3:	e8 b8 f6 ff ff       	call   c0037d90 <_free_r>
c00386d8:	8b 83 48 01 00 00    	mov    0x148(%ebx),%eax
c00386de:	85 c0                	test   %eax,%eax
c00386e0:	74 22                	je     c0038704 <_reclaim_reent+0xa4>
c00386e2:	8d b3 4c 01 00 00    	lea    0x14c(%ebx),%esi
c00386e8:	39 f0                	cmp    %esi,%eax
c00386ea:	75 06                	jne    c00386f2 <_reclaim_reent+0x92>
c00386ec:	eb 16                	jmp    c0038704 <_reclaim_reent+0xa4>
c00386ee:	66 90                	xchg   %ax,%ax
c00386f0:	89 f8                	mov    %edi,%eax
c00386f2:	8b 38                	mov    (%eax),%edi
c00386f4:	89 44 24 04          	mov    %eax,0x4(%esp)
c00386f8:	89 1c 24             	mov    %ebx,(%esp)
c00386fb:	e8 90 f6 ff ff       	call   c0037d90 <_free_r>
c0038700:	39 fe                	cmp    %edi,%esi
c0038702:	75 ec                	jne    c00386f0 <_reclaim_reent+0x90>
c0038704:	8b 43 54             	mov    0x54(%ebx),%eax
c0038707:	85 c0                	test   %eax,%eax
c0038709:	74 0c                	je     c0038717 <_reclaim_reent+0xb7>
c003870b:	89 44 24 04          	mov    %eax,0x4(%esp)
c003870f:	89 1c 24             	mov    %ebx,(%esp)
c0038712:	e8 79 f6 ff ff       	call   c0037d90 <_free_r>
c0038717:	8b 43 38             	mov    0x38(%ebx),%eax
c003871a:	85 c0                	test   %eax,%eax
c003871c:	75 08                	jne    c0038726 <_reclaim_reent+0xc6>
c003871e:	83 c4 1c             	add    $0x1c,%esp
c0038721:	5b                   	pop    %ebx
c0038722:	5e                   	pop    %esi
c0038723:	5f                   	pop    %edi
c0038724:	5d                   	pop    %ebp
c0038725:	c3                   	ret    
c0038726:	89 1c 24             	mov    %ebx,(%esp)
c0038729:	ff 53 3c             	call   *0x3c(%ebx)
c003872c:	8b 83 e0 02 00 00    	mov    0x2e0(%ebx),%eax
c0038732:	85 c0                	test   %eax,%eax
c0038734:	74 e8                	je     c003871e <_reclaim_reent+0xbe>
c0038736:	89 1c 24             	mov    %ebx,(%esp)
c0038739:	89 44 24 04          	mov    %eax,0x4(%esp)
c003873d:	e8 de fe ff ff       	call   c0038620 <cleanup_glue>
c0038742:	83 c4 1c             	add    $0x1c,%esp
c0038745:	5b                   	pop    %ebx
c0038746:	5e                   	pop    %esi
c0038747:	5f                   	pop    %edi
c0038748:	5d                   	pop    %ebp
c0038749:	c3                   	ret    
