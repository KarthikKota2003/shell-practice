#!/bin/bash

ls /tmp &>> /dev/null

if (($?==0));then
    echo "SUCCESS"
else
    echo "FAILURE"
    exit 1
fi

ls /home &>> /dev/null

if (($?==0));then
    echo "SUCCESS"
else
    echo "FAILURE"
    exit 1
fi

ping -c1 google.com

if (($?==0));then
    echo "Host reachable"
else
    echo "Host not reachable"
    exit 1
fi

exit 0

