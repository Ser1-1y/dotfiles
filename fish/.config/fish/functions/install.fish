function install --wraps='sudo pacman -S --noconfirm --needed --color=auto' --wraps='sudo pacman -S --noconfirm --needed' --description 'alias install sudo pacman -S --noconfirm --needed'
    sudo pacman -S --noconfirm --needed $argv
end
