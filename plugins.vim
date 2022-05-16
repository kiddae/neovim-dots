" --- Plug.vim --- "

call plug#begin(stdpath('data') . '/plugged')

"colorschemes
Plug 'rose-pine/neovim'
    let g:rose_pine_disable_background = v:false
    let g:rose_pine_variant = 'dawn'
Plug 'morhetz/gruvbox'
Plug 'rakr/vim-one'
    let g:one_allow_italics = 1
Plug 'shaunsingh/nord.nvim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'ayu-theme/ayu-vim'
    let g:ayucolor = "light"
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'mangeshrex/everblush.vim'
" Plug 'catppuccin/nvim', {'as': 'catppuccin', 'branch': 'main'}
" Plug 'AlessandroYorba/Alduin'
" Plug 'chriskempson/base16-vim'
" Plug 'TheNiteCoder/mountaineer.vim'
" Plug 'ulwlu/elly.vim'
" Plug 'dracula/vim', { 'as': 'dracula'}
" Plug 'sainnhe/forest-night'

"" STATUS LINES
Plug 'nvim-lualine/lualine.nvim'
Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' }
Plug 'kyazdani42/nvim-web-devicons' "dependency of barbar
Plug 'kyazdani42/nvim-tree.lua'
" Plug 'romgrk/barbar.nvim'

"" IDE-LIKE FEATURES
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'rcarriga/cmp-dap'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'quangnguyen30192/cmp-nvim-ultisnips'
Plug 'SirVer/ultisnips'
    let g:UltiSnipsExpandTrigger="<tab>"
    let g:UltiSnipsJumpForwardTrigger="<tab>"
    let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
Plug 'mfussenegger/nvim-dap'
Plug 'rcarriga/nvim-dap-ui'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-dap.nvim'
Plug 'glepnir/dashboard-nvim'
" Plug 'mfussenegger/nvim-dap-python'
" Plug 'sakhnik/nvim-gdb', { 'do': ':!./install.sh' }
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
"     let g:coc_global_extensions = ['coc-json', 'coc-git', 'coc-vimlsp', 'coc-pyright', 'coc-discord-rpc', 'coc-clangd', 'coc-vimtex', 'coc-markdownlint', 'coc-snippets', 'coc-html', 'coc-css', 'coc-tsserver']

"" MISC TOOLS
Plug 'folke/which-key.nvim'
Plug 'tpope/vim-markdown'
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
Plug 'tpope/vim-surround'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'ryanoasis/vim-devicons'
Plug 'thaerkh/vim-indentguides'
    let g:indentguides_ignorelist = ['help']
Plug 'jiangmiao/auto-pairs'
Plug 'karb94/neoscroll.nvim'
Plug 'tpope/vim-fugitive'
Plug 'lilydjwg/colorizer'
    let g:colorizer_nomap = 1
Plug 'nvim-lua/plenary.nvim'
Plug 'skywind3000/asyncrun.vim'
Plug 'mbbill/undotree'
" Plug 'powerman/vim-plugin-AnsiEsc'
" Plug 'junegunn/fzf.vim', { 'do': { -> fzf#install() } }

call plug#end()

lua require('lualine').setup({options = {theme = 'auto', section_separators = { left = '', right = '' }, component_separators = { left = '', right = '' }, globalstatus = true}})
lua require('neoscroll').setup({easing_function = "sine"})
" lua require('dap-python').setup('~/.virtualenvs/debugpy/bin/python')
lua require('bufferline').setup()
lua require('nvim-tree').setup()
lua require('which-key').setup()
lua require('telescope').setup()
lua require('nvim-lsp-installer').setup({ automatic_installation = true })
lua require('dapui').setup()
