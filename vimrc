" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible
" allow backspacing over everything in insert mode
set backspace=indent,eol,start
set nobackup		" do not keep a backup file, use versions instead
set history=200		" keep 200 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch	" do incremental searching

set autoread		" set to auto read when a file is changed from the outside  
"Set 7 lines to the curors - when moving vertical..
set so=7 

"Disable folding
"set fen
"set fdl=0

""Text options
set expandtab
set shiftwidth=4
set tabstop=4
set smarttab
set lbr

"Auto indent
set autoindent		" always set autoindenting on
"Smart indet
set si
"C-style indenting
set cindent

colorscheme evening 
set guifont=DejaVu\ Sans\ Mono:h12
syntax on
set hlsearch

let mapleader = " "

"################################### vim plug start ##########################################

call plug#begin('~/.vim/plugged')

Plug 'craigemery/vim-autotag'

Plug 'chazy/cscope_maps'

Plug 'geesun/cscope_dynamic'
nmap <F12> <Plug>CscopeDBInit
nmap <F10> <Plug>CscopeDBLinuxInit

Plug 'vim-airline/vim-airline'
set laststatus=2

Plug 'vim-ctrlspace/vim-ctrlspace'
set showtabline=0
set hidden
let g:CtrlSpaceDefaultMappingKey = "<C-p>"

Plug 'fholgado/minibufexpl.vim'
let g:miniBufExplorerMoreThanOne = 2
let g:miniBufExplModSelTarget = 0
let g:miniBufExplUseSingleClick = 1
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplVSplit = 25
let g:miniBufExplSplitBelow=1
let g:miniBufExplSortBy = 'mru'
autocmd BufRead,BufNew :call UMiniBufExplorer
map <leader>m :MBEToggle<cr>


call plug#end()
"################################### vim plug end   ##########################################


"################################## 临时全屏###############
function! Zoom ()
    " check if is the zoomed state (tabnumber > 1 && window == 1)
    if tabpagenr('$') > 1 && tabpagewinnr(tabpagenr(), '$') == 1
        let l:cur_winview = winsaveview()
        let l:cur_bufname = bufname('')
        tabclose

        " restore the view
        if l:cur_bufname == bufname('')
            call winrestview(cur_winview)
        endif
    else
        tab split
    endif
endfunction

nmap <leader>z :call Zoom()<CR>
