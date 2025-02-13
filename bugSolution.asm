```assembly
mov ax, 1000h ; move a large value into ax
mov cx, bx  ;copy bx to cx for comparison
cmp ax, 0FFFFh-cx ; check for overflow
ja overflow_handler ; jump if overflow
add ax, bx ; add bx to ax
jmp end
overflow_handler:
; handle overflow condition, e.g., set an error flag or use larger registers
mov dx, 1 ; set error flag
end:
;rest of the code
```