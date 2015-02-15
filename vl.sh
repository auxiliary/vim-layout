#!/usr/bin/sh

if [ $# -eq 4 ];
then
    vim -O -c ":split $3 | wincmd l | split $4" $1 $2
elif [ $# -eq 3 ];  
then
    vim -O -c ":wincmd l | split $3" $1 $2; 
elif [ $# -eq 2 ];
then
    vim -O $1 $2; 
elif [ $# -eq 1 ];
then
    vim $1; 
else
    echo "usage: vl filename(s)"
fi
