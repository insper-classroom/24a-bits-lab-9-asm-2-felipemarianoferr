; ram[0] = 2
leaw $2, %A
movw %A, %D
leaw $0, %A
movw %D, (%A)

; subtrai 3 da ram 1
leaw $1, %A
movw (%A), %D
leaw $3, %A
subw %D, %A, %D ; %D = RAM[1] - 3

leaw $END, %A
jne
nop
leaw $0, %A
movw $1, (%A)
END: