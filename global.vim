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
autocmd BufEnter * call UpdateCommands()
"source local configurations
autocmd BufEnter * if filereadable(".vimrc") | source .vimrc | call UpdateCommands() | endif

set foldmethod=indent
set foldlevel=99


""colorscheme
set background=dark
colorscheme ayu

"set terminal automatically in insert mode
autocmd TermOpen * startinsert

"reset the terminal cursor when leaving
autocmd VimLeave * set guicursor=a:ver100

"spell
autocmd FileType gitcommit,tex,rmd,markdown,pandoc setlocal spell spelllang=fr,en_us
set complete+=kspell

"remove tilde in empty lines
let &fcs='eob: '

set conceallevel=1
set concealcursor=c

hi! markdownItalic cterm=italic
hi! Comment cterm=italic

