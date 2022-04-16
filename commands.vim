"general
let mapleader = " "
set timeout timeoutlen=1000 ttimeoutlen=10
inoremap jk <Esc>

"navigation
nnoremap <leader>o :Files<CR>
nnoremap <leader>O :Files $HOME<CR>
nnoremap <leader>u :UndotreeToggle<CR>

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>w :wincmd w<CR>
nnoremap <leader>+ :vertical resize +5<CR>
nnoremap <leader>- :vertical resize -5<CR>
nnoremap <leader>> :vertical resize >5<CR>
nnoremap <leader>< :vertical resize <5<CR>
nnoremap <leader>= :winc =<CR>

nnoremap <S-tab> :BufferPrevious<CR>
nnoremap <tab> :BufferNext<CR>
nnoremap <silent> <C-s> :BufferPick<CR>
nnoremap <leader>q :BufferClose<CR>
nnoremap <leader>n :enew<CR>
nnoremap <leader>r :silent !$TERMINAL -e ranger & <CR>
nnoremap <leader>t :Run $SHELL<CR>
nnoremap <leader>T :ExtTerm <CR>

nnoremap Y y$
tnoremap <Esc> <C-\><C-N>
tnoremap jk <Esc>

"Automatic spell mistake fix
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u


" Custom commands
command -nargs=1 Run :sp | :wincmd j | :resize 10 | :terminal <args> 
command ExtTerm :!$TERMINAL &
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
        command! -b Compile :execute "Run" b:CompileCommand
    endif
    if b:RunSilent
        command! -b RunProgram :execute "AsyncRun -post=copen" b:RunCommand
    else
        command! -b RunProgram :execute "Run" b:RunCommand
    endif
endfunction

autocmd Filetype tex command! -b Compile :VimtexCompile
autocmd Filetype tex command! -b RunProgram :VimtexView

"Map to keys
call UpdateCommands()
nnoremap <buffer> <F4> :w<CR>:Compile<CR>
nnoremap <buffer> <F5> :w<CR>:RunProgram<CR>

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

" Toggle explorer
nmap <leader>e :execute 'CocCommand explorer' fnameescape(getcwd())<CR>

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)
