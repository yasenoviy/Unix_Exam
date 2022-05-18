#!/bin/bash

if [ $# -eq 0 ]; then
echo "No parameters passed!"
exit 1
fi

if [ "$1" == "-u" ] || [ "$1" == "-d" ]; then




exit 0

elif [ "$1" == "" ]; then
echo "No sort type"

elif [ "$1" != "-u" ] || [ "$1" != "-d" ]; then
echo "Incorect sort type"
fi