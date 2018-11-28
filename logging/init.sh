#!/bin/bash

while :
   	do
        read program
        #if [ $program = command ]; then 
        #    echo "ignore"
        #else 
        exec="$(date +%b && echo $program && time ( $program ) 2>&1 1>/dev/null )"
        #fi        
        # Write in the log file <output.log>
        echo $exec >> output.log 

done