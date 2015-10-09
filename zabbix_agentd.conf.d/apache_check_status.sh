#!/bin/sh
status=`curl -o /dev/null --silent --head --write-out '%{http_code}\n' http://127.0.0.1:180`

if [ "$status"=="302" ] || [ "$status"=="200" ] || [ "$status"=="301" ]; 
then 
    echo 1
else 
    echo 0 
fi