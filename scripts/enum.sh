#!/bin/bash

enum ()
{
    shift
    I=${@##*\{} # get string after { 
    I=${I%\}*} # get string before }
    I=${I//,/}  
    ((DEBUG)) && echo $I
    local PROCESS=0
    for A in $I ; do
        eval "$A=$PROCESS"
        ((PROCESS++))
    done
}

enum index { NEW_JOB, UPDATE, ERROR, EXIT };

echo $NEW_JOB
echo $UPDATE
echo $ERROR  
echo $EXIT

PROCESS=NEW_JOB
case $PROCESS in  
    NEW_JOB )
        echo "Checks new cote information"
        echo "code is $PROCESS"
    ;;
    UPDATE )
        echo "Runs awk and Update cote information"
        echo "code is $PROCESS"
    ;;  
    ERROR )
        echo "Exits for any bad behaviors"
        echo "code is $PROCESS"
    ;;
    EXIT )
        echo "is $PROCESS"
    ;;  
esac  

