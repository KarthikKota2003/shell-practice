#!/bin/bash

if (( $# != 1 ));then
    echo "Arguement is missing"
    exit 1
else
    for i in $(seq 1 "$1");
    do 
        if (("$1" % "$i" == 0));then
            echo "$1 is not prime number"
            exit 0
        fi
    done

    echo "$1 is prime number"
    exit 0
fi