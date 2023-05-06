#!/bin/bash - 
#===============================================================================
#
#          FILE: reply.sh
# 
#         USAGE: ./reply.sh 
# 
#   DESCRIPTION: prompt reply default
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 05/06/2023 14:47
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

# REPLY is the default value for a 'read' command
echo
echo -n "What is your favorite fruit? "
read
echo "Your favorite fruit is $REPLY."
# REPLY holds the value of last 'read' if and only if no variable is supplied
echo
echo -n "What is your favorite vegetable? "
read vegetable
echo "Your fav vegetable is $vegetable"
echo "but..."
echo "Value of \$REPLY is still $REPLY."

# $REPLY is still set to its previous value because the variable $vegetable absorbed
# the new 'read' value
echo
exit 0
