if status is-interactive
    # environment
    set -x PATH $HOME/local/bin $PATH

    # functions
    #source $HOME/.config/fish/functions/*.fish

    # zlua
    . $HOME/.z.lua/init.fish

    # pyenv
    set -Ux PYENV_ROOT $HOME/.pyenv
    fish_add_path $PYENV_ROOT/bin
    pyenv init - | source
    status --is-interactive; and pyenv virtualenv-init - | source

    # starship
    source (starship init fish --print-full-init | psub)

    # abbr
    abbr --add ga 'git add'
    abbr --add gaa 'git add --all'
    abbr --add gd 'git diff'
    abbr --add gdca 'git diff --cached'
    abbr --add gcl 'git clone'
    abbr --add gst 'git status'
    abbr --add gbv 'git branch -vvv'
    abbr --add gbav 'git branch -avvv'
    abbr --add grv 'git remote -v'
    abbr --add gco 'git checkout'
    abbr --add gcob 'git checkout -b'
    abbr --add gci 'git commit'
    abbr --add gcm 'git commit -m'
    abbr --add gp 'git push'
    abbr --add gup 'git pull'
    abbr --add gupp 'git pull --rebase'
    abbr --add gsta 'git stash'
    abbr --add gstal 'git stash list'
    abbr --add gstap 'git stash pop'

    abbr --add vim nvim
    abbr --add vi nvim

    abbr --add hx helix

    abbr --add s 'zellij attach --create andy'

    # alias
    alias vim='nvim'
    alias vi='nvim'

    # auto start zellij session in WezTerm
#    if string match -q -- 'WezTerm' $TERM_PROGRAM or string match -q -- 'alacritty' $TERM or string match -q -- 'kitty' $TERM
#        if not string length -q -- $ZELLIJ $ZELLIJ_SESSION_NAME
#            zellij attach --create andy
#        end
#    end

end


