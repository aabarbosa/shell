
function hello {
    echo Hello!
}
hello
echo foo 

function seqPrint {
    echo $*
}  

function quit {
    exit
}
function logout {
    logout
}
seqPrint `cat ./files/log`
seqPrint World
quit
echo foo 