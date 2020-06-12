# WIP 

## Vundle
* Plugin managers
  ```bash
  https://github.com/VundleVim/Vundle.vim
  ```
* Plugins:
  - [lightline](https://github.com/itchyny/lightline.vim) - A light and configurable statusline/tabline plugin for Vim
    ```bash
    Plugin 'itchyny/lightline.vim'
    ```
  - [NERDTree](https://github.com/preservim/nerdtree) - A tree explorer plugin for vim.
  - Dracula: https://github.com/blueshirts/darcula
  - Goyo: https://github.com/junegunn/goyo.vim

* Tips:
  ```
  # https://vi.stackexchange.com/questions/10098/what-does-mean
  :%! sort is pretty much the same as (from a shell) cat file | sort > tmp && mv tmp file
  ```
## ZSH
* theme: https://github.com/sindresorhus/pure + https://github.com/sindresorhus/iterm2-snazzy 
* syntax highligthing: zsh-syntax-highlighting
  ```bash
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
  
  vim ~/.zshrc
  plugins=(.. zsh-syntax-highlighting)  
  
  source ~/.zshrc
  ```

## TODO:
* [] TMUX integration with Iterm2
* [] COC
* [] syntastic
* [] symbolic link
* [] default directory
* [] Map Cap to ESC key
* [] FZF https://github.com/junegunn/fzf.vim 
* [] Low-contrast Vim color scheme based on Seoul Colors: https://github.com/junegunn/seoul256.vim


https://vimawesome.com/
