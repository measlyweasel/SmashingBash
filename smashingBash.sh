#!/bin/bash

# makes it so the script exits on error rather than
# plowing forward the way bash normally does
set -e

# this sets up the script's full path 
pushd `dirname $0` > /dev/null
SCRIPTPATH=`pwd`
popd > /dev/null


function main() {
 # do stuff here   
}

NORMAL=$(tput sgr0)
GREEN=$(tput setaf 2; tput bold)
YELLOW=$(tput setaf 3)
RED=$(tput setaf 1)

# To print error
# red "The configuration file does not exist"
function red() {
    echo -e "$RED$*$NORMAL"
}

# To print success
# green "Task has been completed"
function green() {
    echo -e "$GREEN$*$NORMAL"
}

# To print warning
# yellow "You have to use higher version."
function yellow() {
    echo -e "$YELLOW$*$NORMAL"
}

function debug() { [ "$DEBUG" ] && echo ">>> $*"; }

# For any debug message
# debug "Trying to find config file"

function help() {
    cat << EOF
Usage: myscript <help|command> (arguments)

VERSION: 1.0

Available Commands

    help - print this message
    
EOF
}

# default values example
# URL=${URL:-http://localhost:8080}

# checking the length of strings
# ${#authy_api_key}

main
