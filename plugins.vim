" --- Plug.vim --- "

call plug#begin(stdpath('data') . '/plugged')

"colorschemes
Plug 'rose-pine/neovim'
Plug 'morhetz/gruvbox'
Plug 'rayes0/blossom.vim'
Plug 'AlessandroYorba/Alduin'
Plug 'chriskempson/base16-vim'
Plug 'TheNiteCoder/mountaineer.vim'
Plug 'ulwlu/elly.vim'
Plug 'rakr/vim-one'
Plug 'dracula/vim', { 'as': 'dracula'}
Plug 'shaunsingh/nord.nvim'
Plug 'sainnhe/forest-night'
Plug 'NLKNguyen/papercolor-theme'
Plug 'ayu-theme/ayu-vim'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }

"status lines
Plug 'nvim-lualine/lualine.nvim'
Plug 'romgrk/barbar.nvim'
Plug 'kyazdani42/nvim-web-devicons' "dependency of barbar

"completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"misc
Plug 'SirVer/ultisnips'
Plug 'lervag/vimtex'
Plug 'tpope/vim-commentary'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'ryanoasis/vim-devicons'
Plug 'thaerkh/vim-indentguides'
Plug 'jiangmiao/auto-pairs'
Plug 'karb94/neoscroll.nvim'
Plug 'tpope/vim-fugitive'
Plug 'powerman/vim-plugin-AnsiEsc'
Plug 'lilydjwg/colorizer'
Plug 'mbbill/undotree'
Plug 'junegunn/fzf.vim', { 'do': { -> fzf#install() } }
Plug 'glepnir/dashboard-nvim'
Plug 'skywind3000/asyncrun.vim'

call plug#end()


" --- Options --- "

"colorschemes
let g:rose_pine_disable_background = v:false
let g:rose_pine_variant = 'dawn'
let g:one_allow_italics = 1
let g:ayucolor = "light"
lua require('neoscroll').setup({easing_function = "sine"})
lua require('lualine').setup({options = {theme = 'auto'}})

"UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"
"Vimtex
let g:tex_flavor = 'latex'
let g:vimtex_syntax_conceal_disable = 0
let g:vimtex_view_method = 'zathura'
"coc
let g:coc_global_extensions = ['coc-json', 'coc-git', 'coc-vimlsp', 'coc-explorer', 'coc-pyright', 'coc-discord-rpc', 'coc-clangd', 'coc-vimtex', 'coc-markdownlint']

"misc
let g:limelight_paragraph_span = 1
let g:colorizer_nomap = 1
let bufferline = {}
let bufferline.auto_hide = v:false
