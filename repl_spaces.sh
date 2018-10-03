:'Replace regexp file space with underscore'

replace_space ($regexp) {
    find $1 -name $regexp -type f -print0 | \

    while read -d $'\0' f; 
    do 
        mv "$f" "${f// /_}"; 
    done
}