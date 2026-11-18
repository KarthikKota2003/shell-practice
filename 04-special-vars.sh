#!/bin/bash

echo "Running as: $USER"

echo "Directory: $PWD"

echo "Home: $HOME"

echo "Script PID: $$"

echo "Running sleep command"

sleep 10 &

echo "Background PID: $!"

echo "RANDOM: $((RANDOM%100 +1 ))"

echo "Script ran in: $seconds"