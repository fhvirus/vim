" Commenting blocks of code.
" The following line can also be used for .cpp files:
" autocmd FileType cpp noremap <buffer> <silent> <C-P> :<C-B>silent! <C-E>s#^\(\s*\)#\1// <CR> :<C-B>silent! <C-E>s#^\(\s*\)// //\s*#\1<CR>
augroup commenting_blocks_of_code
  autocmd!
  autocmd FileType c,cpp,java,scala,rust,javascript,jack let b:comment_leader = '//'
  autocmd FileType sh,ruby,python                        let b:comment_leader = '#'
  autocmd FileType tex                                   let b:comment_leader = '%'
  autocmd FileType vim                                   let b:comment_leader = '"'
augroup END
nnoremap <silent> <C-_> :<C-B>silent <C-E>s,^\(\s*\),\1<C-R>=b:comment_leader<CR> ,e <bar>
		\s,^\(\s*\)<C-R>=b:comment_leader<CR> <C-R>=b:comment_leader<CR>\s*,\1,e<CR>:nohlsearch<CR>
vnoremap <silent> <C-_> :<C-B>silent <C-E>g/^/ s,\(\*\),\1<C-R>=b:comment_leader<CR> ,e <bar>
		\s,^\(\s*\)<C-R>=b:comment_leader<CR> <C-R>=b:comment_leader<CR>\s*,\1,e<CR>:nohlsearch<CR>
