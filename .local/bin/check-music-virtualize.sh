state=`eww state`

deleteLastLine(){
        cp ~/dotfiles/.config/bspwm/bspwmrc ~/dotfiles/.config/bspwm/bspwmrc.tmp
    sed '$ d' ~/dotfiles/.config/bspwm/bspwmrc.tmp > ~/dotfiles/.config/bspwm/bspwmrc
    rm -f ~/dotfiles/.config/bspwm/bspwmrc.tmp
}

if [[ $state == *"cava"* ]]; then
    eww open --toggle music-virtualize -c ~/dotfiles/.config/eww
    bspc wm -r
    echo "bspc config bottom_padding 0" >> ~/dotfiles/.config/bspwm/bspwmrc
else
    eww open --toggle music-virtualize -c ~/dotfiles/.config/eww
    deleteLastLine
    bspc wm -r
fi