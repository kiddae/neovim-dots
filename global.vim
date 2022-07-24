filetype plugin indent on
syntax on

set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set linebreak
set updatetime=300
set signcolumn=number

set nu
set rnu
set smartcase

set noswapfile
set nobackup
set undodir=~/.local/share/nvim/undodir
set undofile

set incsearch
set encoding=utf8
set mouse=a
set lazyredraw
set updatetime=300

set exrc
"set secure

set wildmenu
set so=12
set showcmd
set noshowmode
set cmdheight=1
set termguicolors
set cursorline
set showtabline=2
autocmd BufEnter * silent! lcd %:p:h
"source local configurations

set foldmethod=indent
set foldlevel=99


""colorscheme
set background=dark
colorscheme everblush

"kitty padding
if $TERM == "xterm-kitty"
" autocmd VimEnter * silent !kitty @ --to=$KITTY_LISTEN_ON set-spacing padding=10 &
autocmd VimLeave * silent !kitty @ --to=$KITTY_LISTEN_ON set-spacing padding=default &
endif


"set terminal automatically in insert mode
autocmd TermOpen * startinsert
autocmd TermOpen * set nonu nornu

"reset the terminal cursor when leaving
autocmd VimLeave * set guicursor=a:ver100

"spell
" autocmd FileType gitcommit,tex,rmd,markdown,pandoc setlocal spell spelllang=fr,en_us
set complete+=kspell

"remove tilde in empty lines
let &fcs='eob: '

" to avoid conflicts with virtualenvs
let g:python3_host_prog='/usr/bin/python'

" hi! markdownItalic cterm=italic
" hi! Comment cterm=italic

autocmd VimEnter * call UpdateCommands()
