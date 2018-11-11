#!/bin/bash

# This is not part of the project.
# But you can use for Debug and Tests

echo "Please type "\quit" for leaving, "run" to start the server..."
echo "init to start a new installation..."
while :
do
  read INPUT_STRING
  case $INPUT_STRING in
	quit)
		echo "Breaking!"
        break
		;;
	run)
		./server.sh --executable
		echo "The server has been started!"
		;;
	init)
		echo "Starting a new user setup..."
		./init-users.sh --executable
		echo "users has been set up!"
	;;
	*)
		echo "Sorry, you typed a wrong input." \ 
        echo "Try again. I know you can!"
		;;
  esac
done
echo 
echo "Server out!"