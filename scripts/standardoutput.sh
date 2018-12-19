To get the output of time into a var use the following:

mytime="$(time ( ls ) 2>&1 1>/dev/null )"
echo "$mytime"

