if has("gui_macvim")
	set go=aAce
	set transparency=10
	set guifont=Monaco:h14
    set guifontwide="LiSung":h18
endif

"set  nocompatible
set history=256
set autowrite
set autoread
set clipboard+=unnamed " Yanks go on clipboard instead
set nowritebackup
set nobackup
set wrap
set hidden "The current buffer can be put to the background without write to disk

set hlsearch 	"Highlitht search
set ignorecase 	"Do case insensitive matching search
set smartcase	"Be sensitive when there's a capital letter
set incsearch 	"increament search

set fo+=o " Automatically insert the current comment leader after hitting 'o' or 'O' in Normal mode.
set fo-=r " Do not automatically insert a comment leader after an enter
set fo-=t " Do no auto-wrap text using textwidth (does not apply to comments)

set backspace=indent,eol,start	" more powerful backspacing

set tabstop     =4      " Set the default tabstop
set softtabstop =4
set shiftwidth  =4      " Set the default shift width for indents
set expandtab           " Make tabs into spaces (set by tabstop)
set smarttab            " Smarter tab levels

set autoindent
set cindent
set cinoptions=:s,ps,ts,cs
set cinwords=if,else,while,do,for,switch,case

syntax on                             " enable syntax
filetype plugin indent on             " Automatically detect file types.


set encoding=utf-8
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936

map <F2> <ESC>:%s/%0A//ig<CR>
autocmd! bufwritepost .vimrc source ~/.vimrc


call pathogen#infect()
set background=dark
colorscheme solarized

" NERDTREE
" Close vim if the only windows left open is Nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" Open NERDTREE if no file specified
autocmd vimenter * if !argc() | NERDTree | endif


