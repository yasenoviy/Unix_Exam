#!/bin/bash

echo "Start sort settings"
echo "Enter sort parametr: -u -up sort,  -d -down sort."

while [ 1 ];
do
    read parametr
    if [ $parametr == "-u" ] || [ $parametr == "-d" ];
    then
        if [ $parametr == "-u" ]; then
            echo "Selected UP sort"
        elif [ $parametr == "-d" ]; then
            echo "Selected DOWN sort"
        fi
        break;
    
    elif [ $parametr != "-u" ] || [ $parametr != "-d" ];
    then
        echo "incorrect parametr"
    fi
done

echo "test massive"

mass=(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)

for i in ${!mass[@]}; 
do
	echo "Enter $i's element"
	read temp
	mass[$i]=$temp
done

echo "Massive: ${mass[@]}"
