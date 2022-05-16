"general
let mapleader = " "
set timeout timeoutlen=1000 ttimeoutlen=10
" inoremap jk <Esc>

"navigation
nnoremap <leader>o :Files<CR>
nnoremap <leader>O :Files $HOME<CR>
nnoremap <leader>u :UndotreeToggle<CR>

nnoremap <C-h> :wincmd h<CR>
nnoremap <C-j> :wincmd j<CR>
nnoremap <C-k> :wincmd k<CR>
nnoremap <C-l> :wincmd l<CR>
nnoremap <leader>h :wincmd H<CR>
nnoremap <leader>j :wincmd J<CR>
nnoremap <leader>k :wincmd K<CR>
nnoremap <leader>l :wincmd L<CR>
nnoremap <C-w> :wincmd w<CR>
nnoremap <leader>+ :vertical resize +5<CR>
nnoremap <leader>- :vertical resize -5<CR>
nnoremap <leader>> :vertical resize >5<CR>
nnoremap <leader>< :vertical resize <5<CR>
nnoremap <leader>= :winc =<CR>
nnoremap <leader><F1> :WhichKey<CR>
nnoremap <leader>vr :so $MYVIMRC<CR>

nnoremap <S-tab> :bp<CR>
nnoremap <tab> :bn<CR>
nnoremap <silent> <C-s> :BufferPick<CR>
nnoremap <C-q> :bdelete<CR>
nnoremap <C-n> :enew<CR>
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
" To change interactively, change the value of
" b:CompileCommand/b:CompileSilent and then run :call UpdateCommands()
" accordingly.
let b:CompileSilent  = v:false
let b:RunSilent = v:false

" Individual settings for CompileCommand are set in the according ftplugin
" files.

function! UpdateCommands()
    if b:CompileSilent
        command! -b Compile :execute "AsyncRun -post=copen" b:CompileCommand
    else
        command! -b Compile :execute "RunSplit" b:CompileCommand
    endif
    if b:RunSilent
        command! -b RunProgram :execute "AsyncRun -post=copen" b:RunCommand
    else
        command! -b RunProgram :execute "RunSplit" b:RunCommand
    endif
endfunction


"Map to keys
call UpdateCommands()
nnoremap <buffer> <leader><F4> :w<CR>:Compile<CR>
nnoremap <buffer> <leader><F5> :w<CR>:RunProgram<CR>

