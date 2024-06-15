org 0x7c00

video = 0x10
set_cursor_pos = 0x02
write_char = 0x0a

system_services = 0x15
wait_service = 0x86

keyboard_int = 0x16
keyboard_read = 0x00
keystroke_status = 0x01

timer_int = 0x1a
read_time_counter = 0x00

left_arrow = 0x4b
right_arrow = 0x4d
down_arrow = 0x50
up_arrow = 0x48

call handle_food

start:

mov ah, wait_service
mov cx, 1
mov dx, 0
int system_services

call handle_keyboard

mov ah, write_char
mov bh, 0
mov cx, 1
mov al, ' '
int video

mov al, [food_pos]
cmp [pos_row], al
jne regular_flow
cmp [pos_col], al
jne regular_flow
call handle_food

regular_flow:

mov ah, set_cursor_pos
mov dh, [pos_row]
mov dl, [pos_col]
mov bh, 0
int video

mov ah, write_char
mov bh, 0
mov cx, 1
mov al, '*'
int video

cmp byte [scan_code], left_arrow
jne check_right_arrow
dec byte [pos_col]
jmp start
check_right_arrow:
cmp byte [scan_code], right_arrow
jne check_up_arrow
inc byte [pos_col]
jmp start
check_up_arrow:
cmp byte [scan_code], up_arrow
jne check_down_arrow
dec byte [pos_row]
jmp start
check_down_arrow:
cmp byte [scan_code], down_arrow
jne failure
inc byte [pos_row]

jmp start

failure:
jmp $

handle_keyboard:
mov ah, keystroke_status
int keyboard_int
jz end_of_handle_keyboard

mov ah, keyboard_read
int keyboard_int
mov [scan_code], ah

end_of_handle_keyboard:
ret

handle_food:
mov ah, read_time_counter
int timer_int
mov al, 7 ; 111
and al, dl
mov byte [food_pos], al
add byte [food_pos], 7

mov ah, set_cursor_pos
mov dh, [food_pos]
mov dl, [food_pos]
mov bh, 0
int video

mov ah, write_char
mov bh, 0
mov cx, 1
mov al, '&'
int video

mov ah, set_cursor_pos
mov dh, 0
mov dl, 0
mov bh, 0
int video

ret

pos_row:
db 10
pos_col:
db 5
scan_code:
db left_arrow
food_pos:
db 15

times 510 - ($ - $$) db 0
dw 0xAA55
