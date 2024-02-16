[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

# init screensaver
{ xscreensaver -no-splash & };

# init compositor

{ xcompmgr -c & }

# add wallpaper
sh ~/.fehbg;

# set cursor
xsetroot -cursor_name left_ptr

# disable middleclick
xbindkeys

# run xmonad
exec xmonad
