#!/bin/bash

# This bash is to export functions, cron, monthly report.

function reset-log () {
    #rm -f ./files/log
    #touch ./files/log
    echo "" > ./files/log
}


function export.cron { 
    cat <<EOF > files/export.cron
0 0 1 * * root ../print.sh --set-monthly-cote
EOF
}