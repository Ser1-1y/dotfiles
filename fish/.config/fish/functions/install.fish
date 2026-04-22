function install --wraps='sudo pacman -S --noconfirm --needed --color=auto' --description 'alias install=sudo pacman -S --noconfirm --needed --color=auto'
    sudo pacman -S --noconfirm --needed --color=auto $argv
end
