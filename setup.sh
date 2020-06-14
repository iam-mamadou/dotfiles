#!/bin/bash

USER_DIR=/Users/$(whoami)
DARCULAR_THEME_URL="https://raw.githubusercontent.com/blueshirts/darcula/master/colors/darcula.vim"

PACKAGES=(
    iterm2
    tmux
    fzf    
)

BACKUP_DIR=backup/$(whoami)

mkdir -p $BACKUP_DIR
echo "backing up using dot files ..."
mv $USER_DIR/.vimrc $BACKUP_DIR/.vimrc 

ln -sf $USER_DIR/dotfiles/.vimrc $USER_DIR/vimrc

touch $USER_DIR/.hushlogin

echo "downloading darcula theme ..."
wget -q -N -P ~/.vim/colors/ \
    ${DARCULAR_THEME_URL}

echo "installing packages"
for package in "${PACKAGES[@]}"
do
    echo " - $package"
    brew install $package
done

echo "installing oh-my-zsh"
sh -c "$(wget -N -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# To install useful key bindings and fuzzy completion:
$(brew --prefix)/opt/fzf/install
