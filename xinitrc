#!/bin/sh
#
# ~/.xinitrc
#

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# Exporting stuff ...
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
export XMODIFIERS=@im=ibus
export GTK_IM_MODULE="ibus"
export QT_IM_MODULE="ibus"
export LC_CTYPE=en_US.UTF-8

# Starting some stuff first ...
xset -b s noblank s off
xset +fp /usr/share/fonts/artwiz-fonts
ibus-daemon --xim &
unclutter &

# And finally, the WM!
xrdb ~/.Xresources
sudo kbd_mode -u
exec gnome-session
