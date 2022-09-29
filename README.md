## Remind me again...

* $ git clone ...
* $ ln -s dotfiles/.vim ~/.vim
* ...
* $ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle
* PluginInstall


## hiding ~/dotfiles from finder

* $ chflags hidden ~/dotfiles
* $ chflags nohidden ~/dotfiles

## https://unix.stackexchange.com/questions/71109/how-can-i-exit-from-read-only-mode-in-vim

:set noro 
:set no

## fonts

# https://github.com/powerline/fonts

## swap

Don't forget to add .vim/swap and .vim/backups (vimrc line 234+)