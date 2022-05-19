"general
let mapleader = " "
set timeout timeoutlen=1000 ttimeoutlen=10
" inoremap jk <Esc>

"navigation
nnoremap <leader>u :UndotreeToggle<CR>

nnoremap <C-h> :wincmd h<CR>  "navigates
nnoremap <C-j> :wincmd j<CR>
nnoremap <C-k> :wincmd k<CR>
nnoremap <C-l> :wincmd l<CR>
nnoremap <C-w> :wincmd w<CR>
nnoremap <leader>h :wincmd H<CR> "moves
nnoremap <leader>j :wincmd J<CR>
nnoremap <leader>k :wincmd K<CR>
nnoremap <leader>l :wincmd L<CR>
nnoremap <leader>+ :vertical resize +5<CR>
nnoremap <leader>- :vertical resize -5<CR>
nnoremap <leader>> :vertical resize >5<CR>
nnoremap <leader>< :vertical resize <5<CR>
nnoremap <leader>= :winc =<CR>
nnoremap <leader><F1> :WhichKey<CR>
nnoremap <leader>vr :so $MYVIMRC<CR>

nnoremap <S-tab> :bp<CR>
nnoremap <tab> :bn<CR>
nnoremap <C-q> :bp<bar>sp<bar>bn<bar>bd<CR>
nnoremap <leader>r :RunSplit ranger<CR>
nnoremap <leader>t :RunSplit $SHELL<CR>
nnoremap <leader>T :ExtTerm <CR>

nnoremap Y y$
tnoremap <Esc> <C-\><C-N>

"Automatic spell mistake fix
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

" explorer
nmap <C-n> :NvimTreeToggle<CR>


" Custom commands
command -nargs=1 RunSplit :vsp | :wincmd l | :vertical resize 80% | :terminal <args> 
command ExtTerm :silent !$TERMINAL &
nnoremap <F10> :call asyncrun#quickfix_toggle(6)<CR>

" Compile and run
" Rules for each filetype: Rules.filetype = {'compile': "<cmd>", 'run': "<cmd>", 'silent': v:true|v:false}
" If adding/updating interactively, 
let g:Rules = {}
let g:Rules.python = {"compile": "", "run": "python %", "silent": v:false}
let g:Rules.cpp = {"compile": "make", "run": "./%<", "silent": v:false}
let g:Rules.c = g:Rules.cpp

function! UpdateCommands()
    if !has_key(g:Rules, &ft)
        return
    endif
    if get(g:Rules, &ft).silent
        command! -buffer Compile :execute "AsyncRun -post=copen " .. get(g:Rules, &ft).compile
    else
        command! -buffer Compile :execute "RunSplit " .. get(g:Rules, &ft).compile
    endif
    command! -buffer RunProgram :execute "RunSplit " .. get(g:Rules, &ft).run
    nnoremap <buffer> <leader><F4> :w<CR>:Compile<CR>
    nnoremap <buffer> <leader><F5> :w<CR>:RunProgram<CR>
endfunction
call UpdateCommands()
