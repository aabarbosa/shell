

# THESE CONCEPTS ARE HIGHLY IMPORTANT TO MASTER.

func() {
    echo "funcky"
}

params() { # transform 'hey' into: 'url_host', 'url_port', ...
   local "$@" # inject caler arguments in local scope
   local url_host="..." url_path="..." # calculate 'url_*' components
   declare -p ${!url_*} # return only 'url_*' object fields to the caller
}

nain() { # invoke url parser and inject 'url_*' results in local scope
    # $@ is able to capture this parameter, but why?
   eval "$(params user="hey func")" # ls -a is executed
   
   
   echo "host=$url_host path=$url_path" # use 'url_*' components
}

url_parse() { # parse 'url' into: 'url_host', 'url_port', ...
   local "$@" # inject caller 'url' argument in local scope
   local url_host="..." url_path="..." # calculate 'url_*' components
   declare -p ${!url_*} # return only 'url_*' object fields to the caller
}

main() { # invoke url parser and inject 'url_*' results in local scope
   eval "$(url_parse url=http://host/path)" # parse 'url'
   echo "host=$url_host path=$url_path" # use 'url_*' components
}