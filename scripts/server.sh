source pm.sh

reset-log

EVENT=$1

case $EVENT in  
    -print )
        while : 
        do
            echo "Digit one filepath to print. Press enter again"
            read location
            echo "Sending..." #luiz had broken my LP command
            #lp $location
            echo "Calculating how much you used this month..."
            MARK=( `lpq | tail -1` )
            echo ${MARK[4]}
            #awk '{}' ./files/users
        done
    ;;
    -report )
        echo "Reporting | Number of events"
        cat ./files/event | wc -l | uniq
    ;;  
    * )
        echo "Command do not exizst"
esac  

exit 0