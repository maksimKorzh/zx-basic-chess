' ----------------------------------------------------------------
' This file is released under the MIT License
' 
' Copyleft (k) 2008
' by Jose Rodriguez-Rosa (a.k.a. Boriel) <http://www.boriel.com>
' ----------------------------------------------------------------

#ifndef __LIBRARY_UCASE__

REM Avoid recursive / multiple inclusion
#warning Deprecated library. Use <string.bas> instead

#define __LIBRARY_UCASE__

#pragma push(case_insensitive)
#pragma case_insensitive = TRUE
' ----------------------------------------------------------------
' function UCase(s as String)
' 
' Parameters: 
'     s: Input String
'
' Returns:
'     A copy of S converted to UpperCase
' ----------------------------------------------------------------
function UCase(ByVal s as String) as String
	asm
	PROC
	LOCAL NULL_STR
	LOCAL LOOP
	LOCAL NEXT_CHAR

	ld l, (ix+4)
	ld h, (ix+5)

	ld a, h
	or l
	jr z, NULL_STR ; NULL STRING

	ld c,(hl)
	inc hl
	ld b,(hl)

LOOP:
	ld a, b
	or c
	jr z, NULL_STR ; ZERO LENGTH STRING
	inc hl
	ld a, (hl)
	cp 'a'
	jr c, NEXT_CHAR
	cp 'z'+1
	jr nc, NEXT_CHAR
	sub 32
	ld (hl), a
NEXT_CHAR:
	dec bc
	jr LOOP

NULL_STR:
	ENDP
	end asm

	return s
end function

#pragma pop(case_insensitive)

#endif

