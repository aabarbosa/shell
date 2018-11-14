
function log {
    LOG=$1
case $LOG in
    -success )
        echo "Success." 
        ;;
    -invalid-cmd )
        echo "This command is not yet supported." 
        ;;
    -exceeded )
        echo "This service exceeded its use."
        ;;
    -limit )
        echo "You used the quote this month."
        ;;
    -error )
        echo "error"
        ;;
    -wrong )
        echo "You typed a wrong input!"
        ;;
    -input )
        echo "Please give me the input:"
        ;;
    -test )
        echo "test"
    ;;
esac
}