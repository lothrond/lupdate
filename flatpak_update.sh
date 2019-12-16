#!/bin/bash
#
# update flatpak sources
#

set -o errexit

# update user flatpak sources
echo "Updating local flatpak sources..."
flatpak update

exit $?
