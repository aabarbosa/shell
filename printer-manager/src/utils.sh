#!/bin/bash

# This bash is to export functions, cron, monthly report.

function reset-log () {
    #rm -f ./files/log
    #touch ./files/log
    echo "" > ./files/log
}

function show-actual-table {
    cat src/files/users | column -t
}


function export.cron { 
    cat <<EOF > src/files/export.cron
0 0 1 * * root ../pm.sh --report
EOF
}

function get-user-cote {
    USER=`whoami`
    echo $USER
    QUOTE=( `grep ${USER} src/files/users` )
    echo ${QUOTE[2]}
}