#!/bin/sh

export _JAVA_AWT_WM_NONREPARENTING=1
export GDK_BACKEND=wayland
export GTK_CSD=0
export QT_QPA_PLATFORM=wayland
export QT_QPA_PLATFORMTHEME=qt5ct
QT_WAYLAND_DISABLE_WINDOWDECORATION=1
export SDL_VIDEODRIVER=wayland
export WLR_DRM_NO_ATOMIC=1
export XDG_CURRENT_DESKTOP=sway
export XDG_SESSION_DESKTOP=sway
export XCURSOR_THEME=Future-dark-cursors
export XCURSOR_SIZE=24

# GTK
gnome_schema="org.gnome.desktop.interface"
gsettings set $gnome_schema gtk-theme 'phocus'
gsettings set $gnome_schema font-name 'Iosevka Nerd Font 10'
gsettings set $gnome_schema cursor-theme 'Future-dark-cursors'
gsettings set $gnome_schema cursor-size '24'

exec dbus-launch --exit-with-session dwl -s "dwlb-sw & run-sw <&-"
