" se enc=utf-8 scripte=utf-8 fenc=utf-8
set encoding=utf-8
scriptencoding=utf-8
set fileencoding=utf-8

" se t_Co=256 tgc | sy on | colo vim-material
set t_Co=256
set term=xterm-256color
set termguicolors
syntax on
colorscheme nord
set nocompatible
hi Normal guibg=NONE ctermbg=NONE

" se nu ru rnu cin cul sc so=4 ts=2 sw=2 sts=2 bs=2 ls=2 bo=a
set number
set ruler
set relativenumber
set cindent
set cursorline
set showcmd
set scrolloff=4
set tabstop=2
set shiftwidth=2
set softtabstop=2
set backspace=2
set laststatus=2
set belloff=all
set expandtab

" se hls is ic scs
set hlsearch
set incsearch
set ignorecase
set smartcase

" se aw tm=50 nowrap spr | filet plugin indent on
set autowrite
" set timeoutlen=50
set nowrap
set splitright
filetype plugin indent on
set omnifunc=syntaxcomplete#Complete

" setlocal spell
" set spelllang=en_us,cjk

abbr owoPATH ~/code/owo
