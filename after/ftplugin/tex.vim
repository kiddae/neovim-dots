command! -b Compile :VimtexCompile
command! -b RunProgram :VimtexView
call UpdateCommands()
nnoremap <buffer> <leader><F4> :VimtexCompile<CR>
nnoremap <buffer> <leader><F5> :VimtexView<CR>
