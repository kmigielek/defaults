#!/bin/bash

echo "export PATH=$PATH:/usr/sbin" >> ~/.zshrc
cp mytheme.zsh-theme ~/.oh-my-zsh/themes/
sed -i 's/ZSH_THEME.*/ZSH_THEME=mytheme/' ~/.zshrc
source ~/.zshrc
