" inoremap kj <ESC>
" inoremap jk <ESC>
nmap <F9> :%d _<CR>"+P:w<CR>
nmap <F10> :%y+<CR>
nnoremap <silent> <ESC><ESC> :<C-U>set nohlsearch!<CR>
nnoremap r :so ~/.vimrc<CR>

" for wrap
nnoremap j gj
nnoremap k gk

" for spell check
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

command SynID  echo synIDattr(synID(line("."), col("."), 1), "name")
