" --- Plug.vim --- "

call plug#begin(stdpath('data') . '/plugged')

"colorschemes
Plug 'rose-pine/neovim'
    let g:rose_pine_disable_background = v:false
    let g:rose_pine_variant = 'dawn'
Plug 'morhetz/gruvbox'
Plug 'rayes0/blossom.vim'
Plug 'AlessandroYorba/Alduin'
Plug 'chriskempson/base16-vim'
Plug 'TheNiteCoder/mountaineer.vim'
Plug 'ulwlu/elly.vim'
Plug 'rakr/vim-one'
    let g:one_allow_italics = 1
Plug 'dracula/vim', { 'as': 'dracula'}
Plug 'shaunsingh/nord.nvim'
Plug 'sainnhe/forest-night'
Plug 'NLKNguyen/papercolor-theme'
Plug 'ayu-theme/ayu-vim'
    let g:ayucolor = "light"
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'catppuccin/nvim', {'as': 'catppuccin', 'branch': 'main'}

"status lines
Plug 'nvim-lualine/lualine.nvim'
Plug 'romgrk/barbar.nvim'
Plug 'kyazdani42/nvim-web-devicons' "dependency of barbar

"completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
    let g:coc_global_extensions = ['coc-json', 'coc-git', 'coc-vimlsp', 'coc-explorer', 'coc-pyright', 'coc-discord-rpc', 'coc-clangd', 'coc-vimtex', 'coc-markdownlint', 'coc-snippets']

"misc
Plug 'SirVer/ultisnips'
    let g:UltiSnipsExpandTrigger="<tab>"
    let g:UltiSnipsJumpForwardTrigger="<tab>"
    let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
Plug 'lervag/vimtex'
    let g:tex_flavor = 'latex'
    let g:vimtex_syntax_conceal_disable = 0
    let g:vimtex_view_method = 'zathura'
    let g:vimtex_quickfix_mode = 0
Plug 'KeitaNakamura/tex-conceal.vim'
    set conceallevel=1
    let g:tex_conceal = 'abdmg'
    hi Conceal ctermbg = none
Plug 'tpope/vim-commentary'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'ryanoasis/vim-devicons'
Plug 'thaerkh/vim-indentguides'
Plug 'jiangmiao/auto-pairs'
Plug 'karb94/neoscroll.nvim'
Plug 'tpope/vim-fugitive'
Plug 'powerman/vim-plugin-AnsiEsc'
Plug 'lilydjwg/colorizer'
    let g:colorizer_nomap = 1
Plug 'mbbill/undotree'
Plug 'junegunn/fzf.vim', { 'do': { -> fzf#install() } }
Plug 'glepnir/dashboard-nvim'
Plug 'skywind3000/asyncrun.vim'

call plug#end()

lua require('lualine').setup({options = {theme = 'auto'}})
lua require('neoscroll').setup({easing_function = "sine"})
