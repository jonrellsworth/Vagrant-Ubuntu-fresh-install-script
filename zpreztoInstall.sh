#!/bin/zsh

# prezto: http://wikimatze.de/better-zsh-with-prezto
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
    ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

# wget prezto files
cd .zprezto/runcoms/
wget -O 

# need to add prompts to change the command line prompt
# need to add in zsh changes like clobber

exit
exit
