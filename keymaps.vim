" inoremap kj <ESC>
" inoremap jk <ESC>
nmap <leader>pp :%d _<CR>"+P:w<CR>
nmap <leader>yy :%y+<CR>
nnoremap <silent> <ESC><ESC> :<C-U>set nohlsearch!<CR>
nnoremap r :so ~/.vimrc<CR>

" for wrap
nnoremap j gj
nnoremap k gk

" moving blocks of code from https://github.com/ThePrimeagen/init.lua/blob/master/lua/theprimeagen/remap.lua
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" for spell check
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

command SynID  echo synIDattr(synID(line("."), col("."), 1), "name")
