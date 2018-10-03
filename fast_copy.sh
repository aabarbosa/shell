# preprocess files removing spaces
find $1 -name "* *.epub" -type f -print0 | \
while read -d $'\0' f; 
do 
  	mv "$f" "${f// /_}"; 
done

# basename, dirname, they do not behave properly when filename contain space.
DIR_PATH=`dirname $1`/shadow
REP_NUMBER=0
mkdir $DIR_PATH
for j in `find $1 -name \*.epub`
do 
	BASENAME=`basename $j`
	if [ -e $DIR_PATH/$BASENAME ]; then
		cp $j $DIR_PATH
	else 
		mkdir "./shadow/$REP_NUMBER"
		cp $j $DIR_PATH/REP_NUMBER
		$REP_NUMBER++
	fi
done
