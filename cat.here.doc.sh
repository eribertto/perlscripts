#!/bin/bash - 
#===============================================================================
#
#          FILE: cat.here.doc.sh
# 
#         USAGE: ./cat.here.doc.sh 
# 
#   DESCRIPTION: another 'cat' here document, using parameter substitution
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 05/09/2023 17:04
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

# try it with no argument, ./scriptname
# try it with one command line argument, ./scriptname ANYTHING
# try it with two arguments, ./scriptname "James Bond"
CMDLINEPARAM=1	# expect at least one param
# -ge mean greater or equal than, see help test
if [ $# -ge $CMDLINEPARAM ]
then
	NAME=$1
else
	NAME="John Doe"	# use default if no param is given
fi

RESPONDENT="the author of this fine script."
cat <<Endofmessage
Hello there, $NAME.
Greetings to you, $NAME, from $RESPONDENT.
# This comment shows up in the output, why?
Endofmessage

# Note that the blank lines show up in the output
# So does the comment
exit
