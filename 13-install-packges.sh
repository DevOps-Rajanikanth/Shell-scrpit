#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

TIMESTAMP=$(date +%F-%S-%M-%H)
LOGFILE="/tmp/$0-TIMESTAMP.log"

ID=$(id -u)

if [ $ID -ne 0 ]
  then 
      echo -e "ERROR:$R Root user access denied $N"
else
      echo -e "You are the $Y root user $N"
fi

VALIDATE(){
    if [ $1 -ne 0 ]
      then 
          echo "ERROR: $2 ...failed!!"
    else
          echo "$2 ....successed!!"
    fi
}

for packages $@
do
yum list installed $packages &>> $LOGFILE
if [ $? -ne 0 ]
  then
      yum install $packages &>> $LOGFILE
      VALIDATE $? "Installtion of $packages"
else
      echo "$packages already installe....skipping"
fi

done
