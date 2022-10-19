nmap <buffer> <F4> :%d<CR>:r ~/OWO/templates/template.c<CR>kJ4G
nmap <buffer> <F6> :vs ~/OWO/in.in<CR>:vert res 30<CR>
nmap <buffer> <F7> :w<CR>:!gcc "%" -o ~/OWO/run -std=c99 -Wall -Wconversion -Wfatal-errors -g -DOWO -fsanitize=undefined,address<CR>
nmap <buffer> <F8> :w<CR>:!echo "\t\tinput\n" && cat ~/OWO/in.in && echo "\n\t\toutput\n" && ~/OWO/run < ~/OWO/in.in<CR>

" clang-format mappings
map <silent> <C-K> :py3f ~/.vim/clang-format.py<CR>
imap <silent> <C-K> <C-O>:py3f ~/.vim/clang-format.py<CR>

" Hash selected range (from kactl)
ca Hash w !cpp -dD -P -fpreprocessed \| tr -d '[:space:]' \| md5sum \| cut -c-6
