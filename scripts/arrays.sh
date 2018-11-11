#!/bin/bash

#  Initialize users with sparse data ("sparse arrays")
users[11]=twenty-three
users[13]=thirty-seven
users[51]=dream-to-life

echo ${users[11]}
echo ${users[13]}
echo ${users[51]}
echo ${users[43]}

# Sum of two array variables assigned to third
echo "users[5] = users[11] + users[13]"
users[5]=`expr ${users[11]} + ${users[13]}` #non-integer argument
users[5]=`expr ${users[11]}+${users[13]}` #concatenate
echo ${users[5]}

users[11]=1
users[51]=999
users[6]=`expr ${users[11]} + ${users[51]}`
echo ${users[6]} #1000