

array=( zero one two three four )

echo ${array[-1]}
echo ${array[0]}
echo ${array[1]}   
echo ${array[2]}   
echo ${array[3]}   
echo ${array[4]}   
echo ${array[5]}   #blank

assign=([17]=seventeen [24]=twenty-four)

echo -n "assign[17] = "
echo ${assign[17]}

echo -n "assign[24] = "
echo ${assign[24]}