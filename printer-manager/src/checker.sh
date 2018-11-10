

tail -f ./log | 
grep --line-buffered 'New Job queued...' | 
while read ; 
    do 
        echo "the job has been captured." ; 
    done