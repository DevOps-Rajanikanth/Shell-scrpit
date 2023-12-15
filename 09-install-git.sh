#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
 then
   echo "Error: Please login as a Root user"
   exit 1
else
   echo "U are the Root user"
fi

yum install mysql -y

if [ $? -ne 0 ]
 then 
   echo "Error: mysql Installtion Not Successfull!!"
   exit 1
else
   echo "mysql Installion Successfully Completed!!"
fi

yum install git -y

if [ $? -ne 0 ]
 then
   echo "error: GIT installtion failed"
   exit 1
else
   echo "Git Installtion successfull!!"
fi
