NORMAL=$(tput sgr0)
GREEN=$(tput setaf 2; tput bold)
YELLOW=$(tput setaf 3)
RED=$(tput setaf 1)

function red() {
    echo -e "$RED$*$NORMAL"
}

function green() {
    echo -e "$GREEN$*$NORMAL"
}

function yellow() {
    echo -e "$YELLOW$*$NORMAL"
}

# To print success
# green "Task has been completed"

# To print error
# red "The configuration file does not exist"

# To print warning
# yellow "You have to use higher version."

function debug() { [ "$DEBUG" ] && echo ">>> $*"; }

# For any debug message
# debug "Trying to find config file"


cat << EOF

Usage: myscript <command> <arguments>

VERSION: 1.0

Available Commands

    install - Install package

    uninstall - Uninstall package

    update - Update package

    list - List packages

EOF

# default values example
# URL=${URL:-http://localhost:8080}

# checking the length of strings
# ${#authy_api_key}
