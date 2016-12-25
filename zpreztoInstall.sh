#!/bin/zsh

# prezto: http://wikimatze.de/better-zsh-with-prezto
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
    ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

# wget prezto files
cd .zprezto/runcoms/
curl https://raw.githubusercontent.com/jonrellsworth/Vagrant-Ubuntu-fresh-install-script/master/prezto/zlogin >! zlogin
curl https://raw.githubusercontent.com/jonrellsworth/Vagrant-Ubuntu-fresh-install-script/master/prezto/zpreztorc >! zpreztorc
curl https://raw.githubusercontent.com/jonrellsworth/Vagrant-Ubuntu-fresh-install-script/master/prezto/zprofile >! zprofile

# need to add prompts to change the command line prompt
# need to add in zsh changes like clobber

