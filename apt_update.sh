#!/bin/bash
#
# update apt packages
#

set -o errexit

# update repos
echo "Updating apt repositories..."
sudo apt update

# update sources
echo "Upgrading apt sources..."
sudo apt upgrade

# remove junk
echo "Removing orphaned apt sources..."
sudo apt autoremove

exit $?
