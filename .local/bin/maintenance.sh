#!/bin/sh
vim -c 'PluginUpdate' -c 'qa!'
zmanage update
sudo apt update && sudo apt upgrade -y
