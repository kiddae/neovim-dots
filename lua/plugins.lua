local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup({
    function(use)
        use 'wbthomason/packer.nvim'

        -- colors
        use { 'morhetz/gruvbox', event = 'ColorSchemePre' }
        use { 'rakr/vim-one', event = 'ColorSchemePre' }
        use { 'projekt0n/github-nvim-theme', event = 'ColorSchemePre' }
        use { 'shaunsingh/nord.nvim', event = 'ColorSchemePre' }
        use { 'ayu-theme/ayu-vim', event = 'ColorSchemePre' }
        vim.cmd [[let g:ayucolor = "mirage"]]
        use { 'kaicataldo/material.vim', branch = 'main', event = 'ColorSchemePre' }
        use { 'Everblush/nvim', event = 'ColorSchemePre', as = 'everblush' }
        use { 'RRethy/nvim-base16', event = 'ColorSchemePre' } -- stuff
        use 'lewis6991/impatient.nvim'
        use { 'dstein64/vim-startuptime', cmd = 'StartupTime' }

        use { 'nvim-lualine/lualine.nvim',
            config = "require('config.lualine')",
            -- config = function()
            --     require('lualine').setup({ options = { theme = 'auto',
            --         section_separators = { left = '', right = '' }, component_separators = { left = '', right = '' },
            --         globalstatus = true } })
            -- section_separators = { left = '', right = '' }, component_separators = { left = '', right = '' },
            -- globalstatus = true } })
            -- end,
            requires = { 'nvim-tree/nvim-web-devicons', opt = true }, }
        use { 'akinsho/bufferline.nvim', config = "require('config.bufferline')" }
        use { 'kyazdani42/nvim-tree.lua', config = "require('config.tree')", cmd = { 'NvimTreeToggle', 'NvimTreeOpen' } }


        use { 'hrsh7th/nvim-cmp', requires = { "onsails/lspkind.nvim", "nvim-tree/nvim-web-devicons" }, config =
        "require('config.cmp')" }
        use { 'hrsh7th/cmp-nvim-lsp', after = "nvim-cmp" }
        use { 'hrsh7th/cmp-nvim-lsp-signature-help', after = "nvim-cmp" }
        use { 'hrsh7th/cmp-buffer', after = "nvim-cmp" }
        use { 'hrsh7th/cmp-path', after = "nvim-cmp" }
        use { 'hrsh7th/cmp-cmdline', after = "nvim-cmp" }
        -- use { 'quangnguyen30192/cmp-nvim-ultisnips', after = "nvim-cmp" }

        use { 'neovim/nvim-lspconfig', requires = "hrsh7th/cmp-nvim-lsp" }
        use { 'williamboman/mason-lspconfig.nvim' }
        use { 'williamboman/mason.nvim', config = "require('config.lspconfig')", after = "nvim-lspconfig" }

        -- use { 'SirVer/ultisnips', config = function()
        -- vim.cmd [[
        --let g:UltiSnipsExpandTrigger='<tab>'
        --let g:UltiSnipsJumpForwardTrigger='<tab>'
        --let g:UltiSnipsJumpBackwardTrigger='<s-tab>'
        --let g:UltiSnipsEnableSnipMate = 0
        --]]
        --end }

        use { "mfussenegger/nvim-dap" }
        use { "jayp0521/mason-nvim-dap.nvim", after = "nvim-dap", config = "require('config.dap')",
            requires = 'rcarriga/nvim-dap-ui' }

        use { 'nvim-treesitter/nvim-treesitter', config = "require('config.treesitter')", run = ':TSUpdate',
            requires = 'nvim-treesitter/nvim-treesitter-textobjects' }

        use { 'nvim-telescope/telescope.nvim',
            requires = { 'nvim-lua/plenary.nvim', 'BurntSushi/ripgrep', 'nvim-telescope/telescope-dap.nvim',
                'nvim-telescope/telescope-fzf-native.nvim' }, tag = '0.1.0',
            cmd = 'Telescope', config = "require('config.telescope')" }
        use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make', depends = 'nvim-telescope/telescope.nvim' }
        use { 'glepnir/dashboard-nvim', config = "require('config.dashboard')", event = 'VimEnter', requires = {
            'nvim-tree/nvim-web-devicons' } }
        -- use { 'glepnir/dashboard-nvim', config = "require('config.dashboard')", cmd = { "Dashboard", "DashboardNewFile" },
        -- setup = function()
        --     vim.api.nvim_create_autocmd('Vimenter', { callback = function()
        --         if vim.fn.argc() == 0 and vim.fn.line2byte('$') == -1 then
        --             vim.cmd 'Dashboard'
        --         end
        --     end })
        -- end }

        use { 'Yggdroot/indentLine', config = function()
            vim.cmd [[
        let g:indentLine_bufTypeExclude = ['help', 'terminal']
        let g:indentLine_fileTypeExclude = ['dashboard', 'man']
        let g:indentLine_concealcursor=""
        let g:indentLine_conceallevel=2
        autocmd TermOpen * IndentLinesDisable
        ]]
        end }


        use { 'folke/which-key.nvim', config = "require('which-key').setup()" }

        use { 'lervag/vimtex', ft = 'tex', config = function()
            vim.cmd [[
        let g:tex_flavor = 'latex'
        let g:vimtex_view_method = 'zathura'
        let g:vimtex_quickfix_mode = 0
        let g:vimtex_compiler_latexmk = {
        \ 'options' : [
            \   '-pdf',
            \   '-shell-escape',
            \   '-verbose',
            \   '-file-line-error',
            \   '-synctex=1',
            \   '-interaction=nonstopmode',
            \ ],
        \}
        ]]
        end }

        use { 'tpope/vim-commentary' }
        use 'tpope/vim-surround'
        use 'ryanoasis/vim-devicons'
        -- use 'jiangmiao/auto-pairs'
        use {
            "windwp/nvim-autopairs",
            config = function() require("nvim-autopairs").setup { enable_check_bracket_line = false } end
        }
        -- use({
        --     "utilyre/sentiment.nvim",
        --     tag = "*",
        --     config = function()
        --         require("sentiment").setup({
        --             excluded_filetypes = { 'dashboard' },
        --         })
        --     end,
        -- })
        use { 'tpope/vim-fugitive', cmd = 'Git' }
        use { 'norcalli/nvim-colorizer.lua', config = "require'colorizer'.setup()" }
        use { 'skywind3000/asyncrun.vim', config = "require('config.asyncrun')", cmd = "AsyncRun" }
        -- use { 'mbbill/undotree', cmd = { 'UndoTreeShow', 'UndoTreeToggle' } }
        use { 'fladson/vim-kitty', ft = 'kitty' }
        use { 'rcarriga/nvim-notify', config = "vim.notify = require('notify')" }
        use { 'mrded/nvim-lsp-notify',
            requires = { 'rcarriga/nvim-notify' },
            config = function()
                require('lsp-notify').setup({})
            end
        }
        -- use({
        --     "SmiteshP/nvim-navic",
        --     requires = "neovim/nvim-lspconfig",
        --     config = require('config.navic')
        -- })
        use({
            "utilyre/barbecue.nvim",
            tag = "*",
            requires = {
                "SmiteshP/nvim-navic",
                -- "nvim-tree/nvim-web-devicons", -- optional dependency
            },
            config = function()
                require("barbecue").setup({})
            end,
        })

        vim.cmd([[
      augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins.lua source <afile> | PackerCompile
      augroup end
    ]])
        if packer_bootstrap then
            require('packer').sync()
        end
    end,


    config = {
        display = {
            open_fn = function()
                return require('packer.util').float({ border = 'single' })
            end
        },
        autoremove = true,
    }
})
