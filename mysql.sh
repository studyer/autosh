#!/usr/bin/expect -f

set timeout 60
spawn mysql -uusername -p -hhost dbname
expect {
    "(yes/no)" { send "yes\r"; exp_continue }
    "*assword:" { send "password\r" }
}
expect "mysql>"
interact