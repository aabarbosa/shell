#!/bin/bash

source logs/help.sh

function init {
    init-cote
    init-users
}

function init-cote {
    echo -n  "Give <cote> [page prints per month]"
    echo ":"
    read cote
    if [[ ! $cote =~ ^[0-9]+$ ]] ; then
        help -wrong
    else 
        echo "Setting" $cote
    fi
}

function init-users {
    # Initialize users
    FILE="files/USERS"
    touch FILE
    echo "user cote" > $FILE
    ls /home >> $FILE

    # At the end of each line put the user monthly cote.
    # A page contains 3600 characters or 1024 b
    # 40 users at maximum
    sed -i '2,41s/$/ 0/' $FILE >> $FILE
}

