nmap <buffer> <F3> :%d<CR>:r ~/OWO/templates/template.cpp<CR>kJ18zF22G
nmap <buffer> <F4> :vs ~/OWO/in.in<CR>:vert res 30<CR>
nmap <buffer> <F6> :%d<CR>:r ~/OWO/templates/minimum.cpp<CR>kJ6G
nmap <buffer> <F7> :w<CR>:!g++ "%" -o ~/OWO/run -std=c++17 -Wall -Wconversion -Wfatal-errors -g -DOWO -fsanitize=undefined,address<CR>
nmap <buffer> <F8> :w<CR>:!echo "\t\tinput\n" && cat ~/OWO/in.in && echo "\n\t\toutput\n" && ~/OWO/run < ~/OWO/in.in<CR>

" clang-format mappings
map <silent> <C-K> :py3f ~/.vim/clang-format.py<CR>
imap <silent> <C-K> <C-O>:py3f ~/.vim/clang-format.py<CR>

" Load template
command -buffer -nargs=1 Load :r ~/OWO/templates/<args>.cpp

" Hash selected range (from kactl)
ca Hash w !cpp -dD -P -fpreprocessed \| tr -d '[:space:]' \| md5sum \| cut -c-6
