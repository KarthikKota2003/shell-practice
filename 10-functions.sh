print_header(){
    echo "======================="
    echo "$1"
    echo "======================="
}

check_status(){
    if (($1 == 0));then
        echo "SUCCESS: $2 installed"
    else
        echo "FAILURE: $2 failed"
    fi
}

install_package(){
    dnf list installed | grep $1 &>> /dev/null
    if (($? == 0));then
        echo "$1 is already installed"
    else
        dnf install $1 -y &>> /dev/null
        check_status $? $1
    fi
}

print_header "Installing packages"
install_package "git"
install_package "wget"
install_package "mongodb-org"
