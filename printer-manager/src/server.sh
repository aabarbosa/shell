./utils.sh --source-only
enum ()
{
    shift
    I=${@##*\{} # get string after { 
    I=${I%\}*} # get string before }
    I=${I//,/}  

    local PROCESS=0
    for INDEX in $I ; do
        eval "$INDEX=$PROCESS"
        ((PROCESS++))
    done
}
enum index { NEW_JOB, UPDATE, ERROR, EXIT };

PROCESS=NEW_JOB
tail -f ./files/log | 
grep --line-buffered 'New Job queued...' | 
while read ; 
    do 
        case $PROCESS in  
            NEW_JOB )
                echo "Checks new cote information"
                echo "code is $PROCESS"
            ;;
            UPDATE )
                echo "Runs awk and Update cote information"
                echo "code is $PROCESS"
            ;;  
            ERROR )
                echo "Exits for any bad behaviors"
                echo "code is $PROCESS"
            ;;
            EXIT )
                echo "is $PROCESS"
            ;;  
        esac  
    done