#!/bin/bash
for i in {1..17}; do
  res=$(curl http://host1.dreamhack.games:16501/user/$i | grep User)
  UserID=$(echo $res | awk '{ print $4 }' | grep -Eo "[a-zA-Z0-9]+" | head -1)
  UserName=$(echo $res | awk '{ print $6 }' | grep -Eo "[a-zA-Z0-9]+" | head -1)
  UserLevel=$(echo $res | awk '{ print $8 }' | grep -Eo "[a-zA-Z0-9]+" | head -1)
  echo "UserID: $UserID / UserName: $UserName / UserLevel: $UserLevel"
done
