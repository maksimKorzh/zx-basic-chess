REM PRINT AT ROW+6, COL+11; ROW*10 + COL; board center; REM PRINT "\P \N"

REM PRINT_BOARD 160
05 CLS
10 PRINT AT 0, 9; "ZX BASIC CHESS"
20 PRINT AT 2, 15; "by"
30 PRINT AT 4, 8; "Code Monkey King"
40 DATA 13, 13, 13, 13, 13, 13, 13, 13, 13, 13
41 DATA 13, 13, 13, 13, 13, 13, 13, 13, 13, 13
42 DATA 13, 10,  8,  9, 11, 12,  9,  8, 10, 13
43 DATA 13,  7,  7,  7,  7,  7,  7,  7,  7, 13
44 DATA 13,  0,  0,  0,  0,  0,  0,  0,  0, 13
45 DATA 13,  0,  0,  0,  0,  0,  0,  0,  0, 13
46 DATA 13,  0,  0,  0,  0,  0,  0,  0,  0, 13
47 DATA 13,  0,  0,  0,  0,  0,  0,  0,  0, 13
48 DATA 13,  1,  1,  1,  1,  1,  1,  1,  1, 13
49 DATA 13,  4,  2,  3,  5,  6,  3,  2,  4, 13
50 DATA 13, 13, 13, 13, 13, 13, 13, 13, 13, 13
51 DATA 13, 13, 13, 13, 13, 13, 13, 13, 13, 13
54 DIM BOARD(120)
60 FOR I=0 TO 119
90 READ BOARD(I)
100 NEXT I
110 DATA 46, 80, 78, 66, 82, 81, 75, 112, 110, 98, 114, 113, 107, 32 REM 32 - ' '; 88 - 'X'
120 DIM PIECES(14)
130 FOR I=0 TO 13
140 READ PIECES(I)
150 NEXT I
155 GOTO 220
160 FOR ROW=0 TO 11
170 FOR COL=0 TO 9
180 PRINT AT ROW+6, COL+11; CHR(PIECES(BOARD(ROW*10+COL)))
190 NEXT COL
200 NEXT ROW
210 RETURN
220 DATA 1, 1, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1
230 DIM TYPES(12)
240 FOR I=0 TO 11
250 READ TYPES(I)
260 NEXT I
270 DIM PST(120)
280 FOR ROW=0 TO 11
290 FOR COL=0 TO 9
300 IF BOARD(ROW*10+COL) = 13 PST(ROW*10+COL) = 0 ELSE PST(ROW*10+COL) = (16-(ROW-6)*(ROW-6))+ (16-(COL-5)*(COL-5))
301 PRINT PST(ROW*10+COL)
305 PAUSE 10
310 NEXT COL
320 NEXT ROW





