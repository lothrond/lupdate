#!/bin/bash
#
# update flatpak sources
#

# update user
echo "Updating local flatpak sources..."
flatpak update

# update system
echo "Updating sytem-wide flatpak sources..."
sudo flatpak update

exit $?