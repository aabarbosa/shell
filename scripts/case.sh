#!/bin/bash

echo "Please type "\quit" for leaving, "run" to start the server..."
while :
do
  read INPUT_STRING
  case $INPUT_STRING in
	quit)
		echo "Breaking!"
        break
		;;
	run)
		echo "The server has been started!"
		;;
	*)
		echo "Sorry, you typed a wrong input." \ 
        echo "Try again. I know you can!"
		;;
  esac
done
echo 
echo "Server out!"