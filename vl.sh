#!/usr/bin/bash

if [ $# -eq 0 ];
then 
    echo "usage: vl [-t] [FILENAME]..."
    exit
fi

if [ "$1" == "-t" ] || [ $# -ge 5 ];
then
    if [ "$1" == "-t" ];
    then
        shift #remove the -t
    fi
    main2files=$1;
    shift
    main2files=$main2files" "$1;
    shift
    vimcommand="";
    first_iteration=1
    while [ $1 ]
    do
        if [ $first_iteration -eq 1 ];
        then
            vimcommand=$vimcommand":tabe "$1;
            first_iteration=0;
        else
            vimcommand=$vimcommand" | tabe "$1;
        fi
        shift
        if [ $1 ];
        then
            vimcommand=$vimcommand" | vsplit "$1;
            shift
        fi
    done
    vim -O -c "$vimcommand" $main2files
else
    if [ $# -eq 4 ];
    then
        vim -O -c ":split $3 | wincmd l | split $4" $1 $2;
    elif [ $# -eq 3 ];  
    then
        vim -O -c ":wincmd l | split $3" $1 $2; 
    elif [ $# -eq 2 ];
    then
        vim -O $1 $2; 
    elif [ $# -eq 1 ];
    then
        vim $1; 
    fi
fi
