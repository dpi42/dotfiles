# dotfiles

delux, no really

# hiding ~/dotfiles from finder

$ chflags hidden ~/dotfiles
$ chflags nohidden ~/dotfiles

# Remind me again...

git clone ...
ln -s dotfiles/.vim ~/.vim
...
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle
PluginInstall
