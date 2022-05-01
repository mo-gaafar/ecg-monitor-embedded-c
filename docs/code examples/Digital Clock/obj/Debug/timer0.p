pcode dump


	New pBlock

GSINIT  (CODE), dbName =D
;; Starting pCode block
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6927:genAssign *{*
;; ***	genAssign  6928
;; ***	aopForSym 315
;;	327 sym->rname = _TMR0_Update_counter_1_28, size = 2
;; 	line = 6937 result AOP_DIR=_TMR0_Update_counter_1_28, size=2, left -=-, size=0, right AOP_LIT=0x00, size=2
;; ***	genAssign  7023
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7035:genAssign
;;	1009
;;	1028  _TMR0_Update_counter_1_28   offset=0
	.line	54; "timer0.c"	static unsigned int counter = 0;
	CLRF	_TMR0_Update_counter_1_28
;; ***	genAssign  7023
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7035:genAssign
;;	1009
;;	1028  _TMR0_Update_counter_1_28   offset=1
	CLRF	(_TMR0_Update_counter_1_28 + 1)

	New pBlock

code, dbName =C
;; Starting pCode block
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2340:genFunction *{*
;; ***	genFunction  2342 curr label offset=4previous max_key=0 
_TMR0_Start	;Function start
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6686:genPointerSet *{*
;; ***	genPointerSet  6687
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6505:genNearPointerSet *{*
;; ***	genNearPointerSet  6506
;;	613
;;	aopForRemat 392
;;	418: rname _INTCONbits, val 0, const = 0
;; ***	genNearPointerSet  6521
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_INTCONbits
;; 	line = 6523 result AOP_PCODE=_INTCONbits, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6249:genPackBits *{*
;; ***	genPackBits  6250
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_INTCONbits
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6275:genPackBits
	.line	46; "timer0.c"	TMR0_SET_INT_STATE(1);
	BSF	_INTCONbits,5
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6686:genPointerSet *{*
;; ***	genPointerSet  6687
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6505:genNearPointerSet *{*
;; ***	genNearPointerSet  6506
;;	613
;;	aopForRemat 392
;;	418: rname _INTCONbits, val 0, const = 0
;; ***	genNearPointerSet  6521
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_INTCONbits
;; 	line = 6523 result AOP_PCODE=_INTCONbits, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6249:genPackBits *{*
;; ***	genPackBits  6250
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_INTCONbits
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6275:genPackBits
	.line	47; "timer0.c"	GIE = 1;
	BSF	_INTCONbits,7
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6686:genPointerSet *{*
;; ***	genPointerSet  6687
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6505:genNearPointerSet *{*
;; ***	genNearPointerSet  6506
;;	613
;;	aopForRemat 392
;;	418: rname _OPTION_REGbits, val 0, const = 0
;; ***	genNearPointerSet  6521
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_OPTION_REGbits
;; 	line = 6523 result AOP_PCODE=_OPTION_REGbits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6249:genPackBits *{*
;; ***	genPackBits  6250
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_OPTION_REGbits
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6275:genPackBits
	.line	48; "timer0.c"	TMR0_SELECT_CLOCK_SOURCE(0); // Internal oscillator
	BCF	_OPTION_REGbits,5
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6686:genPointerSet *{*
;; ***	genPointerSet  6687
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6505:genNearPointerSet *{*
;; ***	genNearPointerSet  6506
;;	613
;;	aopForRemat 392
;;	418: rname _OPTION_REGbits, val 0, const = 0
;; ***	genNearPointerSet  6521
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_OPTION_REGbits
;; 	line = 6523 result AOP_PCODE=_OPTION_REGbits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6249:genPackBits *{*
;; ***	genPackBits  6250
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_OPTION_REGbits
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6275:genPackBits
	.line	49; "timer0.c"	TMR0_SET_STATE(0);          // TMR0 is on
	BCF	_OPTION_REGbits,5
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2528:genEndFunction *{*
;; ***	genEndFunction  2530
	RETURN	
; exit point of _TMR0_Start
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7426:genpic14Code *{*

	New pBlock

code, dbName =C
;; Starting pCode block
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2340:genFunction *{*
;; ***	genFunction  2342 curr label offset=0previous max_key=0 
_TMR0_Init	;Function start
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6686:genPointerSet *{*
;; ***	genPointerSet  6687
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6505:genNearPointerSet *{*
;; ***	genNearPointerSet  6506
;;	613
;;	aopForRemat 392
;;	418: rname _OPTION_REGbits, val 0, const = 0
;; ***	genNearPointerSet  6521
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_OPTION_REGbits
;; 	line = 6523 result AOP_PCODE=_OPTION_REGbits, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6249:genPackBits *{*
;; ***	genPackBits  6250
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_OPTION_REGbits
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6275:genPackBits
	.line	38; "timer0.c"	TMR0_SET_STATE(1);          // TMR0 is off
	BSF	_OPTION_REGbits,5
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6686:genPointerSet *{*
;; ***	genPointerSet  6687
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6505:genNearPointerSet *{*
;; ***	genNearPointerSet  6506
;;	613
;;	aopForRemat 392
;;	418: rname _OPTION_REGbits, val 0, const = 0
;; ***	genNearPointerSet  6521
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_OPTION_REGbits
;; 	line = 6523 result AOP_PCODE=_OPTION_REGbits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6249:genPackBits *{*
;; ***	genPackBits  6250
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_OPTION_REGbits
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6275:genPackBits
	.line	39; "timer0.c"	TMR0_SET_PRE_SCALER(7);     // N = 256
	BCF	_OPTION_REGbits,3
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6686:genPointerSet *{*
;; ***	genPointerSet  6687
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6505:genNearPointerSet *{*
;; ***	genNearPointerSet  6506
;;	613
;;	aopForRemat 392
;;	418: rname _OPTION_REGbits, val 0, const = 0
;; ***	genNearPointerSet  6521
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_OPTION_REGbits
;; 	line = 6523 result AOP_PCODE=_OPTION_REGbits, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6249:genPackBits *{*
;; ***	genPackBits  6250
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_OPTION_REGbits
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6275:genPackBits
	BSF	_OPTION_REGbits,0
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6686:genPointerSet *{*
;; ***	genPointerSet  6687
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6505:genNearPointerSet *{*
;; ***	genNearPointerSet  6506
;;	613
;;	aopForRemat 392
;;	418: rname _OPTION_REGbits, val 0, const = 0
;; ***	genNearPointerSet  6521
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_OPTION_REGbits
;; 	line = 6523 result AOP_PCODE=_OPTION_REGbits, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6249:genPackBits *{*
;; ***	genPackBits  6250
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_OPTION_REGbits
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6275:genPackBits
	BSF	_OPTION_REGbits,1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6686:genPointerSet *{*
;; ***	genPointerSet  6687
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6505:genNearPointerSet *{*
;; ***	genNearPointerSet  6506
;;	613
;;	aopForRemat 392
;;	418: rname _OPTION_REGbits, val 0, const = 0
;; ***	genNearPointerSet  6521
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_OPTION_REGbits
;; 	line = 6523 result AOP_PCODE=_OPTION_REGbits, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6249:genPackBits *{*
;; ***	genPackBits  6250
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_OPTION_REGbits
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6275:genPackBits
	BSF	_OPTION_REGbits,2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2528:genEndFunction *{*
;; ***	genEndFunction  2530
	RETURN	
; exit point of _TMR0_Init
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7426:genpic14Code *{*

	New pBlock

internal pblock, dbName =I
;; Starting pCode block
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2340:genFunction *{*
;; ***	genFunction  2342 curr label offset=8previous max_key=0 
_TMR0_Update	;Function start
; 0 exit points
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2407:genFunction
	.line	52; "timer0.c"	void TMR0_Update(void) __interrupt 0 // @ 5 ms
	MOVWF	WSAVE
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2408:genFunction
	SWAPF	STATUS,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2413:genFunction
	CLRF	STATUS
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2414:genFunction
	MOVWF	SSAVE
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2416:genFunction
	MOVF	PCLATH,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2418:genFunction
	CLRF	PCLATH
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2419:genFunction
	MOVWF	PSAVE
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2421:genFunction
	MOVF	FSR,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2422:genFunction
	MOVWF	___sdcc_saved_fsr
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;; ***	genPlus  611
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:612:genPlus *{*
;; ***	aopForSym 315
;;	327 sym->rname = _TMR0_Update_counter_1_28, size = 2
;;	575
;; 	line = 618 result AOP_DIR=_TMR0_Update_counter_1_28, size=2, left AOP_DIR=_TMR0_Update_counter_1_28, size=2, right AOP_LIT=0x05, size=2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:142:genPlusIncr *{*
;; ***	genPlusIncr  144
;; 	result AOP_DIR, left AOP_DIR, right AOP_LIT
;; 	genPlusIncr  156
;;	adding lit to something. size 2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:269:genAddLit *{*
;; ***	genAddLit  270
;; hi = 0	genAddLit  328
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:344:genAddLit
	.line	56; "timer0.c"	counter = counter + TMR0_TICK_MS;
	MOVLW	0x05
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:345:genAddLit
;;	1009
;;	1028  _TMR0_Update_counter_1_28   offset=0
	ADDWF	_TMR0_Update_counter_1_28,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:346:genAddLit
	BTFSC	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:347:genAddLit
;;	1009
;;	1028  _TMR0_Update_counter_1_28   offset=1
	INCF	(_TMR0_Update_counter_1_28 + 1),F
;; ***	addSign  861
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:862:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2086:genCall *{*
;; ***	genCall  2088
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1801:saveRegisters *{*
;; ***	saveRegisters  1803
;; ***	aopForSym 315
;;	327 sym->rname = _TMR0_Update_counter_1_28, size = 2
;; 	2135 left AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1361:mov2w_op
	.line	59; "timer0.c"	if (counter % (4*TMR0_TICK_MS)==0)
	MOVLW	0x14
;; 	2135 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2143:genCall
;; ***	popRegFromIdx,1042  , rIdx=0x7d
	MOVWF	STK02
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1361:mov2w_op
	MOVLW	0x00
;; ***	aopForSym 315
;;	327 sym->rname = _TMR0_Update_counter_1_28, size = 2
;; 	2135 left AOP_DIR
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2143:genCall
;; ***	popRegFromIdx,1042  , rIdx=0x7e
	MOVWF	STK01
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1009
;;	1028  _TMR0_Update_counter_1_28   offset=0
	MOVF	_TMR0_Update_counter_1_28,W
;; 	2135 left AOP_DIR
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2143:genCall
;; ***	popRegFromIdx,1042  , rIdx=0x7f
	MOVWF	STK00
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; ***	mov2w  1381  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1009
;;	1028  _TMR0_Update_counter_1_28   offset=1
	MOVF	(_TMR0_Update_counter_1_28 + 1),W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	__moduint
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2175:genCall
	CALL	__moduint
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2181:genCall
	PAGESEL	$
;;	694 register type nRegs=2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1907:assignResultValue *{*
;; ***	assignResultValue  1909
;; 	line = 1911 result -=-, size=0, left AOP_REG=r0x1049, size=2, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1393:movwf
;;	1109 rIdx = r0x104A 
	MOVWF	r0x1003
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1423:get_returnvalue
;; ***	popRegFromIdx,1042  , rIdx=0x7f
	MOVF	STK00,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1393:movwf
;;	1109 rIdx = r0x1049 
	MOVWF	r0x1004
	IORWF	r0x1003,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6808:genIfx
	BTFSS	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6809:genIfx
;; ***	popGetLabel  key=2, label offset 12
	GOTO	_00114_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2086:genCall *{*
;; ***	genCall  2088
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1801:saveRegisters *{*
;; ***	saveRegisters  1803
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	.line	61; "timer0.c"	PB_Update(); // @ 20 ms
	PAGESEL	_PB_Update
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2175:genCall
	CALL	_PB_Update
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2181:genCall
	PAGESEL	$
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1845:unsaveRegisters *{*
;; ***	unsaveRegisters  1847
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2086:genCall *{*
;; ***	genCall  2088
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1801:saveRegisters *{*
;; ***	saveRegisters  1803
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	.line	62; "timer0.c"	CNT_Update(); // @ 20 ms
	PAGESEL	_CNT_Update
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2175:genCall
	CALL	_CNT_Update
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2181:genCall
	PAGESEL	$
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1845:unsaveRegisters *{*
;; ***	unsaveRegisters  1847
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2086:genCall *{*
;; ***	genCall  2088
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1801:saveRegisters *{*
;; ***	saveRegisters  1803
;; ***	aopForSym 315
;;	327 sym->rname = _TMR0_Update_counter_1_28, size = 2
;; 	2135 left AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1361:mov2w_op
_00114_DS_
	.line	65; "timer0.c"	if(counter % (ACTUAL_SECOND/2) == 0){
	MOVLW	0x77
;; 	2135 left AOP_LIT
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2143:genCall
;; ***	popRegFromIdx,1042  , rIdx=0x7d
	MOVWF	STK02
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1361:mov2w_op
	MOVLW	0x01
;; ***	aopForSym 315
;;	327 sym->rname = _TMR0_Update_counter_1_28, size = 2
;; 	2135 left AOP_DIR
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2143:genCall
;; ***	popRegFromIdx,1042  , rIdx=0x7e
	MOVWF	STK01
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1009
;;	1028  _TMR0_Update_counter_1_28   offset=0
	MOVF	_TMR0_Update_counter_1_28,W
;; 	2135 left AOP_DIR
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2143:genCall
;; ***	popRegFromIdx,1042  , rIdx=0x7f
	MOVWF	STK00
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; ***	mov2w  1381  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1009
;;	1028  _TMR0_Update_counter_1_28   offset=1
	MOVF	(_TMR0_Update_counter_1_28 + 1),W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	__moduint
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2175:genCall
	CALL	__moduint
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2181:genCall
	PAGESEL	$
;;	694 register type nRegs=2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1907:assignResultValue *{*
;; ***	assignResultValue  1909
;; 	line = 1911 result -=-, size=0, left AOP_REG=r0x1049, size=2, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1393:movwf
;;	1109 rIdx = r0x104A 
	MOVWF	r0x1003
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1423:get_returnvalue
;; ***	popRegFromIdx,1042  , rIdx=0x7f
	MOVF	STK00,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1393:movwf
;;	1109 rIdx = r0x1049 
	MOVWF	r0x1004
	IORWF	r0x1003,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6808:genIfx
	BTFSS	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6809:genIfx
;; ***	popGetLabel  key=4, label offset 12
	GOTO	_00116_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2086:genCall *{*
;; ***	genCall  2088
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1801:saveRegisters *{*
;; ***	saveRegisters  1803
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	.line	66; "timer0.c"	CNT_toggleLed();
	PAGESEL	_CNT_toggleLed
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2175:genCall
	CALL	_CNT_toggleLed
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2181:genCall
	PAGESEL	$
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1845:unsaveRegisters *{*
;; ***	unsaveRegisters  1847
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3619:genCmpEq *{*
;; ***	genCmpEq  3620
;; ifx is non-null
;; ***	aopForSym 315
;;	327 sym->rname = _TMR0_Update_counter_1_28, size = 2
;; 	line = 3631 result AOP_CRY=0x00, size=0, left AOP_DIR=_TMR0_Update_counter_1_28, size=2, right AOP_LIT=0xee, size=2
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1009
;;	1028  _TMR0_Update_counter_1_28   offset=0
_00116_DS_
	.line	69; "timer0.c"	if(counter == ACTUAL_SECOND) {
	MOVF	_TMR0_Update_counter_1_28,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3685:genCmpEq
	XORLW	0xee
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3687:genCmpEq
	BTFSS	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3690:genCmpEq
;; ***	popGetLabel  key=6, label offset 12
	GOTO	_00118_DS_
;; ***	mov2w  1381  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1009
;;	1028  _TMR0_Update_counter_1_28   offset=1
	MOVF	(_TMR0_Update_counter_1_28 + 1),W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3685:genCmpEq
	XORLW	0x02
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3687:genCmpEq
	BTFSS	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3690:genCmpEq
;; ***	popGetLabel  key=6, label offset 12
	GOTO	_00118_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2086:genCall *{*
;; ***	genCall  2088
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1801:saveRegisters *{*
;; ***	saveRegisters  1803
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	.line	70; "timer0.c"	CNT_IncSeconds();
	PAGESEL	_CNT_IncSeconds
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2175:genCall
	CALL	_CNT_IncSeconds
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2181:genCall
	PAGESEL	$
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1845:unsaveRegisters *{*
;; ***	unsaveRegisters  1847
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6927:genAssign *{*
;; ***	genAssign  6928
;; ***	aopForSym 315
;;	327 sym->rname = _TMR0_Update_counter_1_28, size = 2
;; 	line = 6937 result AOP_DIR=_TMR0_Update_counter_1_28, size=2, left -=-, size=0, right AOP_LIT=0x00, size=2
;; ***	genAssign  7023
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7035:genAssign
;;	1009
;;	1028  _TMR0_Update_counter_1_28   offset=0
	.line	71; "timer0.c"	counter=0;
	CLRF	_TMR0_Update_counter_1_28
;; ***	genAssign  7023
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7035:genAssign
;;	1009
;;	1028  _TMR0_Update_counter_1_28   offset=1
	CLRF	(_TMR0_Update_counter_1_28 + 1)
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2086:genCall *{*
;; ***	genCall  2088
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1801:saveRegisters *{*
;; ***	saveRegisters  1803
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
_00118_DS_
	.line	73; "timer0.c"	SSD_Update();
	PAGESEL	_SSD_Update
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2175:genCall
	CALL	_SSD_Update
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2181:genCall
	PAGESEL	$
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1845:unsaveRegisters *{*
;; ***	unsaveRegisters  1847
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6686:genPointerSet *{*
;; ***	genPointerSet  6687
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6505:genNearPointerSet *{*
;; ***	genNearPointerSet  6506
;;	613
;;	aopForRemat 392
;;	418: rname _INTCONbits, val 0, const = 0
;; ***	genNearPointerSet  6521
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_INTCONbits
;; 	line = 6523 result AOP_PCODE=_INTCONbits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6249:genPackBits *{*
;; ***	genPackBits  6250
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_INTCONbits
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6275:genPackBits
	.line	74; "timer0.c"	TMR0_CLEAR_FLAG();
	BCF	_INTCONbits,2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6927:genAssign *{*
;; ***	genAssign  6928
;; ***	aopForSym 315
;;	327 sym->rname = _TMR0, size = 1
;; 	line = 6937 result AOP_DIR=_TMR0, size=1, left -=-, size=0, right AOP_LIT=0xd8, size=1
;; ***	genAssign  7023
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7030:genAssign
	.line	75; "timer0.c"	TMR0_SET_TIME_MS(TMR0_TICK_MS);
	MOVLW	0xd8
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7032:genAssign
;;	1009
;;	1028  _TMR0   offset=0
	MOVWF	_TMR0
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2683:genRet *{*
;; ***	genRet  2685
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2528:genEndFunction *{*
;; ***	genEndFunction  2530
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2023:unsaverbank *{*
;; ***	unsaverbank  2025 - WARNING no code generated
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2622:genEndFunction
	.line	77; "timer0.c"	return;
	MOVF	___sdcc_saved_fsr,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2623:genEndFunction
	MOVWF	FSR
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2625:genEndFunction
	MOVF	PSAVE,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2626:genEndFunction
	MOVWF	PCLATH
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2627:genEndFunction
	CLRF	STATUS
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2629:genEndFunction
	SWAPF	SSAVE,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2630:genEndFunction
	MOVWF	STATUS
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2631:genEndFunction
	SWAPF	WSAVE,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2632:genEndFunction
	SWAPF	WSAVE,W
END_OF_INTERRUPT
	RETFIE	
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7426:genpic14Code *{*
