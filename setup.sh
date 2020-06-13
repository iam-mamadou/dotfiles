#!/bin/bash
DARCULAR_THEME_URL="https://raw.githubusercontent.com/blueshirts/darcula/master/colors/darcula.vim"

PACKAGES=(
    iterm2
    tmux
    fzf    
)

touch /Users/$(whoami)/.hushlogin
mkdir -p backup/$(whoami)

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
