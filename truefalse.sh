#!/bin/bash - 
#===============================================================================
#
#          FILE: truefalse.sh
# 
#         USAGE: ./truefalse.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 05/06/2023 10:10
#      REVISION:  ---
#===============================================================================

# set -o nounset                              # Treat unset variables as an error
# tip: if you're unsure how a certain condition might evaluate
# test itin an if-test
echo
echo "Testing \"0\""
if [ 0 ]
then
	echo "0 is true."
else
	echo "0 is true."
fi
echo
echo "Testing \"1\""
if [ 1 ]
then
	echo "1 is true."
else
	echo "1 if false."
fi

echo
echo "Testing \"-1\""
if [ -1 ]
then
	echo "-1 is true."
else
	echo "-1 if false."
fi
echo
echo "Testing \"NULL\""
if [ ]		# NULL (empty condition)
then
	echo "NULL is true."
else
	echo "NULL is false."
fi
echo
echo "Testing \"xyz\""
if [ xyz ]
then
	echo "random string is true."
else
	echo "random string is false."
fi

echo
echo "Testing \"\$xyz\""
if [ "$xyz" ]
then
	echo "Uninitialized variable is true"
else
	echo "Uninitialized variable is false"
fi

echo
echo "Testing \" -n \"\$xyz\""
if [ -n "$xyz" ]
then
	echo "NULL variable is true"
else
	echo "NULL variable is false"
fi

# when is 'false' true?
echo
echo "Testing \"false\""
if [ "false" ]
then
	echo "\"false\"is true."
else
	echo "\"false\"is false."
fi

echo
echo "Testing \"\$false\""
if [ "$false" ]
then
	echo "\"$false\" is true."
else
	echo "\"$false\" is false."
fi

