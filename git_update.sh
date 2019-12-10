#!/bin/bash

# Update git sources in GIT_REPO_DIR
gitdir=( ~/source )

function git_update() {
    echo "Pulling in latest changes of ${}..."
    for x in "${gitdir[@]}"; do
        cd $x; gdirs=( $(ls) )
        for y in "${gdirs[@]}"; do
            cd $x/$y; echo "Pulling in latest changes for ${y}..."
            git pull; echo
        done
    done
}
