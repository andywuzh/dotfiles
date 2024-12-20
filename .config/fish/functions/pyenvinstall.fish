function pyenvinstall
    mkdir -p $HOME/.pyenv/cache

    set -l vsn $argv
    test -f $HOME/.pyenv/cache/Python-$vsn.tar.xz || wget https://npmmirror.com/mirrors/python/$vsn/Python-$vsn.tar.xz -P $HOME/.pyenv/cache
    pyenv install $vsn
end
