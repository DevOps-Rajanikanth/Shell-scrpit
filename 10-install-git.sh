#!/bin/bash

ID=$(id -u)

if [ $ID -nt 0 ]
 then
   echo "Error: please login  as a root user"
else
   echo "U are root user"
fi

yum install git -y