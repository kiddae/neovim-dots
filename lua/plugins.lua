return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    -- colors
    use { 'morhetz/gruvbox', event = 'ColorSchemePre' }
    use { 'rakr/vim-one', event = 'ColorSchemePre' }
    use { 'projekt0n/github-nvim-theme', event = 'ColorSchemePre' }
    use { 'shaunsingh/nord.nvim', event = 'ColorSchemePre' }
    use { 'ayu-theme/ayu-vim', event = 'ColorSchemePre' }
    vim.cmd [[let g:ayucolor = "dark"]]
    use { 'kaicataldo/material.vim', branch = 'main', event = 'ColorSchemePre' }
    use { 'Everblush/everblush.vim', event = 'ColorSchemePre' }
    use { 'chriskempson/base16-vim', event = 'ColorSchemePre' }

    -- stuff
    use 'lewis6991/impatient.nvim'
    use { 'dstein64/vim-startuptime', cmd = 'StartupTime' }

    use { 'nvim-lualine/lualine.nvim',
        config = function()
            require('lualine').setup({ options = { theme = 'auto',
                -- section_separators = { left = '', right = '' }, component_separators = { left = '', right = '' },
                -- globalstatus = true } })
                section_separators = { left = '', right = '' }, component_separators = { left = '', right = '' },
                globalstatus = true } })
        end }
    use { 'akinsho/bufferline.nvim', config = "require('config.bufferline')" }
    use { 'kyazdani42/nvim-tree.lua', config = "require('config.tree')", cmd = { 'NvimTreeToggle', 'NvimTreeOpen' } }


    use { 'hrsh7th/nvim-cmp', config = "require('config.cmp')" }
    use { 'hrsh7th/cmp-nvim-lsp', after = "nvim-cmp" }
    use { 'hrsh7th/cmp-nvim-lsp-signature-help', after = "nvim-cmp" }
    use { 'hrsh7th/cmp-buffer', after = "nvim-cmp" }
    use { 'hrsh7th/cmp-path', after = "nvim-cmp" }
    use { 'hrsh7th/cmp-cmdline', after = "nvim-cmp" }
    use { 'quangnguyen30192/cmp-nvim-ultisnips', after = "nvim-cmp" }

    use { 'neovim/nvim-lspconfig', requires = "hrsh7th/cmp-nvim-lsp" }
    use { 'williamboman/mason-lspconfig.nvim' }
    use { 'williamboman/mason.nvim', config = "require('config.lspconfig')", after = "nvim-lspconfig" }

    use { 'SirVer/ultisnips', ft = 'latex', config = function()
        vim.cmd [[
            let g:UltiSnipsExpandTrigger="<tab>"
            let g:UltiSnipsJumpForwardTrigger="<tab>"
            let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
            ]]
    end }

    use { "mfussenegger/nvim-dap" }
    use { "jayp0521/mason-nvim-dap.nvim", after = "nvim-dap", config = "require('config.dap')",
        requires = 'rcarriga/nvim-dap-ui' }

    use { 'nvim-treesitter/nvim-treesitter', config = "require('config.treesitter')", run = ':TSUpdate',
        requires = 'nvim-treesitter/nvim-treesitter-textobjects' }

    use { 'nvim-telescope/telescope.nvim',
        requires = { 'nvim-lua/plenary.nvim', 'BurntSushi/ripgrep', 'nvim-telescope/telescope-dap.nvim' }, tag = '0.1.0',
        cmd = 'Telescope', config = "require('telescope').setup({ defaults = { preview = { treesitter = false } } })" }
    use { 'glepnir/dashboard-nvim', config = "require('config.dashboard')", cmd = { "Dashboard", "DashboardNewFile" },
        setup = function()
            vim.api.nvim_create_autocmd('Vimenter', { callback = function()
                if vim.fn.argc() == 0 and vim.fn.line2byte('$') == -1 then
                    vim.cmd 'Dashboard'
                end
            end })
        end }

    use { 'Yggdroot/indentLine', config = function()
        vim.cmd [[
        let g:indentLine_bufTypeExclude = ['help', 'terminal']
        let g:indentLine_fileTypeExclude = ['dashboard', 'man']
        let g:indentLine_concealcursor=""
        let g:indentLine_conceallevel=2
        autocmd TermOpen * IndentLinesDisable
        ]]
    end }


    use { 'folke/which-key.nvim', config = "require('which-key').setup()", opt = true, keys = "<space>" }

    use { 'lervag/vimtex', ft = 'tex', config = function()
        vim.cmd [[
        let g:tex_flavor = 'latex'
        let g:vimtex_view_method = 'zathura'
        let g:vimtex_quickfix_mode = 0
        ]]
    end }

    use { 'tpope/vim-commentary', keys = 'gc' }
    use 'tpope/vim-surround'
    use 'ryanoasis/vim-devicons'
    use 'jiangmiao/auto-pairs'
    use { 'tpope/vim-fugitive', cmd = 'Git' }
    use { 'lilydjwg/colorizer', config = "vim.cmd [[ let g:colorizer_nomap = 1 ]]" }
    use { 'skywind3000/asyncrun.vim', config = "require('config.asyncrun')", cmd = "AsyncRun" }
    use { 'mbbill/undotree', cmd = { 'UndoTreeShow', 'UndoTreeToggle' } }
    use { 'fladson/vim-kitty', ft = 'kitty' }

    vim.cmd([[
      augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins.lua source <afile> | PackerCompile
      augroup end
    ]])



end)
