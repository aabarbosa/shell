
function help {
    EVENT=$1
case $EVENT in
    -cote )
        echo "A <cote> is the number of pages
        that users can print in a month." 
        ;;
    -wrong )
        echo "You typed a wrong input!"
        ;;
	* )  
        echo "Show this events."
		;;
esac
}