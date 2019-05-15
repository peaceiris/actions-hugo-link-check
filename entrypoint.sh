#!/bin/sh

# fail on unset variables and command errors
set -e -o pipefail # -x: is for debugging

LINE='##############################'
MSGS='######## start action ########'
MSGF='####### finish action ########'

echo ${LINE}
echo ${MSGS}
echo ${LINE}

ls -la
hugo server > /dev/null &
eval "muffet ${OPTIONS} 'http://localhost:1313'"

echo ${LINE}
echo ${MSGF}
echo ${LINE}
