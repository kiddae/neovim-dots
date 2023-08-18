""Templates
if has("autocmd")
    augroup templates
        autocmd BufNewFile *.tex 0r ~/etc/nvim/templates/skeleton.tex
        autocmd BufNewFile *.cpp 0r ~/etc/nvim/templates/main.cpp
        autocmd BufNewFile *.c 0r ~/etc/nvim/templates/main.c
        autocmd BufNewFile Makefile 0r ~/etc/nvim/templates/Makefile
        autocmd BufNewFile *.h 0r ~/etc/nvim/templates/skeleton.h
    augroup END
endif
