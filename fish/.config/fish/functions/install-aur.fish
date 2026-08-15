function install-aur --wraps='yay -S --noconfirm --needed --color=auto' --wraps='yay -S --noconfirm --needed' --description 'alias install-aur yay -S --noconfirm --needed'
    yay -S --noconfirm --needed $argv
end
