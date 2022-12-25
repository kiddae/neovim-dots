"general
let mapleader = " "
set timeout timeoutlen=1000 ttimeoutlen=10
" inoremap jk <Esc>

"navigation
nnoremap <leader>u :UndotreeToggle<CR>
"navigates
nnoremap <C-h> :wincmd h<CR>
nnoremap <C-j> :wincmd j<CR>
nnoremap <C-k> :wincmd k<CR>
nnoremap <C-l> :wincmd l<CR>
nnoremap <C-w> :wincmd w<CR>
"moves
nnoremap <leader>h :wincmd H<CR>
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
" nnoremap <C-q> :bp<bar>sp<bar>bn<bar>bd<CR>
nnoremap <silent> <expr> <C-q> winnr('$')==1 && tabpagenr('$')==1 && (len(getbufinfo({'buflisted':1})))==1 ? ':bw<CR>:Dashboard<CR>' : ':bw<CR>'
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

" Compile and run
" Rules for each filetype: Rules.filetype = {'compile': "<cmd>", 'run': "<cmd>", 'silent': v:true|v:false}
" If adding/updating interactively, 
let b:Rules = {}
let b:Rules.python = {"compile": "", "run": "python ".fnameescape(expand('%')), "silent": v:false}
let b:Rules.cpp = {"compile": "make", "run": "time ./%<", "silent": v:false}
let b:Rules.c = b:Rules.cpp

function! UpdateCommands()
    if !has_key(b:Rules, &ft)
        return
    endif
    if get(b:Rules, &ft).silent
        command! -buffer Compile :execute "AsyncRun -post=copen " .. get(b:Rules, &ft).compile
    else
        command! -buffer Compile :execute "RunSplit " .. get(b:Rules, &ft).compile
    endif
    command! -buffer RunProgram :execute "RunSplit " .. get(b:Rules, &ft).run
    nnoremap <buffer> <leader><F4> :w<CR>:Compile<CR>
    nnoremap <buffer> <leader><F5> :w<CR>:RunProgram<CR>
    execute 'autocmd FileType ' . &ft . ' autocmd BufEnter <buffer> if filereadable(".vimrc") | source .vimrc | call UpdateCommands() | endif'
    execute 'autocmd FileType ' . &ft . ' autocmd BufEnter <buffer> call UpdateCommands()'
endfunction


nnoremap <silent> <leader>cn :DashboardNewFile<CR>
nnoremap <silent> <leader>ff :Telescope find_files<CR>
nnoremap <silent> <leader>fh :Telescope oldfiles<CR>
nnoremap <silent> <leader>vd :Telescope find_files cwd=~/.config/nvim <CR>
nnoremap <silent> <leader>tc :Telescope colorscheme <CR>
