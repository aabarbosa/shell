mes=$1
file=$2
grep "^$mes" $file | egrep -o 'user [0-9]m[0-9].[0-9]+s sys [0-9]m[0-9].[0-9]+s' | 
awk '{print $2 + $4}'  
