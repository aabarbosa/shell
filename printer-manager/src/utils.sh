#!/bin/bash

# This bash is to export function and other support

enum ()
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
