#!/bin/bash - 
#===============================================================================
#
#          FILE: arith.eval.sh
# 
#         USAGE: ./arith.eval.sh 
# 
#   DESCRIPTION: arithmetic evaluation of octal, decimal, hex numbers
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 05/06/2023 14:02
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

decimal=15
octal=017
hex=0x0f

if [ "$decimal" -eq "$octal" ]
then
	echo "$decimal equals $octal"
else
	echo "they are not equal!"
fi	# this does NOT evaluate inside []

# using the double brackets construct [[ ]]
if [[ "$decimal" -eq "$octal" ]]
then
	echo "$decimal equals $octal"
else
	echo "they are not equal!"
fi	# this evaluates inside double [[]]
if [[ "$decimal" -eq "$hex" ]]
then
	echo "$decimal equals $hex"
else
	echo "they are not equal!"
fi	# this evaluates inside double [[]]
