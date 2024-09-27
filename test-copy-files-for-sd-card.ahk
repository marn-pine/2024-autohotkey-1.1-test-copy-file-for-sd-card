; Autohotkey 1.1
; Test Copy Files for SD Card
source_folder := "D:\My Github\Autohotkey-v1.1\"                    ; must end with back slash
source_file := "1GB.bin"                                            ; test file in source folder
destination_folder := "D:\My Github\Autohotkey-v1.1\Destination\"   ; must end with back slash
overwrite_mode := 1                                                 ; 0 not overwrite, 1 overwrite
loops_number := 372                                                 ; maximum 999 loops
; example :
; test file 1 gb download from internet
; loops_number  = free space / test file size
;               = 372 GB / 1 GB  = 372 loops
file_count := 0
loop, %loops_number%
{
    file_count := file_count + 1
    if (file_count > 999)
        Exit
    zero_pack := "000"
    file_extension := SubStr(zero_pack, 1, StrLen(zero_pack) - StrLen(file_count)) . file_count
    FileCopy, %source_folder%%source_file%, %destination_folder%%source_file%.%file_extension%, %over_write%
}
MsgBox, % "Copy files finished."


