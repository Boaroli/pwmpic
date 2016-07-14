opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 9453"

opt pagewidth 120

	opt lm

	processor	12F675
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 8 "C:\Users\Lucas Boaroli\Desktop\Tensão\Main.c"
	psect config,class=CONFIG,delta=2 ;#
# 8 "C:\Users\Lucas Boaroli\Desktop\Tensão\Main.c"
	dw 0x318A ;#
	FNCALL	_main,_Inicializa
	FNROOT	_main
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_Press
	global	_X1
	global	_X2
	global	_Y
	global	_estado
	global	_altx
	global	_TMR1
psect	text159,local,class=CODE,delta=2
global __ptext159
__ptext159:
_TMR1	set	14
	global	_ADRESH
_ADRESH	set	30
	global	_ADFM
_ADFM	set	255
	global	_ADON
_ADON	set	248
	global	_CARRY
_CARRY	set	24
	global	_CHS0
_CHS0	set	250
	global	_CHS1
_CHS1	set	251
	global	_GIE
_GIE	set	95
	global	_GO_DONE
_GO_DONE	set	249
	global	_GPIO2
_GPIO2	set	42
	global	_PEIE
_PEIE	set	94
	global	_T0IE
_T0IE	set	93
	global	_T1CKPS0
_T1CKPS0	set	132
	global	_T1CKPS1
_T1CKPS1	set	133
	global	_TMR1IF
_TMR1IF	set	96
	global	_TMR1ON
_TMR1ON	set	128
	global	_VCFG
_VCFG	set	254
	global	_ADRESL
_ADRESL	set	158
	global	_ANSEL
_ANSEL	set	159
	global	_EEADR
_EEADR	set	155
	global	_EECON1
_EECON1	set	156
	global	_EECON2
_EECON2	set	157
	global	_EEDATA
_EEDATA	set	154
	global	_TRISIO
_TRISIO	set	133
	global	_WPU
_WPU	set	149
	global	_RD
_RD	set	1248
	global	_TMR1IE
_TMR1IE	set	1120
	global	_WR
_WR	set	1249
	global	_WREN
_WREN	set	1250
	file	"Tensao.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_Press:
       ds      2

_X1:
       ds      2

_X2:
       ds      2

_Y:
       ds      2

_estado:
       ds      2

_altx:
       ds      1

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
	clrf	((__pbssBANK0)+5)&07Fh
	clrf	((__pbssBANK0)+6)&07Fh
	clrf	((__pbssBANK0)+7)&07Fh
	clrf	((__pbssBANK0)+8)&07Fh
	clrf	((__pbssBANK0)+9)&07Fh
	clrf	((__pbssBANK0)+10)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	??_Inicializa
??_Inicializa:	; 0 bytes @ 0x0
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	?_ISR
?_ISR:	; 0 bytes @ 0x0
	global	??_ISR
??_ISR:	; 0 bytes @ 0x0
	global	?_Inicializa
?_Inicializa:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	ds	4
	global	??_main
??_main:	; 0 bytes @ 0x4
	ds	2
	global	main@Y
main@Y:	; 2 bytes @ 0x6
	ds	2
;;Data sizes: Strings 0, constant 0, data 0, bss 11, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON           0      0       0
;; BANK0           62      8      19

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   None.
;;
;; Critical Paths under _ISR in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK0
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 6     6      0      46
;;                                              4 BANK0      4     4      0
;;                         _Inicializa
;; ---------------------------------------------------------------------------------
;; (1) _Inicializa                                           0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (2) _ISR                                                  4     4      0       0
;;                                              0 BANK0      4     4      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _Inicializa
;;
;; _ISR (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            0      0       0       0        0.0%
;;EEDATA              80      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;COMMON               0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       1       2        0.0%
;;BITBANK0            3E      0       0       3        0.0%
;;BANK0               3E      8      13       4       30.6%
;;ABS                  0      0      13       5        0.0%
;;DATA                 0      0      14       6        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 79 in file "C:\Users\Lucas Boaroli\Desktop\Tensão\Main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  Y               2    6[BANK0 ] int 
;;  i               2    0        int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0
;;      Params:         0       0
;;      Locals:         0       2
;;      Temps:          0       2
;;      Totals:         0       4
;;Total ram usage:        4 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Inicializa
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Lucas Boaroli\Desktop\Tensão\Main.c"
	line	79
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	81
	
l2066:	
;Main.c: 80: int i;
;Main.c: 81: Inicializa();
	fcall	_Inicializa
	goto	l2068
	line	82
;Main.c: 82: while (1)
	
l364:	
	line	84
	
l2068:	
;Main.c: 83: {
;Main.c: 84: GO_DONE = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(249/8),(249)&7
	line	85
;Main.c: 85: while(GO_DONE);
	goto	l365
	
l366:	
	
l365:	
	btfsc	(249/8),(249)&7
	goto	u2281
	goto	u2280
u2281:
	goto	l365
u2280:
	goto	l2070
	
l367:	
	line	86
	
l2070:	
;Main.c: 86: int Y = (((ADRESH<<8)+ ADRESL));
	movf	(30),w	;volatile
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	(??_main+0)+0,w
	movwf	(??_main+0)+1
	clrf	(??_main+0)+0
	bsf	status, 5	;RP0=1, select bank1
	movf	(158)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	addwf	0+(??_main+0)+0,w
	movwf	(main@Y)
	movlw	0
	skipnc
	movlw	1
	addwf	1+(??_main+0)+0,w
	movwf	1+(main@Y)
	line	87
	
l2072:	
;Main.c: 87: altx = 1;
	clrf	(_altx)
	bsf	status,0
	rlf	(_altx),f
	line	88
	
l2074:	
;Main.c: 88: X1 = Y;
	movf	(main@Y+1),w
	clrf	(_X1+1)
	addwf	(_X1+1)
	movf	(main@Y),w
	clrf	(_X1)
	addwf	(_X1)

	line	91
	
l2076:	
;Main.c: 91: GO_DONE = 1;
	bsf	(249/8),(249)&7
	line	92
;Main.c: 92: while(GO_DONE);
	goto	l368
	
l369:	
	
l368:	
	btfsc	(249/8),(249)&7
	goto	u2291
	goto	u2290
u2291:
	goto	l368
u2290:
	goto	l2078
	
l370:	
	line	93
	
l2078:	
;Main.c: 93: int Y = (((ADRESH<<8)+ ADRESL));
	movf	(30),w	;volatile
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	(??_main+0)+0,w
	movwf	(??_main+0)+1
	clrf	(??_main+0)+0
	bsf	status, 5	;RP0=1, select bank1
	movf	(158)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	addwf	0+(??_main+0)+0,w
	movwf	(main@Y)
	movlw	0
	skipnc
	movlw	1
	addwf	1+(??_main+0)+0,w
	movwf	1+(main@Y)
	line	94
	
l2080:	
;Main.c: 94: altx = 2;
	movlw	(02h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_altx)
	line	95
	
l2082:	
;Main.c: 95: X2 = Y;
	movf	(main@Y+1),w
	clrf	(_X2+1)
	addwf	(_X2+1)
	movf	(main@Y),w
	clrf	(_X2)
	addwf	(_X2)

	goto	l2068
	line	102
	
l371:	
	line	82
	goto	l2068
	
l372:	
	line	103
	
l373:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_Inicializa
psect	text160,local,class=CODE,delta=2
global __ptext160
__ptext160:

;; *************** function _Inicializa *****************
;; Defined at:
;;		line 53 in file "C:\Users\Lucas Boaroli\Desktop\Tensão\Main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0
;;      Params:         0       0
;;      Locals:         0       0
;;      Temps:          0       0
;;      Totals:         0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text160
	file	"C:\Users\Lucas Boaroli\Desktop\Tensão\Main.c"
	line	53
	global	__size_of_Inicializa
	__size_of_Inicializa	equ	__end_of_Inicializa-_Inicializa
	
_Inicializa:	
	opt	stack 6
; Regs used in _Inicializa: [wreg+status,2]
	line	54
	
l2036:	
;Main.c: 54: TRISIO = 0b11000001;
	movlw	(0C1h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	55
	
l2038:	
;Main.c: 55: WPU = 0;
	clrf	(149)^080h	;volatile
	line	58
	
l2040:	
;Main.c: 58: T0IE = 0;
	bcf	(93/8),(93)&7
	line	61
	
l2042:	
;Main.c: 61: TMR1ON = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(128/8),(128)&7
	line	62
	
l2044:	
;Main.c: 62: TMR1IE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1120/8)^080h,(1120)&7
	line	63
	
l2046:	
;Main.c: 63: T1CKPS1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(133/8),(133)&7
	line	64
	
l2048:	
;Main.c: 64: T1CKPS0 = 0;
	bcf	(132/8),(132)&7
	line	66
	
l2050:	
;Main.c: 66: VCFG = 0;
	bcf	(254/8),(254)&7
	line	67
	
l2052:	
;Main.c: 67: ADON = 1;
	bsf	(248/8),(248)&7
	line	68
	
l2054:	
;Main.c: 68: ADFM = 1;
	bsf	(255/8),(255)&7
	line	69
	
l2056:	
;Main.c: 69: ANSEL = 0b00101000;
	movlw	(028h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(159)^080h	;volatile
	line	71
	
l2058:	
;Main.c: 71: CHS1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(251/8),(251)&7
	line	72
	
l2060:	
;Main.c: 72: CHS0 = 0;
	bcf	(250/8),(250)&7
	line	74
	
l2062:	
;Main.c: 74: GIE = 1;
	bsf	(95/8),(95)&7
	line	75
	
l2064:	
;Main.c: 75: PEIE = 1;
	bsf	(94/8),(94)&7
	line	76
	
l361:	
	return
	opt stack 0
GLOBAL	__end_of_Inicializa
	__end_of_Inicializa:
;; =============== function _Inicializa ends ============

	signat	_Inicializa,88
	global	_ISR
psect	text161,local,class=CODE,delta=2
global __ptext161
__ptext161:

;; *************** function _ISR *****************
;; Defined at:
;;		line 40 in file "C:\Users\Lucas Boaroli\Desktop\Tensão\Main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0
;;      Params:         0       0
;;      Locals:         0       0
;;      Temps:          0       4
;;      Totals:         0       4
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text161
	file	"C:\Users\Lucas Boaroli\Desktop\Tensão\Main.c"
	line	40
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
	opt	stack 6
; Regs used in _ISR: [wreg+status,2+status,0]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_ISR+0)
	movf	fsr0,w
	movwf	(??_ISR+1)
	movf	pclath,w
	movwf	(??_ISR+2)
	movf	btemp+1,w
	movwf	(??_ISR+3)
	ljmp	_ISR
psect	text161
	line	41
	
i1l2026:	
;Main.c: 41: if(TMR1IF){
	btfss	(96/8),(96)&7
	goto	u226_21
	goto	u226_20
u226_21:
	goto	i1l358
u226_20:
	line	42
	
i1l2028:	
;Main.c: 42: TMR1IF = 0;
	bcf	(96/8),(96)&7
	line	43
	
i1l2030:	
;Main.c: 43: GPIO2 = !GPIO2;
	movlw	1<<((42)&7)
	xorwf	((42)/8),f
	line	44
;Main.c: 44: if(altx==10)
	movf	(_altx),w
	xorlw	0Ah
	skipz
	goto	u227_21
	goto	u227_20
u227_21:
	goto	i1l2034
u227_20:
	line	45
	
i1l2032:	
;Main.c: 45: TMR1 = 65535-1223+X2;
	movf	(_X2),w
	addlw	low(0FB38h)
	movwf	(14)	;volatile
	movf	(_X2+1),w
	skipnc
	addlw	1
	addlw	high(0FB38h)
	movwf	1+(14)	;volatile
	goto	i1l358
	line	46
	
i1l356:	
	line	47
	
i1l2034:	
;Main.c: 46: else
;Main.c: 47: TMR1 = 65535-1223+X1;
	movf	(_X1),w
	addlw	low(0FB38h)
	movwf	(14)	;volatile
	movf	(_X1+1),w
	skipnc
	addlw	1
	addlw	high(0FB38h)
	movwf	1+(14)	;volatile
	goto	i1l358
	
i1l357:	
	goto	i1l358
	line	49
	
i1l355:	
	line	50
	
i1l358:	
	movf	(??_ISR+3),w
	movwf	btemp+1
	movf	(??_ISR+2),w
	movwf	pclath
	movf	(??_ISR+1),w
	movwf	fsr0
	swapf	(??_ISR+0)^00h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
;; =============== function _ISR ends ============

	signat	_ISR,88
psect	text162,local,class=CODE,delta=2
global __ptext162
__ptext162:
	global	btemp
	btemp set 05Eh

	DABS	1,94,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
