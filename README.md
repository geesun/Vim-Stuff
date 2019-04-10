Overview
========

This is my .vimrc and plugins, plugins are manageed by [vim-plug](https://github.com/junegunn/vim-plug).

I'm a C/C++ developer,so this vim profile is very suitable for C/C++ developer, I have install the following plug in: 

* [YouCompleteMe](https://github.com/Valloric/YouCompleteMe)  -  Code complete
* [cscope_maps](https://github.com/chazy/cscope_maps) - cscope key mapping
* [cscope_dynamic](https://github.com/geesun/cscope_dynamic) - Dynamic generate cscope database  
* [vim-airline](https://github.com/vim-airline/vim-airline)  - Nice status bar
* [vim-ctrlspace](https://github.com/vim-ctrlspace/vim-ctrlspace) - Quick search/open buffer
* [minibufexpl](https://github.com/fholgado/minibufexpl.vim) - Buffer management

Installation
============
### 1.Install vim profile
 
```
    git clone https://github.com/geesun/Vim-stuff.git
    cd Vim-stuff
    cp vimrc ~/.vimrc 
    cp vim ~/.vim -a 
```
  
### 2. Install plugin

```
    :PlugInstall 
```

### 3. Install YouCompleteMe: 
######    Install Language support

```BASH
    cd ~/.vim/plugged/YouCompleteMe/ 
    ./install.py --clang-completer
```

######    Copy extra conf
In your project root directory, you can copy ycm_extra_conf.py and rename it as .ycm_extra_conf.py, 
and then change the CFLAGS in .ycm_extra_conf.py according to the project.
   
genHeader.sh used for generate the -I option in ycm_extra_conf.py, like below: 

```
    '-I','src/inc',
    '-I','include',
```

ShortKey
============
* F12 - Create the cscope database 
* CTRL + p - Nav buffer and open a buffer
* CTRL + ] - Jump to this tag define 
* CTRL + T - Jump back 
* CTRL + \ + s - Find the symbol reference

