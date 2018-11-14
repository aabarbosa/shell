source src/log/help.sh
source src/utils.sh
source src/log/log.sh

tmp=src/log/tmp
file=src/files

function init {
    help -cote
    init-cote
    init-users
    export.cron
}

function init-cote {
    log -input
    read cote
    if [[ ! $cote =~ ^[0-9]+$ ]] ; then
        log -wrong
    else 
        log -success
        echo $cote >> $tmp
        mv -f $tmp $file/cote 
    fi
}

function init-users {
    # Initialize users
    touch $tmp
    echo "user quote" > $tmp
    ls /home >> $tmp

    # At the end of each line put the user quote.
    # 40 users at maximum      
    sed -i '2,41s/$/ 0/' $tmp >> $tmp
    mv -f $tmp $file/users

    show-actual-table
}

init