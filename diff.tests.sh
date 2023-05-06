#!/bin/bash - 
#===============================================================================
#
#          FILE: diff.tests.sh
# 
#         USAGE: ./diff.tests.sh 
# 
#   DESCRIPTION: equivalence of test, /usr/bin/test, [], and /usr/bin/]
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: example 7-2 advance bash scripting https://tldp.org/LDP/abs/html/testconstructs.html
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 05/06/2023 13:22
#      REVISION:  ---
#===============================================================================

# set -o nounset                              # Treat unset variables as an error
echo
if test -z "$1"
then
	echo "no command-line arguments provided!"
else
	echo "first command line argument is $1"
fi

echo
if /usr/bin/test -z "$1"
then
	echo "no command-line arguments provided!"
else
	echo "first command line argument is $1"
fi


echo
if [ -z "$1" ]
then
	echo "no command-line arguments provided!"
else
	echo "first command line argument is $1"
fi


echo
if /usr/bin/[ -z "$1" ]
then
	echo "no command-line arguments provided!"
else
	echo "first command line argument is $1"
fi
