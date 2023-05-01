nmap <buffer> <F4> :%d<CR>:r owoPATH/templates/template.cpp<CR>kJ9zF13G
nmap <buffer> <F5> :%d<CR>:r owoPATH/templates/minimum.cpp<CR>kJ5G
nmap <buffer> <F6> :vs owoPATH/in.in<CR>:vert res 30<CR>
nmap <buffer> <F7> :w<CR>:!g++ -Wall -Wconversion -Wfatal-errors -g -std=c++20 -fsanitize=undefined,address -DOWO -lglpk "%" -o owoPATH/run<CR>
nmap <buffer> <F8> :w<CR>:!echo "\t\tinput\n" && cat owoPATH/in.in && echo "\n\t\toutput\n" && owoPATH/run < owoPATH/in.in<CR>

" clang-format mappings
map <silent> <C-K> :py3f ~/.vim/clang-format.py<CR>
imap <silent> <C-K> <C-O>:py3f ~/.vim/clang-format.py<CR>

" Load template
command -buffer -nargs=1 Load :r owoPATH/templates/<args>.cpp

" Hash selected range (from kactl)
ca Hash w !cpp -dD -P -fpreprocessed \| tr -d '[:space:]' \| md5sum \| cut -c-6
