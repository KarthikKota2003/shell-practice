#!/bin/bash

touch /tmp/script.log
touch /tmp/script-errors.log

ls /tmp >> /tmp/script.log
ls /tmp 2>> /tmp/script-errors.log

ls /fakedir >> /tmp/script.log
ls /fakedir 2>> /tmp/script-errors.log

date >> /tmp/script.log
date 2>> /tmp/script-errors.log