# Business logic output

function help {
    EVENT=$1
case $EVENT in
    -pm )
        echo "Syntax: pm event document"
        echo "event: [--print | --report | --lp | -lp-report]"
        echo "document: path of the document"
        ;;
    -cote )
        echo "A quote is the number of pages that users can print in a month." 
        ;;
    -page )
        echo "A page contains 3600 characters or 1024 b"
        ;;
	* )  
    help -wrong
	;;
esac
}


function report {
    TYPE=$1
case $TYPE in
    -pm )
        echo "Syntax: pm event document"
        echo "event: [--print | --report | --lp | -lp-report]"
        echo "document: path of the document"
        ;;
    -lp )
        echo "Reporting | Number of events"
        ;;
        
esac
}

function table {
    TYPE=$1
case $TYPE in
    -quare )
        echo "Syntax: pm event document"
        echo "event: [--print | --report | --lp | -lp-report]"
        echo "document: path of the document"
        ;;
    -user )
        echo "User Quota"
        ;;
    -report )
        echo "User:Page Number:File"
        ;;
        
esac
}