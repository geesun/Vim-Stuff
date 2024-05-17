Overview
========

This is my .vimrc and plugins, plugins are manageed by [vim-plug](https://github.com/junegunn/vim-plug).

I'm a C/C++ developer,so this vim profile is very suitable for C/C++ developer, I have install the following plug in: 

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

ShortKey
============
* F12 - Create the cscope database 
* F10 - Create the arm64 Linux cscope database  
* CTRL + p - Nav buffer and open a buffer
* CTRL + ] - Jump to this tag define 
* CTRL + T - Jump back 
* CTRL + \ + s - Find the symbol reference
* SPACE + z  - Toggle full screen
* SPACE + m  - Toggle the mini buf

