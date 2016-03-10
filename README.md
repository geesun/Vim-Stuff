Overview
========

This is my .vimrc and plugins, plugins are manageed by [vim-plug](https://github.com/junegunn/vim-plug).

I'm a C/C++ developer,so this vim profile is very suitable for C/C++ developer, I have install the following plug in: 
[YouCompleteMe](https://github.com/Valloric/YouCompleteMe)  -  Code complete
[cscope_maps](https://github.com/chazy/cscope_maps) - cscope key mapping
[cscope_dynamic](https://github.com/geesun/cscope_dynamic) - Dynamic generate cscope database  
[vim-airline](https://github.com/vim-airline/vim-airline)  - Nice status bar
[vim-ctrlspace](https://github.com/vim-ctrlspace/vim-ctrlspace) - Quick search/open buffer
[minibufexpl](https://github.com/fholgado/minibufexpl.vim) - Buffer management

Installation
============
1. Install this profile,run the following commands in your terminal:
    git clone https://github.com/geesun/Android-stuff.git
    cd Android-stuff
    cp vimrc ~/.vimrc 
    cp vim ~/.vim -a 

2. Install plug in vim: 
    :PlugInstall 

3. Complete YouCompleteMe install with following commands: 
    cd ~/.vim/plugged/YouCompleteMe/ 
    ./install.sh --clang-completer --system-clang

    In your project root directory, you can copy ycm_extra_conf.py and rename it as .ycm_extra_conf.py, and then change the CFLAGS in .ycm_extra_conf.py according to the project.
    genHeader.sh used for generate the -I option in ycm_extra_conf.py, like below: 
    ```
        '-I','oam/adapt/inc',
        '-I','oam/adapt/inc/zte',
        '-I','cli/inc',
        '-I','cmn',
    ```

ShortKey
============
F12 - Create the cscope database 
CTRL + p - Nav buffer and open a buffer
CTRL + ] - Jump to this tag define 
CTRL + T - Jump back 
CTRL + \ + s - Find the symbol reference

