Vagrant Ubuntu fresh install script
===================================

These scripts are to automate the setup of command line tools in Vagrant machines.

What's Included? 
----------------

- [clang] (http://clang.llvm.org/)
- [cowsay] (https://en.wikipedia.org/wiki/Cowsay)
- [fortune] (https://linux.die.net/man/6/fortun://linux.die.net/man/6/fortune)
- [gcc] (https://gcc.gnu.org/)
- [gdb] (https://www.sourceware.org/gdb/)
    - [.gdbinit dashboard] (https://github.com/cyrus-and/gdb-dashboard)
- [git] (https://git-scm.com/)
- [htop] (https://hisham.hm/htop/)
- [python] (https://www.python.org/)
- [ruby] (https://www.ruby-lang.org/en/)
- [tree] (http://mama.indstate.edu/users/ice/tree/)
- [valgrind] (http://valgrind.org/)
- [vim] (http://www.vim.org/)
    - with [lua] (https://www.lua.org/)
    - [spf13's ultimate vim distribution] (http://vim.spf13.com/)
- [zsh] (http://www.zsh.org/)
    - with [zprezto] (https://github.com/sorin-ionescu/prezto)
    - [.zshrc] (https://github.com/jonrellsworth/ubuntu-config/blob/master/.zshrc)
    - [.zpreztorc] (https://github.com/jonrellsworth/Vagrant-Ubuntu-fresh-install-script/blob/master/prezto/zpreztorc)
    - [.zprofile] (https://github.com/jonrellsworth/Vagrant-Ubuntu-fresh-install-script/blob/master/prezto/zprofile)
    - [.zlogin] (https://github.com/jonrellsworth/Vagrant-Ubuntu-fresh-install-script/blob/master/prezto/zlogin)

Usage
-----

1. wget into home directory of virtual machine:

    ```bash
    wget https://raw.githubusercontent.com/jonrellsworth/Vagrant-Ubuntu-fresh-install-script/master/initialUp.sh
    wget https://raw.githubusercontent.com/jonrellsworth/Vagrant-Ubuntu-fresh-install-script/master/zpreztoInstall.sh
    ```

2. Make scripts executable:

    `chmod 700 initialUp.sh zpreztoInstall.sh`

3. Run the initialUp.sh script first:

    `./initialUp.sh`

4. Logout and login again:

5. Run zpreztoInstall.sh if you want zprezto on your machine: 

    `./zpreztoInstall.sh`

### Prompt not displaying correctly?

If the prompt isn't displaying correctly it's probably because you are not using a powerline compatible font. I like Inconsolata-dz for powerline. 

- Find it [here] (https://github.com/powerline/fonts)

Tested on
---------

- Ubuntu 12.04 [hashicorp/precise64] (https://atlas.hashicorp.com/hashicorp/boxes/precise64)
- Ubuntu 16.04 [ubuntu/xenial64] (https://atlas.hashicorp.com/ubuntu/boxes/xenial64)
