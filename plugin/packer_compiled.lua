-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/louise/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/louise/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/louise/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/louise/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/louise/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["asyncrun.vim"] = {
    commands = { "AsyncRun" },
    config = { "require('config.asyncrun')" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/louise/.local/share/nvim/site/pack/packer/opt/asyncrun.vim",
    url = "https://github.com/skywind3000/asyncrun.vim"
  },
  ["auto-pairs"] = {
    loaded = true,
    path = "/home/louise/.local/share/nvim/site/pack/packer/start/auto-pairs",
    url = "https://github.com/jiangmiao/auto-pairs"
  },
  ["ayu-vim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/louise/.local/share/nvim/site/pack/packer/opt/ayu-vim",
    url = "https://github.com/ayu-theme/ayu-vim"
  },
  ["base16-vim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/louise/.local/share/nvim/site/pack/packer/opt/base16-vim",
    url = "https://github.com/chriskempson/base16-vim"
  },
  ["bufferline.nvim"] = {
    config = { "require('config.bufferline')" },
    loaded = true,
    path = "/home/louise/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["cmp-buffer"] = {
    after_files = { "/home/louise/.local/share/nvim/site/pack/packer/opt/cmp-buffer/after/plugin/cmp_buffer.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/louise/.local/share/nvim/site/pack/packer/opt/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    after_files = { "/home/louise/.local/share/nvim/site/pack/packer/opt/cmp-cmdline/after/plugin/cmp_cmdline.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/louise/.local/share/nvim/site/pack/packer/opt/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/louise/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-ultisnips"] = {
    after_files = { "/home/louise/.local/share/nvim/site/pack/packer/opt/cmp-nvim-ultisnips/after/plugin/cmp_nvim_ultisnips.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/louise/.local/share/nvim/site/pack/packer/opt/cmp-nvim-ultisnips",
    url = "https://github.com/quangnguyen30192/cmp-nvim-ultisnips"
  },
  ["cmp-path"] = {
    after_files = { "/home/louise/.local/share/nvim/site/pack/packer/opt/cmp-path/after/plugin/cmp_path.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/louise/.local/share/nvim/site/pack/packer/opt/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  colorizer = {
    config = { "vim.cmd [[ let g:colorizer_nomap = 1 ]]" },
    loaded = true,
    path = "/home/louise/.local/share/nvim/site/pack/packer/start/colorizer",
    url = "https://github.com/lilydjwg/colorizer"
  },
  ["dashboard-nvim"] = {
    commands = { "Dashboard", "DashboardNewFile" },
    config = { "require('config.dashboard')" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/louise/.local/share/nvim/site/pack/packer/opt/dashboard-nvim",
    url = "https://github.com/glepnir/dashboard-nvim"
  },
  ["everblush.vim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/louise/.local/share/nvim/site/pack/packer/opt/everblush.vim",
    url = "https://github.com/Everblush/everblush.vim"
  },
  ["github-nvim-theme"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/louise/.local/share/nvim/site/pack/packer/opt/github-nvim-theme",
    url = "https://github.com/projekt0n/github-nvim-theme"
  },
  gruvbox = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/louise/.local/share/nvim/site/pack/packer/opt/gruvbox",
    url = "https://github.com/morhetz/gruvbox"
  },
  ["impatient.nvim"] = {
    loaded = true,
    path = "/home/louise/.local/share/nvim/site/pack/packer/start/impatient.nvim",
    url = "https://github.com/lewis6991/impatient.nvim"
  },
  indentLine = {
    config = { "\27LJ\2\n¬\2\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0Œ\2        let g:indentLine_bufTypeExclude = ['help', 'terminal']\n        let g:indentLine_fileTypeExclude = ['dashboard', 'man']\n        let g:indentLine_concealcursor=\"\"\n        let g:indentLine_conceallevel=2\n        autocmd TermOpen * IndentLinesDisable\n        \bcmd\bvim\0" },
    loaded = true,
    path = "/home/louise/.local/share/nvim/site/pack/packer/start/indentLine",
    url = "https://github.com/Yggdroot/indentLine"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\nÀ\1\0\0\5\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\b\0005\3\3\0005\4\4\0=\4\5\0035\4\6\0=\4\a\3=\3\t\2B\0\2\1K\0\1\0\foptions\1\0\0\25component_separators\1\0\2\tleft\5\nright\5\23section_separators\1\0\2\tleft\5\nright\5\1\0\2\ntheme\tauto\17globalstatus\2\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/home/louise/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["material.vim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/louise/.local/share/nvim/site/pack/packer/opt/material.vim",
    url = "https://github.com/kaicataldo/material.vim"
  },
  ["nord.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/louise/.local/share/nvim/site/pack/packer/opt/nord.nvim",
    url = "https://github.com/shaunsingh/nord.nvim"
  },
  ["nvim-cmp"] = {
    after = { "cmp-nvim-ultisnips", "cmp-cmdline", "cmp-buffer", "cmp-path" },
    config = { "require('config.cmp')" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/louise/.local/share/nvim/site/pack/packer/opt/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-dap"] = {
    commands = { "DapContinue" },
    config = { "require('config.dap')" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/louise/.local/share/nvim/site/pack/packer/opt/nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-dap-python"] = {
    loaded = true,
    path = "/home/louise/.local/share/nvim/site/pack/packer/start/nvim-dap-python",
    url = "https://github.com/mfussenegger/nvim-dap-python"
  },
  ["nvim-dap-ui"] = {
    loaded = true,
    path = "/home/louise/.local/share/nvim/site/pack/packer/start/nvim-dap-ui",
    url = "https://github.com/rcarriga/nvim-dap-ui"
  },
  ["nvim-lsp-installer"] = {
    config = { "require('nvim-lsp-installer').setup({ automatic_installation = true })" },
    loaded = true,
    path = "/home/louise/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    config = { "require('config.lspconfig')" },
    loaded = true,
    path = "/home/louise/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    commands = { "NvimTreeToggle", "NvimTreeOpen" },
    config = { "require('config.tree')" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/louise/.local/share/nvim/site/pack/packer/opt/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "require('config.treesitter')" },
    loaded = true,
    path = "/home/louise/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-textobjects"] = {
    loaded = true,
    path = "/home/louise/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/louise/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/louise/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ripgrep = {
    loaded = true,
    path = "/home/louise/.local/share/nvim/site/pack/packer/start/ripgrep",
    url = "https://github.com/BurntSushi/ripgrep"
  },
  ["telescope-dap.nvim"] = {
    loaded = true,
    path = "/home/louise/.local/share/nvim/site/pack/packer/start/telescope-dap.nvim",
    url = "https://github.com/nvim-telescope/telescope-dap.nvim"
  },
  ["telescope.nvim"] = {
    commands = { "Telescope" },
    config = { "require('telescope').setup({ defaults = { preview = { treesitter = false } } })" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/louise/.local/share/nvim/site/pack/packer/opt/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ultisnips = {
    after_files = { "/home/louise/.local/share/nvim/site/pack/packer/opt/ultisnips/after/plugin/UltiSnips_after.vim" },
    config = { "\27LJ\2\nÑ\1\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0±\1            let g:UltiSnipsExpandTrigger=\"<tab>\"\n            let g:UltiSnipsJumpForwardTrigger=\"<tab>\"\n            let g:UltiSnipsJumpBackwardTrigger=\"<s-tab>\"\n            \bcmd\bvim\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/louise/.local/share/nvim/site/pack/packer/opt/ultisnips",
    url = "https://github.com/SirVer/ultisnips"
  },
  undotree = {
    commands = { "UndoTreeShow", "UndoTreeToggle" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/louise/.local/share/nvim/site/pack/packer/opt/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-commentary"] = {
    keys = { { "", "gc" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/louise/.local/share/nvim/site/pack/packer/opt/vim-commentary",
    url = "https://github.com/tpope/vim-commentary"
  },
  ["vim-devicons"] = {
    loaded = true,
    path = "/home/louise/.local/share/nvim/site/pack/packer/start/vim-devicons",
    url = "https://github.com/ryanoasis/vim-devicons"
  },
  ["vim-fugitive"] = {
    commands = { "Git" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/louise/.local/share/nvim/site/pack/packer/opt/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-kitty"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/louise/.local/share/nvim/site/pack/packer/opt/vim-kitty",
    url = "https://github.com/fladson/vim-kitty"
  },
  ["vim-one"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/louise/.local/share/nvim/site/pack/packer/opt/vim-one",
    url = "https://github.com/rakr/vim-one"
  },
  ["vim-startuptime"] = {
    commands = { "StartupTime" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/louise/.local/share/nvim/site/pack/packer/opt/vim-startuptime",
    url = "https://github.com/dstein64/vim-startuptime"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/louise/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  vimtex = {
    config = { "\27LJ\2\n¤\1\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0„\1        let g:tex_flavor = 'latex'\n        let g:vimtex_view_method = 'zathura'\n        let g:vimtex_quickfix_mode = 0\n        \bcmd\bvim\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/louise/.local/share/nvim/site/pack/packer/opt/vimtex",
    url = "https://github.com/lervag/vimtex"
  },
  ["which-key.nvim"] = {
    config = { "require('which-key').setup()" },
    keys = { { "", "<space>" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/louise/.local/share/nvim/site/pack/packer/opt/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Setup for: dashboard-nvim
time([[Setup for dashboard-nvim]], true)
try_loadstring("\27LJ\2\n{\0\0\3\0\a\2\0186\0\0\0009\0\1\0009\0\2\0B\0\1\2\t\0\0\0X\0\v€6\0\0\0009\0\1\0009\0\3\0'\2\4\0B\0\2\2\t\0\1\0X\0\4€6\0\0\0009\0\5\0'\2\6\0B\0\2\1K\0\1\0\14Dashboard\bcmd\6$\14line2byte\targc\afn\bvim\0þÿÿÿ\31]\1\0\5\0\a\0\t6\0\0\0009\0\1\0009\0\2\0'\2\3\0005\3\5\0003\4\4\0=\4\6\3B\0\3\1K\0\1\0\rcallback\1\0\0\0\rVimenter\24nvim_create_autocmd\bapi\bvim\0", "setup", "dashboard-nvim")
time([[Setup for dashboard-nvim]], false)
-- Config for: nvim-lsp-installer
time([[Config for nvim-lsp-installer]], true)
require('nvim-lsp-installer').setup({ automatic_installation = true })
time([[Config for nvim-lsp-installer]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
require('config.treesitter')
time([[Config for nvim-treesitter]], false)
-- Config for: indentLine
time([[Config for indentLine]], true)
try_loadstring("\27LJ\2\n¬\2\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0Œ\2        let g:indentLine_bufTypeExclude = ['help', 'terminal']\n        let g:indentLine_fileTypeExclude = ['dashboard', 'man']\n        let g:indentLine_concealcursor=\"\"\n        let g:indentLine_conceallevel=2\n        autocmd TermOpen * IndentLinesDisable\n        \bcmd\bvim\0", "config", "indentLine")
time([[Config for indentLine]], false)
-- Config for: colorizer
time([[Config for colorizer]], true)
vim.cmd [[ let g:colorizer_nomap = 1 ]]
time([[Config for colorizer]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
require('config.lspconfig')
time([[Config for nvim-lspconfig]], false)
-- Config for: bufferline.nvim
time([[Config for bufferline.nvim]], true)
require('config.bufferline')
time([[Config for bufferline.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\nÀ\1\0\0\5\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\b\0005\3\3\0005\4\4\0=\4\5\0035\4\6\0=\4\a\3=\3\t\2B\0\2\1K\0\1\0\foptions\1\0\0\25component_separators\1\0\2\tleft\5\nright\5\23section_separators\1\0\2\tleft\5\nright\5\1\0\2\ntheme\tauto\17globalstatus\2\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file DashboardNewFile lua require("packer.load")({'dashboard-nvim'}, { cmd = "DashboardNewFile", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Git lua require("packer.load")({'vim-fugitive'}, { cmd = "Git", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file DapContinue lua require("packer.load")({'nvim-dap'}, { cmd = "DapContinue", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeToggle lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeOpen lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeOpen", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file UndoTreeShow lua require("packer.load")({'undotree'}, { cmd = "UndoTreeShow", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file UndoTreeToggle lua require("packer.load")({'undotree'}, { cmd = "UndoTreeToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Telescope lua require("packer.load")({'telescope.nvim'}, { cmd = "Telescope", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file AsyncRun lua require("packer.load")({'asyncrun.vim'}, { cmd = "AsyncRun", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Dashboard lua require("packer.load")({'dashboard-nvim'}, { cmd = "Dashboard", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file StartupTime lua require("packer.load")({'vim-startuptime'}, { cmd = "StartupTime", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

-- Keymap lazy-loads
time([[Defining lazy-load keymaps]], true)
vim.cmd [[noremap <silent> <space> <cmd>lua require("packer.load")({'which-key.nvim'}, { keys = "<lt>space>", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> gc <cmd>lua require("packer.load")({'vim-commentary'}, { keys = "gc", prefix = "" }, _G.packer_plugins)<cr>]]
time([[Defining lazy-load keymaps]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType kitty ++once lua require("packer.load")({'vim-kitty'}, { ft = "kitty" }, _G.packer_plugins)]]
vim.cmd [[au FileType latex ++once lua require("packer.load")({'ultisnips', 'vimtex'}, { ft = "latex" }, _G.packer_plugins)]]
vim.cmd [[au FileType tex ++once lua require("packer.load")({'vimtex'}, { ft = "tex" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au ColorSchemePre * ++once lua require("packer.load")({'ayu-vim', 'nord.nvim', 'material.vim', 'vim-one', 'gruvbox', 'github-nvim-theme', 'everblush.vim', 'base16-vim'}, { event = "ColorSchemePre *" }, _G.packer_plugins)]]
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'nvim-cmp'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
vim.cmd [[augroup filetypedetect]]
time([[Sourcing ftdetect script at: /home/louise/.local/share/nvim/site/pack/packer/opt/vim-kitty/ftdetect/kitty.vim]], true)
vim.cmd [[source /home/louise/.local/share/nvim/site/pack/packer/opt/vim-kitty/ftdetect/kitty.vim]]
time([[Sourcing ftdetect script at: /home/louise/.local/share/nvim/site/pack/packer/opt/vim-kitty/ftdetect/kitty.vim]], false)
time([[Sourcing ftdetect script at: /home/louise/.local/share/nvim/site/pack/packer/opt/ultisnips/ftdetect/snippets.vim]], true)
vim.cmd [[source /home/louise/.local/share/nvim/site/pack/packer/opt/ultisnips/ftdetect/snippets.vim]]
time([[Sourcing ftdetect script at: /home/louise/.local/share/nvim/site/pack/packer/opt/ultisnips/ftdetect/snippets.vim]], false)
time([[Sourcing ftdetect script at: /home/louise/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/cls.vim]], true)
vim.cmd [[source /home/louise/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/cls.vim]]
time([[Sourcing ftdetect script at: /home/louise/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/cls.vim]], false)
time([[Sourcing ftdetect script at: /home/louise/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/tex.vim]], true)
vim.cmd [[source /home/louise/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/tex.vim]]
time([[Sourcing ftdetect script at: /home/louise/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/tex.vim]], false)
time([[Sourcing ftdetect script at: /home/louise/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/tikz.vim]], true)
vim.cmd [[source /home/louise/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/tikz.vim]]
time([[Sourcing ftdetect script at: /home/louise/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/tikz.vim]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
