#!/bin/bash

echo "Start sort settings"
echo "Enter sort parametr: -u -up sort,  -d -down sort."

while [ 1 ];
do
    read parametr
    if [ $parametr == "-u" ] || [ $parametr == "-d" ];
    then
        break;
    
    elif [ $parametr != "-u" ] || [ $parametr != "-d" ];
    then
        echo "incorrect parametr"
    fi
done



