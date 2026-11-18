#Checking root user
if [[ $USER != "root" ]]; then
    echo "Please run as root user"
    exit 1
fi

dnf list installed | grep $1 &>> /dev/null

if (($? == 0 ));then
    echo "$1 is already installed"
    exit 0
else
    dnf install $1 -y
    if (($? == 0));then
        echo "$1 installed successfully"
        exit 0
    else
        echo "$2 installation failed"
        exit 1
    fi
fi