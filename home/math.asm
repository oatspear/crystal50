SimpleMultiply::
; Return a * c.
	and a
	ret z

	push bc
	ld b, a
	xor a
.loop
	add c
	dec b
	jr nz, .loop
	pop bc
	ret

SimpleDivide::
; Divide a by c. Return quotient b and remainder a.
	ld b, 0
.loop
	inc b
	sub c
	jr nc, .loop
	dec b
	add c
	ret

Multiply::
; Multiply hMultiplicand (3 bytes) by hMultiplier. Result in hProduct.
; All values are big endian.
	push hl
	push bc

	callfar _Multiply

	pop bc
	pop hl
	ret

Divide::
; Divide hDividend length b (max 4 bytes) by hDivisor. Result in hQuotient.
; All values are big endian.
	push hl
	push de
	push bc
	homecall _Divide
	pop bc
	pop de
	pop hl
	ret

HalveBC::
; Return bc divided by 2.
; If carry is set, ensures the result is at least 1.
; Otherwise, it can go all the way down to zero.
	sbc a   ; if carry, a = $ff, else a = 0
	srl b
	rr c
	and a
	ret z   ; nothing else to do if a == 0
	ld a, c
	and a
	ret nz  ; nothing else to do if c > 0
	ld c, 1 ; ensure c >= 1
	ret
