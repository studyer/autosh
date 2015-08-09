#!/usr/bin/expect -f

set timeout 60
set flag [lindex $argv 0]
set src_file [lindex $argv 1]
set dest_file [lindex $argv 2]
# s2l server to local
if { $flag == "s2l" } {
    spawn scp username@host:$src_file $dest_file
} else {
    spawn scp $src_file username@host:$dest_file
}
expect "*assword:" 
send "password\r"
expect "100%"
expect eof