#!/bin/bash - 
#===============================================================================
#
#          FILE: glob.sample.sh
# 
#         USAGE: ./glob.sample.sh 
# 
#   DESCRIPTION: sample demo of proper use of globbing 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 05/09/2023 16:37
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

IFS="$(printf '\n\t')"	# remove space

# correct glob use:
# always use for-loop, prefix glob, check if file exists.

for file in ./*; do
	if [ -e "$file" ]; then
		file "$file"; echo; sleep 1
	fi
done
