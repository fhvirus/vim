call plug#begin('~/.vim/plugged')
Plug 'cespare/vim-toml'
Plug 'pangloss/vim-javascript'
Plug 'joker1007/vim-markdown-quote-syntax'
Plug 'vim-latex/vim-latex'
Plug 'gi1242/vim-tex-syntax'
Plug 'godlygeek/tabular'
Plug 'rlue/vim-barbaric'
Plug 'fhvirus/learn-hjkl'
Plug 'preservim/nerdtree'
Plug 'mhinz/vim-startify'
Plug 'itchyny/lightline.vim'
call plug#end()

" for barbaric
set ttimeoutlen=0

" for lightline
set noshowmode
let g:lightline = { 'colorscheme': 'wombat' }
