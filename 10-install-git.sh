@!/bin/bash

ID=$(id -u)

if [$ID -nt 0]
echo "Error: The user is not a root user"
else
echo "Error: The user is root user"
fi