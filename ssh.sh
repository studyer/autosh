#!/usr/bin/expect -f

set timeout 60
spawn ssh -l username host
expect {
    "(yes/no)" { send "yes\r"; exp_continue }
    "*assword:" { send "password\r" }
}
expect "*Last login*"
interact