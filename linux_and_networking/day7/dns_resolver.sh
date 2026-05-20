#!/bin/bash

echo given domain name $1

echo A Record for the $1:

nslookup $1

echo Mx-record for the $1:

nslookup -type=mx $1

echo HTTP STATUS CODE:
curl_out=$(curl -sI $1 | awk '/HTTP/ {print $2}')
echo $curl_out
