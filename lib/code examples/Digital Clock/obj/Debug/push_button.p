pcode dump


	New pBlock

code, dbName =C
;; Starting pCode block
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2340:genFunction *{*
;; ***	genFunction  2342 curr label offset=31previous max_key=60 
_PB_GetState	;Function start
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7358:genReceive *{*
;; ***	genReceive  7359
;;	694 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1907:assignResultValue *{*
;; ***	assignResultValue  1909
;; 	line = 1911 result -=-, size=0, left AOP_REG=r0x1057, size=1, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1393:movwf
;;	1109 rIdx = r0x1057 
	.line	130; "push_button.c"	tPB_State PB_GetState(tPB pb)
	MOVWF	r0x100C
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2878:genMult *{*
;; ***	genMult  2880
;;	694 register type nRegs=1
;;	694 register type nRegs=2
;; 	line = 2886 result AOP_REG=r0x1058, size=2, left AOP_REG=r0x1057, size=1, right AOP_LIT=0x03, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2816:genMultOneByte *{*
;; ***	genMultOneByte  2818
;; 	line = 2819 result AOP_REG=r0x1058, size=2, left AOP_REG=r0x1057, size=1, right AOP_LIT=0x03, size=1
;; 	line = 2820, signs: result AOP_REG=u, left AOP_REG=u, right AOP_LIT=u
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1384:mov2w
	.line	134; "push_button.c"	ret = pb_info[pb].state;
	MOVLW	0x03
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2840:genMultOneByte
;; ***	popRegFromIdx,1042  , rIdx=0x7f
	MOVWF	STK00
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x1057 
	MOVF	r0x100C,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1433:call_libraryfunc
	PAGESEL	__mulchar
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1435:call_libraryfunc
	CALL	__mulchar
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1437:call_libraryfunc
	PAGESEL	$
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1393:movwf
;;	1109 rIdx = r0x1058 
	MOVWF	r0x100D
;; ***	addSign  861
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:862:addSign *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:881:addSign
;;	1109 rIdx = r0x1059 
	CLRF	r0x100E
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;; ***	genPlus  611
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:612:genPlus *{*
;;	613
;;	aopForRemat 392
;;	418: rname _pb_info, val 0, const = 0
;;	694 register type nRegs=2
;;	694 register type nRegs=2
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_pb_info
;; 	line = 618 result AOP_REG=r0x1057, size=2, left AOP_PCODE=_pb_info, size=2, right AOP_REG=r0x1058, size=2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:142:genPlusIncr *{*
;; ***	genPlusIncr  144
;; 	result AOP_REG, left AOP_PCODE, right AOP_REG
;; ***	genPlus  717
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_pb_info
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:726:genPlus
;;	1109 rIdx = r0x1058 
	MOVF	r0x100D,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:735:genPlus
	ADDLW	(_pb_info + 0)
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:736:genPlus
;;	1109 rIdx = r0x1057 
	MOVWF	r0x100C
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:771:genPlus
	MOVLW	high (_pb_info + 0)
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:772:genPlus
;;	1109 rIdx = r0x105A 
	MOVWF	r0x100F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:774:genPlus
;;	1109 rIdx = r0x1059 
	MOVF	r0x100E,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:775:genPlus
	BTFSC	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:776:genPlus
;;	1109 rIdx = r0x1059 
	INCFSZ	r0x100E,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:777:genPlus
;;	1109 rIdx = r0x105A 
	ADDWF	r0x100F,F
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;; ***	genPlus  611
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:612:genPlus *{*
;;	694 register type nRegs=2
;;	694 register type nRegs=2
;; 	line = 618 result AOP_REG=r0x1057, size=2, left AOP_REG=r0x1057, size=2, right AOP_LIT=0x02, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:142:genPlusIncr *{*
;; ***	genPlusIncr  144
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  156
;; 	genPlusIncr  180
;;	adding lit to something. size 2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:269:genAddLit *{*
;; ***	genAddLit  270
;; hi = 0	genAddLit  328
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:344:genAddLit
	MOVLW	0x02
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:345:genAddLit
;;	1109 rIdx = r0x1057 
	ADDWF	r0x100C,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:346:genAddLit
	BTFSC	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:347:genAddLit
;;	1109 rIdx = r0x105A 
	INCF	r0x100F,F
;; ***	addSign  861
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:862:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6162:genPointerGet *{*
;; ***	genPointerGet  6163
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5944:genNearPointerGet *{*
;; ***	genNearPointerGet  5945
;;	694 register type nRegs=2
;; ***	genNearPointerGet  5961
;;	694 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x1057 
	MOVF	r0x100C,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5602:setup_fsr
	MOVWF	FSR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5553:SetIrp *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5580:SetIrp
	BCF	STATUS,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5583:SetIrp
	BTFSC	r0x100F,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5584:SetIrp
	BSF	STATUS,7
;; ***	genNearPointerGet  5988
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5995:genNearPointerGet
	MOVF	INDF,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6002:genNearPointerGet
;;	1109 rIdx = r0x1058 
	.line	136; "push_button.c"	return ret;
	MOVWF	r0x100D
	RETURN	
; exit point of _PB_GetState

	New pBlock

code, dbName =C
;; Starting pCode block
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2340:genFunction *{*
;; ***	genFunction  2342 curr label offset=4previous max_key=23 
_PB_Update	;Function start
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6927:genAssign *{*
;; ***	genAssign  6928
;;	694 register type nRegs=1
;; 	line = 6937 result AOP_REG=r0x104E, size=1, left -=-, size=0, right AOP_LIT=0x00, size=1
;; ***	genAssign  7023
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7035:genAssign
;;	1109 rIdx = r0x104E 
	.line	64; "push_button.c"	for (current_button = PB_PLUS; current_button <= PB_UNUSED_2; current_button++)
	CLRF	r0x1010
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2878:genMult *{*
;; ***	genMult  2880
;;	694 register type nRegs=1
;;	694 register type nRegs=2
;; 	line = 2886 result AOP_REG=r0x104F, size=2, left AOP_REG=r0x104E, size=1, right AOP_LIT=0x03, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2816:genMultOneByte *{*
;; ***	genMultOneByte  2818
;; 	line = 2819 result AOP_REG=r0x104F, size=2, left AOP_REG=r0x104E, size=1, right AOP_LIT=0x03, size=1
;; 	line = 2820, signs: result AOP_REG=u, left AOP_REG=u, right AOP_LIT=u
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1384:mov2w
_00156_DS_
	.line	67; "push_button.c"	pb_info[current_button].samples[0] = pb_info[current_button].samples[1];
	MOVLW	0x03
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2840:genMultOneByte
;; ***	popRegFromIdx,1042  , rIdx=0x7f
	MOVWF	STK00
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x104E 
	MOVF	r0x1010,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1433:call_libraryfunc
	PAGESEL	__mulchar
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1435:call_libraryfunc
	CALL	__mulchar
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1437:call_libraryfunc
	PAGESEL	$
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1393:movwf
;;	1109 rIdx = r0x104F 
	MOVWF	r0x1011
;; ***	addSign  861
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:862:addSign *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:881:addSign
;;	1109 rIdx = r0x1050 
	CLRF	r0x1012
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;; ***	genPlus  611
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:612:genPlus *{*
;;	613
;;	aopForRemat 392
;;	418: rname _pb_info, val 0, const = 0
;;	694 register type nRegs=2
;;	694 register type nRegs=2
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_pb_info
;; 	line = 618 result AOP_REG=r0x1051, size=2, left AOP_PCODE=_pb_info, size=2, right AOP_REG=r0x104F, size=2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:142:genPlusIncr *{*
;; ***	genPlusIncr  144
;; 	result AOP_REG, left AOP_PCODE, right AOP_REG
;; ***	genPlus  717
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_pb_info
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:726:genPlus
;;	1109 rIdx = r0x104F 
	MOVF	r0x1011,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:735:genPlus
	ADDLW	(_pb_info + 0)
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:736:genPlus
;;	1109 rIdx = r0x1051 
	MOVWF	r0x1013
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:771:genPlus
	MOVLW	high (_pb_info + 0)
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:772:genPlus
;;	1109 rIdx = r0x1052 
	MOVWF	r0x1014
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:774:genPlus
;;	1109 rIdx = r0x1050 
	MOVF	r0x1012,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:775:genPlus
	BTFSC	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:776:genPlus
;;	1109 rIdx = r0x1050 
	INCFSZ	r0x1012,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:777:genPlus
;;	1109 rIdx = r0x1052 
	ADDWF	r0x1014,F
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;; ***	genPlus  611
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:612:genPlus *{*
;;	613
;;	aopForRemat 392
;;	418: rname _pb_info, val 0, const = 0
;;	694 register type nRegs=2
;;	694 register type nRegs=2
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_pb_info
;; 	line = 618 result AOP_REG=r0x104F, size=2, left AOP_PCODE=_pb_info, size=2, right AOP_REG=r0x104F, size=2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:142:genPlusIncr *{*
;; ***	genPlusIncr  144
;; 	result AOP_REG, left AOP_PCODE, right AOP_REG
;; ***	genPlus  717
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_pb_info
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:726:genPlus
;;	1109 rIdx = r0x104F 
	MOVF	r0x1011,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:735:genPlus
	ADDLW	(_pb_info + 0)
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:736:genPlus
;;	1109 rIdx = r0x104F 
	MOVWF	r0x1011
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:749:genPlus
;;	1109 rIdx = r0x1050 
	MOVF	r0x1012,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:750:genPlus
	BTFSC	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:751:genPlus
;;	1109 rIdx = r0x1050 
	INCFSZ	r0x1012,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:752:genPlus
	ADDLW	high (_pb_info + 0)
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:753:genPlus
;;	1109 rIdx = r0x1050 
	MOVWF	r0x1012
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;; ***	genPlus  611
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:612:genPlus *{*
;;	694 register type nRegs=2
;;	694 register type nRegs=2
;; 	line = 618 result AOP_REG=r0x104F, size=2, left AOP_REG=r0x104F, size=2, right AOP_LIT=0x01, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:142:genPlusIncr *{*
;; ***	genPlusIncr  144
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  156
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:168:genPlusIncr
;;	1109 rIdx = r0x104F 
	INCF	r0x1011,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:172:genPlusIncr
	BTFSC	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:173:genPlusIncr
;;	1109 rIdx = r0x1050 
	INCF	r0x1012,F
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6162:genPointerGet *{*
;; ***	genPointerGet  6163
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5944:genNearPointerGet *{*
;; ***	genNearPointerGet  5945
;;	694 register type nRegs=2
;; ***	genNearPointerGet  5961
;;	694 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x104F 
	MOVF	r0x1011,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5602:setup_fsr
	MOVWF	FSR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5553:SetIrp *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5580:SetIrp
	BCF	STATUS,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5583:SetIrp
	BTFSC	r0x1012,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5584:SetIrp
	BSF	STATUS,7
;; ***	genNearPointerGet  5988
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5995:genNearPointerGet
	MOVF	INDF,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6002:genNearPointerGet
;;	1109 rIdx = r0x1053 
	MOVWF	r0x1015
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6686:genPointerSet *{*
;; ***	genPointerSet  6687
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6505:genNearPointerSet *{*
;; ***	genNearPointerSet  6506
;;	694 register type nRegs=2
;; ***	genNearPointerSet  6521
;;	694 register type nRegs=1
;; 	line = 6523 result AOP_REG=r0x1051, size=2, left -=-, size=0, right AOP_REG=r0x1053, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x1051 
	MOVF	r0x1013,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5602:setup_fsr
	MOVWF	FSR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5553:SetIrp *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5580:SetIrp
	BCF	STATUS,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5583:SetIrp
	BTFSC	r0x1014,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5584:SetIrp
	BSF	STATUS,7
;; ***	genNearPointerSet  6548
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6564:genNearPointerSet
;;	1109 rIdx = r0x1053 
	MOVF	r0x1015,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6569:genNearPointerSet
	MOVWF	INDF
;; ***	genNearPointerSet  6577
;; ***	genNearPointerSet  6603
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3547:genCmpGt *{*
;; ***	genCmpGt  3548
;;	694 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3294:genCmp *{*
;;swapping arguments (AOP_TYPEs 1/2)
;;unsigned compare: left >= lit(0x4=4), size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3265:pic14_mov2w_regOrLit
	.line	69; "push_button.c"	switch(current_button)
	MOVLW	0x04
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3432:genCmp
;;	1109 rIdx = r0x104E 
	SUBWF	r0x1010,W
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3237:genSkipc *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3242:genSkipc
	BTFSC	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3246:genSkipc
;; ***	popGetLabel  key=6, label offset 31
	GOTO	_00137_DS_
;;genSkipc:3247: created from rifx:027A5DF4
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7071:genJumpTab *{*
;; ***	genJumpTab  7072
;;	694 register type nRegs=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7087:genJumpTab
;; ***	popGetLabel  key=58, label offset 31
	MOVLW	HIGH(_00189_DS_)
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7088:genJumpTab
	MOVWF	PCLATH
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7089:genJumpTab
;; ***	popGetLabel  key=58, label offset 31
	MOVLW	_00189_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7090:genJumpTab
;;	1109 rIdx = r0x104E 
	ADDWF	r0x1010,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7091:genJumpTab
	BTFSC	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7092:genJumpTab
	INCF	PCLATH,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7093:genJumpTab
	MOVWF	PCL
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7102:genJumpTab
;; ***	popGetLabel  key=1, label offset 31
_00189_DS_
	GOTO	_00132_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7102:genJumpTab
;; ***	popGetLabel  key=2, label offset 31
	GOTO	_00133_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7102:genJumpTab
;; ***	popGetLabel  key=3, label offset 31
	GOTO	_00134_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7102:genJumpTab
;; ***	popGetLabel  key=4, label offset 31
	GOTO	_00135_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3919:genAnd *{*
;; ***	genAnd  3920
;; ***	aopForSym 315
;;	327 sym->rname = _PORTB, size = 1
;;	694 register type nRegs=1
;; 	line = 3955 result AOP_REG=r0x1051, size=1, left AOP_DIR=_PORTB, size=1, right AOP_LIT=0x01, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4190:genAnd
_00132_DS_
	.line	72; "push_button.c"	pb_info[current_button].samples[1] = GPIO_ReadPortPin(GPIO_PORTB_DATA, PB_1_PIN);
	MOVLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4191:genAnd
;;	1009
;;	1024  _PORTB   offset=0 - had to alloc by reg name
	ANDWF	_PORTB,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4192:genAnd
;;	1109 rIdx = r0x1051 
	MOVWF	r0x1013
	MOVWF	r0x1014
;; ***	addSign  861
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:862:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6686:genPointerSet *{*
;; ***	genPointerSet  6687
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6505:genNearPointerSet *{*
;; ***	genNearPointerSet  6506
;;	694 register type nRegs=2
;; ***	genNearPointerSet  6521
;; 	line = 6523 result AOP_REG=r0x104F, size=2, left -=-, size=0, right AOP_REG=r0x1052, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x104F 
	MOVF	r0x1011,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5602:setup_fsr
	MOVWF	FSR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5553:SetIrp *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5580:SetIrp
	BCF	STATUS,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5583:SetIrp
	BTFSC	r0x1012,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5584:SetIrp
	BSF	STATUS,7
;; ***	genNearPointerSet  6548
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6564:genNearPointerSet
;;	1109 rIdx = r0x1052 
	MOVF	r0x1014,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6569:genNearPointerSet
	MOVWF	INDF
;; ***	genNearPointerSet  6577
;; ***	genNearPointerSet  6603
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2778:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2780:genGoto
;; ***	popGetLabel  key=6, label offset 31
	.line	73; "push_button.c"	break;
	GOTO	_00137_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3919:genAnd *{*
;; ***	genAnd  3920
;; ***	aopForSym 315
;;	327 sym->rname = _PORTB, size = 1
;;	694 register type nRegs=1
;; 	line = 3955 result AOP_REG=r0x1051, size=1, left AOP_DIR=_PORTB, size=1, right AOP_LIT=0x02, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4190:genAnd
_00133_DS_
	.line	75; "push_button.c"	pb_info[current_button].samples[1] = GPIO_ReadPortPin(GPIO_PORTB_DATA, PB_2_PIN);
	MOVLW	0x02
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4191:genAnd
;;	1009
;;	1028  _PORTB   offset=0
	ANDWF	_PORTB,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4192:genAnd
;;	1109 rIdx = r0x1051 
	MOVWF	r0x1013
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5418:genGenericShift *{*
;; ***	genGenericShift  5421
;;	694 register type nRegs=1
;;	694 register type nRegs=1
;;shiftRight_Left2ResultLit:5273: shCount=1, size=1, sign=0, same=0, offr=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5283:shiftRight_Left2ResultLit
	BCF	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5297:shiftRight_Left2ResultLit
;;	1109 rIdx = r0x1051 
	RRF	r0x1013,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5298:shiftRight_Left2ResultLit
;;	1109 rIdx = r0x1052 
	MOVWF	r0x1014
;; ***	addSign  861
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:862:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6686:genPointerSet *{*
;; ***	genPointerSet  6687
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6505:genNearPointerSet *{*
;; ***	genNearPointerSet  6506
;;	694 register type nRegs=2
;; ***	genNearPointerSet  6521
;; 	line = 6523 result AOP_REG=r0x104F, size=2, left -=-, size=0, right AOP_REG=r0x1052, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x104F 
	MOVF	r0x1011,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5602:setup_fsr
	MOVWF	FSR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5553:SetIrp *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5580:SetIrp
	BCF	STATUS,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5583:SetIrp
	BTFSC	r0x1012,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5584:SetIrp
	BSF	STATUS,7
;; ***	genNearPointerSet  6548
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6564:genNearPointerSet
;;	1109 rIdx = r0x1052 
	MOVF	r0x1014,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6569:genNearPointerSet
	MOVWF	INDF
;; ***	genNearPointerSet  6577
;; ***	genNearPointerSet  6603
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2778:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2780:genGoto
;; ***	popGetLabel  key=6, label offset 31
	.line	76; "push_button.c"	break;
	GOTO	_00137_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3919:genAnd *{*
;; ***	genAnd  3920
;; ***	aopForSym 315
;;	327 sym->rname = _PORTB, size = 1
;;	694 register type nRegs=1
;; 	line = 3955 result AOP_REG=r0x1051, size=1, left AOP_DIR=_PORTB, size=1, right AOP_LIT=0x04, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4190:genAnd
_00134_DS_
	.line	78; "push_button.c"	pb_info[current_button].samples[1] = GPIO_ReadPortPin(GPIO_PORTB_DATA, PB_3_PIN);
	MOVLW	0x04
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4191:genAnd
;;	1009
;;	1028  _PORTB   offset=0
	ANDWF	_PORTB,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4192:genAnd
;;	1109 rIdx = r0x1051 
	MOVWF	r0x1013
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5418:genGenericShift *{*
;; ***	genGenericShift  5421
;;	694 register type nRegs=1
;;	694 register type nRegs=1
;;shiftRight_Left2ResultLit:5273: shCount=1, size=1, sign=0, same=0, offr=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5283:shiftRight_Left2ResultLit
	BCF	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5297:shiftRight_Left2ResultLit
;;	1109 rIdx = r0x1051 
	RRF	r0x1013,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5298:shiftRight_Left2ResultLit
;;	1109 rIdx = r0x1052 
	MOVWF	r0x1014
;; ***	addSign  861
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:862:addSign *{*
;;shiftRight_Left2ResultLit:5273: shCount=1, size=1, sign=0, same=1, offr=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5283:shiftRight_Left2ResultLit
	BCF	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5293:shiftRight_Left2ResultLit
;;	1109 rIdx = r0x1052 
	RRF	r0x1014,F
;; ***	addSign  861
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:862:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6686:genPointerSet *{*
;; ***	genPointerSet  6687
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6505:genNearPointerSet *{*
;; ***	genNearPointerSet  6506
;;	694 register type nRegs=2
;; ***	genNearPointerSet  6521
;; 	line = 6523 result AOP_REG=r0x104F, size=2, left -=-, size=0, right AOP_REG=r0x1052, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x104F 
	MOVF	r0x1011,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5602:setup_fsr
	MOVWF	FSR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5553:SetIrp *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5580:SetIrp
	BCF	STATUS,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5583:SetIrp
	BTFSC	r0x1012,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5584:SetIrp
	BSF	STATUS,7
;; ***	genNearPointerSet  6548
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6564:genNearPointerSet
;;	1109 rIdx = r0x1052 
	MOVF	r0x1014,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6569:genNearPointerSet
	MOVWF	INDF
;; ***	genNearPointerSet  6577
;; ***	genNearPointerSet  6603
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2778:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2780:genGoto
;; ***	popGetLabel  key=6, label offset 31
	.line	79; "push_button.c"	break;
	GOTO	_00137_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3919:genAnd *{*
;; ***	genAnd  3920
;; ***	aopForSym 315
;;	327 sym->rname = _PORTB, size = 1
;;	694 register type nRegs=1
;; 	line = 3955 result AOP_REG=r0x1051, size=1, left AOP_DIR=_PORTB, size=1, right AOP_LIT=0x08, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4190:genAnd
_00135_DS_
	.line	81; "push_button.c"	pb_info[current_button].samples[1] = GPIO_ReadPortPin(GPIO_PORTB_DATA, PB_4_PIN);
	MOVLW	0x08
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4191:genAnd
;;	1009
;;	1028  _PORTB   offset=0
	ANDWF	_PORTB,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4192:genAnd
;;	1109 rIdx = r0x1051 
	MOVWF	r0x1013
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5418:genGenericShift *{*
;; ***	genGenericShift  5421
;;	694 register type nRegs=1
;;	694 register type nRegs=1
;;shiftRight_Left2ResultLit:5273: shCount=1, size=1, sign=0, same=0, offr=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5283:shiftRight_Left2ResultLit
	BCF	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5297:shiftRight_Left2ResultLit
;;	1109 rIdx = r0x1051 
	RRF	r0x1013,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5298:shiftRight_Left2ResultLit
;;	1109 rIdx = r0x1052 
	MOVWF	r0x1014
;; ***	addSign  861
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:862:addSign *{*
;;shiftRight_Left2ResultLit:5273: shCount=1, size=1, sign=0, same=1, offr=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5283:shiftRight_Left2ResultLit
	BCF	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5293:shiftRight_Left2ResultLit
;;	1109 rIdx = r0x1052 
	RRF	r0x1014,F
;; ***	addSign  861
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:862:addSign *{*
;;shiftRight_Left2ResultLit:5273: shCount=1, size=1, sign=0, same=1, offr=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5283:shiftRight_Left2ResultLit
	BCF	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5293:shiftRight_Left2ResultLit
;;	1109 rIdx = r0x1052 
	RRF	r0x1014,F
;; ***	addSign  861
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:862:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6686:genPointerSet *{*
;; ***	genPointerSet  6687
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6505:genNearPointerSet *{*
;; ***	genNearPointerSet  6506
;;	694 register type nRegs=2
;; ***	genNearPointerSet  6521
;; 	line = 6523 result AOP_REG=r0x104F, size=2, left -=-, size=0, right AOP_REG=r0x1052, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x104F 
	MOVF	r0x1011,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5602:setup_fsr
	MOVWF	FSR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5553:SetIrp *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5580:SetIrp
	BCF	STATUS,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5583:SetIrp
	BTFSC	r0x1012,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5584:SetIrp
	BSF	STATUS,7
;; ***	genNearPointerSet  6548
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6564:genNearPointerSet
;;	1109 rIdx = r0x1052 
	MOVF	r0x1014,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6569:genNearPointerSet
	MOVWF	INDF
;; ***	genNearPointerSet  6577
;; ***	genNearPointerSet  6603
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2878:genMult *{*
;; ***	genMult  2880
;;	694 register type nRegs=1
;;	694 register type nRegs=2
;; 	line = 2886 result AOP_REG=r0x104F, size=2, left AOP_REG=r0x104E, size=1, right AOP_LIT=0x03, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2816:genMultOneByte *{*
;; ***	genMultOneByte  2818
;; 	line = 2819 result AOP_REG=r0x104F, size=2, left AOP_REG=r0x104E, size=1, right AOP_LIT=0x03, size=1
;; 	line = 2820, signs: result AOP_REG=u, left AOP_REG=u, right AOP_LIT=u
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1384:mov2w
_00137_DS_
	.line	89; "push_button.c"	switch(pb_info[current_button].state)
	MOVLW	0x03
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2840:genMultOneByte
;; ***	popRegFromIdx,1042  , rIdx=0x7f
	MOVWF	STK00
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x104E 
	MOVF	r0x1010,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1433:call_libraryfunc
	PAGESEL	__mulchar
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1435:call_libraryfunc
	CALL	__mulchar
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1437:call_libraryfunc
	PAGESEL	$
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1393:movwf
;;	1109 rIdx = r0x104F 
	MOVWF	r0x1011
;; ***	addSign  861
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:862:addSign *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:881:addSign
;;	1109 rIdx = r0x1050 
	CLRF	r0x1012
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;; ***	genPlus  611
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:612:genPlus *{*
;;	613
;;	aopForRemat 392
;;	418: rname _pb_info, val 0, const = 0
;;	694 register type nRegs=2
;;	694 register type nRegs=2
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_pb_info
;; 	line = 618 result AOP_REG=r0x104F, size=2, left AOP_PCODE=_pb_info, size=2, right AOP_REG=r0x104F, size=2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:142:genPlusIncr *{*
;; ***	genPlusIncr  144
;; 	result AOP_REG, left AOP_PCODE, right AOP_REG
;; ***	genPlus  717
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_pb_info
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:726:genPlus
;;	1109 rIdx = r0x104F 
	MOVF	r0x1011,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:735:genPlus
	ADDLW	(_pb_info + 0)
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:736:genPlus
;;	1109 rIdx = r0x104F 
	MOVWF	r0x1011
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:749:genPlus
;;	1109 rIdx = r0x1050 
	MOVF	r0x1012,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:750:genPlus
	BTFSC	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:751:genPlus
;;	1109 rIdx = r0x1050 
	INCFSZ	r0x1012,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:752:genPlus
	ADDLW	high (_pb_info + 0)
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:753:genPlus
;;	1109 rIdx = r0x1050 
	MOVWF	r0x1012
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;; ***	genPlus  611
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:612:genPlus *{*
;;	694 register type nRegs=2
;;	694 register type nRegs=2
;; 	line = 618 result AOP_REG=r0x1051, size=2, left AOP_REG=r0x104F, size=2, right AOP_LIT=0x02, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:142:genPlusIncr *{*
;; ***	genPlusIncr  144
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  156
;; 	genPlusIncr  180
;;	adding lit to something. size 2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:269:genAddLit *{*
;; ***	genAddLit  270
;;  left and result aren't same	genAddLit  514
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:546:genAddLit
	MOVLW	0x02
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:547:genAddLit
;;	1109 rIdx = r0x104F 
	ADDWF	r0x1011,W
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:253:emitMOVWF *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:257:emitMOVWF
;;	1109 rIdx = r0x1051 
	MOVWF	r0x1013
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:584:genAddLit
;;	1109 rIdx = r0x1052 
	CLRF	r0x1014
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:585:genAddLit
;;	1109 rIdx = r0x1052 
	RLF	r0x1014,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:586:genAddLit
;;	1109 rIdx = r0x1050 
	MOVF	r0x1012,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:587:genAddLit
;;	1109 rIdx = r0x1052 
	ADDWF	r0x1014,F
;; ***	addSign  861
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:862:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6162:genPointerGet *{*
;; ***	genPointerGet  6163
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5944:genNearPointerGet *{*
;; ***	genNearPointerGet  5945
;;	694 register type nRegs=2
;; ***	genNearPointerGet  5961
;;	694 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x1051 
	MOVF	r0x1013,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5602:setup_fsr
	MOVWF	FSR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5553:SetIrp *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5580:SetIrp
	BCF	STATUS,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5583:SetIrp
	BTFSC	r0x1014,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5584:SetIrp
	BSF	STATUS,7
;; ***	genNearPointerGet  5988
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5995:genNearPointerGet
	MOVF	INDF,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6002:genNearPointerGet
;;	1109 rIdx = r0x1053 
	MOVWF	r0x1015
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3547:genCmpGt *{*
;; ***	genCmpGt  3548
;;	694 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3294:genCmp *{*
;;swapping arguments (AOP_TYPEs 1/2)
;;unsigned compare: left >= lit(0x4=4), size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3265:pic14_mov2w_regOrLit
	MOVLW	0x04
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3432:genCmp
;;	1109 rIdx = r0x1053 
	SUBWF	r0x1015,W
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3237:genSkipc *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3242:genSkipc
	BTFSC	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3246:genSkipc
;; ***	popGetLabel  key=26, label offset 31
	GOTO	_00157_DS_
;;genSkipc:3247: created from rifx:027A5DF4
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7071:genJumpTab *{*
;; ***	genJumpTab  7072
;;	694 register type nRegs=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7087:genJumpTab
;; ***	popGetLabel  key=60, label offset 31
	MOVLW	HIGH(_00191_DS_)
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7088:genJumpTab
	MOVWF	PCLATH
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7089:genJumpTab
;; ***	popGetLabel  key=60, label offset 31
	MOVLW	_00191_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7090:genJumpTab
;;	1109 rIdx = r0x1053 
	ADDWF	r0x1015,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7091:genJumpTab
	BTFSC	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7092:genJumpTab
	INCF	PCLATH,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7093:genJumpTab
	MOVWF	PCL
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7102:genJumpTab
;; ***	popGetLabel  key=7, label offset 31
_00191_DS_
	GOTO	_00138_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7102:genJumpTab
;; ***	popGetLabel  key=11, label offset 31
	GOTO	_00142_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7102:genJumpTab
;; ***	popGetLabel  key=15, label offset 31
	GOTO	_00146_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7102:genJumpTab
;; ***	popGetLabel  key=19, label offset 31
	GOTO	_00150_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6162:genPointerGet *{*
;; ***	genPointerGet  6163
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5944:genNearPointerGet *{*
;; ***	genNearPointerGet  5945
;;	694 register type nRegs=2
;; ***	genNearPointerGet  5961
;;	694 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x104F 
_00138_DS_
	.line	92; "push_button.c"	if((pb_info[current_button].samples[0] == PB_PRESSED_VOLTAGE) &&
	MOVF	r0x1011,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5602:setup_fsr
	MOVWF	FSR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5553:SetIrp *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5580:SetIrp
	BCF	STATUS,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5583:SetIrp
	BTFSC	r0x1012,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5584:SetIrp
	BSF	STATUS,7
;; ***	genNearPointerGet  5988
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5995:genNearPointerGet
	MOVF	INDF,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6002:genNearPointerGet
;;	1109 rIdx = r0x1053 
	MOVWF	r0x1015
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6759:genIfx *{*
;; ***	genIfx  6760
;;	694 register type nRegs=1
;; ***	pic14_toBoolean  1515
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1522:pic14_toBoolean
	MOVF	r0x1015,W
	BTFSS	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6809:genIfx
;; ***	popGetLabel  key=26, label offset 31
	GOTO	_00157_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;; ***	genPlus  611
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:612:genPlus *{*
;;	694 register type nRegs=2
;;	694 register type nRegs=2
;; 	line = 618 result AOP_REG=r0x1053, size=2, left AOP_REG=r0x104F, size=2, right AOP_LIT=0x01, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:142:genPlusIncr *{*
;; ***	genPlusIncr  144
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  156
;; 	genPlusIncr  180
;;	adding lit to something. size 2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:269:genAddLit *{*
;; ***	genAddLit  270
;;  left and result aren't same	genAddLit  514
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:546:genAddLit
	.line	93; "push_button.c"	(pb_info[current_button].samples[1] == PB_PRESSED_VOLTAGE))
	MOVLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:547:genAddLit
;;	1109 rIdx = r0x104F 
	ADDWF	r0x1011,W
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:253:emitMOVWF *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:257:emitMOVWF
;;	1109 rIdx = r0x1053 
	MOVWF	r0x1015
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:584:genAddLit
;;	1109 rIdx = r0x1054 
	CLRF	r0x1016
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:585:genAddLit
;;	1109 rIdx = r0x1054 
	RLF	r0x1016,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:586:genAddLit
;;	1109 rIdx = r0x1050 
	MOVF	r0x1012,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:587:genAddLit
;;	1109 rIdx = r0x1054 
	ADDWF	r0x1016,F
;; ***	addSign  861
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:862:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6162:genPointerGet *{*
;; ***	genPointerGet  6163
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5944:genNearPointerGet *{*
;; ***	genNearPointerGet  5945
;;	694 register type nRegs=2
;; ***	genNearPointerGet  5961
;;	694 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x1053 
	MOVF	r0x1015,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5602:setup_fsr
	MOVWF	FSR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5553:SetIrp *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5580:SetIrp
	BCF	STATUS,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5583:SetIrp
	BTFSC	r0x1016,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5584:SetIrp
	BSF	STATUS,7
;; ***	genNearPointerGet  5988
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5995:genNearPointerGet
	MOVF	INDF,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6002:genNearPointerGet
;;	1109 rIdx = r0x1055 
	MOVWF	r0x1017
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6759:genIfx *{*
;; ***	genIfx  6760
;;	694 register type nRegs=1
;; ***	pic14_toBoolean  1515
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1522:pic14_toBoolean
	MOVF	r0x1017,W
	BTFSS	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6809:genIfx
;; ***	popGetLabel  key=26, label offset 31
	GOTO	_00157_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6686:genPointerSet *{*
;; ***	genPointerSet  6687
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6505:genNearPointerSet *{*
;; ***	genNearPointerSet  6506
;;	694 register type nRegs=2
;; ***	genNearPointerSet  6521
;; 	line = 6523 result AOP_REG=r0x1051, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x1051 
	.line	95; "push_button.c"	pb_info[current_button].state = PB_PRE_PRESSED;
	MOVF	r0x1013,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5602:setup_fsr
	MOVWF	FSR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5553:SetIrp *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5580:SetIrp
	BCF	STATUS,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5583:SetIrp
	BTFSC	r0x1014,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5584:SetIrp
	BSF	STATUS,7
;; ***	genNearPointerSet  6548
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6560:genNearPointerSet
	MOVLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6569:genNearPointerSet
	MOVWF	INDF
;; ***	genNearPointerSet  6577
;; ***	genNearPointerSet  6603
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2778:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2780:genGoto
;; ***	popGetLabel  key=26, label offset 31
	.line	97; "push_button.c"	break;
	GOTO	_00157_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;; ***	genPlus  611
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:612:genPlus *{*
;;	694 register type nRegs=2
;;	694 register type nRegs=2
;; 	line = 618 result AOP_REG=r0x1053, size=2, left AOP_REG=r0x104F, size=2, right AOP_LIT=0x01, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:142:genPlusIncr *{*
;; ***	genPlusIncr  144
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  156
;; 	genPlusIncr  180
;;	adding lit to something. size 2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:269:genAddLit *{*
;; ***	genAddLit  270
;;  left and result aren't same	genAddLit  514
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:546:genAddLit
_00142_DS_
	.line	99; "push_button.c"	if(pb_info[current_button].samples[1] == PB_PRESSED_VOLTAGE)
	MOVLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:547:genAddLit
;;	1109 rIdx = r0x104F 
	ADDWF	r0x1011,W
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:253:emitMOVWF *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:257:emitMOVWF
;;	1109 rIdx = r0x1053 
	MOVWF	r0x1015
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:584:genAddLit
;;	1109 rIdx = r0x1054 
	CLRF	r0x1016
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:585:genAddLit
;;	1109 rIdx = r0x1054 
	RLF	r0x1016,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:586:genAddLit
;;	1109 rIdx = r0x1050 
	MOVF	r0x1012,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:587:genAddLit
;;	1109 rIdx = r0x1054 
	ADDWF	r0x1016,F
;; ***	addSign  861
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:862:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6162:genPointerGet *{*
;; ***	genPointerGet  6163
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5944:genNearPointerGet *{*
;; ***	genNearPointerGet  5945
;;	694 register type nRegs=2
;; ***	genNearPointerGet  5961
;;	694 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x1053 
	MOVF	r0x1015,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5602:setup_fsr
	MOVWF	FSR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5553:SetIrp *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5580:SetIrp
	BCF	STATUS,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5583:SetIrp
	BTFSC	r0x1016,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5584:SetIrp
	BSF	STATUS,7
;; ***	genNearPointerGet  5988
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5995:genNearPointerGet
	MOVF	INDF,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6002:genNearPointerGet
;;	1109 rIdx = r0x1055 
	MOVWF	r0x1017
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6759:genIfx *{*
;; ***	genIfx  6760
;;	694 register type nRegs=1
;; ***	pic14_toBoolean  1515
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1522:pic14_toBoolean
	MOVF	r0x1017,W
	BTFSS	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6809:genIfx
;; ***	popGetLabel  key=13, label offset 31
	GOTO	_00144_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6686:genPointerSet *{*
;; ***	genPointerSet  6687
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6505:genNearPointerSet *{*
;; ***	genNearPointerSet  6506
;;	694 register type nRegs=2
;; ***	genNearPointerSet  6521
;; 	line = 6523 result AOP_REG=r0x1051, size=2, left -=-, size=0, right AOP_LIT=0x02, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x1051 
	.line	101; "push_button.c"	pb_info[current_button].state = PB_PRESSED;
	MOVF	r0x1013,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5602:setup_fsr
	MOVWF	FSR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5553:SetIrp *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5580:SetIrp
	BCF	STATUS,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5583:SetIrp
	BTFSC	r0x1014,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5584:SetIrp
	BSF	STATUS,7
;; ***	genNearPointerSet  6548
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6560:genNearPointerSet
	MOVLW	0x02
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6569:genNearPointerSet
	MOVWF	INDF
;; ***	genNearPointerSet  6577
;; ***	genNearPointerSet  6603
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2778:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2780:genGoto
;; ***	popGetLabel  key=26, label offset 31
	GOTO	_00157_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6686:genPointerSet *{*
;; ***	genPointerSet  6687
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6505:genNearPointerSet *{*
;; ***	genNearPointerSet  6506
;;	694 register type nRegs=2
;; ***	genNearPointerSet  6521
;; 	line = 6523 result AOP_REG=r0x1051, size=2, left -=-, size=0, right AOP_LIT=0x02, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x1051 
_00144_DS_
	.line	104; "push_button.c"	pb_info[current_button].state = PB_PRESSED;
	MOVF	r0x1013,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5602:setup_fsr
	MOVWF	FSR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5553:SetIrp *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5580:SetIrp
	BCF	STATUS,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5583:SetIrp
	BTFSC	r0x1014,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5584:SetIrp
	BSF	STATUS,7
;; ***	genNearPointerSet  6548
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6560:genNearPointerSet
	MOVLW	0x02
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6569:genNearPointerSet
	MOVWF	INDF
;; ***	genNearPointerSet  6577
;; ***	genNearPointerSet  6603
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2778:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2780:genGoto
;; ***	popGetLabel  key=26, label offset 31
	.line	106; "push_button.c"	break;
	GOTO	_00157_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6162:genPointerGet *{*
;; ***	genPointerGet  6163
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5944:genNearPointerGet *{*
;; ***	genNearPointerGet  5945
;;	694 register type nRegs=2
;; ***	genNearPointerGet  5961
;;	694 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x104F 
_00146_DS_
	.line	108; "push_button.c"	if((pb_info[current_button].samples[0] == PB_RELEASED_VOLTAGE) &&
	MOVF	r0x1011,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5602:setup_fsr
	MOVWF	FSR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5553:SetIrp *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5580:SetIrp
	BCF	STATUS,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5583:SetIrp
	BTFSC	r0x1012,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5584:SetIrp
	BSF	STATUS,7
;; ***	genNearPointerGet  5988
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5995:genNearPointerGet
	MOVF	INDF,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6002:genNearPointerGet
;;	1109 rIdx = r0x1053 
	MOVWF	r0x1015
	XORLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3687:genCmpEq
	BTFSS	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3690:genCmpEq
;; ***	popGetLabel  key=26, label offset 31
	GOTO	_00157_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;; ***	genPlus  611
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:612:genPlus *{*
;;	694 register type nRegs=2
;;	694 register type nRegs=2
;; 	line = 618 result AOP_REG=r0x1053, size=2, left AOP_REG=r0x104F, size=2, right AOP_LIT=0x01, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:142:genPlusIncr *{*
;; ***	genPlusIncr  144
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  156
;; 	genPlusIncr  180
;;	adding lit to something. size 2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:269:genAddLit *{*
;; ***	genAddLit  270
;;  left and result aren't same	genAddLit  514
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:546:genAddLit
	.line	109; "push_button.c"	(pb_info[current_button].samples[1] == PB_RELEASED_VOLTAGE))
	MOVLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:547:genAddLit
;;	1109 rIdx = r0x104F 
	ADDWF	r0x1011,W
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:253:emitMOVWF *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:257:emitMOVWF
;;	1109 rIdx = r0x1053 
	MOVWF	r0x1015
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:584:genAddLit
;;	1109 rIdx = r0x1054 
	CLRF	r0x1016
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:585:genAddLit
;;	1109 rIdx = r0x1054 
	RLF	r0x1016,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:586:genAddLit
;;	1109 rIdx = r0x1050 
	MOVF	r0x1012,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:587:genAddLit
;;	1109 rIdx = r0x1054 
	ADDWF	r0x1016,F
;; ***	addSign  861
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:862:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6162:genPointerGet *{*
;; ***	genPointerGet  6163
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5944:genNearPointerGet *{*
;; ***	genNearPointerGet  5945
;;	694 register type nRegs=2
;; ***	genNearPointerGet  5961
;;	694 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x1053 
	MOVF	r0x1015,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5602:setup_fsr
	MOVWF	FSR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5553:SetIrp *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5580:SetIrp
	BCF	STATUS,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5583:SetIrp
	BTFSC	r0x1016,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5584:SetIrp
	BSF	STATUS,7
;; ***	genNearPointerGet  5988
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5995:genNearPointerGet
	MOVF	INDF,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6002:genNearPointerGet
;;	1109 rIdx = r0x1055 
	MOVWF	r0x1017
	XORLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3687:genCmpEq
	BTFSS	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3690:genCmpEq
;; ***	popGetLabel  key=26, label offset 31
	GOTO	_00157_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6686:genPointerSet *{*
;; ***	genPointerSet  6687
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6505:genNearPointerSet *{*
;; ***	genNearPointerSet  6506
;;	694 register type nRegs=2
;; ***	genNearPointerSet  6521
;; 	line = 6523 result AOP_REG=r0x1051, size=2, left -=-, size=0, right AOP_LIT=0x03, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x1051 
	.line	111; "push_button.c"	pb_info[current_button].state = PB_PRE_RELEASED;
	MOVF	r0x1013,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5602:setup_fsr
	MOVWF	FSR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5553:SetIrp *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5580:SetIrp
	BCF	STATUS,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5583:SetIrp
	BTFSC	r0x1014,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5584:SetIrp
	BSF	STATUS,7
;; ***	genNearPointerSet  6548
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6560:genNearPointerSet
	MOVLW	0x03
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6569:genNearPointerSet
	MOVWF	INDF
;; ***	genNearPointerSet  6577
;; ***	genNearPointerSet  6603
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2778:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2780:genGoto
;; ***	popGetLabel  key=26, label offset 31
	.line	113; "push_button.c"	break;
	GOTO	_00157_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;; ***	genPlus  611
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:612:genPlus *{*
;;	694 register type nRegs=2
;;	694 register type nRegs=2
;; 	line = 618 result AOP_REG=r0x104F, size=2, left AOP_REG=r0x104F, size=2, right AOP_LIT=0x01, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:142:genPlusIncr *{*
;; ***	genPlusIncr  144
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  156
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:168:genPlusIncr
;;	1109 rIdx = r0x104F 
_00150_DS_
	.line	115; "push_button.c"	if(pb_info[current_button].samples[1] == PB_RELEASED_VOLTAGE)
	INCF	r0x1011,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:172:genPlusIncr
	BTFSC	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:173:genPlusIncr
;;	1109 rIdx = r0x1050 
	INCF	r0x1012,F
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6162:genPointerGet *{*
;; ***	genPointerGet  6163
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5944:genNearPointerGet *{*
;; ***	genNearPointerGet  5945
;;	694 register type nRegs=2
;; ***	genNearPointerGet  5961
;;	694 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x104F 
	MOVF	r0x1011,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5602:setup_fsr
	MOVWF	FSR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5553:SetIrp *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5580:SetIrp
	BCF	STATUS,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5583:SetIrp
	BTFSC	r0x1012,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5584:SetIrp
	BSF	STATUS,7
;; ***	genNearPointerGet  5988
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5995:genNearPointerGet
	MOVF	INDF,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6002:genNearPointerGet
;;	1109 rIdx = r0x1053 
	MOVWF	r0x1015
	XORLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3687:genCmpEq
	BTFSS	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3690:genCmpEq
;; ***	popGetLabel  key=26, label offset 31
	GOTO	_00157_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6686:genPointerSet *{*
;; ***	genPointerSet  6687
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6505:genNearPointerSet *{*
;; ***	genNearPointerSet  6506
;;	694 register type nRegs=2
;; ***	genNearPointerSet  6521
;; 	line = 6523 result AOP_REG=r0x1051, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x1051 
	.line	117; "push_button.c"	pb_info[current_button].state = PB_RELEASED;
	MOVF	r0x1013,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5602:setup_fsr
	MOVWF	FSR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5553:SetIrp *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5580:SetIrp
	BCF	STATUS,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5583:SetIrp
	BTFSC	r0x1014,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5584:SetIrp
	BSF	STATUS,7
;; ***	genNearPointerSet  6548
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6560:genNearPointerSet
	MOVLW	0x00
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6569:genNearPointerSet
	MOVWF	INDF
;; ***	genNearPointerSet  6577
;; ***	genNearPointerSet  6603
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;; ***	genPlus  611
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:612:genPlus *{*
;;	694 register type nRegs=1
;;	575
;; 	line = 618 result AOP_REG=r0x104E, size=1, left AOP_REG=r0x104E, size=1, right AOP_LIT=0x01, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:142:genPlusIncr *{*
;; ***	genPlusIncr  144
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  156
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:168:genPlusIncr
;;	1109 rIdx = r0x104E 
_00157_DS_
	.line	64; "push_button.c"	for (current_button = PB_PLUS; current_button <= PB_UNUSED_2; current_button++)
	INCF	r0x1010,F
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3547:genCmpGt *{*
;; ***	genCmpGt  3548
;;	694 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3294:genCmp *{*
;;swapping arguments (AOP_TYPEs 1/2)
;;unsigned compare: left >= lit(0x4=4), size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3265:pic14_mov2w_regOrLit
	MOVLW	0x04
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3432:genCmp
;;	1109 rIdx = r0x104E 
	SUBWF	r0x1010,W
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3237:genSkipc *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3244:genSkipc
	BTFSS	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3246:genSkipc
;; ***	popGetLabel  key=25, label offset 31
	GOTO	_00156_DS_
;;genSkipc:3247: created from rifx:027A5DF4
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2528:genEndFunction *{*
;; ***	genEndFunction  2530
	RETURN	
; exit point of _PB_Update
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
_PB_Init	;Function start
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7358:genReceive *{*
;; ***	genReceive  7359
;;	694 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1907:assignResultValue *{*
;; ***	assignResultValue  1909
;; 	line = 1911 result -=-, size=0, left AOP_REG=r0x1048, size=1, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1393:movwf
;;	1109 rIdx = r0x1048 
	.line	20; "push_button.c"	void PB_Init(tPB pb, tPB_State initial_state)
	MOVWF	r0x1018
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7358:genReceive *{*
;; ***	genReceive  7359
;;	694 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1907:assignResultValue *{*
;; ***	assignResultValue  1909
;; 	line = 1911 result -=-, size=0, left AOP_REG=r0x1049, size=1, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1423:get_returnvalue
;; ***	popRegFromIdx,1042  , rIdx=0x7f
	MOVF	STK00,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1393:movwf
;;	1109 rIdx = r0x1049 
	MOVWF	r0x1019
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3547:genCmpGt *{*
;; ***	genCmpGt  3548
;;	694 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3294:genCmp *{*
;;swapping arguments (AOP_TYPEs 1/2)
;;unsigned compare: left >= lit(0x4=4), size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3265:pic14_mov2w_regOrLit
	.line	23; "push_button.c"	switch(pb)
	MOVLW	0x04
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3432:genCmp
;;	1109 rIdx = r0x1048 
	SUBWF	r0x1018,W
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3237:genSkipc *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3242:genSkipc
	BTFSC	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3246:genSkipc
;; ***	popGetLabel  key=6, label offset 4
	GOTO	_00110_DS_
;;genSkipc:3247: created from rifx:027A5DF4
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7071:genJumpTab *{*
;; ***	genJumpTab  7072
;;	694 register type nRegs=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7087:genJumpTab
;; ***	popGetLabel  key=21, label offset 4
	MOVLW	HIGH(_00125_DS_)
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7088:genJumpTab
	MOVWF	PCLATH
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7089:genJumpTab
;; ***	popGetLabel  key=21, label offset 4
	MOVLW	_00125_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7090:genJumpTab
;;	1109 rIdx = r0x1048 
	ADDWF	r0x1018,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7091:genJumpTab
	BTFSC	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7092:genJumpTab
	INCF	PCLATH,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7093:genJumpTab
	MOVWF	PCL
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7102:genJumpTab
;; ***	popGetLabel  key=1, label offset 4
_00125_DS_
	GOTO	_00105_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7102:genJumpTab
;; ***	popGetLabel  key=2, label offset 4
	GOTO	_00106_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7102:genJumpTab
;; ***	popGetLabel  key=3, label offset 4
	GOTO	_00107_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7102:genJumpTab
;; ***	popGetLabel  key=4, label offset 4
	GOTO	_00108_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7120:genCast *{*
;; ***	genCast  7121
;; ***	aopForSym 315
;;	327 sym->rname = _TRISB, size = 1
;;	694 register type nRegs=1
;; 	line = 7129 result AOP_REG=r0x104A, size=1, left -=-, size=0, right AOP_DIR=_TRISB, size=1
;; ***	genCast  7253
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7277:genCast
;;	1009
;;	1028  _TRISB   offset=0
_00105_DS_
	.line	26; "push_button.c"	GPIO_InitPortPin(GPIO_PORTB_DIRECTION, PB_1_PIN, GPIO_IN);
	MOVF	_TRISB,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7278:genCast
;;	1109 rIdx = r0x104A 
	MOVWF	r0x101A
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3919:genAnd *{*
;; ***	genAnd  3920
;;	694 register type nRegs=1
;;	694 register type nRegs=1
;; 	line = 3955 result AOP_REG=r0x104A, size=1, left AOP_REG=r0x104A, size=1, right AOP_LIT=0xfe, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4122:genAnd
	BCF	r0x101A,0
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4220:genOr *{*
;; ***	genOr  4221
;;	694 register type nRegs=1
;; ***	aopForSym 315
;;	327 sym->rname = _TRISB, size = 1
;; 	line = 4227 result AOP_DIR=_TRISB, size=1, left AOP_REG=r0x104A, size=1, right AOP_LIT=0x01, size=1
;; 	line = 4253 result AOP_DIR=_TRISB, size=1, left AOP_REG=r0x104A, size=1, right AOP_LIT=0x01, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4470:genOr
	MOVLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4471:genOr
;;	1109 rIdx = r0x104A 
	IORWF	r0x101A,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4472:genOr
;;	1009
;;	1028  _TRISB   offset=0
	MOVWF	_TRISB
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2778:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2780:genGoto
;; ***	popGetLabel  key=6, label offset 4
	.line	27; "push_button.c"	break;
	GOTO	_00110_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7120:genCast *{*
;; ***	genCast  7121
;; ***	aopForSym 315
;;	327 sym->rname = _TRISB, size = 1
;;	694 register type nRegs=1
;; 	line = 7129 result AOP_REG=r0x104A, size=1, left -=-, size=0, right AOP_DIR=_TRISB, size=1
;; ***	genCast  7253
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7277:genCast
;;	1009
;;	1028  _TRISB   offset=0
_00106_DS_
	.line	29; "push_button.c"	GPIO_InitPortPin(GPIO_PORTB_DIRECTION, PB_2_PIN, GPIO_IN);
	MOVF	_TRISB,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7278:genCast
;;	1109 rIdx = r0x104A 
	MOVWF	r0x101A
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3919:genAnd *{*
;; ***	genAnd  3920
;;	694 register type nRegs=1
;;	694 register type nRegs=1
;; 	line = 3955 result AOP_REG=r0x104A, size=1, left AOP_REG=r0x104A, size=1, right AOP_LIT=0xfd, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4122:genAnd
	BCF	r0x101A,1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4220:genOr *{*
;; ***	genOr  4221
;;	694 register type nRegs=1
;; ***	aopForSym 315
;;	327 sym->rname = _TRISB, size = 1
;; 	line = 4227 result AOP_DIR=_TRISB, size=1, left AOP_REG=r0x104A, size=1, right AOP_LIT=0x02, size=1
;; 	line = 4253 result AOP_DIR=_TRISB, size=1, left AOP_REG=r0x104A, size=1, right AOP_LIT=0x02, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4470:genOr
	MOVLW	0x02
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4471:genOr
;;	1109 rIdx = r0x104A 
	IORWF	r0x101A,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4472:genOr
;;	1009
;;	1028  _TRISB   offset=0
	MOVWF	_TRISB
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2778:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2780:genGoto
;; ***	popGetLabel  key=6, label offset 4
	.line	30; "push_button.c"	break;
	GOTO	_00110_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7120:genCast *{*
;; ***	genCast  7121
;; ***	aopForSym 315
;;	327 sym->rname = _TRISB, size = 1
;;	694 register type nRegs=1
;; 	line = 7129 result AOP_REG=r0x104A, size=1, left -=-, size=0, right AOP_DIR=_TRISB, size=1
;; ***	genCast  7253
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7277:genCast
;;	1009
;;	1028  _TRISB   offset=0
_00107_DS_
	.line	32; "push_button.c"	GPIO_InitPortPin(GPIO_PORTB_DIRECTION, PB_3_PIN, GPIO_IN);
	MOVF	_TRISB,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7278:genCast
;;	1109 rIdx = r0x104A 
	MOVWF	r0x101A
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3919:genAnd *{*
;; ***	genAnd  3920
;;	694 register type nRegs=1
;;	694 register type nRegs=1
;; 	line = 3955 result AOP_REG=r0x104A, size=1, left AOP_REG=r0x104A, size=1, right AOP_LIT=0xfb, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4122:genAnd
	BCF	r0x101A,2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4220:genOr *{*
;; ***	genOr  4221
;;	694 register type nRegs=1
;; ***	aopForSym 315
;;	327 sym->rname = _TRISB, size = 1
;; 	line = 4227 result AOP_DIR=_TRISB, size=1, left AOP_REG=r0x104A, size=1, right AOP_LIT=0x04, size=1
;; 	line = 4253 result AOP_DIR=_TRISB, size=1, left AOP_REG=r0x104A, size=1, right AOP_LIT=0x04, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4470:genOr
	MOVLW	0x04
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4471:genOr
;;	1109 rIdx = r0x104A 
	IORWF	r0x101A,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4472:genOr
;;	1009
;;	1028  _TRISB   offset=0
	MOVWF	_TRISB
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2778:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2780:genGoto
;; ***	popGetLabel  key=6, label offset 4
	.line	33; "push_button.c"	break;
	GOTO	_00110_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7120:genCast *{*
;; ***	genCast  7121
;; ***	aopForSym 315
;;	327 sym->rname = _TRISB, size = 1
;;	694 register type nRegs=1
;; 	line = 7129 result AOP_REG=r0x104A, size=1, left -=-, size=0, right AOP_DIR=_TRISB, size=1
;; ***	genCast  7253
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7277:genCast
;;	1009
;;	1028  _TRISB   offset=0
_00108_DS_
	.line	35; "push_button.c"	GPIO_InitPortPin(GPIO_PORTB_DIRECTION, PB_4_PIN, GPIO_IN);
	MOVF	_TRISB,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7278:genCast
;;	1109 rIdx = r0x104A 
	MOVWF	r0x101A
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3919:genAnd *{*
;; ***	genAnd  3920
;;	694 register type nRegs=1
;;	694 register type nRegs=1
;; 	line = 3955 result AOP_REG=r0x104A, size=1, left AOP_REG=r0x104A, size=1, right AOP_LIT=0xf7, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4122:genAnd
	BCF	r0x101A,3
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4220:genOr *{*
;; ***	genOr  4221
;;	694 register type nRegs=1
;; ***	aopForSym 315
;;	327 sym->rname = _TRISB, size = 1
;; 	line = 4227 result AOP_DIR=_TRISB, size=1, left AOP_REG=r0x104A, size=1, right AOP_LIT=0x08, size=1
;; 	line = 4253 result AOP_DIR=_TRISB, size=1, left AOP_REG=r0x104A, size=1, right AOP_LIT=0x08, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4470:genOr
	MOVLW	0x08
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4471:genOr
;;	1109 rIdx = r0x104A 
	IORWF	r0x101A,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4472:genOr
;;	1009
;;	1028  _TRISB   offset=0
	MOVWF	_TRISB
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2878:genMult *{*
;; ***	genMult  2880
;;	694 register type nRegs=1
;;	694 register type nRegs=2
;; 	line = 2886 result AOP_REG=r0x104A, size=2, left AOP_REG=r0x1048, size=1, right AOP_LIT=0x03, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2816:genMultOneByte *{*
;; ***	genMultOneByte  2818
;; 	line = 2819 result AOP_REG=r0x104A, size=2, left AOP_REG=r0x1048, size=1, right AOP_LIT=0x03, size=1
;; 	line = 2820, signs: result AOP_REG=u, left AOP_REG=u, right AOP_LIT=u
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1384:mov2w
_00110_DS_
	.line	43; "push_button.c"	pb_info[pb].state = initial_state;
	MOVLW	0x03
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2840:genMultOneByte
;; ***	popRegFromIdx,1042  , rIdx=0x7f
	MOVWF	STK00
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x1048 
	MOVF	r0x1018,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1433:call_libraryfunc
	PAGESEL	__mulchar
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1435:call_libraryfunc
	CALL	__mulchar
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1437:call_libraryfunc
	PAGESEL	$
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1393:movwf
;;	1109 rIdx = r0x104A 
	MOVWF	r0x101A
;; ***	addSign  861
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:862:addSign *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:881:addSign
;;	1109 rIdx = r0x104B 
	CLRF	r0x101B
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;; ***	genPlus  611
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:612:genPlus *{*
;;	613
;;	aopForRemat 392
;;	418: rname _pb_info, val 0, const = 0
;;	694 register type nRegs=2
;;	694 register type nRegs=2
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_pb_info
;; 	line = 618 result AOP_REG=r0x104A, size=2, left AOP_PCODE=_pb_info, size=2, right AOP_REG=r0x104A, size=2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:142:genPlusIncr *{*
;; ***	genPlusIncr  144
;; 	result AOP_REG, left AOP_PCODE, right AOP_REG
;; ***	genPlus  717
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_pb_info
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:726:genPlus
;;	1109 rIdx = r0x104A 
	MOVF	r0x101A,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:735:genPlus
	ADDLW	(_pb_info + 0)
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:736:genPlus
;;	1109 rIdx = r0x104A 
	MOVWF	r0x101A
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:771:genPlus
	MOVLW	high (_pb_info + 0)
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:772:genPlus
;;	1109 rIdx = r0x1048 
	MOVWF	r0x1018
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:774:genPlus
;;	1109 rIdx = r0x104B 
	MOVF	r0x101B,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:775:genPlus
	BTFSC	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:776:genPlus
;;	1109 rIdx = r0x104B 
	INCFSZ	r0x101B,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:777:genPlus
;;	1109 rIdx = r0x1048 
	ADDWF	r0x1018,F
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;; ***	genPlus  611
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:612:genPlus *{*
;;	694 register type nRegs=2
;;	694 register type nRegs=2
;; 	line = 618 result AOP_REG=r0x104B, size=2, left AOP_REG=r0x104A, size=2, right AOP_LIT=0x02, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:142:genPlusIncr *{*
;; ***	genPlusIncr  144
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  156
;; 	genPlusIncr  180
;;	adding lit to something. size 2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:269:genAddLit *{*
;; ***	genAddLit  270
;;  left and result aren't same	genAddLit  514
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:546:genAddLit
	MOVLW	0x02
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:547:genAddLit
;;	1109 rIdx = r0x104A 
	ADDWF	r0x101A,W
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:253:emitMOVWF *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:257:emitMOVWF
;;	1109 rIdx = r0x104B 
	MOVWF	r0x101B
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:584:genAddLit
;;	1109 rIdx = r0x104C 
	CLRF	r0x101C
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:585:genAddLit
;;	1109 rIdx = r0x104C 
	RLF	r0x101C,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:586:genAddLit
;;	1109 rIdx = r0x1048 
	MOVF	r0x1018,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:587:genAddLit
;;	1109 rIdx = r0x104C 
	ADDWF	r0x101C,F
;; ***	addSign  861
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:862:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6686:genPointerSet *{*
;; ***	genPointerSet  6687
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6505:genNearPointerSet *{*
;; ***	genNearPointerSet  6506
;;	694 register type nRegs=2
;; ***	genNearPointerSet  6521
;;	694 register type nRegs=1
;; 	line = 6523 result AOP_REG=r0x104B, size=2, left -=-, size=0, right AOP_REG=r0x1049, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x104B 
	MOVF	r0x101B,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5602:setup_fsr
	MOVWF	FSR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5553:SetIrp *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5580:SetIrp
	BCF	STATUS,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5583:SetIrp
	BTFSC	r0x101C,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5584:SetIrp
	BSF	STATUS,7
;; ***	genNearPointerSet  6548
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6564:genNearPointerSet
;;	1109 rIdx = r0x1049 
	MOVF	r0x1019,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6569:genNearPointerSet
	MOVWF	INDF
;; ***	genNearPointerSet  6577
;; ***	genNearPointerSet  6603
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3547:genCmpGt *{*
;; ***	genCmpGt  3548
;;	694 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3294:genCmp *{*
;;swapping arguments (AOP_TYPEs 1/2)
;;unsigned compare: left >= lit(0x4=4), size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3265:pic14_mov2w_regOrLit
	.line	46; "push_button.c"	switch (initial_state)
	MOVLW	0x04
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3432:genCmp
;;	1109 rIdx = r0x1049 
	SUBWF	r0x1019,W
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3237:genSkipc *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3242:genSkipc
	BTFSC	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3246:genSkipc
;; ***	popGetLabel  key=12, label offset 4
	GOTO	_00116_DS_
;;genSkipc:3247: created from rifx:027A5DF4
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7071:genJumpTab *{*
;; ***	genJumpTab  7072
;;	694 register type nRegs=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7087:genJumpTab
;; ***	popGetLabel  key=23, label offset 4
	MOVLW	HIGH(_00127_DS_)
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7088:genJumpTab
	MOVWF	PCLATH
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7089:genJumpTab
;; ***	popGetLabel  key=23, label offset 4
	MOVLW	_00127_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7090:genJumpTab
;;	1109 rIdx = r0x1049 
	ADDWF	r0x1019,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7091:genJumpTab
	BTFSC	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7092:genJumpTab
	INCF	PCLATH,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7093:genJumpTab
	MOVWF	PCL
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7102:genJumpTab
;; ***	popGetLabel  key=7, label offset 4
_00127_DS_
	GOTO	_00112_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7102:genJumpTab
;; ***	popGetLabel  key=10, label offset 4
	GOTO	_00114_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7102:genJumpTab
;; ***	popGetLabel  key=9, label offset 4
	GOTO	_00114_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7102:genJumpTab
;; ***	popGetLabel  key=8, label offset 4
	GOTO	_00112_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6686:genPointerSet *{*
;; ***	genPointerSet  6687
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6505:genNearPointerSet *{*
;; ***	genNearPointerSet  6506
;;	694 register type nRegs=2
;; ***	genNearPointerSet  6521
;; 	line = 6523 result AOP_REG=r0x104A, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x104A 
_00112_DS_
	.line	50; "push_button.c"	pb_info[pb].samples[0] = PB_RELEASED_VOLTAGE;
	MOVF	r0x101A,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5602:setup_fsr
	MOVWF	FSR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5553:SetIrp *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5580:SetIrp
	BCF	STATUS,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5583:SetIrp
	BTFSC	r0x1018,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5584:SetIrp
	BSF	STATUS,7
;; ***	genNearPointerSet  6548
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6560:genNearPointerSet
	MOVLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6569:genNearPointerSet
	MOVWF	INDF
;; ***	genNearPointerSet  6577
;; ***	genNearPointerSet  6603
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;; ***	genPlus  611
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:612:genPlus *{*
;;	694 register type nRegs=2
;;	694 register type nRegs=2
;; 	line = 618 result AOP_REG=r0x1049, size=2, left AOP_REG=r0x104A, size=2, right AOP_LIT=0x01, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:142:genPlusIncr *{*
;; ***	genPlusIncr  144
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  156
;; 	genPlusIncr  180
;;	adding lit to something. size 2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:269:genAddLit *{*
;; ***	genAddLit  270
;;  left and result aren't same	genAddLit  514
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:546:genAddLit
	.line	51; "push_button.c"	pb_info[pb].samples[1] = PB_RELEASED_VOLTAGE;
	MOVLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:547:genAddLit
;;	1109 rIdx = r0x104A 
	ADDWF	r0x101A,W
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:253:emitMOVWF *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:257:emitMOVWF
;;	1109 rIdx = r0x1049 
	MOVWF	r0x1019
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:584:genAddLit
;;	1109 rIdx = r0x104B 
	CLRF	r0x101B
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:585:genAddLit
;;	1109 rIdx = r0x104B 
	RLF	r0x101B,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:586:genAddLit
;;	1109 rIdx = r0x1048 
	MOVF	r0x1018,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:587:genAddLit
;;	1109 rIdx = r0x104B 
	ADDWF	r0x101B,F
;; ***	addSign  861
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:862:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6686:genPointerSet *{*
;; ***	genPointerSet  6687
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6505:genNearPointerSet *{*
;; ***	genNearPointerSet  6506
;;	694 register type nRegs=2
;; ***	genNearPointerSet  6521
;; 	line = 6523 result AOP_REG=r0x1049, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x1049 
	MOVF	r0x1019,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5602:setup_fsr
	MOVWF	FSR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5553:SetIrp *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5580:SetIrp
	BCF	STATUS,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5583:SetIrp
	BTFSC	r0x101B,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5584:SetIrp
	BSF	STATUS,7
;; ***	genNearPointerSet  6548
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6560:genNearPointerSet
	MOVLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6569:genNearPointerSet
	MOVWF	INDF
;; ***	genNearPointerSet  6577
;; ***	genNearPointerSet  6603
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2778:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2780:genGoto
;; ***	popGetLabel  key=12, label offset 4
	.line	52; "push_button.c"	break;
	GOTO	_00116_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6686:genPointerSet *{*
;; ***	genPointerSet  6687
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6505:genNearPointerSet *{*
;; ***	genNearPointerSet  6506
;;	694 register type nRegs=2
;; ***	genNearPointerSet  6521
;; 	line = 6523 result AOP_REG=r0x104A, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x104A 
_00114_DS_
	.line	55; "push_button.c"	pb_info[pb].samples[0] = PB_PRESSED_VOLTAGE;
	MOVF	r0x101A,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5602:setup_fsr
	MOVWF	FSR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5553:SetIrp *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5580:SetIrp
	BCF	STATUS,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5583:SetIrp
	BTFSC	r0x1018,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5584:SetIrp
	BSF	STATUS,7
;; ***	genNearPointerSet  6548
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6560:genNearPointerSet
	MOVLW	0x00
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6569:genNearPointerSet
	MOVWF	INDF
;; ***	genNearPointerSet  6577
;; ***	genNearPointerSet  6603
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;; ***	genPlus  611
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:612:genPlus *{*
;;	694 register type nRegs=2
;;	694 register type nRegs=2
;; 	line = 618 result AOP_REG=r0x104A, size=2, left AOP_REG=r0x104A, size=2, right AOP_LIT=0x01, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:142:genPlusIncr *{*
;; ***	genPlusIncr  144
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  156
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:168:genPlusIncr
;;	1109 rIdx = r0x104A 
	.line	56; "push_button.c"	pb_info[pb].samples[1] = PB_PRESSED_VOLTAGE;
	INCF	r0x101A,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:172:genPlusIncr
	BTFSC	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:173:genPlusIncr
;;	1109 rIdx = r0x1048 
	INCF	r0x1018,F
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6686:genPointerSet *{*
;; ***	genPointerSet  6687
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6505:genNearPointerSet *{*
;; ***	genNearPointerSet  6506
;;	694 register type nRegs=2
;; ***	genNearPointerSet  6521
;; 	line = 6523 result AOP_REG=r0x104A, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x104A 
	MOVF	r0x101A,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5602:setup_fsr
	MOVWF	FSR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5553:SetIrp *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5580:SetIrp
	BCF	STATUS,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5583:SetIrp
	BTFSC	r0x1018,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5584:SetIrp
	BSF	STATUS,7
;; ***	genNearPointerSet  6548
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6560:genNearPointerSet
	MOVLW	0x00
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6569:genNearPointerSet
	MOVWF	INDF
;; ***	genNearPointerSet  6577
;; ***	genNearPointerSet  6603
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2528:genEndFunction *{*
;; ***	genEndFunction  2530
_00116_DS_
	.line	58; "push_button.c"	}
	RETURN	
; exit point of _PB_Init
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7426:genpic14Code *{*
