#!/bin/bash

# Script:                       lshw Script
# Author:                       Jose Cardozo
# Date of latest revision:      11/15/2022
# Purpose:                      Information about your computer

# Declaration of variables

# Main
# Search the output of lshw command and returns every line with the word bridge in it
# lshw | grep “bridge” 
echo "CPU"
lshw | grep "cpu" -A 6 | head -6
echo "MEMORY"
lshw | grep "memory" -A 4 | head -4
echo "DISPLAY ADAPTER"
lshw | grep "display" -A 12 | head -12
echo "NETWORK ADAPTER"
lshw | grep "network" -A 9 | head -9


# TRIED TO DO STRETCH GOAL BUT THIS IS WHAT I GOT WHEN I RAN THE 'dmidecode', I BELIEVE IS BECAUSE I DONT HAVE A REAL LAB COMPUTER.
# sudo dmidecode
# dmidecode 3.2
# Scanning /dev/mem for entry point.
# No SMBIOS nor DMI entry point found, sorry.
