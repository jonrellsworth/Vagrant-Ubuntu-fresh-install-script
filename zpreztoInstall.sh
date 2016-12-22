#!/bin/zsh

# prezto: http://wikimatze.de/better-zsh-with-prezto
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
    ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

# change prezto theme
ex .zpreztorc <<EOEX
    :%s/theme 'sorin'/theme 'agnoster'/g
    :wq
EOEX

exit
