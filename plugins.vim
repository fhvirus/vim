call plug#begin('~/.vim/plugged')
Plug 'cespare/vim-toml'
Plug 'pangloss/vim-javascript'
Plug 'joker1007/vim-markdown-quote-syntax'
Plug 'vim-latex/vim-latex'
" Plug 'gi1242/vim-tex-syntax'
Plug 'godlygeek/tabular'
Plug 'fhvirus/learn-hjkl'
Plug 'preservim/nerdtree'
Plug 'mhinz/vim-startify'
Plug 'itchyny/lightline.vim'
Plug 'ap/vim-css-color', { 'for': 'css' }
Plug 'hail2u/vim-css3-syntax', { 'for': 'css' }
Plug 'mattn/emmet-vim', { 'for': 'html' }
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
call plug#end()

" for lightline
set noshowmode
let g:lightline = { 'colorscheme': 'wombat' }

" NERDTree mappings
nnoremap <silent> n :NERDTreeFocus<CR>
nnoremap <silent> t :NERDTreeToggle<CR>
nnoremap <silent> f :NERDTreeFind<CR>

" Startify mappings
nnoremap <silent> <C-N> :Startify<CR>
