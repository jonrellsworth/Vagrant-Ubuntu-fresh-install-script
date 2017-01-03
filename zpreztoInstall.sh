#!/bin/zsh

# zpreztoInstall.sh
# author: Jon Ellsworth <https://github.com/jonrellsworth>

# prezto: http://wikimatze.de/better-zsh-with-prezto
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
    ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

# get prezto files
cd .zprezto/runcoms/
curl https://raw.githubusercontent.com/jonrellsworth/Vagrant-Ubuntu-fresh-install-script/master/prezto/zlogin >! zlogin
curl https://raw.githubusercontent.com/jonrellsworth/Vagrant-Ubuntu-fresh-install-script/master/prezto/zpreztorc >! zpreztorc
curl https://raw.githubusercontent.com/jonrellsworth/Vagrant-Ubuntu-fresh-install-script/master/prezto/zprofile >! zprofile
