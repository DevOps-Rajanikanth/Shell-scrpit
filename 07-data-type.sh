#!/bin/bash

NUMBER1=$1
NUMBER2=$2

SUM=$((NUMBER1 + NUMBER2))

echo "Toatal is : $SUM"

echo "How many arument pass: $# "

echo "All arguments pass: $@"

echo "script name: $0"