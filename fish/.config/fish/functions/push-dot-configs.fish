function push-dot-configs --wraps='cd ~/.dotfiles/ && git add . && git commit -m "update" && git push' --description 'alias push-dot-configs=cd ~/.dotfiles/ && git add . && git commit -m "update" && git push'
    cd ~/.dotfiles/ && git add . && git commit -m "update" && git push $argv
end
