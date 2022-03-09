#!/bin/bash

sudo apt update -y && sudo apt upgrade -y
sudo apt install locate zsh -y

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "export PATH=$PATH:/usr/sbin" >> .zshrc
cp mytheme.zsh-theme ~/.oh-my-zsh/themes/
sed -i 's/ZSH_THEME.*/ZSH_THEME=mytheme/' ~/.zshrc
source .zshrc
