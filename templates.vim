""Templates
if has("autocmd")
    augroup templates
        autocmd BufNewFile *.tex 0r ~/.config/nvim/templates/skeleton.tex
        autocmd BufNewFile *.cpp 0r ~/.config/nvim/templates/main.cpp
        autocmd BufNewFile *.c 0r ~/.config/nvim/templates/main.c
        autocmd BufNewFile Makefile 0r ~/.config/nvim/templates/Makefile
        autocmd BufNewFile *.h 0r ~/.config/nvim/templates/skeleton.h
    augroup END
endif
