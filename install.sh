#!/usr/bin/env bash
#this bash scipt is just for opensuse only now

FLAG=1 #default false
CFGNAME=NULL
DESTDIR=NULL
TOOLNAME=NULL
HOMEDIR=~



cpcfg()
{
    cp -af $1 $2
}
is_success()
{
    $FLAG=$?
    $CFGNAME=$1

    if [ $FLAG -eq 0 ]; then
        echo "$CFGNAME config file install success"
    else
        echo "$CFGNAME config file install failed"
    fi
}

#install tools
which git
$FLAG=$?
if [ $FLAG -eq 0 ]; then
    echo "git is already installed"
else
    echo "install git... REQUIRE YOUR ROOT PER"

    sudo zypper install git

#config for tmux
cpcfg tmux.conf $HOMEDIR/.tmux.confg
is_success tmux

#config for vim
cpcfg vimrc $HOMEDIR/.vimrc
is_success vimrc
cpcfg vim $HOMEDIR/.vim
is_success vim

#config for 0h-my-zsh
cpcfg zshrc $HOMEDIR/.zshrc
is_success zshrc

