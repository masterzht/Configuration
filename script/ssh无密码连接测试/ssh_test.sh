#!/bin/bash

for i in `grep -v "#" ip.txt`
do
echo -e "$i \c" && ssh $i -o PreferredAuthentications=publickey -o StrictHostKeyChecking=no "date" > /dev/null 2>&1
if [ $? -eq 0];then
         echo "$i" >> sucess.txt
else
         echo "$i" >> error.txt
fi
done

