nmap <buffer> <F8> :w<CR>:!echo "\t\tinput\n" && cat "%" && echo "\n\t\toutput\n" && ~/OWO/run < "%"<CR>
