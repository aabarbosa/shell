# preprocess
./repl_spaces.sh --source-only
replace_spaces() $1 *.pdf

# Copy files that match regexp to a shadow folder at dirname with same source folder structure.
DIR_SHADOW=`dirname $1`/shadow
(rm -fr $DIR_SHADOW; mkdir $DIR_SHADOW)
for PATH_ in `find $1 -name \*.pdf`
do 
    echo `dirname $PATH_`
	DIR_NAME=`dirname $PATH_`
    if [ -e $DIR_SHADOW/$DIR_NAME ]; then
	    cp  $PATH_ $DIR_SHADOW/$DIR_NAME
    else 
        mkdir -p -- $DIR_SHADOW/$DIR_NAME
	    cp  $PATH_  $DIR_SHADOW/$DIR_NAME
    fi   
done
