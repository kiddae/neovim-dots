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

"coc-nvim keybindings.
" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'
