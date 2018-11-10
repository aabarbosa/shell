#!/bin/bash

# Initialize users
echo "user cote" > ./users
ls /home >> ./users

# At the end of each line put the user monthly cote.
# A page contains 3600 characters or 1024 b
# <cote>: 200 pages or 204800 b
# 40 users at maximum
sed -i '2,41s/$/ 204800/' ./users >> ./users

cat users | column -t

#awk '{print $1, ":",$2} END {}' ./users
#awk '{print $1} END {ls}' ./users
