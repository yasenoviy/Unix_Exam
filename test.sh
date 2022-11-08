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
echo "Fill array"
mass=(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
for i in ${!mass[@]}; 
do
	echo "Enter $i's element"
	read temp
	mass[$i]=$temp
done
echo "Array:"
echo ${mass[@]}
echo "Start sorting..."
if [ "$parametr" == "-d" ]; 
then
    echo "Type sort: DOWN"
    for(( j=1; j < 20; j++ ))
    do
        key=${mass[j]}
        let i=j-1
        while [ $i -ge 0 -a ${mass[$i]} -lt $key ]
        do
            mass[$[$i+1]]=${mass[$i]}
            let i--
        done
        mass[$[$i+1]]=$key
    done
elif [ "$parametr" == "-u" ]; 
then
    echo "Type sort: UP"
    for(( j=1; j < 20; j++ ))
    do
        key=${mass[$j]}
        let i=j-1
        while [ $i -ge 0 -a ${mass[$i]} -gt $key ]
        do
            mass[$[$i+1]]=${mass[$i]}
            let i--
        done
        mass[$[$i+1]]=$key
    done
fi
echo "Sorted array:"
echo ${mass[@]}