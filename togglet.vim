" Toggle transparent background
let g:is_transparent = 0
function! Toggle_transparent_background()
	colo nord
  if g:is_transparent == 0
		hi Normal guibg=#3E4252
    let g:is_transparent = 1
  else
    hi Normal guibg=NONE ctermbg=NONE
    let g:is_transparent = 0
  endif
endfunction
nnoremap <silent> k :call Toggle_transparent_background()<CR>
