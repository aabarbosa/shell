source ./utils.sh

> ./files/event

tail -f ./files/event | 
egrep --line-buffered 'print*|report'| 
while read EVENT ;
    do 
        case $EVENT in  
            print* )
                while : 
                do
                    echo "Digit one filepath to print. Press enter again"
                    read location
                    echo "Sending..."
                    lp $location
                    echo "Calculating how much you used this month..."
                    MARK=( `lpq | tail -1` )
                    echo ${MARK[4]}
                    #awk '{}' ./files/users
                done
            ;;
            report )
                echo "Reporting | Number of events"s
                cat ./files/event | wc -l | uniq
            ;;  
            * )
                echo "mamamia This is a crazy."
        esac  
    done

exit 0