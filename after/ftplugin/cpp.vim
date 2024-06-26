nmap <buffer> <leader>ct :%d<CR>:r owoPATH/templates/template.cpp<CR>kJ19zF23G
nmap <buffer> <leader>cm :%d<CR>:r owoPATH/templates/minimum.cpp<CR>kJ5G
nmap <buffer> <leader>ci :vs owoPATH/in.in<CR>:vert res 30<CR>
nmap <buffer> <leader>cc :w<CR>:!g++ -Wall -Wconversion -Wfatal-errors -g -std=c++17 -fsanitize=undefined,address -DOWO -DNONTOI "%" -o owoPATH/run<CR>
nmap <buffer> <leader>cr :w<CR>:!echo "\t\tinput\n" && cat owoPATH/in.in && echo "\n\t\toutput\n" && owoPATH/run < owoPATH/in.in<CR>

" clang-format mappings
map <silent> <C-K> :py3f ~/.vim/clang-format.py<CR>
imap <silent> <C-K> <C-O>:py3f ~/.vim/clang-format.py<CR>

" Load template
command -buffer -nargs=1 Load :r owoPATH/templates/<args>.cpp

" Hash selected range (from kactl)
ca Hash w !cpp -dD -P -fpreprocessed \| tr -d '[:space:]' \| md5sum \| cut -c-6
