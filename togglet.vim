" Toggle transparent background
let g:is_transparent = 1
function! Toggle_transparent_background()
  if g:is_transparent == 0
    " hi Normal guibg=NONE ctermbg=234
		set tgc
		colo monokai
    let g:is_transparent = 1
  else
    " hi Normal guibg=NONE ctermbg=NONE
		set tgc!
		colo ron
    let g:is_transparent = 0
  endif
endfunction
nnoremap <silent> k :call Toggle_transparent_background()<CR>
