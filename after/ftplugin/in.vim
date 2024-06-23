nmap <buffer> <leader>cr :w<CR>:!echo "\t\tinput\n" && cat "%" && echo "\n\t\toutput\n" && owoPATH/run < "%"<CR>
