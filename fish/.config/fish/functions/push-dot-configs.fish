function push-dot-configs -a message --description 'commit and push dotfile changes to github'
    test -n "$message"; or set message "update"

    cd ~/.dotfiles/ && git add . && git commit -m "$message" && git push $argv[2..]
end
