inoremap {<CR> {<CR>}<ESC>O
noremap ; :
nmap <F5> :%d<CR>"+P:w<CR>
nmap <F9> :%y+<CR>
nnoremap <silent> <ESC><ESC> :<C-U>set nohlsearch!<CR>
nnoremap r :so ~/.vimrc<CR>

" NERDTree mappings
nnoremap n :NERDTreeFocus<CR>
nnoremap t :NERDTreeToggle<CR>
nnoremap f :NERDTreeFind<CR>
