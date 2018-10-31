:'Replace regexp file space with underscore'

replace_space () {
    find $1 -name $2 -type f -print0 | \

    while read -d $'\0' f; 
    do 
        mv "$f" "${f// /_}"; 
    done
}