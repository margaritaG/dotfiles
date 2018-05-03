#!/bin/sh

HOME_FOLDER=/home/$USER
DOTFILES_PATH="/home/${USER}/dotfiles"

# zshrc
ln -sf "$DOTFILES_PATH/zsh/zshrc" "$HOME_FOLDER/.zshrc"
