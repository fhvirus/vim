" Toggle transparent background
let g:is_transparent = 1
function! Toggle_transparent_background()
  if g:is_transparent == 0
    " hi Normal guibg=NONE ctermbg=234
		colo monokai
    let g:is_transparent = 1
  else
    " hi Normal guibg=NONE ctermbg=NONE
		colo ron
    let g:is_transparent = 0
  endif
endfunction
nnoremap k :call Toggle_transparent_background()<CR>
