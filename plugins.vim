call plug#begin('~/.vim/plugged')
Plug 'godlygeek/tabular'
Plug 'fhvirus/learn-hjkl'
Plug 'preservim/nerdtree'
Plug 'mhinz/vim-startify'
Plug 'itchyny/lightline.vim'
Plug 'ap/vim-css-color', { 'for': 'css' }
Plug 'hail2u/vim-css3-syntax', { 'for': 'css' }
Plug 'mattn/emmet-vim', { 'for': 'html' }
Plug 'lervag/vimtex', {'for': 'tex'}
Plug 'KeitaNakamura/tex-conceal.vim', {'for': 'tex'}
Plug 'zirrostig/vim-jack-syntax', {'for': 'jack'}
Plug 'cespare/vim-toml', {'for': 'toml'}
Plug 'pangloss/vim-javascript', {'for': 'js'}
Plug 'joker1007/vim-markdown-quote-syntax', {'for': 'md'}
Plug 'octol/vim-cpp-enhanced-highlight', {'for': 'cpp'}
Plug 'sirver/ultisnips'
Plug 'arcticicestudio/nord-vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'itchyny/calendar.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'simnalamburt/vim-mundo'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'stephpy/vim-yaml'
call plug#end()

" for lightline
set noshowmode
let g:lightline = { 'colorscheme': 'nord' }

" NERDTree mappings
nnoremap <silent> n :NERDTreeFocus<CR>
nnoremap <silent> t :NERDTreeToggle<CR>
nnoremap <silent> f :NERDTreeFind<CR>

" Startify mappings
nnoremap <silent> <C-N> :Startify<CR>

" for ultisnips
let g:UltiSnipsSnippetDirectories = ['~/.vim/UltiSnips']
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
let g:UltiSnipsEditSplit = 'vertical'

" for limelight
let g:limelight_conceal_ctermfg = 3
let g:limelight_conceal_guifg = '#616E88'

" for goyo
function! s:goyo_enter()
  if executable('tmux') && strlen($TMUX)
    silent !tmux set status off
    silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z
  endif
  set noshowmode
  set noshowcmd
  set scrolloff=999
  Limelight
endfunction

function! s:goyo_leave()
  if executable('tmux') && strlen($TMUX)
    silent !tmux set status on
    silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z
  endif
  set showmode
  set showcmd
  set scrolloff=4
  Limelight!
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

let g:goyo_width=120
nnoremap <silent> g :Goyo<CR>

"------------[ LaTeX Settings ]---------------"

" for vimtex
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
let g:vimtex_compiler_method = 'latexmk'
let g:vimtex_compiler_latexmk = {
		\ 'build_dir' : '',
		\ 'callback' : 1,
		\ 'continuous' : 1,
		\ 'executable' : 'latexmk',
		\ 'hooks' : [],
		\ 'options' : [
		\   '-pdfxe',
		\   '-shell-escape',
		\   '-verbose',
		\   '-file-line-error',
		\   '-synctex=1',
		\   '-interaction=nonstopmode',
		\ ],
		\}

" set conceallevel=2
let g:tex_conceal='abdmg'

" for tex-conceal
let g:tex_superscripts= "[0-9a-zA-W.,:;+-<>/()=]"
let g:tex_subscripts= "[0-9aehijklmnoprstuvx,+-/().]"
let g:tex_conceal_frac=1

" for calandar.vim
let g:calendar_endian = "big"
let g:calendar_date_separator = "-"
let g:calendar_week_number = 1
let g:calendar_frame = "unicode"
let g:calendar_google_calendar = 1
let g:calendar_google_task = 1
source ~/.vim/calendar-credentials.vim
