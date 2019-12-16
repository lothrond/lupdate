#!/bin/bash

if [ $# -eq 1 ]; then
    LUPDATE_GITDIR=( $1 )
fi

# Update git sources in LUPDATE_GITDIR
for x in "${LUPDATE_GITDIR[@]}"; do
    cd $x; gdirs=( $(ls) )
    for y in "${gdirs[@]}"; do
        cd ${x}/${y}; echo "Pulling in latest changes for ${y}..."
        git pull; echo
    done
done

exit $?
