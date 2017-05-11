if [ "$(uname)" = "Darwin" ]; then
    alias ls='ls -FHG'
    alias update='brew update && brew upgrade'
    alias upgrade='brew upgrade'
    alias clean='brew doctor'
    if [[ -d /Applications/MacVim.app/Contents/MacOS/ ]]; then
        alias vim=/Applications/MacVim.app/Contents/MacOS/vim
    fi
else
    alias ls='ls -F --color'
    alias update='sudo apt-get update && sudo apt-get upgrade'
    alias upgrade='sudo apt-get upgrade'
    alias clean='sudo apt-get autoclean && sudo apt-get autoremove'
    alias root_trash='sudo bash -c "exec rm -r /root/.local/share/Trash/{files,info}/*"'
fi

alias ll='ls -lh'
alias la='ls -la'
alias l='ls'
alias lls='ll -Sr'
alias less='less -imJMW'
alias tmux="TERM=screen-256color-bce tmux"  # Fix tmux making vim colors funky
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ping='ping -c 5'
alias startdb='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias stopdb='pg_ctl -D /usr/local/var/postgres stop -s -m fast'
alias gs='git status'
alias gd='git diff'
alias gca='git commit --amend'
alias gc='git commit -m'
alias gca='git commit --amend'
alias go="git checkout"
alias gr='git reset HEAD~'
alias push='git push origin master'
alias gpush='git push'
alias gpushset='git push --set-upstream origin'
alias list-branches="branch --sort=committerdate"  
alias pushf='git push --force-with-lease'
alias pull='git pull --rebase'
alias ts='tig status'
alias tmuxh='tmux attach -t host-session || tmux new-session -s host-session'
alias tmuxp='tmux attach -t pair-session || tmux new-session -t host-session -s pair-session'
alias rogue='tmux switch-client -t "pair-session"; tmux display-message "Entering Rogue Mode"'
alias buddy='tmux switch-client -t "host-session"; tmux display-message "Entering Buddy Mode"'
alias delete_pyc='find . -name \*.pyc -exec rm \{\} \+'
alias c='clear'
alias nombom="npm cache clear && bower cache clean && rm -rf node_modules bower_components && npm install && bower install"

alias es='ember s'
alias et='ember t -s'
alias etf='ember t -s -f'
alias ets='ember t -s -f scott'
alias ni='npm install'

