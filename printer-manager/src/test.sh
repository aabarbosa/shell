#!/bin/bash

# This is not part of the project and should not be.
# its use aim to perform Debug and developer tests.

echo "Please type "\quit" to leave, "run" to start the server..."
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
		echo "The server has been started!"
		./server.sh 
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
echo "Server out!"