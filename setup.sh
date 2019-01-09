#!/bin/bash
# Author: Tony Vo
# Description: Quick set up script

main() {
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

move_dot_files() {
    echo 'Overriding .vimrc...'
    mv .vimrc ~/

    echo 'Overriding .tmux.conf...'
    mv .tmux.conf ~/

    echo 'Overriding .bashrc...'
    mv .bashrc ~/
}

main
