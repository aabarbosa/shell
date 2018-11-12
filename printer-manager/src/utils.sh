#!/bin/bash

# This bash is to export function and other support
set -a
function enum ()
{

    shift
    I=${@##*\{} # get string after { 
    I=${I%\}*} # get string before }
    I=${I//,/}  
    ((DEBUG)) && echo $I
    local PROCESS=0
    for INDEX in $I ; do
        eval "$INDEX=$PROCESS"
        ((PROCESS++))
    done

}


function cleanEvents () 
{

    echo "Cleaning old events"
    lpq
    cancel -a

    echo "Done."
    lpq

}

function resetLog () {

    #rm -f ./files/log
    #touch ./files/log
    echo "" > ./files/log
}