#!/bin/bash

# Script:                       Tough Script
# Author:                       Jose Cardozo
# Date of latest revision:      11/14/2022
# Purpose:                      Headaches lol


    if [[ -f $filecreate ] ]
then
    echo "$filecreate exists as a file on your machine."
fi
    if [[ ! -f $filecreate ]]
then
    echo "$filecreate does not exist as a file on your machine."
fi

if [[ ! -f $filecreate]]
then
    mkdir $filecreate
fi

will work on this with some help from the others.
