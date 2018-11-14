#!/bin/bash
source utils.sh
source log/log.sh
source log/help.sh

file=files
tmp=log/tmp

function _report {
    exit 1
}

function print {
    exit 1
}

function pages {
    document=$2
    pages=pages
}
#in progress
function user-info {
    local "$@"
    local user=`grep "$name" $file/users`
    declare -p ${!user*}
}
#in progress
function limit {
    eval "$(user-info name=whoami)"
    return $user
}

function pm {
    read cote < files/cote
    EVENT=$1
    case $EVENT in  
        --print )
            #lim=limit|exit 0
            limit

            if [ -z $lim ]; then
                log -limit
            elif [ $cote -gt $lim ]; then
                    log -success
            else
                log -exceeded
            fi
            ;;
        --report )

            ;;
        --lp )
            log -invalid-cmd
            ;;
        -lp-report )
            report -lp
            cat $file/event | wc -l | uniq
            ;;  
        * )
            log -pm
            ;;
    esac  
}

pm $1 $2