#!/bin/bash

ls /tmp &>> /dev/null

if (($?==0));then
    echo "SUCCESS"
else
    echo "FAILURE"
fi