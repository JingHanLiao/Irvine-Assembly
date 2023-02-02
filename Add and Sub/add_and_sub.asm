INCLUDE Irvine32.inc

.data

avalue sdword ?
bvalue sdword ?
cvalue sdword ?
dvalue sdword ?
evalue sdword ?
fvalue sdword ?

str1value byte "請使用者輸入第一個整數: ",0
str2value byte "請使用者輸入第二個整數: ",0
str3value byte "請使用者輸入第三個整數: ",0
str4value byte "請使用者輸入第四個整數: ",0
str5value byte "請使用者輸入第五個整數: ",0
str6value byte "請使用者輸入第六個整數: ",0

printsum byte "The sum of the All integers is: ",0

printsub byte "The sub of the All integers is: ",0

.code
main PROC

call Clrscr

;num1
mov dh,12
mov dl,45
call Gotoxy
mov edx , offset str1value
call WriteString
call ReadInt
mov avalue,eax

;num2
mov dh,13
mov dl,45
call Gotoxy
mov edx , offset str2value
call WriteString
call ReadInt
mov bvalue,eax

;num3
mov dh,14
mov dl,45
call Gotoxy
mov edx , offset str3value
call WriteString
call ReadInt
mov cvalue,eax

;num4
mov dh,15
mov dl,45
call Gotoxy
mov edx , offset str4value
call WriteString
call ReadInt
mov dvalue,eax

;num5
mov dh,16
mov dl,45
call Gotoxy
mov edx , offset str5value
call WriteString
call ReadInt
mov evalue,eax

;num6
mov dh,17
mov dl,45
call Gotoxy
mov edx , offset str6value
call WriteString
call ReadInt
mov fvalue,eax

mov eax,0 ;初始化eax=0

add eax,avalue
add eax,bvalue
add eax,cvalue
add eax,dvalue
add eax,evalue
add eax,fvalue

print: 
mov dh,19
mov dl,41
call Gotoxy
mov edx , offset printsum
call WriteString
call WriteInt

mov eax,0 ;初始化eax=0

add eax,avalue
sub eax,bvalue
sub eax,cvalue
sub eax,dvalue
sub eax,evalue
sub eax,fvalue

print2: 
mov dh,21
mov dl,41
call Gotoxy
mov edx , offset printsub
call WriteString
call WriteInt

mov dh,23
mov dl,44
call Gotoxy
call waitmsg

invoke ExitProcess, 0
main ENDP
END main