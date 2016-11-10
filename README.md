# my_config_files
A collection of my config files in Linux: vim, bash, screen, tmux, etc.

# Purpose of this repository
I'm tired of copying my usual configuration files in every Linux machine I use (VMs included). So I have created this repository to have them in a central location and copy them simply using git clone.

This repository is public because I think that some configurations can be usefull for some people. I have learned a lot reading other's people configuration file, so I want to share the fun :) But you are warned: they are my little experiments and could not be the best configurations for everybody.

# How to use
Simply clone the repository and make links to the files inside. For example, if you want to use the screenrc file:
```
ln -s ~/my_config_files/screenrc ~/.screenrc
ln -s ~/my_config_files/vimrc ~/.vimrc
ln -s ~/my_config_files/bashrc ~/.bashrc
ln -s ~/my_config_files/tmux.conf ~/.tmux.conf
```

Please, keep in mind that the dot prefix is ommited in filenames, but you must add it in the linked file.

## Vim config file
First you need to install Vundle plugin manager for Vim:
```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```
First time you run Vim, you must execute this command: :PluginInstall to install all plugins. Then reopen Vim and you are done


