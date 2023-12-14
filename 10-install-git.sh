#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
 then
   echo "Error: please login  as a root user"
    exit 1
else
   echo "U are root user"
fi

yum installfff git -y

if [ $? -ne 0 ]
 then
  echo "Error: The git installation not success"
else 
echo "The git installation success"
fi