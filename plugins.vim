" --- Plug.vim --- "

call plug#begin(stdpath('data') . '/plugged')
"" COLORSCHEMES
Plug 'rose-pine/neovim'
    let g:rose_pine_disable_background = v:false
    let g:rose_pine_variant = 'dawn'
Plug 'morhetz/gruvbox'
Plug 'rakr/vim-one'
    let g:one_allow_italics = 1
Plug 'projekt0n/github-nvim-theme'
Plug 'shaunsingh/nord.nvim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'ayu-theme/ayu-vim'
    let g:ayucolor = "dark"
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'Everblush/everblush.vim'
Plug 'catppuccin/nvim', {'as': 'catppuccin', 'branch': 'main'}
Plug 'AlessandroYorba/Alduin'
Plug 'TheNiteCoder/mountaineer.vim'
Plug 'ulwlu/elly.vim'
Plug 'dracula/vim', { 'as': 'dracula'}
Plug 'sainnhe/forest-night'
" Plug 'chriskempson/base16-vim'

"" STATUS LINES
Plug 'nvim-lualine/lualine.nvim'
Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' }
Plug 'kyazdani42/nvim-web-devicons' "dependency of barbar
" Plug 'romgrk/barbar.nvim'

"" IDE-LIKE FEATURES
Plug 'kyazdani42/nvim-tree.lua'
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
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/nvim-treesitter-textobjects' 
Plug 'mfussenegger/nvim-dap-python'
Plug 'rcarriga/nvim-dap-ui'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-dap.nvim'
Plug 'glepnir/dashboard-nvim'
Plug 'Yggdroot/indentLine'
    let g:indentLine_bufTypeExclude = ['help', 'terminal']
    let g:indentLine_fileTypeExclude = ['dashboard', 'man']
    let g:indentLine_concealcursor=""
    let g:indentLine_conceallevel=2
    autocmd TermOpen * IndentLinesDisable
" Plug 'sakhnik/nvim-gdb', { 'do': ':!./install.sh' }
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
"     let g:coc_global_extensions = ['coc-json', 'coc-git', 'coc-vimlsp', 'coc-pyright', 'coc-discord-rpc', 'coc-clangd', 'coc-vimtex', 'coc-markdownlint', 'coc-snippets', 'coc-html', 'coc-css', 'coc-tsserver']

"" MISC TOOLS
Plug 'folke/which-key.nvim'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
    let g:pandoc#syntax#conceal#urls = 1
    let g:pandoc#syntax#conceal#use = 1
Plug 'lervag/vimtex'
    let g:tex_flavor = 'latex'
    let g:vimtex_view_method = 'zathura'
    let g:vimtex_quickfix_mode = 0
" Plug 'KeitaNakamura/tex-conceal.vim'
    " set conceallevel=1
    " let g:tex_conceal = 'abdmg'
    " hi Conceal ctermbg = none
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'ryanoasis/vim-devicons'
" Plug 'thaerkh/vim-indentguides'
"     let g:indentguides_ignorelist = ['help', 'dashboard']
Plug 'jiangmiao/auto-pairs'
Plug 'karb94/neoscroll.nvim'
Plug 'tpope/vim-fugitive'
Plug 'lilydjwg/colorizer'
    let g:colorizer_nomap = 1
Plug 'nvim-lua/plenary.nvim'
Plug 'skywind3000/asyncrun.vim'
Plug 'mbbill/undotree'
Plug 'fladson/vim-kitty'
" Plug 'powerman/vim-plugin-AnsiEsc'
" Plug 'junegunn/fzf.vim', { 'do': { -> fzf#install() } }
call plug#end()

lua require('lualine').setup({options = {theme = 'auto', section_separators = { left = '', right = '' }, component_separators = { left = '', right = '' }, globalstatus = true}})
lua require('neoscroll').setup()
lua require('which-key').setup()
lua require('telescope').setup()
lua require('nvim-lsp-installer').setup({ automatic_installation = true })
lua require('dapui').setup()
