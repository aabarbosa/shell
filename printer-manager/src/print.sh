source init.sh

function set-monthly-cote {
    echo "How it was last month"
    cat files/users | column -t
    init-users
    echo "Giving you new cote......" # cote = quote.
    cat files/users | column -t
}

function verify-user-cote {
    
}