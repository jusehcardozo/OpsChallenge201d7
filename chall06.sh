if [ condition ] ; then

# Command(s)

fi
# Example script: Conditional ("if") statement with the single condition (Source: Linuxhint)

#!/bin/bash
echo "Enter a number"
read n
if [ $n -lt 100 ]; then
printf "$n is less than 100\n"
fi
# Example script: Conditional ("if") statement with multiple conditions (Source: Linuxhint)

#!/bin/bash
echo "Enter username"
read un
echo "Enter password"
read pw
if [[ "$un" == "admin" && "$pw" = "superuser" ]]; then
echo "Login Successful."
fi

will work on this with some help from the others.
