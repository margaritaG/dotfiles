#!/bin/sh

HOME_FOLDER=/home/$USER
DOTFILES_PATH="/home/${USER}/dotfiles"

# shell
ln -sf "$DOTFILES_PATH/bash/bash_common" "$HOME_FOLDER/.bash_common"
ln -sf "$DOTFILES_PATH/bash/bash_custom" "$HOME_FOLDER/.bash_custom"

# bash
ln -sf "$DOTFILES_PATH/bash/bashrc" "$HOME_FOLDER/.bashrc"

# zshrc
ln -sf "$DOTFILES_PATH/zsh/zshrc" "$HOME_FOLDER/.zshrc"
ln -sf "$DOTFILES_PATH/zsh/robbyrussell.zsh-theme" "$HOME_FOLDER/.oh-my-zsh/custom/themes/robbyrussell.zsh-theme"
