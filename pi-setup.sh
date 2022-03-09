#!/bin/bash

sudo apt update -y && sudo apt upgrade -y
sudo apt install locate zsh vim -y

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
