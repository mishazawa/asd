# install arch deps 

DEPS=.deps.txt

echo "Installing apps."

sudo pacman -Syu $(cat $DEPS)

echo "TODO"
## TODO
#
# - clone repo
# - move folders
# - install fonts
# - install aliases
# - install nvim
# - install nvchad
# - hw stuff (touchpad, brightness)
# - wallpaper
# - reboot
