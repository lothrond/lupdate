#!/bin/bash
#
# update apt packages
#

# update repos
echo "Updating apt repositories..."
sudo apt update

# update sources
echo "Upgrading apt sources..."
sudo apt upgrade

# remove junk
echo "Removing obsolete apt sources..."
sudo apt autoremove

exit $?