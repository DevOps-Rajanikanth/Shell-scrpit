#!/bin/bash

SOURCE_DIR="/tmp/shellscript-logs"

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ ! -d $SOURCE_DIR ]
  then
      echo -e "$R Source Directory: $SOURCE_DIR Dos not exist $N"
fi
FILES_TO_DELETE=$(find $SOURCE_DIR -type -mtime +14 -name "*.log")

while IFS= read -r line
do
echo "deletefiles: $line"
 rm -rf $line
done <<< FILES_TO_DELETE