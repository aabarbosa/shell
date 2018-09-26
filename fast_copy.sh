DIR_PATH=`dirname $1`/shadow
REP_NUMBER=0
mkdir $DIR_PATH
for j in `find $1 -name \*.java`
do 
	BASENAME=`basename $j`
	if [ -e $DIR_PATH/$BASENAME ]; then
		cp $j $DIR_PATH
	else 
		cp $j $DIR_PATH.REP_NUMBER
		REP_NUMBER 
	fi
done
