mes=$1
file=$2

echo "         CPU Usage Time"
grep "^$mes" $file | 
egrep -o 'user [0-9]m[0-9].[0-9]+s sys [0-9]m[0-9].[0-9]+s' | 
grep -E "user|sys" | sed s/[a-z]//g | awk '{print $1 + $2}'
echo
echo "          Histogram"
awk '{print $2}' $file | uniq -c | awk '{$1=sprintf("%-*s", $1, ""); gsub(" ", "=", $1); printf("%-10s%s\n", $2, $1)}'