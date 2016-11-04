# my_config_files
A collection of my config files in Linux: vim, bash, tmux, etc.

# Purpose of this repository
I'm tired of copying my usual configuration files in every Linux machine I use (VMs included). So I have created this repository to have them in a central location.

This repository is public because I think that some configurations can be usefull for some people. I have learnt a lot reading other's configuration file, so I want to share de fun :)

# How to use
Simply clone the repository and make links to the files inside. For example, if you want to use the screenrc file:
```
ln -s ~/my_config_files/screenrc ~/.screenrc
```

Please, be aware that the dot preceding the name is ommited in this repository, but you must add it in the linked file.

## Vim config file
First you need to install Vundle plugin manager for Vim:
```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```
First time you run Vim, you must execute this command: :PluginInstall
