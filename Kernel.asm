[BITS 16]
[ORG 0x00]

jmp 0x1000:START

COLOR_RED: db 0x04
COLOR_YELLOW: db 0x0E
COLOR_BROWN: db 0x06

START:
	mov ax, cs
	mov ds, ax

	mov ax, 0xB800
	mov es, ax
	mov cx, 0
PRINTSTART:
	push 4
	push 2

	push 1
	push 30

	push 20
	push 30

	push 15
	push 5

	push 1
	push 66

	push 10
	push 70

	push 3
	push 55

	push 20
	push 60

	push 10
	push 15

	push 35
	push 55

	mov si, cx
	push word[si]
	call DELSNOW
	add sp, 42


	inc cx
	push 4
	push 2

	push 1
	push 30

	push 20
	push 30

	push 15
	push 5

	push 1
	push 66

	push 10
	push 70

	push 3
	push 55

	push 20
	push 60

	push 10
	push 15

	push 35
	push 55

	mov si, cx
	push word[si]
	call PRINTSNOW
	add sp, 42
PRINTLUCKYBAG:
	push LUCKYBAG1
	push 10
	push 28
	call PRINTMESSAGE
	add sp, 6

	push LUCKYBAG2
	push 11
	push 28
	call PRINTMESSAGE
	add sp, 6

	push LUCKYBAG3
	push 12
	push 27
	call PRINTMESSAGE
	add sp, 6

	push LUCKYBAG4
	push 13
	push 25
	call PRINTMESSAGE
	add sp, 6

	push LUCKYBAG5
	push 14
	push 23
	call PRINTMESSAGE
	add sp, 6

	push LUCKYBAG6
	push 15
	push 21
	call PRINTMESSAGE
	add sp, 6

	push LUCKYBAG7
	push 16
	push 19
	call PRINTMESSAGE
	add sp, 6

	push LUCKYBAG8
	push 17
	push 18
	call PRINTMESSAGE
	add sp, 6

	push LUCKYBAG9
	push 18
	push 17
	call PRINTMESSAGE
	add sp, 6

	push LUCKYBAG10
	push 19
	push 17
	call PRINTMESSAGE
	add sp, 6

	push LUCKYBAG11
	push 20
	push 17
	call PRINTMESSAGE
	add sp, 6

	push LUCKYBAG12
	push 21
	push 17
	call PRINTMESSAGE
	add sp, 6

	push LUCKYBAG13
	push 22
	push 18
	call PRINTMESSAGE
	add sp, 6

	push LUCKYBAG14
	push 23
	push 19
	call PRINTMESSAGE
	add sp, 6

	push LUCKYBAG15
	push 24
	push 20
	call PRINTMESSAGE
	add sp, 6
CHANGELUCKYBAGCOLOR:
	PLUCKYBAG1:
		push COLOR_RED
		push 10
		push 28
		call CHANGECOLOR
		add sp, 6
			%assign i 0
			%rep 15
				push COLOR_YELLOW
				push 10
				push 29 + i
				call CHANGECOLOR
				add sp, 6
				%assign i i+1
			%endrep
		push COLOR_RED
		push 10
		push 44
		call CHANGECOLOR
		add sp, 6

	PLUCKYBAG2:
		push COLOR_RED
		push 11
		push 28
		call CHANGECOLOR
		add sp, 6
			%assign i 0
			%rep 15
				push COLOR_BROWN
				push 11
				push 29 + i
				call CHANGECOLOR
				add sp, 6
				%assign i i+1
			%endrep
		push COLOR_RED
		push 11
		push 44
		call CHANGECOLOR
		add sp, 6
	PLUCKYBAG3:
		push COLOR_RED
		push 12
		push 27
		call CHANGECOLOR
		add sp, 6
		push COLOR_RED
		push 12
		push 45
		call CHANGECOLOR
		add sp, 6

	PLUCKYBAG4:
		push COLOR_RED
		push 13
		push 25
		call CHANGECOLOR
		add sp, 6
		push COLOR_RED
		push 13
		push 47
		call CHANGECOLOR
		add sp, 6

	PLUCKYBAG5:
		push COLOR_RED
		push 14
		push 23
		call CHANGECOLOR
		add sp, 6
		push COLOR_RED
		push 14
		push 49
		call CHANGECOLOR
		add sp, 6

	PLUCKYBAG6:
		push COLOR_RED
		push 15
		push 21
		call CHANGECOLOR
		add sp, 6
		push COLOR_RED
		push 15
		push 51
		call CHANGECOLOR
		add sp, 6

	PLUCKYBAG7:
		push COLOR_RED
		push 16
		push 19
		call CHANGECOLOR
		add sp, 6
		push COLOR_RED
		push 16
		push 53
		call CHANGECOLOR
		add sp, 6

	PLUCKYBAG8:
		push COLOR_RED
		push 17
		push 18
		call CHANGECOLOR
		add sp, 6
		push COLOR_RED
		push 17
		push 54
		call CHANGECOLOR
		add sp, 6

	PLUCKYBAG9:
		push COLOR_RED
		push 18
		push 17
		call CHANGECOLOR
		add sp, 6
		push COLOR_RED
		push 18
		push 55
		call CHANGECOLOR
		add sp, 6

	PLUCKYBAG10:
		push COLOR_RED
		push 19
		push 17
		call CHANGECOLOR
		add sp, 6
		push COLOR_RED
		push 19
		push 55
		call CHANGECOLOR
		add sp, 6

	PLUCKYBAG11:
		push COLOR_RED
		push 20
		push 17
		call CHANGECOLOR
		add sp, 6
		push COLOR_RED
		push 20
		push 55
		call CHANGECOLOR
		add sp, 6

	PLUCKYBAG12:
		push COLOR_RED
		push 21
		push 17
		call CHANGECOLOR
		add sp, 6
		push COLOR_RED
		push 21
		push 55
		call CHANGECOLOR
		add sp, 6

	PLUCKYBAG13:
		push COLOR_RED
		push 22
		push 18
		call CHANGECOLOR
		add sp, 6
		push COLOR_RED
		push 22
		push 55
		call CHANGECOLOR
		add sp, 6
	PLUCKYBAG14:
		push COLOR_RED
		push 23
		push 19
		call CHANGECOLOR
		add sp, 6
		push COLOR_RED
		push 23
		push 54
		call CHANGECOLOR
		add sp, 6
	PLUCKYBAG15:
		%assign i 0
		%rep 33
			push COLOR_RED
			push 24
			push 20 + i
			call CHANGECOLOR
			add sp, 6
			%assign i i+1
		%endrep


	mov si, 65535
	delay2:
	mov bp, 600
	delay:
		dec bp
		jnz delay
	dec si
	nop
	jnz delay2

jmp PRINTSTART


;;;; function

PRINTMESSAGE:
	push bp
	mov bp, sp

	push es
	push si
	push di
	push ax
	push cx
	push dx

	;; 비디오 메모리 어드레스 설정
	mov ax, 0xB800
	mov es, ax

	;; x 좌표
	mov ax, word[bp + 4]
	mov si, 2
	mul si
	add di, ax

	;; y 좌표
	mov ax, word[bp + 6]
	mov si, 160
	mul si
	add di, ax

	mov si, word[bp + 8]
.MESSAGELOOP:
	mov cl, byte[ si ]

	cmp cl, 0
	je .MESSAGEEND

	mov byte[es:di], cl

	add si, 1
	add di, 2

	jmp .MESSAGELOOP
.MESSAGEEND:
	pop dx
	pop cx
	pop ax
	pop di
	pop si
	pop es
	pop bp

	ret
CHANGECOLOR:
	push bp
	mov bp, sp
	push es
	push si
	push di
	push ax
	push cx
	push dx

	;; set video memory address
	mov ax, 0xB800
	mov es, ax

	;; x 좌표
	mov ax, word[bp + 4]
	mov si, 2
	mul si
	add di, ax

	;; y 좌표
	mov ax, word[bp + 6]
	mov si, 160
	mul si
	add di, ax

	;; 색상
	mov si, word[ bp + 8 ]
	mov cl, byte[ si ]

	mov byte[es : di + 1], cl

	pop dx
	pop cx
	pop ax
	pop di
	pop si
	pop es
	pop bp

	ret

PRINTSNOW:
	push bp
	mov bp, sp

	push es
	push si
	push di
	push ax
	push cx
	push dx

	;; 비디오 메모리 어드레스 설정
	mov ax, 0xB800
	mov es, ax

    %assign a 1
    %rep 10
    	;; y 좌표
    	mov ax, word[bp + a*4 + 4]
		add ax, word[bp + 4]
		mov si, 160
		mul si

		mov cx, 24 * 160
		div cx

		mov di, dx

		;; x 좌표
		mov ax, word[bp + a*4 + 2]
		add ax, word[bp + 4]
		mov si, 2
		mul si

		mov cx, 160
		div cx

		add di, dx
		mov byte[es:di], '$'
		mov byte[es:di + 1], 0x02
		%assign a a + 1
	%endrep

	pop dx
	pop cx
	pop ax
	pop di
	pop si
	pop es
	pop bp

	ret

DELSNOW:
	push bp
	mov bp, sp

	push es
	push si
	push di
	push ax
	push cx
	push dx

	;; set video memory address
	mov ax, 0xB800
	mov es, ax

    %assign a 1
    %rep 10
    	;; y
		mov ax, word[bp + a*4 + 4]
		add ax, word[bp + 4]
		mov si, 160
		mul si

		mov cx, 24 * 160
		div cx

		mov di, dx

		;; x
		mov ax, word[bp + a*4 + 2]
		add ax, word[bp + 4]
		mov si, 2
		mul si

		mov cx, 160
		div cx

		add di, dx

		mov byte[es:di], 0
		%assign a a + 1
	%endrep

	pop dx
	pop cx
	pop ax
	pop di
	pop si
	pop es
	pop bp

	ret

LUCKYBAG1  : db '/===============\', 0
LUCKYBAG2  : db '\===============/', 0
LUCKYBAG3  : db '/                 \', 0
LUCKYBAG4  : db '/                     \', 0
LUCKYBAG5  : db '/      #          #       \', 0
LUCKYBAG6  : db '/        ############         \', 0
LUCKYBAG7  : db '/          #          #           \', 0
LUCKYBAG8  : db '/           ############            \', 0
LUCKYBAG9  : db '|                 #                   |', 0
LUCKYBAG10 : db '|         ##################          |', 0
LUCKYBAG11 : db '|            ###########              |', 0
LUCKYBAG12 : db '|                      #              |', 0
LUCKYBAG13 : db '\                     #              |', 0
LUCKYBAG14 : db '\                                  /', 0
LUCKYBAG15 : db '\_______________________________/', 0

times ( 512 - ( $ - $$ ) % 512 ) db 0x00
