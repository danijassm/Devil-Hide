#!/bin/bash
if [[ "$1" = "" ]]; then
    echo "Usage: dcheck.sh {hidden}"
else
    {
    check="$(adb shell """if [[ -d """$1""" ]]
    then
    echo 0
    fi""")"
    } &> /dev/null
    if [[ "$check" = "0" ]]; then
        echo "0"
    else
        echo "1"
    fi
fi
