#!/usr/bin/expect -f
log_user 0
set password [lindex $argv 0]
spawn /bin/su USER_NAME -c whoami
expect "Password:"
send "$password\r";
interact
