#!/bin/bash
# Author: Tony Vo
# Description: Quick set up script

install() {
    echo 'This script changes the following:'
    echo -e '\t git credentials'
    echo -e '\t.vimrc files in home directory'
    echo -e '\t.tmux.conf files in home directory'
    echo -e '\t.bashrc files in home directory'
    read -r -p 'Are you sure you want to continue? [Y/N]' response

    if [[ "$response" =~ ^([yY][eE][sS]|[yY])+$ ]]
    then
      change_git_credentials
      move_dot_files 
      install_vundle
    else
      echo 'Exiting... No actions completed.' 
    fi
}


change_git_credentials() {
    echo 'Changing git credentials...'
    git config --global user.email "tonyt.vo22@gmail.com"
    git config --global user.name "Tony Vo"
    echo 'Git credentials changed successfully'
}
install_vundle() {
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    vim +PluginInstall +qall


}
move_dot_files() {
    echo 'Overriding .vimrc...'
    cp .vimrc ~/

    echo 'Overriding .tmux.conf...'
    cp .tmux.conf ~/

    echo 'Overriding .bashrc...'
    cp .bashrc ~/
}

install
