if status is-interactive
    # environment
    set -x PATH $HOME/local/bin $HOME/.local/bin $PATH
    #set -x UV_PYTHON_INSTALL_MIRROR https://npmmirror.com/mirrors/python/
    set -gx UV_LINK_MODE copy

    set -gx RUSTUP_DIST_SERVER "https://rsproxy.cn"
    set -gx RUSTUP_UPDATE_ROOT "https://rsproxy.cn/rustup"
    source $HOME/.cargo/env.fish

    # HuggingFace
    set -gx HF_ENDPOINT https://hf-mirror.com


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
    abbr --add g 'git'
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
    abbr -a g git
    abbr -a ga git add
    abbr -a gaa git add --all
    abbr -a gst git status
    abbr -a gb git branch
    abbr -a gba git branch -vva
    abbr -a gbv git branch -vv
    abbr -a gstl git stash list
    abbr -a gbd git branch -d
    abbr -a gbD git branch -D
    abbr -a gco git checkout
    abbr -a gcob git checkout -b
    abbr -a gcom git checkout main
    abbr -a gcod git checkout develop
    abbr -a gcm git commit -m
    abbr -a gc! git commit --amend
    abbr -a gcl git clone
    abbr -a gd git diff -b -w --ignore-blank-lines
    abbr -a gdca git diff -b -w --ignore-blank-lines --cached
    abbr -a gsw git switch
    abbr -a gswb git switch -c
    abbr -a gsta git stash
    abbr -a gstp git stash pop
    abbr -a gupp git pull --rebase -p
    abbr -a gup git pull
    abbr -a gp git push
    abbr -a gpp git push --set-upstream origin
    abbr -a grb git rebase
    abbr -a gr git remote
    abbr -a grv git remote -v
    abbr -a glg git lg
    abbr -a gl git l
    abbr -a glgt git lgt
    abbr -a gm git merge
    
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
