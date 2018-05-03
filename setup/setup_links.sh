#!/bin/sh

HOME_FOLDER=/home/$USER
DOTFILES_PATH="/home/${USER}/dotfiles"

# zshrc
ln -sf "$DOTFILES_PATH/zsh/zshrc" "$HOME_FOLDER/.zshrc"
ln -sf "$DOTFILES_PATH/zsh/robbyrussell.zsh-theme" "$HOME_FOLDER/.oh-my-zsh/custom/themes/robbyrussell.zsh-theme"
