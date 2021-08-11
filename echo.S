
testcase/bin/echo:     file format elf32-i386


Disassembly of section .text:

08049000 <start>:
 8049000:	e9 e7 00 00 00       	jmp    80490ec <main>

08049005 <in_byte>:
 8049005:	55                   	push   %ebp
 8049006:	89 e5                	mov    %esp,%ebp
 8049008:	83 ec 14             	sub    $0x14,%esp
 804900b:	e8 3a 01 00 00       	call   804914a <__x86.get_pc_thunk.ax>
 8049010:	05 f0 2f 00 00       	add    $0x2ff0,%eax
 8049015:	8b 45 08             	mov    0x8(%ebp),%eax
 8049018:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
 804901c:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804901f:	89 c2                	mov    %eax,%edx
 8049021:	ec                   	in     (%dx),%al
 8049022:	88 45 ff             	mov    %al,-0x1(%ebp)
 8049025:	8a 45 ff             	mov    -0x1(%ebp),%al
 8049028:	c9                   	leave  
 8049029:	c3                   	ret    

0804902a <add_irq_handler>:
 804902a:	55                   	push   %ebp
 804902b:	89 e5                	mov    %esp,%ebp
 804902d:	53                   	push   %ebx
 804902e:	e8 17 01 00 00       	call   804914a <__x86.get_pc_thunk.ax>
 8049033:	05 cd 2f 00 00       	add    $0x2fcd,%eax
 8049038:	b8 00 00 00 00       	mov    $0x0,%eax
 804903d:	8b 55 08             	mov    0x8(%ebp),%edx
 8049040:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 8049043:	89 d3                	mov    %edx,%ebx
 8049045:	cd 80                	int    $0x80
 8049047:	90                   	nop
 8049048:	5b                   	pop    %ebx
 8049049:	5d                   	pop    %ebp
 804904a:	c3                   	ret    

0804904b <writec>:
 804904b:	55                   	push   %ebp
 804904c:	89 e5                	mov    %esp,%ebp
 804904e:	53                   	push   %ebx
 804904f:	83 ec 04             	sub    $0x4,%esp
 8049052:	e8 f3 00 00 00       	call   804914a <__x86.get_pc_thunk.ax>
 8049057:	05 a9 2f 00 00       	add    $0x2fa9,%eax
 804905c:	8b 45 0c             	mov    0xc(%ebp),%eax
 804905f:	88 45 f8             	mov    %al,-0x8(%ebp)
 8049062:	b8 04 00 00 00       	mov    $0x4,%eax
 8049067:	8b 5d 08             	mov    0x8(%ebp),%ebx
 804906a:	8d 4d f8             	lea    -0x8(%ebp),%ecx
 804906d:	ba 01 00 00 00       	mov    $0x1,%edx
 8049072:	cd 80                	int    $0x80
 8049074:	90                   	nop
 8049075:	83 c4 04             	add    $0x4,%esp
 8049078:	5b                   	pop    %ebx
 8049079:	5d                   	pop    %ebp
 804907a:	c3                   	ret    

0804907b <printc>:
 804907b:	55                   	push   %ebp
 804907c:	89 e5                	mov    %esp,%ebp
 804907e:	83 ec 04             	sub    $0x4,%esp
 8049081:	e8 c4 00 00 00       	call   804914a <__x86.get_pc_thunk.ax>
 8049086:	05 7a 2f 00 00       	add    $0x2f7a,%eax
 804908b:	8b 45 08             	mov    0x8(%ebp),%eax
 804908e:	88 45 fc             	mov    %al,-0x4(%ebp)
 8049091:	0f be 45 fc          	movsbl -0x4(%ebp),%eax
 8049095:	50                   	push   %eax
 8049096:	6a 01                	push   $0x1
 8049098:	e8 ae ff ff ff       	call   804904b <writec>
 804909d:	83 c4 08             	add    $0x8,%esp
 80490a0:	90                   	nop
 80490a1:	c9                   	leave  
 80490a2:	c3                   	ret    

080490a3 <keyboard_event_handler>:
 80490a3:	55                   	push   %ebp
 80490a4:	89 e5                	mov    %esp,%ebp
 80490a6:	83 ec 18             	sub    $0x18,%esp
 80490a9:	e8 9c 00 00 00       	call   804914a <__x86.get_pc_thunk.ax>
 80490ae:	05 52 2f 00 00       	add    $0x2f52,%eax
 80490b3:	6a 60                	push   $0x60
 80490b5:	e8 4b ff ff ff       	call   8049005 <in_byte>
 80490ba:	83 c4 04             	add    $0x4,%esp
 80490bd:	88 45 f7             	mov    %al,-0x9(%ebp)
 80490c0:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
 80490c4:	83 ec 0c             	sub    $0xc,%esp
 80490c7:	50                   	push   %eax
 80490c8:	e8 40 00 00 00       	call   804910d <translate_key>
 80490cd:	83 c4 10             	add    $0x10,%esp
 80490d0:	88 45 f6             	mov    %al,-0xa(%ebp)
 80490d3:	80 7d f6 00          	cmpb   $0x0,-0xa(%ebp)
 80490d7:	7e 10                	jle    80490e9 <keyboard_event_handler+0x46>
 80490d9:	0f be 45 f6          	movsbl -0xa(%ebp),%eax
 80490dd:	83 ec 0c             	sub    $0xc,%esp
 80490e0:	50                   	push   %eax
 80490e1:	e8 95 ff ff ff       	call   804907b <printc>
 80490e6:	83 c4 10             	add    $0x10,%esp
 80490e9:	90                   	nop
 80490ea:	c9                   	leave  
 80490eb:	c3                   	ret    

080490ec <main>:
 80490ec:	55                   	push   %ebp
 80490ed:	89 e5                	mov    %esp,%ebp
 80490ef:	e8 56 00 00 00       	call   804914a <__x86.get_pc_thunk.ax>
 80490f4:	05 0c 2f 00 00       	add    $0x2f0c,%eax
 80490f9:	8d 80 a3 d0 ff ff    	lea    -0x2f5d(%eax),%eax
 80490ff:	50                   	push   %eax
 8049100:	6a 01                	push   $0x1
 8049102:	e8 23 ff ff ff       	call   804902a <add_irq_handler>
 8049107:	83 c4 08             	add    $0x8,%esp
 804910a:	f4                   	hlt    
 804910b:	eb fd                	jmp    804910a <main+0x1e>

0804910d <translate_key>:
 804910d:	55                   	push   %ebp
 804910e:	89 e5                	mov    %esp,%ebp
 8049110:	83 ec 10             	sub    $0x10,%esp
 8049113:	e8 32 00 00 00       	call   804914a <__x86.get_pc_thunk.ax>
 8049118:	05 e8 2e 00 00       	add    $0x2ee8,%eax
 804911d:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
 8049124:	eb 1a                	jmp    8049140 <translate_key+0x33>
 8049126:	8b 55 fc             	mov    -0x4(%ebp),%edx
 8049129:	8b 94 90 20 00 00 00 	mov    0x20(%eax,%edx,4),%edx
 8049130:	39 55 08             	cmp    %edx,0x8(%ebp)
 8049133:	75 08                	jne    804913d <translate_key+0x30>
 8049135:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8049138:	83 c0 41             	add    $0x41,%eax
 804913b:	eb 0b                	jmp    8049148 <translate_key+0x3b>
 804913d:	ff 45 fc             	incl   -0x4(%ebp)
 8049140:	83 7d fc 19          	cmpl   $0x19,-0x4(%ebp)
 8049144:	7e e0                	jle    8049126 <translate_key+0x19>
 8049146:	b0 00                	mov    $0x0,%al
 8049148:	c9                   	leave  
 8049149:	c3                   	ret    

0804914a <__x86.get_pc_thunk.ax>:
 804914a:	8b 04 24             	mov    (%esp),%eax
 804914d:	c3                   	ret    
