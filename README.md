# Configuration files for `neovim`

To be used with my [dotfiles](https://github.com/kiddae/dotfiles)

Requires `[vim-plug]`(https://github.com/junegunn/vim-plug) to manage plugins.

# Installation

Clone the repository to `~/.config/nvim`. Install `vim-plug` using the command given in its repository. Run `nvim -c PlugInstall`. Voilà!

# Usage

## Navigation

Extending the normal vim keybindings, things I've added for myself can be found in `[commands.vim]`(commands.vim), mostly for managing buffers and files and navigating between windows/splits:

```
"<leader> = space
let mapleader = " "
nnoremap <C-h> :wincmd h<CR>  "navigates
nnoremap <C-j> :wincmd j<CR>
nnoremap <C-k> :wincmd k<CR>
nnoremap <C-l> :wincmd l<CR>
nnoremap <C-w> :wincmd w<CR>
nnoremap <leader>h :wincmd H<CR> "moves
nnoremap <leader>j :wincmd J<CR>
nnoremap <leader>k :wincmd K<CR>
nnoremap <leader>l :wincmd L<CR>
nnoremap <leader>+ :vertical resize +5<CR> "resizes
nnoremap <leader>- :vertical resize -5<CR>
nnoremap <leader>> :vertical resize >5<CR>
nnoremap <leader>< :vertical resize <5<CR>
nnoremap <leader>= :winc =<CR>

"switching buffers/closing/new file
nnoremap <S-tab> :bp<CR>
nnoremap <tab> :bn<CR>
nnoremap <C-q> :bp<bar>sp<bar>bn<bar>bd<CR>
```

## Run and compile

In that same [`commands.vim`](commands.vim) file, you'll find the definition of command `RunSplit` which runs the shell command given as argument in a terminal window on the right. To complete this, the global dictionary `g:Rules` contains rules for any filetypes you want, as another dictionary with the compiling command and program run command, as well as a silent flag (as a boolean) to compile with `AsyncRun`. For example (from the `commands.vim` file itself):

```
let g:Rules.cpp = {"compile": "g++ -o %< %", "run": "./%<", "silent": v:true}
```

For project-specific configuration, just add a `.vimrc` file in the working directory containing the new definitions. They should reload automatically, but if it isn't the case, run `:call UpdateCommands()`.

The `Compile` and `RunProgram` commands can then be used, they are also mapped to `<F4>` and `<F5>` respectively.

## Language Server Protocol

This configuration uses `neovim`'s Language Server Protocol that is managed through the plugin [`nvim-lsp-installer`](https://github.com/williamboman/nvim-lsp-installer). To add a language server, head over to [`plugin/nvim-lspconfig.lua`](plugin/nvim-lspconfig.lua) and add it to the array at the top. You can get a list of the installed servers and the ones available with `:LspInstallInfo`. Note that some dependencies are required to properly install the servers, see the plugin's repository for more information.

The keybindings are very similar to the default ones given as example by `neovim`'s repository.

```lua
vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>k', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
```

## Debug-Adapter Protocol

I am using [`nvim-dap`](https://github.com/mfussenegger/nvim-dap) as a bridge to using debug adapters, as well as [`nvim-dap-ui`](https://github.com/gcarriga/nvim-dap-ui) as an intuitive user interface to debugging sessions.
This requires the manual installation of the debug adapters, [`nvim-dap`'s wiki](https://github.com/mfussenegger/nvim-dap/wiki/Debug-Adapter-installation). I have configured `debugpy` and `vscode-cpptools`, with the virtualenv for `debugpy` in `~/.virtualenvs/debugpy/` and the binaries for `cpptools` in `~/Code/cpptools/`.

Keybindings are the ones given as example by the plugin:

```
nnoremap <silent> <F5> :lua require'dap'.continue()<CR>
nnoremap <silent> <F10> :lua require'dap'.step_over()<CR>
nnoremap <silent> <F11> :lua require'dap'.step_into()<CR>
nnoremap <silent> <F12> :lua require'dap'.step_out()<CR>
nnoremap <silent> <leader>b :lua require'dap'.toggle_breakpoint()<CR>
nnoremap <silent> <leader>B :lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>
nnoremap <silent> <leader>lp :lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>
nnoremap <silent> <leader>dr :lua require'dap'.repl.toggle()<CR>
nnoremap <silent> <leader>dl :lua require'dap'.run_last()<CR>
nnoremap <silent> <leader>dq :lua require'dap'.terminate()<CR>
```

## Others

### File explorer

I use ['nvim-tree'](https://github.com/kyazdani42/nvim-tree.lua). Fire it up with `Ctrl+n`, and to quickly learn how to use it, `g?` will show its keybindings.

### Telescope

Search for files in the current working directory with `<leader>ff` or recently opened files with `<leader>fh`, powered by [`telescope.nvim`](https://github.com/nvim-telescope/telescope.nvim)

### Auto-pairs

Brackets, parentheses etc. are closed automatically; to move the next word inside it, use `Ctrl+E` ([`auto-pairs`](https://github.com/jiangmiao/auto-pairs)).

### WhichKey?

[`WhichKey`](https://github.com/folke/which-key.nvim) is a little menu that shows the available binding in case you forget. You can fire it up with `<leader><F1>`, or it will do it automatically if you're starting a command.

### VimTex

I use [`vimtex`](https://github.com/lervag/vimtex) for editing LaTeX documents, with `zathura` as a document viewer. Very simply put, just run `:VimtexCompile` when in a LaTeX document and the plugin will do the job for you. If there are errors, run `:copen` to see the messages, and then close the window with `:q` or `:cclose`.

### Snippets

(Only for LaTeX as of now) A bunch of handy snippets are configured in [`Ultisnips/`](Ultisnips/) for convenient use.

### Templates

New `.cpp` files, `makefiles` or LaTeX document will be filled with a predefined template, to get going faster!
Defined in [`templates/`](templates/) and in [`templates.vim`](templates.vim) (TODO ameliorate for better automation...)

