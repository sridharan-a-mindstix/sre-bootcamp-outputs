#!/bin/bash

echo given file $1

awk '/ERROR/ {count[$2]++} END {for (error in count) print error, count[error]}' $1
