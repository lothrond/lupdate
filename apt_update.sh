#!/bin/bash

function apt_update() {
    echo "Updating apt sources..."
    apt update
    apt upgrade && apt autoremove
}