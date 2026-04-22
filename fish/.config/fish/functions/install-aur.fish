function install-aur --wraps='yay -S --noconfirm --needed --color=auto' --description 'alias install-aur=yay -S --noconfirm --needed --color=auto'
    yay -S --noconfirm --needed --color=auto $argv
end
