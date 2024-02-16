#! /bin/bash

# install arch deps 
DEPS_URL="https://raw.githubusercontent.com/mishazawa/asd/1437508d95caa6795419dcea6a0f9a05b3dfb6ab/.deps.txt"
DEPS=/tmp/.deps.txt 

echo "Retreiving deps from $DEPS_URL"

curl $DEPS_URL > $DEPS 

echo $(cat $DEPS)

echo "Installing apps."

sudo pacman -Syu $(cat $DEPS)

rm $DEPS

cd /tmp 
git clone --depth 1 https://github.com/mishazawa/asd.git
cd asd

CONFIG_DEST="$HOME/test"
HOME_DEST="$HOME/test_home"

if [ ! -d $CONFIG_DEST ]; 
then
  mkdir -p $CONFIG_DEST
fi

cp -r .config/* $CONFIG_DEST 

if [ ! -d $HOME_DEST ]; 
then
  mkdir -p $HOME_DEST
fi

cp .bashrc \
  .bash_profile \
  .zshrc \
  .zprofile \
  .fehbg \
  .x* \
  $HOME_DEST

rm -rf /tmp/asd

## TODO
#
# - install fonts
# - install aliases
# - install nvim
# - install nvchad
# - hw stuff (touchpad, brightness)
# - wallpaper
# - reboot
