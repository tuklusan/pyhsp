; Py-ZX-HS4T SJASMPlus source
; Generated from the exact flat Z80 image; DB is used for opaque bytes.
        ORG $6085

        JP L7604
        JP L6230
L6094:
        JP L6245
        JP L6499
        JP L6273
L609D:
	jr L60D4
        JP L6528
        CALL L6541
        JP $765A
        CALL L6541
L60AC:
        JP L6528
        JP $784A
        JP $7BD9
        JP $76E4
        JP $76E8
        JP $7EFF
        JP $7F0B
        JP $7F3A
        JP $7F37
        LD C,B
        AND A
        JR Z,L60CB
L60CB:
	jr L611B
L60CE:
        JP L6807
        JP $8920
L60D4:
        DB $FD
        LD HL,$5C3A
        LD HL,$66B3
        LD ($7529),HL
        LD HL,$7529
        LD ($5C3D),HL
        CALL L6101
        JR Z,L60EC
        LD ($5C88),A
L60EC:
        LD A,$02
        LD ($6140),A
L60F1:
        LD A,$02
L60F3:
        PUSH HL
        LD HL,($5C8F)
        PUSH HL
        CALL L6107
        POP HL
        LD ($5C8F),HL
        POP HL
        RET
L6101:
        LD A,($654F)
        CP $20
        RET
L6107:
        CP $02
        JP NZ,$1601
        LD H,A
        CALL L6101
        LD A,H
        JP Z,$1601
        LD HL,$6077
        LD ($5C51),HL
        RET
L611B:
        LD ($6550),SP
        DB $FD
        PUSH HL
        DB $FD
        LD HL,$5C3A
        PUSH BC
        PUSH DE
        PUSH AF
        PUSH HL
        DB $FD
        LD (HL),$02
        NOP
        INC A
        CP $10
        JR Z,L6146
        DEC A
        CP $10
        JR NZ,L6146
        LD A,($6140)
        XOR $01
        LD ($6140),A
        LD A,$02
        CALL L60F3
        JR L617A
L6146:
        CP $0C
        JR NZ,L6165
        LD A,($6140)
        CP $02
        JR Z,L6156
        LD A,$0C
        RST $10
        JR L617A
L6156:
        LD HL,$4000
        LD (HL),$00
        LD DE,$4001
        LD BC,$17FF
        LDIR
        JR L617A
L6165:
        PUSH AF
        LD A,($6140)
        CALL L60F3
        POP AF
        EXX
        CP $08
        JR NZ,L6178
        RST $10
        LD A,$20
        RST $10
        LD A,$08
L6178:
        RST $10
        EXX
L617A:
        DI
        DB $FD
        LD (HL),$52
        RST $38
        POP HL
        POP AF
        POP DE
        POP BC
        DB $FD
        POP HL
        RET
L6186:
        DB $FD
        PUSH HL
        DB $FD
        LD HL,$5C3A
        PUSH BC
        PUSH DE
        PUSH HL
        PUSH AF
        LD A,$02
        CALL L60F3
L6195:
        EXX
        LD A,$14
        RST $10
        LD A,$01
        RST $10
        LD A,$12
        RST $10
        LD A,$01
        RST $10
        POP AF
        PUSH AF
        CP $5F
        JR NZ,L61B2
        DB $FD
        SLL B
        LD E,(HL)
        LD A,$4C
        JR Z,L61B2
        LD A,$43
L61B2:
        RST $10
        LD A,$14
        RST $10
        XOR A
        RST $10
        LD A,$12
        RST $10
        XOR A
        RST $10
        EXX
L61BE:
        CALL $6224
        JR NZ,L61CD
        LD DE,$0A00
L61C6:
        DEC DE
        LD A,D
        OR E
        JR NZ,L61C6
        JR L61BE
L61CD:
        CALL L658C
        LD A,($5C08)
        CP $06
        JR Z,L61FC
        LD B,$0C
        LD HL,$620C
L61DC:
        CP (HL)
        INC HL
        JR Z,L6207
        INC HL
        DJNZ L61DC
L61E3:
        POP HL
        PUSH AF
        DB $DD
        PUSH HL
        DB $FD
        LD E,(HL)
        RST $38
        LD D,$00
        LD HL,$00C8
        CALL $03B5
        DB $DD
        POP HL
        POP AF
L61F5:
        DI
        POP HL
        POP DE
        POP BC
        DB $FD
        POP HL
        RET
L61FC:
        LD HL,$5C6A
        LD A,$08
        XOR (HL)
        LD (HL),A
        POP AF
        PUSH AF
        JR L6195
L6207:
        LD A,(HL)
        JR L61E3
        NOP
        NOP
        EX AF,AF'
        JR L621B
        EX AF,AF'
        DEC BC
        INC C
        RLCA
        INC BC
        ADD A,$5B
        PUSH BC
        LD E,L
        JP PO,$C37E
L621B:
        LD A,H
        CALL $CC5C
        LD A,E
        BIT 7,L
L6222:
        INC B
        DJNZ L6222
        RLC C
        XOR (HL)
        CALL $02BF
        DB $FD
        RLC C
        LD L,(HL)
        RET
L6230:
        DB $FD
        PUSH HL
        PUSH BC
        PUSH DE
        PUSH HL
        DB $FD
        LD HL,$5C3A
        CALL $6224
        LD A,($5C08)
        SCF
        JR NZ,L61F5
        XOR A
        JR L61F5
L6245:
        LD A,$7F
        IN A,($FE)
        RRA
        CCF
        RET NC
        LD A,$FE
        IN A,($FE)
        RRA
        CCF
        RET
L6253:
        PUSH HL
        PUSH BC
        EX DE,HL
        LD BC,$000C
        CP C
        JR NC,L625D
        LD C,A
L625D:
        LD DE,$648C
        LDIR
        LD A,$0D
        LD (DE),A
        POP BC
        POP HL
        LD A,($648D)
        CP $3A
        LD DE,$648C
        RET NZ
        INC DE
        INC DE
        RET
L6273:
        CALL L6253
        JR NZ,L6292
        DB $FD
        PUSH HL
        DB $FD
        LD HL,$5C3A
        DB $DD
        PUSH HL
        PUSH HL
        CALL L64BA
        POP DE
        PUSH DE
        CALL L63C6
        POP DE
        ADD HL,DE
        EX DE,HL
        DB $DD
        POP HL
        DI
        DB $FD
        POP HL
        RET
L6292:
        DB $DD
        PUSH HL
        PUSH HL
        PUSH DE
L6296:
        LD DE,$0011
        XOR A
        CALL L631B
        LD A,($7582)
        CP $03
        JR NZ,L6296
        LD HL,($758D)
        LD DE,$0002
        OR A
        SBC HL,DE
        JR NZ,L62C7
        DB $DD
        LD HL,$6526
        LD A,$FF
        CALL L631F
        LD DE,$0011
        XOR A
        CALL L631B
        LD HL,$7582
        LD A,(HL)
        CP $03
        JR NZ,L6296
L62C7:
        LD HL,$7583
        POP DE
        PUSH DE
        LD B,$08
        LD A,(DE)
        CP $0D
        JR Z,L62DF
L62D3:
        LD A,(DE)
        CP $0D
        JR Z,L6311
        CP (HL)
        JR NZ,L62E4
        INC HL
        INC DE
        DJNZ L62D3
L62DF:
        LD HL,$6352
        JR L62E7
L62E4:
        LD HL,$635A
L62E7:
        PUSH AF
        XOR A
        LD ($758C),A
        CALL L6628
        LD HL,$7583
        CALL L6628
        CALL L660C
        POP AF
        JR NZ,L6296
        POP DE
        LD DE,($758D)
        DB $DD
        POP HL
        DB $DD
        PUSH HL
        PUSH DE
        LD A,$FF
        CALL L631F
        POP DE
        POP HL
        ADD HL,DE
        EX DE,HL
        DB $DD
        POP HL
        RET
L6311:
        LD A,$20
        CP (HL)
        JR NZ,L62E4
        INC HL
        DJNZ L6311
        JR L62DF
L631B:
        DB $DD
        LD HL,$7582
L631F:
        PUSH AF
        DB $FD
        PUSH HL
        DB $DD
        PUSH HL
        DB $FD
        LD HL,$5C3A
        SCF
        CALL $0556
        DB $DD
        POP HL
        DI
        DB $FD
        POP HL
        JR NC,L6335
        POP AF
        RET
L6335:
        POP AF
        OR A
        JR Z,L631F
        LD HL,$6345
        CALL L60F1
        CALL L6628
	jp L6528
        DEC C
        LD D,H
        LD H,C
        LD (HL),B
        LD H,L
        JR NZ,$6391
        LD (HL),D
        LD L,A
        LD (HL),D
        DEC C
        NOP
        DEC C
        LD D,L
        LD (HL),E
        LD L,C
        LD L,(HL)
        LD H,A
        JR NZ,L635A
L635A:
        DEC C
        LD B,(HL)
        LD L,A
        LD (HL),L
        LD L,(HL)
        JR NZ,L6362
L6362:
        CALL L6386
        RET Z
        DB $DD
        RR B
        ADD A,(HL)
        RST $08
        INC HL
        DI
        LD HL,$6376
        CALL L6628
	jp L6528
        LD B,(HL)
        LD L,C
        LD L,H
        LD H,L
        JR NZ,L63EA
        LD L,A
        LD (HL),H
        JR NZ,L63E6
        LD L,A
        LD (HL),L
        LD L,(HL)
        DEC C
        NOP
L6386:
        LD A,($648C)
        SUB $30
        LD ($5CD6),A
        XOR A
        LD B,A
        LD ($5CD7),A
        LD HL,$648E
        LD ($5CDC),HL
        LD C,$FF
L639B:
        LD A,(HL)
        INC HL
        INC C
        OR A
        JR NZ,L639B
        LD ($5CDA),BC
        EI
        EXX
        PUSH HL
        RST $08
        LD ($D9E1),HL
        DB $DD
        LD ($648A),HL
        DB $DD
        RR B
        LD B,(HL)
        RET
L63B5:
        RST $08
        DEC H
        XOR A
        DB $DD
        LD (HL),A
        DEC BC
        DB $DD
        LD (HL),A
        INC C
        RET
L63BF:
        DB $DD
        LD HL,($648A)
        RST $08
        INC HL
        RET
L63C6:
        DB $DD
        PUSH HL
        PUSH DE
        CALL L6362
        POP DE
        PUSH DE
L63CE:
        DB $DD
        LD B,(HL)
        DB $DD
        LD C,(HL)
        LD B,L
        PUSH DE
        DB $DD
        LD DE,$0052
        ADD HL,DE
        POP DE
        LD A,B
        OR C
        JR Z,L63F0
        LDIR
        DB $DD
        BIT 0,E
L63E6:
        LD C,(HL)
        JR NZ,L63F0
        PUSH DE
L63EA:
        CALL L63B5
        POP DE
        JR L63CE
L63F0:
        EX DE,HL
        POP DE
        OR A
        SBC HL,DE
        PUSH HL
        CALL L63BF
        POP HL
        DB $DD
        POP HL
        RET
        CALL L6253
        JP NZ,L64D0
        DB $FD
        PUSH HL
        DB $FD
        LD HL,$5C3A
        DB $DD
        PUSH HL
        PUSH BC
        PUSH HL
        CALL L64BA
        CALL L6477
        DB $DD
        BIT 0,E
        SUB $E1
        LD D,H
        LD E,L
        LD BC,$FFFB
        ADD HL,BC
        LD (HL),D
        DEC HL
        LD (HL),E
        DEC HL
        POP DE
        LD (HL),D
        DEC HL
        LD (HL),E
        DEC HL
        LD (HL),$03
        LD BC,$0009
        EX DE,HL
        ADD HL,BC
        CALL L643F
        JP L64B4
L6434:
        PUSH HL
        PUSH DE
        CALL L6477
        DB $DD
        BIT 0,E
        SUB (HL)
        POP DE
        POP HL
L643F:
        CALL L6445
        JP L63BF
L6445:
        LD BC,$0200
        DB $DD
        LD (HL),C
        DEC BC
        DB $DD
        LD (HL),B
        INC C
        AND A
        SBC HL,BC
        JR NC,L645E
        ADD HL,BC
        DB $DD
        BIT 0,E
        ADC A,$DD
        LD (HL),L
        DEC BC
        DB $DD
        LD (HL),H
        INC C
L645E:
        PUSH HL
        PUSH DE
        LD DE,$0052
        LD HL,($648A)
        ADD HL,DE
        POP DE
        EX DE,HL
        LDIR
        PUSH HL
        RST $08
        LD H,$D1
        POP HL
        DB $DD
        BIT 0,E
        LD C,(HL)
        JR Z,L6445
        RET
L6477:
        CALL L6386
        DB $DD
        LD (HL),$0D
        NOP
        RET NZ
        CALL L63BF
        EXX
        PUSH HL
        RST $08
        INC H
        POP HL
        EXX
        JR L6477
        NOP
        NOP
        DEC C
        DEC C
        DEC C
        DEC C
        DEC C
        DEC C
        DEC C
        DEC C
        DEC C
        DEC C
        DEC C
        DEC C
        DEC C
L6499:
        CALL L6253
        JR NZ,L64D0
        DB $FD
        PUSH HL
        DB $FD
        LD HL,$5C3A
        DB $DD
        PUSH HL
        PUSH BC
        PUSH HL
        CALL L64BA
        POP DE
        PUSH DE
        LD H,B
        LD L,C
        CALL L6434
        POP DE
        POP HL
L64B4:
        DB $DD
        POP HL
        DI
        DB $FD
        POP HL
        RET
L64BA:
        PUSH DE
        PUSH BC
        RST $08
        LD SP,$D1C1
        CALL L64C6
        XOR A
        LD (DE),A
        RET
L64C6:
        LD A,(DE)
        CP $0D
        RET Z
        CP $20
        RET Z
        INC DE
        JR L64C6
L64D0:
        DB $DD
        PUSH HL
        PUSH HL
        PUSH BC
        LD HL,$7582
        LD (HL),$03
        INC HL
        LD B,$08
L64DC:
        LD A,(DE)
        CP $0D
        JR Z,L64EC
        CP $20
        JR Z,L64EC
        LD (HL),A
        INC HL
        INC DE
        DJNZ L64DC
        JR L64F1
L64EC:
        LD (HL),$20
        INC HL
        DJNZ L64EC
L64F1:
        LD B,$02
L64F3:
        LD (HL),$20
        INC HL
        DJNZ L64F3
        POP BC
        LD ($758D),BC
        POP HL
        LD ($758F),HL
        PUSH HL
        PUSH BC
        XOR A
        LD DE,$0011
        CALL L6515
        POP DE
        DB $DD
        POP HL
        LD A,$FF
        CALL L6519
        DB $DD
        POP HL
        RET
L6515:
        DB $DD
        LD HL,$7582
L6519:
        DB $FD
        PUSH HL
        DB $FD
        LD HL,$5C3A
        CALL $04C2
        DI
        DB $FD
        POP HL
        RET
        NOP
        NOP
L6528:
        CALL L6587
        LD HL,($6552)
        EXX
        DB $FD
        LD HL,$5C3A
        LD HL,($6556)
        LD ($5C3D),HL
        EI
        LD A,$02
        CALL $1601
        RST $08
        RST $38
L6541:
        DI
        LD HL,($5C3D)
        LD ($6556),HL
        EXX
        LD ($6552),HL
        RET
        LD A,H
        LD H,B
        JR NZ,L6599
        RST $38
        LD E,B
        DAA
        LD A,E
        LD H,B
        LD A,B
        LD H,B
        LD D,(HL)
        RST $38
L655A:
        LD A,$C3
        LD ($60CE),A
        LD ($60CB),A
        LD HL,$608B
        LD ($60CC),HL
        LD HL,$6807
        LD ($60CF),HL
        LD HL,$667F
        LD ($6089),HL
        LD HL,$752D
        LD ($752B),HL
        LD HL,$000D
        LD ($752D),HL
        RET
        CALL L6587
	jp L611B
L6587:
        LD A,$5F
	jp L6186
L658C:
        LD A,$08
	jp L611B
        PUSH HL
        LD B,$05
        BIT 7,H
        JR Z,L65A0
        EX DE,HL
L6599:
        LD HL,$0000
        OR A
        SBC HL,DE
        INC B
L65A0:
        DB $FD
        LD HL,$65F7
L65A4:
        DB $FD
        LD E,(HL)
        NOP
        DB $FD
        LD D,(HL)
        LD BC,$EDB7
        JR NC,L65B7
        ADD HL,DE
        DB $FD
        INC HL
        DB $FD
        INC HL
        DJNZ L65A4
        INC B
L65B7:
        LD L,A
        LD A,B
        CALL $6601
        POP HL
        BIT 7,H
        JR Z,L65CD
        LD A,$2D
        CALL L60CB
        OR A
        EX DE,HL
        LD HL,$0000
        SBC HL,DE
L65CD:
        DB $FD
        LD HL,$65F7
        LD BC,$0530
L65D4:
        LD A,$30
        DB $FD
        LD E,(HL)
        NOP
        DB $FD
        LD D,(HL)
        LD BC,$EDB7
        JR C,L65E4
        INC A
        JR $65DC
L65E4:
        ADD HL,DE
        CP C
        JR Z,L65EC
        CALL L60CB
        DEC C
L65EC:
        DB $FD
        INC HL
        DB $FD
        INC HL
        DJNZ L65D4
        CP C
        RET NZ
	jp L611B
        DJNZ L6620
        RET PE
        INC BC
        NOP
        LD A,(BC)
        NOP
        LD BC,$9500
        RET NC
        NEG
L6605:
        LD B,A
L6606:
        CALL L6610
        DJNZ L6606
        RET
L660C:
        LD A,$0D
        JR L6612
L6610:
        LD A,$20
L6612:
	jp L611B
L6615:
        LD A,(HL)
        INC HL
        CALL L60CB
        DJNZ L6615
        RET
        OR A
        JR NZ,L6625
L6620:
        LD HL,$665B
        JR L6628
L6625:
        LD HL,$6661
L6628:
        LD A,(HL)
        INC HL
        OR A
        RET Z
        CALL L60CB
        JR L6628
        DEC L
        LD A,E
        JR Z,L6650
        DEC L
        JR Z,L6647
        DEC L
        JR Z,L6642
        DEC L
        JR Z,L6642
        LD B,L
        CALL L6606
L6642:
        LD A,D
        CALL L6647
        LD A,E
L6647:
        PUSH AF
        RRCA
        RRCA
        RRCA
        RRCA
        CALL L6650
        POP AF
L6650:
        AND $0F
        ADD A,$90
        DAA
        ADC A,$40
        DAA
	jp L611B
        LD B,(HL)
        LD B,C
        LD C,H
        LD D,E
        LD B,L
        NOP
        LD D,H
        LD D,L
        LD B,L
        NOP
        LD DE,$66D3
	jr L667F
L666B:
        POP BC
L666C:
        POP BC
        LD DE,$6727
	jr L667F
L6672:
        POP BC
        POP BC
L6674:
        LD DE,$6716
	jr L667F
L6679:
        LD DE,$66CA
L667C:
L667F:
        EX DE,HL
        CALL L6628
        LD HL,$66C2
        JR L66A9
L6688:
        LD DE,$66DE
	jr L667F
        LD DE,$66E8
	jr L667F
        LD DE,$66F6
	jr L667F
L6697:
        LD DE,$6705
	jr L667F
        CALL L6094
        RET NC
        CALL L6587
        CP $03
        RET NZ
        LD HL,$66BD
L66A9:
        CALL L6628
        POP DE
        CALL L6642
	jp L6528
        DI
        LD SP,($6550)
        LD DE,$6737
	jr L667F
        DEC C
        LD C,B
        LD H,C
        LD L,H
        LD (HL),H
        JR NZ,L6725
        LD (HL),H
        JR NZ,L6717
        LD B,E
        DEC A
        NOP
        LD C,A
        HALT
        LD H,L
        LD (HL),D
        LD H,(HL)
        LD L,H
        LD L,A
        LD (HL),A
        NOP
        LD C,A
        LD (HL),L
        LD (HL),H
        JR NZ,L6747
        LD H,(HL)
        JR NZ,L672D
        LD B,C
        LD C,L
        NOP
        CPL
        JR NZ,$6743
        LD A,C
        JR NZ,$673E
        LD H,L
        LD (HL),D
        LD L,A
        NOP
        LD L,(HL)
        LD H,L
        LD A,B
        JR NZ,L6763
        LD L,A
        JR NZ,L673F
        LD L,A
        LD (HL),A
        NOP
        LD L,(HL)
        LD H,L
        LD A,B
        JR NZ,L6771
        LD L,A
        JR NZ,L6749
        LD L,C
        LD H,A
        LD L,B
        NOP
        LD C,L
        LD H,C
        LD (HL),H
        LD L,B
        LD (HL),E
        JR NZ,L674F
        LD H,C
        LD L,H
        JR NZ,$6756
        LD (HL),D
        LD L,A
        LD (HL),D
        NOP
        LD C,(HL)
L6717:
        LD (HL),L
        LD H,D
        LD H,L
        LD (HL),D
        JR NZ,L6792
        LD L,A
        JR NZ,L678E
        LD H,C
        LD (HL),D
        LD H,A
L6725:
        LD H,L
        NOP
        LD C,(HL)
        LD (HL),L
        LD H,D
        LD H,L
        LD (HL),D
L672D:
        JR NZ,$6794
        LD A,B
        LD (HL),B
        LD H,L
        LD H,E
        LD (HL),H
        LD H,L
        NOP
        LD D,E
        LD A,C
        LD (HL),E
        LD (HL),H
        LD H,L
        JR NZ,L6782
L673F:
        LD H,C
        LD L,H
        JR NZ,L6789
        LD (HL),D
        LD L,A
L6747:
        LD (HL),D
        NOP
L6749:
        DB $DD
        LD D,H
        DB $DD
        LD E,L
L674D:
        EX DE,HL
        LD E,(HL)
L674F:
        INC HL
        LD D,(HL)
        DJNZ L674D
        RET
        XOR A
        SBC HL,DE
        ADD HL,DE
        JR NC,L675B
        EX DE,HL
L675B:
        OR D
        SCF
        RET NZ
        OR E
        LD E,D
        JR NZ,L6769
        EX DE,HL
L6763:
        RET
L6764:
        EX DE,HL
        ADD HL,DE
        EX DE,HL
L6767:
        ADD HL,HL
        RET C
L6769:
        RRA
        JR NC,L6767
        OR A
        JR NZ,L6764
        ADD HL,DE
        RET
L6771:
        JP L6679
        LD A,D
        XOR H
        LD B,A
        CALL L67A6
        EX DE,HL
        CALL L67A6
        XOR A
        SBC HL,DE
        ADD HL,DE
L6782:
        JR NC,L6785
        EX DE,HL
L6785:
        OR D
        JR NZ,L6771
        OR E
L6789:
        LD E,D
	jr nz,L6795
        EX DE,HL
L678E:
        RET
L678F:
        EX DE,HL
        ADD HL,DE
        EX DE,HL
L6792:
        ADD HL,HL
        JR C,L6771
L6795:
        RRA
        JR NC,L6792
        OR A
        JR NZ,L678F
        ADC HL,DE
        JR C,L6771
        JP M,L6771
        OR B
        RET P
        JR L67A9
L67A6:
        LD A,H
        OR A
        RET P
L67A9:
        XOR A
        SUB L
        LD L,A
        LD A,$00
        SBC A,H
        LD H,A
        RET
        LD A,H
        OR L
        JP Z,L6688
        LD A,H
        PUSH DE
        XOR D
        PUSH AF
        XOR A
        OR H
        CALL P,L67A9
        LD B,H
        LD C,L
        LD HL,$0000
        EX DE,HL
        CALL L67A6
        OR L
	jr z,L67E1
        LD A,$11
L67CE:
        ADD HL,HL
        DEC A
        JR NC,L67CE
        EX DE,HL
L67D3:
        ADC HL,HL
        ADD HL,BC
        JR C,L67DA
        SBC HL,BC
L67DA:
        RL E
        RL D
        DEC A
        JR NZ,L67D3
L67E1:
        POP AF
        EX DE,HL
        CALL M,L67A9
        EX DE,HL
        POP AF
        OR A
        RET P
        JR L67A9
L67EC:
        CALL L6800
L67EF:
        CP $30
        CCF
        RET NC
        CP $3A
        RET
        CALL L6800
        CP $0D
        LD A,$00
        RET NZ
        INC A
        RET
L6800:
        PUSH HL
        LD HL,($752B)
        LD A,(HL)
        POP HL
        RET
L6807:
        CALL L6800
L680A:
        PUSH HL
        PUSH DE
        PUSH BC
        PUSH AF
        CALL L6816
        POP AF
        POP BC
        POP DE
        POP HL
        RET
L6816:
        LD HL,($752B)
        INC HL
        LD A,(HL)
        LD ($752B),HL
        OR A
        RET NZ
        LD D,$00
        EXX
        LD HL,$752D
        LD D,$00
        PUSH HL
        CALL L6847
        POP HL
        JP NC,L60AC
        LD ($752B),HL
        LD C,$00
        CPIR
        LD (HL),$00
        RET
L683A:
        CALL L60CE
        CP $0D
        JR NZ,L683A
        RET
        LD D,$06
        LD HL,$7605
L6847:
        LD C,$51
        LD E,$00
L684B:
        LD A,($654F)
        SUB D
        LD B,A
L6850:
        EXX
        BIT 1,D
        EXX
        RET NZ
L6855:
        LD A,B
        AND $03
        JR NZ,L685E
        EXX
        RES 4,D
        EXX
L685E:
        LD A,$20
        EXX
        BIT 4,D
        JR NZ,L6874
        BIT 0,D
        EXX
        LD A,(HL)
        EXX
L686A:
        CALL Z,L6587
        BIT 7,A
        JR Z,L6874
        XOR A
        JR L686A
L6874:
        EXX
        CP $09
        JR NZ,L687F
        EXX
        SET 4,D
        EXX
        JR L685E
L687F:
        CP $18
        JR NZ,L6893
        INC E
        DEC E
        JR Z,L6850
L6887:
        CALL L68D6
        JR NZ,L6887
L688C:
        JR L684B
L688E:
        CALL L660C
        OR A
        RET
L6893:
        CP $03
        JR Z,L688E
        CP $08
        JR NZ,L68A2
L689B:
        INC E
        DEC E
        CALL NZ,L68D6
        JR L6850
L68A2:
        CP $10
        JR NZ,L68AB
        CALL L60CB
        JR L6855
L68AB:
        CP $0D
        JR Z,L68B5
        CP $20
	jr c,L6850
        CCF
L68B5:
        LD (HL),A
        INC HL
        PUSH AF
        CALL L60CB
        POP AF
        CCF
        RET C
        INC E
        DEC B
        DEC C
        JR Z,L689B
        INC B
        DEC B
	jr nz,L6850
        EXX
        DEC E
        EXX
        LD B,D
        INC B
        DEC B
        JP Z,L684B
        CALL L6606
        JR L688C
L68D6:
        LD A,($654F)
        SUB D
        CP B
        JR NZ,L68E7
        LD B,D
        INC B
        DEC B
        JR Z,L68E7
L68E2:
        CALL L658C
        DJNZ L68E2
L68E7:
        INC B
        CALL L658C
        EXX
        RES 4,D
        EXX
        DEC HL
        INC C
        DEC E
        RET
L68F3:
        ADD HL,HL
        RL E
        RL D
        PUSH DE
        PUSH HL
        ADD HL,HL
        RL E
        RL D
        ADD HL,HL
        RL E
        RL D
        POP BC
        ADD HL,BC
        EX DE,HL
        POP BC
        ADC HL,BC
        EX DE,HL
        RET
L690C:
        CALL L67EF
        JP NC,L666B
        LD HL,$0000
        LD D,H
        LD E,L
        LD B,$07
        PUSH BC
        JR L6920
L691C:
        PUSH BC
        CALL L68F3
L6920:
        SUB $30
        LD C,A
        LD B,D
        ADD HL,BC
        JR NC,L6928
        INC DE
L6928:
        CALL L67EC
        POP BC
        DEC B
        RET NC
        CALL L680A
        JR NZ,L691C
L6933:
        INC D
        CALL L67EC
        RET NC
        CALL L680A
        JR L6933
L693D:
        CALL L60CE
        CP $20
        JR Z,L693D
        CP $0D
        RET NZ
        JR L693D
        CALL L693D
        CP $2D
        JR Z,L6962
        CP $2B
L6952:
        CALL Z,L60CE
        CALL L690C
        LD A,D
        OR E
        JR NZ,L695F
        BIT 7,H
        RET Z
L695F:
        JP L6674
L6962:
        CALL L6952
        EX DE,HL
        OR A
        SBC HL,DE
        RET
L696A:
        CALL L6800
        CP $0D
        JR Z,L6979
        LD (HL),A
        INC HL
        CALL L680A
        DJNZ L696A
        RET
L6979:
        XOR A
L697A:
        LD (HL),A
        INC HL
        DJNZ L697A
        RET
        LD HL,$0002
        ADD HL,SP
        LD C,A
        XOR A
        SRL C
        RRA
        SRL C
        RRA
        SRL C
        RLA
        RLA
        RLA
        LD B,A
        INC B
        XOR A
        SCF
L6994:
        ADC A,A
        DJNZ L6994
        ADD HL,BC
        RET
        INC A
        LD B,A
L699B:
        LD A,(HL)
        OR D
        LD (HL),A
        RLC D
        JR NC,L69A3
        INC HL
L69A3:
        DJNZ L699B
        RET
        POP HL
        LD ($7509),HL
        LD B,$00
        LD L,B
        LD H,B
        OR A
        SBC HL,BC
        ADD HL,SP
        LD D,H
        LD E,L
        DEC HL
        LD SP,HL
        LD (HL),B
        LDIR
        LD HL,($7509)
        JP (HL)
        POP HL
        LD ($7509),HL
        LD HL,$0000
        ADD HL,SP
        LD D,H
        LD E,L
        ADD HL,BC
        LD B,C
L69C9:
        LD A,(DE)
        LD (BC),A
        NOP
        LD (HL),A
        INC HL
        INC DE
        DJNZ L69C9
        EX DE,HL
        LD SP,HL
        LD HL,($7509)
        JP (HL)
        POP HL
        LD ($7509),HL
        LD HL,$0000
        ADD HL,SP
        LD D,H
        LD E,L
        ADD HL,BC
        LD B,C
L69E3:
        CALL $0000
        INC HL
        INC DE
        DJNZ L69E3
        LD A,$01
L69EC:
        LD SP,HL
        LD HL,($7509)
        JP (HL)
        LD A,(DE)
        CP (HL)
L69F3:
        RET Z
L69F4:
        INC HL
        DJNZ L69F4
        XOR A
        JR L69EC
        LD A,(DE)
        CPL
        AND (HL)
        JR L69F3
        EX DE,HL
        LD A,(DE)
        CPL
        AND (HL)
        EX DE,HL
        JR L69F3
        OR A
        SBC HL,DE
        LD A,$80
        JP PE,L6A19
L6A0E:
        AND H
        RLCA
        RET
        OR A
        SBC HL,DE
        LD A,$80
        JP PE,L6A0E
L6A19:
        AND H
        RLCA
        XOR $01
        RET
        PUSH HL
        LD HL,$FFCF
        LD DE,($750B)
        OR A
        SBC HL,DE
        EX DE,HL
        ADD HL,BC
        LD ($750B),HL
        POP HL
        LD (HL),E
        INC HL
        LD (HL),D
        RET
L6A33:
        POP AF
L6A34:
        POP BC
        POP DE
        POP HL
        PUSH BC
        RET
L6A39:
        BIT 6,H
        JR Z,L6A34
        DB $FD
        LD HL,$0000
        DB $FD
        ADD HL,SP
        LD A,H
        DB $FD
        LD B,(HL)
        DEC B
        BIT 6,B
        JR Z,L6A8F
        XOR B
        PUSH AF
        PUSH DE
        LD A,D
        LD D,B
        LD B,E
        DB $FD
        LD E,(HL)
        INC B
        DB $FD
        SUB (HL)
        INC BC
        JP PE,L6A94
        JP M,L6AB2
        DB $FD
        LD C,(HL)
        LD (BC),A
        JR Z,L6AC1
L6A62:
        PUSH HL
        RES 7,D
        RES 7,H
L6A67:
        SRL D
        RR E
        RR C
        DEC A
        JR NZ,L6A67
        LD A,B
        DB $FD
        SET 7,A
        LD A,(HL)
        JR NZ,L6A99
L6A77:
        ADD A,C
        ADC HL,DE
        POP BC
        POP DE
        JP PO,L6A88
        SRL H
        RR L
        RRA
        INC D
        JP PE,L6AA9
L6A88:
        LD E,A
        LD A,B
        AND $80
        OR H
        LD H,A
L6A8E:
        POP AF
L6A8F:
        POP BC
        POP AF
        POP AF
        PUSH BC
        RET
L6A94:
        POP DE
        JR NC,L6A33
        JR L6A8E
L6A99:
        SUB C
        SBC HL,DE
L6A9C:
        POP BC
L6A9D:
        POP DE
L6A9E:
        BIT 6,H
        JR NZ,L6A88
        ADD A,A
        ADC HL,HL
        DEC D
        JP PO,L6A9E
L6AA9:
        DB $FD
        LD SP,HL
        POP BC
        POP HL
        POP HL
        PUSH BC
        JP L6679
L6AB2:
        LD C,B
        DB $FD
        LD B,(HL)
        INC BC
        DB $FD
        LD (HL),B
        DB $FD
        DB $FD
        LD B,(HL)
        LD (BC),A
        EX DE,HL
        NEG
        JR L6A62
L6AC1:
        LD A,B
        PUSH HL
        RES 7,H
        RES 7,D
        DB $FD
        SET 7,A
        LD A,(HL)
        JR Z,L6A77
        SUB C
        SBC HL,DE
        JR NZ,L6AD5
        OR A
        JR Z,L6AE5
L6AD5:
        JR NC,L6A9C
        LD DE,$0000
        EX DE,HL
        LD C,A
        POP AF
        CPL
        LD B,A
        XOR A
        SUB C
        SBC HL,DE
        JR L6A9D
L6AE5:
        LD D,H
        LD E,H
        POP AF
        POP AF
        JR L6A8E
L6AEB:
        POP BC
        PUSH HL
        PUSH DE
        PUSH BC
L6AEF:
        DB $FD
        LD HL,$0000
        DB $FD
        ADD HL,SP
        LD A,$40
        AND H
        DB $FD
        LD B,(HL)
        DEC B
        AND B
        JR Z,L6B5C
        LD A,H
        XOR B
        AND $80
        LD B,A
        DB $FD
        LD A,(HL)
        INC BC
        ADD A,D
        LD C,A
        JP PE,L6AA9
        PUSH BC
        RES 7,H
        LD C,E
        XOR A
        EX DE,HL
        DB $FD
        LD L,(HL)
        LD (BC),A
        LD B,$08
L6B16:
        RR L
        JR NC,L6B1B
        ADD A,D
L6B1B:
        RRA
        DJNZ L6B16
        RR L
        LD H,A
        DB $FD
        LD A,(HL)
        INC B
        LD B,$08
L6B26:
        RRA
        JR NC,L6B2A
        ADD HL,DE
L6B2A:
        RR H
        RR L
        DJNZ L6B26
        RRA
        LD B,$07
L6B33:
        DB $FD
        RLC L
        LD E,$30
        INC BC
        ADD A,C
        ADC HL,DE
        RR H
        RR L
        RRA
        DJNZ L6B33
        POP BC
        LD E,A
        LD D,C
        BIT 6,H
        JR NZ,L6B50
        RL E
        ADC HL,HL
        JR L6B54
L6B50:
        INC D
        JP PE,L6AA9
L6B54:
        LD A,B
        OR H
        LD H,A
        POP BC
        POP AF
        POP AF
        PUSH BC
        RET
L6B5C:
        POP HL
        POP DE
        EX (SP),HL
        LD HL,$0000
        LD E,H
        LD D,L
        RET
L6B65:
        BIT 6,H
        JP Z,L6688
        DB $FD
        LD HL,$0000
        DB $FD
        ADD HL,SP
        DB $FD
        LD B,(HL)
        DEC B
        BIT 6,B
	jr z,L6B5C
        DB $FD
        LD A,(HL)
        INC BC
        SUB D
        JP PE,L6AA9
        PUSH AF
        LD D,B
        LD C,E
        DB $FD
        LD E,(HL)
        INC B
        LD A,D
        XOR H
        AND $80
        RES 7,D
        RES 7,H
        PUSH AF
        EX DE,HL
        DB $FD
        LD A,(HL)
        LD (BC),A
        LD B,$08
L6B94:
        SUB C
        SBC HL,DE
        JR NC,L6B9C
        ADD A,C
        ADC HL,DE
L6B9C:
        DB $FD
        SET 7,H
        LD D,$87
        ADC HL,HL
        DJNZ L6B94
        LD B,$08
L6BA7:
        SBC HL,DE
        JR NC,L6BAC
        ADD HL,DE
L6BAC:
        RLA
        ADD HL,HL
        DJNZ L6BA7
        CPL
        LD L,A
        LD A,H
        LD B,$08
L6BB5:
        SUB D
        JR NC,L6BB9
        ADD A,D
L6BB9:
        RL E
        ADD A,A
        DJNZ L6BB5
        POP BC
        LD A,C
        CPL
        LD H,A
        LD A,E
        POP DE
        CPL
        BIT 7,H
        JR NZ,L6BD6
        DEC D
        JP PE,L6AA9
L6BCD:
        LD E,A
        LD A,H
        OR B
        LD H,A
        POP BC
        POP AF
        POP AF
        PUSH BC
        RET
L6BD6:
        SRL H
        RR L
        RRA
        JR L6BCD
L6BDD:
        LD A,$80
        AND H
	jr z,L6BEA
        EX DE,HL
        LD HL,$0000
        SBC HL,DE
        OR A
L6BEA:
        LD DE,$0000
        ADC HL,DE
        RET Z
        LD D,$0E
L6BF2:
        BIT 6,H
	jr nz,L6BFC
        ADD HL,HL
        DEC D
	jr L6BF2
L6BFC:
        LD E,$00
        OR H
        LD H,A
        RET
L6C01:
        BIT 6,H
        RET Z
        LD A,$80
        AND H
        LD C,A
        RES 7,H
        LD A,$0E
        SUB D
        JR Z,L6C19
        JP M,L6C23
        LD B,A
L6C13:
        SRL H
        RR L
        DJNZ L6C13
L6C19:
        INC C
        RET P
        EX DE,HL
        LD HL,$0000
        OR A
        SBC HL,DE
        RET
L6C23:
        LD HL,$0000
        RET
        PUSH HL
        PUSH DE
        LD DE,$FF00
        LD HL,$4000
        CALL L6A39
L6C32:
        BIT 6,H
        RET Z
        LD A,$80
        AND H
        LD C,A
        RES 7,H
        LD A,D
        OR A
        JP M,L6C68
        LD A,$0E
        SUB D
        JP C,L6679
        LD B,A
        XOR A
        CP E
	jr z,L6C4D
        INC A
L6C4D:
        DEC B
        INC B
	jr z,L6C5A
L6C52:
        SRL H
        RR L
        ADC A,$00
        DJNZ L6C52
L6C5A:
        INC C
        RET P
        OR A
	jr z,L6C61
        INC HL
L6C61:
        EX DE,HL
        LD HL,$0000
        SBC HL,DE
        RET
L6C68:
        INC C
        LD HL,$0000
        RET P
        DEC HL
        RET
L6C6F:
        LD HL,$4000
        LD D,L
        LD E,L
        DB $FD
        LD HL,$6C9B
L6C78:
        SRL A
        JR NC,L6C93
        PUSH AF
        DB $FD
        PUSH HL
        PUSH HL
        PUSH DE
        DB $FD
        LD H,(HL)
        NOP
        DB $FD
        LD L,(HL)
        LD BC,$5EFD
        LD (BC),A
        DB $FD
        LD D,(HL)
        INC BC
        CALL L6AEF
        DB $FD
        POP HL
        POP AF
L6C93:
        RET Z
        LD BC,$0004
        DB $FD
        ADD HL,BC
        JR L6C78
        LD D,B
        NOP
        NOP
        INC BC
        NOP
        NOP
        LD B,$4E
        JR NZ,L6CA6
L6CA6:
        DEC C
        LD E,A
        LD E,(HL)
        DJNZ L6CC5
        LD B,A
        DEC C
        CALL PO,$4E35
        JP PO,$6AD4
L6CB3:
        LD A,D
        CP $03
        RET C
        PUSH HL
        PUSH DE
        LD BC,$5000
        JR NZ,L6CC3
        OR A
        SBC HL,BC
        JR C,L6CD3
L6CC3:
        LD H,B
        LD L,C
L6CC5:
        LD DE,$0300
        CALL L6B65
        LD A,($7517)
        INC A
        LD ($7517),A
        RET
L6CD3:
        POP DE
        POP HL
        RET
L6CD6:
        POP AF
L6CD7:
        POP AF
        LD A,($7525)
        LD HL,($7519)
        LD DE,($751B)
        JP L6DE6
        LD A,E
        LD ($7525),A
        LD A,L
        LD ($7518),A
        OR A
        LD A,$FF
        JR Z,L6CF7
        JP M,L6CF7
        SUB L
        DEC A
L6CF7:
        ADD A,E
        POP HL
        POP DE
        EX (SP),HL
        LD ($7519),HL
        LD ($751B),DE
        RLC H
        PUSH AF
        RRC H
        JP P,L6D0D
        RES 7,H
        DEC A
L6D0D:
        OR A
        JP M,L6CD7
        LD ($7517),A
        PUSH HL
        PUSH DE
        LD HL,$4000
        PUSH HL
        LD H,$FF
        PUSH HL
        LD A,($7518)
        CALL L6C6F
        CALL L6B65
        CALL L6A39
        LD ($751D),HL
        LD ($751F),DE
        POP AF
        LD A,$FF
        PUSH AF
        LD A,($7517)
        LD C,A
        LD A,($7518)
        ADD A,C
        DEC A
        LD ($7518),A
        LD A,C
L6D41:
        PUSH HL
        PUSH DE
        CALL L6C6F
        CALL L6B65
        CALL L6DBC
        LD A,D
        PUSH AF
        CP $0A
        JR NC,L6CD6
        POP AF
        JP M,L6DAF
        OR A
        JR NZ,L6D6E
        LD A,($7517)
        SUB B
        JR Z,L6D6E
        LD D,A
        CALL L6610
        LD A,D
        DEC A
        LD HL,($751D)
        LD DE,($751F)
        JR L6D41
L6D6E:
        CALL L6DB4
L6D71:
        LD A,$30
        ADD A,D
        CALL L60CB
        LD A,($7517)
        CP B
        JR NZ,L6D82
        LD A,$2E
        CALL L60CB
L6D82:
        LD A,D
        LD HL,($7521)
        LD DE,($7523)
        NEG
        JR Z,L6D99
        PUSH HL
        PUSH DE
        LD L,A
        LD H,$FF
        CALL L6BDD
        CALL L6A39
L6D99:
        LD BC,$5000
        PUSH BC
        LD B,$03
        PUSH BC
        CALL L6AEF
        CALL L6DBC
        JR NC,L6D71
L6DA8:
        LD A,$30
        ADD A,D
        POP BC
	jp L611B
L6DAF:
        CALL L6DB4
        JR L6DA8
L6DB4:
        BIT 0,C
        RET Z
        LD A,$2D
	jp L611B
L6DBC:
        LD ($7521),HL
        LD ($7523),DE
        CALL L6C01
        LD D,L
        POP HL
        POP BC
        INC B
        PUSH BC
        LD A,($7518)
        CP B
        PUSH HL
        RET
L6DD1:
        LD HL,$6EF6
        CALL L6628
        LD A,($7518)
        INC A
        LD B,A
        LD A,$30
L6DDE:
        CALL L60CB
        DJNZ L6DDE
        JP L6628
L6DE6:
        SUB $08
        JP P,L6DED
L6DEB:
        LD A,$04
L6DED:
        LD ($7518),A
        SUB $05
        JR C,L6DFA
        INC A
        CALL L6605
        JR L6DEB
L6DFA:
        BIT 6,H
        JR Z,L6DD1
        BIT 7,H
        JR Z,L6E08
        RES 7,H
        LD A,$2D
        JR L6E0A
L6E08:
        LD A,$20
L6E0A:
        CALL L60CB
        LD A,D
        OR A
        PUSH HL
        PUSH DE
        LD DE,$004D
        LD H,D
        LD L,D
        JP M,L6EAF
L6E19:
        SRL A
        JR NC,L6E23
        ADD HL,DE
L6E1E:
        EX DE,HL
        ADD HL,HL
        EX DE,HL
        JR L6E19
L6E23:
        JR NZ,L6E1E
        LD A,H
        LD ($7517),A
        CALL L6C6F
        CALL L6B65
        CALL L6CB3
        PUSH HL
        PUSH DE
L6E34:
        LD A,($7518)
        ADD A,A
        ADD A,A
        LD E,A
        LD D,$00
        LD HL,$6EE2
        ADD HL,DE
        LD E,(HL)
        INC HL
        LD D,(HL)
        INC HL
        LD C,(HL)
        INC HL
        LD H,(HL)
        LD L,C
        CALL L6A39
        CALL L6CB3
        LD B,D
        INC B
        INC B
        LD D,E
        LD E,H
        LD H,L
        LD L,D
        LD D,$00
L6E57:
        ADD HL,HL
        RL E
        RL D
        DJNZ L6E57
        LD A,$30
        ADD A,D
        CALL L60CB
        LD D,$00
        LD A,$2E
        CALL L60CB
        LD A,($7518)
        INC A
        LD B,A
L6E70:
        PUSH BC
        CALL L68F3
        LD A,$30
        ADD A,D
        CALL L60CB
        LD D,$00
        POP BC
        DJNZ L6E70
        LD A,$45
        CALL L60CB
        LD A,($7517)
        OR A
        JP P,L6E92
        NEG
        LD C,A
        LD A,$2D
        JR L6E95
L6E92:
        LD C,A
        LD A,$2B
L6E95:
        CALL L60CB
        LD A,C
        LD B,$0A
        LD C,$30
L6E9D:
        SUB B
        JR C,L6EA3
        INC C
        JR L6E9D
L6EA3:
        ADD A,B
        ADD A,$30
        LD B,A
        LD A,C
        CALL L60CB
        LD A,B
	jp L611B
L6EAF:
        CPL
L6EB0:
        SRL A
        JR NC,L6EBA
        ADD HL,DE
L6EB5:
        EX DE,HL
        ADD HL,HL
        EX DE,HL
        JR L6EB0
L6EBA:
        JR NZ,L6EB5
        LD A,H
        CPL
        LD ($7517),A
        NEG
        CALL L6C6F
        CALL L6AEF
        PUSH HL
        PUSH DE
        LD A,D
        OR A
        JP P,L6E34
        LD HL,$5000
        LD DE,$0300
        CALL L6AEF
        PUSH HL
        PUSH DE
        LD HL,$7517
        DEC (HL)
        JP L6E34
        LD H,(HL)
        EI
        LD H,(HL)
        LD H,(HL)
        ADD A,L
        RET M
        EX DE,HL
        LD D,C
        LD (HL),$F5
        ADD A,L
        LD B,C
        ADC A,E
        POP AF
        IN A,($68)
        SUB $EE
        JP PO,$2053
        JR NC,L6F27
        NOP
        LD B,L
        DEC HL
        JR NC,$6F2E
        NOP
        LD A,H
        OR A
        JP M,L6697
        RET Z
        LD ($751B),DE
        LD ($7519),HL
        SRA D
        LD B,$04
L6F10:
        PUSH BC
        PUSH HL
        PUSH DE
        LD BC,($7519)
        PUSH BC
        LD BC,($751B)
        PUSH BC
        CALL L6B65
        CALL L6A39
        DEC D
        POP BC
        DJNZ L6F10
L6F27:
        RET
        CALL L693D
        CP $2D
        JR Z,L6F38
        CP $2B
        CALL Z,L60CE
        CALL L6F43
        RET
L6F38:
        CALL L60CE
        CALL L6F43
        LD A,$80
        XOR H
        LD H,A
        RET
L6F43:
        CALL L690C
        CP $2E
	jr nz,L6F98
        CALL L680A
        CALL L60CE
        CALL L67EF
        JP NC,L666C
        DEC B
        INC B
        LD C,D
        JR Z,L6F74
L6F5C:
        PUSH BC
        CALL L68F3
        SUB $30
        LD C,A
        LD B,D
        ADD HL,BC
        JR NC,L6F68
        INC E
L6F68:
        POP BC
        DEC C
        CALL L67EC
        JR NC,L6F7E
        CALL L680A
        DJNZ L6F5C
L6F74:
        CALL L67EC
        JR NC,L6F7E
        CALL L680A
        JR L6F74
L6F7E:
        LD D,C
        CP $45
        JR NZ,L6F9C
L6F83:
        PUSH DE
        CALL L680A
        CALL L60CE
        CP $2D
        JR NZ,L6F9F
        CALL L60CE
        CALL L7007
        POP AF
        SUB B
        JR L6FA9
L6F98:
        CP $45
        JR Z,L6F83
L6F9C:
        LD A,D
        JR L6FA9
L6F9F:
        CP $2B
        CALL Z,L60CE
        CALL L7007
        POP AF
        ADD A,B
L6FA9:
        LD D,$16
        LD C,A
        BIT 7,E
	jr nz,L6FFA
        XOR A
        CP E
        JR NZ,L6FBE
        CP L
        JR NZ,L6FC2
        CP H
        JR NZ,L6FC2
        LD D,$00
        RET
L6FBE:
        BIT 6,E
        JR NZ,L6FC8
L6FC2:
        ADD HL,HL
        RL E
        DEC D
        JR L6FBE
L6FC8:
        LD B,E
        LD E,L
        LD L,H
        LD H,B
        LD A,C
        OR A
        RET Z
        PUSH HL
        PUSH DE
        JP M,L6FDB
        CALL L6C6F
        CALL L6AEF
        RET
L6FDB:
        NEG
        CP $20
        JR NC,L6FE8
        CALL L6C6F
L6FE4:
        CALL L6B65
        RET
L6FE8:
        SUB $20
        CALL L6C6F
        CALL L6B65
        PUSH HL
        PUSH DE
        LD HL,$4EE2
        LD DE,$6AD4
        JR L6FE4
L6FFA:
        INC HL
        JR NZ,L6FFE
        INC E
L6FFE:
        SRL E
        RR H
        RR L
        INC D
        JR L6FC8
L7007:
        CALL L67EF
        JR NC,L7028
        SUB $30
        LD B,A
        CALL L67EC
        RET NC
        CALL L680A
        SUB $30
        LD C,A
        LD A,B
        ADD A,A
        LD B,A
        ADD A,A
        ADD A,A
        ADD A,B
        ADD A,C
        LD B,A
        CALL L67EC
        JP C,L6672
        RET
L7028:
        POP BC
        POP BC
        POP BC
        LD DE,$7031
	jp L667F
        LD B,L
        LD A,B
        LD (HL),B
        LD L,A
        LD L,(HL)
        LD H,L
        LD L,(HL)
        LD (HL),H
        JR NZ,$70A0
        LD A,B
        LD (HL),B
        LD H,L
        LD H,E
        LD (HL),H
        LD H,L
        NOP
L7043:
        LD A,H
        OR A
        RET Z
        JP M,L7069
L7049:
        BIT 7,D
        RET NZ
        LD B,D
        INC B
        LD A,E
L704F:
        ADD A,A
        ADC HL,HL
        DJNZ L704F
        LD D,$FF
        RES 7,H
        LD E,A
L7059:
        BIT 6,H
        RET NZ
        DEC D
        SLA E
        ADC HL,HL
        JR NZ,L7059
        INC E
        DEC E
        JR NZ,L7059
        LD D,E
        RET
L7069:
        RES 7,H
        CALL L7049
        BIT 6,H
        RET Z
        SET 7,H
        PUSH HL
        PUSH DE
        LD HL,$4000
        LD D,L
        LD E,L
        CALL L6A39
        RET
        PUSH HL
        PUSH DE
        LD HL,$5C55
        LD DE,$001E
        CALL L6AEF
        PUSH HL
        PUSH DE
        CALL L6C32
        LD ($7517),HL
        POP DE
        POP HL
        CALL L7043
        BIT 6,H
        JR Z,L7113
        CALL L749F
        EXX
        OR A
        JP M,L710E
	jr z,L7117
        LD HL,$711E
L70A8:
        LD B,(HL)
        INC HL
        LD C,$00
        PUSH BC
        LD B,$FE
        PUSH BC
        EXX
        CALL L6A39
        BIT 6,H
        JR NZ,L70BC
        LD H,$40
        LD D,$C0
L70BC:
        EXX
        LD C,(HL)
        INC HL
        LD B,(HL)
        INC HL
        PUSH BC
        LD C,(HL)
        INC HL
        LD B,$00
        PUSH BC
        LD C,(HL)
        INC HL
        LD B,(HL)
        INC HL
        PUSH BC
        LD C,(HL)
        LD B,$04
        PUSH BC
        EXX
        PUSH HL
        PUSH DE
        LD BC,$C53F
        PUSH BC
        LD BC,$03D6
        PUSH BC
        LD BC,$63E7
        PUSH BC
        LD BC,$04DC
        PUSH BC
        CALL L6B65
        CALL L6A39
        CALL L6A39
        CALL L6B65
        CALL L6A39
L70F2:
        LD A,($7518)
        OR A
        JR Z,L7105
        INC A
        JP NZ,L6679
        LD A,($7517)
        OR A
        JP P,L6679
        LD D,A
        RET
L7105:
        LD A,($7517)
        OR A
        JP M,L6679
        LD D,A
        RET
L710E:
        LD HL,$7125
        JR L70A8
L7113:
        LD H,$40
        JR L70F2
L7117:
        LD HL,$5A82
        LD E,$4F
        JR L70F2
        RET NZ
        AND D
        LD L,E
        HALT
        LD (HL),H
        ADC A,H
        DEC DE
        LD C,H
        RST $30
        LD E,D
        LD (DE),A
        LD A,H
        DEC A
        JP M,L6697
        LD A,D
        LD ($7517),A
        LD D,$00
        LD BC,$4073
        PUSH BC
        LD BC,$02A1
        PUSH BC
        LD BC,$C4D2
        PUSH BC
        LD BC,$0545
        PUSH BC
        PUSH HL
        PUSH DE
        LD BC,$5309
        PUSH BC
        LD BC,$0390
        PUSH BC
        LD BC,$C103
        PUSH BC
        LD BC,$0314
        PUSH BC
        PUSH HL
        PUSH DE
        LD BC,$41A3
        PUSH BC
        LD BC,$0189
        PUSH BC
        LD BC,$C43A
        PUSH BC
        LD BC,$FEA0
        PUSH BC
        LD BC,$6CCC
        PUSH BC
        LD BC,$FE7C
        PUSH BC
        CALL L6A39
        CALL L6B65
        CALL L6A39
        CALL L6A39
        CALL L6B65
        CALL L6A39
        CALL L6A39
        CALL L6B65
        CALL L6A39
        PUSH HL
        PUSH DE
        LD A,($7517)
        LD L,A
        LD H,$00
        OR A
        JP P,L719B
        DEC H
L719B:
        CALL L6BDD
        LD BC,$58B9
        PUSH BC
        LD BC,$FF0C
        PUSH BC
        CALL L6AEF
        CALL L6A39
        RET
L71AD:
        LD HL,$4000
        LD D,L
        LD E,L
        RET
        BIT 6,H
        JR Z,L71AD
        LD A,D
        CP $F3
        JP M,L71AD
        CALL L7300
        LD B,$00
        JR NZ,L71C9
        LD B,$80
        CALL L72E9
L71C9:
        LD A,D
        ADD A,$02
        EX AF,AF'
        LD A,$02
        JR L71E5
        BIT 6,H
        RET Z
        LD A,D
        CP $F3
        RET M
        PUSH HL
        CALL L7300
        JR NZ,L71E2
        CALL L72E9
        XOR A
L71E2:
        EX AF,AF'
        XOR A
        POP BC
L71E5:
        EX AF,AF'
        XOR B
        CPL
        AND $80
        LD ($7517),A
        LD A,D
        CP $FE
        CALL Z,L72E9
        EX AF,AF'
        ADD A,A
        EX AF,AF'
        CP $FD
        JR NZ,L71FD
        CALL L72E9
L71FD:
        CP $FC
        EX AF,AF'
        ADD A,A
        EX AF,AF'
        JR NZ,L7213
        EX AF,AF'
        INC A
        EX AF,AF'
        LD BC,$4000
        PUSH BC
        LD B,$FD
        PUSH BC
        SET 7,H
        CALL L6A39
L7213:
        EX AF,AF'
        EXX
        LD L,A
        LD H,$00
        LD DE,$7316
        ADD HL,DE
        LD A,(HL)
        LD ($7518),A
        EXX
        LD ($7519),DE
        LD ($751B),HL
        CALL L6AEB
        PUSH HL
        PUSH DE
        LD BC,$7A3B
        PUSH BC
        LD BC,$0021
        PUSH BC
        LD BC,$4D67
        PUSH BC
        LD BC,$0157
        PUSH BC
        LD BC,$E144
        PUSH BC
        LD BC,$00B2
        PUSH BC
        CALL L6A39
        CALL L6B65
        CALL L6A39
        LD ($7521),DE
        LD ($7523),HL
        CALL L6B65
        LD C,H
        LD A,H
        XOR $80
        LD H,A
        LD ($751D),DE
        LD ($751F),HL
        LD H,C
        PUSH HL
        PUSH DE
        LD DE,($7521)
        LD HL,($7523)
        CALL L6A39
        LD ($7525),DE
        LD ($7527),HL
        LD A,($7518)
        SRL A
        JR C,L72A8
        OR A
        JR NZ,L7293
        LD DE,($7519)
        LD HL,($751B)
        INC D
L728A:
        CALL L72DC
L728D:
        LD A,($7517)
        OR H
        LD H,A
        RET
L7293:
        LD DE,($7521)
        LD HL,($7523)
        PUSH HL
        PUSH DE
        LD DE,($751D)
        LD HL,($751F)
        CALL L6A39
        JR L728A
L72A8:
        LD HL,$5A82
        LD DE,$FF79
        PUSH HL
        PUSH DE
        INC D
        OR A
        JR NZ,L72B6
        SET 7,H
L72B6:
        PUSH HL
        PUSH DE
        LD DE,($751D)
        LD HL,($751F)
        JR NZ,L72C5
        LD A,H
        XOR $80
        LD H,A
L72C5:
        PUSH HL
        PUSH DE
        LD HL,($751B)
        LD DE,($7519)
        CALL L6A39
        CALL L6AEF
        CALL L72DC
L72D7:
        CALL L6A39
        JR L728D
L72DC:
        PUSH HL
        PUSH DE
        LD HL,($7527)
        LD DE,($7525)
        CALL L6B65
        RET
L72E9:
        LD A,E
L72EA:
        DEC D
        ADD A,A
        ADC HL,HL
        JR Z,L72FA
        BIT 6,H
        JR Z,L72EA
L72F4:
        LD E,A
        EX AF,AF'
        INC A
        EX AF,AF'
        LD A,D
        RET
L72FA:
        OR A
        JR NZ,L72EA
        LD D,A
        JR L72F4
L7300:
        PUSH AF
        RES 7,H
        LD BC,$517C
        PUSH BC
        LD BC,$FDC0
        PUSH BC
        CALL L6AEF
        CALL L7043
        POP AF
        EX AF,AF'
        LD A,D
        INC A
        RET
        NOP
        LD BC,$0203
        LD (BC),A
        INC BC
        LD BC,$0200
        INC BC
        LD BC,$0000
        LD BC,$0203
        BIT 6,H
        RET Z
        LD A,H
        AND $80
        LD ($7517),A
        RES 7,H
        LD A,D
        OR A
        JP M,L734C
        LD A,$02
        LD ($7519),A
        EXX
        LD HL,$49E6
        LD DE,$FF9D
        PUSH HL
        PUSH DE
        LD BC,$D555
        PUSH BC
        LD B,$00
        JR L736F
L734C:
        CP $FE
        JR NC,L735B
        CP $F3
        JP C,L728D
        XOR A
        LD ($7519),A
        JR L737C
L735B:
        LD A,$01
        LD ($7519),A
        EXX
        LD HL,$6ED9
        LD DE,$00EB
        PUSH HL
        PUSH DE
        LD BC,$C000
        PUSH BC
        LD B,$02
L736F:
        PUSH BC
        PUSH HL
        PUSH DE
        EXX
        CALL L6A39
        CALL L6B65
        CALL L6A39
L737C:
        PUSH HL
        PUSH DE
        LD BC,$4000
        PUSH BC
        LD B,C
        PUSH BC
        CALL L6AEB
        PUSH HL
        PUSH DE
        LD BC,$6000
        PUSH BC
        LD B,$01
        PUSH BC
        INC D
        INC D
        PUSH HL
        PUSH DE
        DEC D
        DEC D
        LD B,$50
        PUSH BC
        LD B,$02
        PUSH BC
        PUSH HL
        PUSH DE
        LD BC,$638E
        PUSH BC
        LD BC,$FF39
        PUSH BC
        LD BC,$6B15
        PUSH BC
        LD BC,$FC00
        PUSH BC
        CALL L6AEF
        CALL L6A39
        CALL L6B65
        CALL L6A39
        CALL L6B65
        CALL L6A39
        CALL L6B65
        CALL L6A39
        CALL L6B65
        LD A,($7519)
        OR A
        JR Z,L73E5
        PUSH HL
        PUSH DE
        ADD A,A
        ADD A,A
        LD HL,$73E4
        LD E,A
        LD D,$00
        ADD HL,DE
        LD E,(HL)
        INC HL
        LD D,(HL)
        INC HL
        LD C,(HL)
        INC HL
        LD H,(HL)
        LD L,C
        CALL L6A39
L73E5:
        JP L728D
        LD C,B
        RST $38
        DEC B
        LD B,E
        LD C,B
        NOP
        DEC B
        LD B,E
        CALL PE,$8700
L73F4:
        XOR A
        JR L7436
        BIT 6,H
        RET Z
        LD A,D
        CP $F8
        RET M
        LD A,H
        LD ($7517),A
        RES 7,H
        LD BC,$517C
        PUSH BC
        LD BC,$FEC1
        PUSH BC
        CALL L6AEF
        CALL L7043
        CALL L749F
        LD A,($7517)
        XOR H
        XOR $80
        AND $80
        LD ($7517),A
        RES 7,H
        LD A,D
        ADD A,$03
        JR NC,L73F4
        JR Z,L7435
        LD A,H
        CP $70
	jr nc,L74AA
        CP $60
        LD A,$02
        JR C,L7436
L7435:
        INC A
L7436:
        ADD A,A
        EXX
        LD D,$00
        LD E,A
        LD HL,$74E0
        ADD HL,DE
        LD C,$00
        LD B,(HL)
        INC HL
        PUSH BC
        LD B,(HL)
        PUSH BC
        EXX
        CALL L6A39
        PUSH HL
        PUSH DE
        LD BC,$4305
        PUSH BC
        LD BC,$FF49
        PUSH BC
        LD BC,$D4E1
        PUSH BC
        LD BC,$FFF4
        PUSH BC
        LD BC,$C0D8
        PUSH BC
        LD BC,$FE77
        PUSH BC
        CALL L6AEB
        CALL L6A39
        CALL L6B65
        CALL L6A39
        CALL L6AEF
        EXX
        SLA E
        SLA E
        LD HL,$74E8
        ADD HL,DE
        LD C,(HL)
        INC HL
        LD B,(HL)
        PUSH BC
        INC HL
        LD C,(HL)
        INC HL
        LD B,(HL)
        PUSH BC
        INC HL
        LD C,(HL)
        INC HL
        LD B,(HL)
        INC HL
        LD E,(HL)
        INC HL
        LD D,(HL)
        PUSH BC
        PUSH DE
        EXX
        CALL L6A39
        CALL L6B65
        EXX
        SET 7,B
        PUSH BC
        PUSH DE
        EXX
        JP L72D7
L749F:
        LD BC,$C000
        PUSH BC
        LD B,$FF
        PUSH BC
        CALL L6A39
        RET
L74AA:
        CALL L749F
        RES 7,H
        PUSH HL
        PUSH DE
        CALL L6AEB
        LD BC,$6487
        PUSH BC
        LD BC,$01EE
        PUSH BC
        PUSH HL
        PUSH DE
        LD BC,$52AE
        PUSH BC
        LD BC,$03F5
        PUSH BC
        LD BC,$519A
        PUSH BC
        LD BC,$05F2
        PUSH BC
        CALL L6AEF
        CALL L6A39
        CALL L6AEF
        CALL L6A39
        CALL L6AEF
        JP L728D
        RET NZ
        CALL M,$FDE0
        RET NC
        CP $F0
        CP $88
        LD B,D
        CCF
        NOP
        RST $10
        LD H,L
        RET C
        DB $FD
        SUB D
        LD E,H
        EXX
        NOP
        ADD A,(HL)
        LD D,L
        RET PO
        RST $38
        XOR H
        LD H,A
        XOR L
        LD BC,$5FC8
        NOP
        JR L756B
        CP B
        INC B
        LD L,A
        LD D,B
        CALL M,$0002
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        OR E
        LD H,(HL)
        DEC L
        LD (HL),L
        DEC C
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
L756B:
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        INC BC
        JR NZ,L75A5
        JR NZ,L75A7
        JR NZ,L75A9
        JR NZ,L75AB
        JR NZ,L75AD
        POP HL
        DEC D
        ADD A,L
        LD H,B
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
L75A5:
        NOP
        NOP
L75A7:
        NOP
        NOP
L75A9:
        NOP
        NOP
L75AB:
        NOP
        NOP
L75AD:
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        ADC A,$0B
        OUT ($40),A
        DI
        DEC C
        LD C,$12
        CP $15
        RLCA
        LD E,H
        DI
        DEC C
        DI
        DEC C
        LD HL,$FE11
        DEC D
        LD L,$75
        LD A,C
        LD H,C
        LD L,$75
        LD C,D
        DEC C
        NOP
        NOP
        LD D,C
        JR NZ,L7625
        LD E,H
        CP E
        LD L,B
        LD C,D
        DEC C
        INC L
        LD L,B
        DEC L
        LD (HL),L
        LD DE,$4468
        DEC C
        LD D,E
        EX AF,AF'
        LD (DE),A
        NOP
        DAA
        XOR D
        DEC A
        LD L,B
        CP H
        XOR C
        SBC A,D
        XOR (HL)
L7604:
        CALL L6541
        CALL L609D
        CALL L655A
        LD HL,$8968
L7613:
        LD ($750B),HL
        DB $DD
        LD HL,$FF56
        DB $DD
        LD SP,HL
	jr L7658
        LD B,L
L7625:
        LD B,L
L7658:
        LD HL,$761F
        LD B,$39
        CALL L6615
        CALL L660C
	jp L6528
