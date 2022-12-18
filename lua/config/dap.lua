--- MAPPINGS
vim.cmd([[
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
vnoremap <C-k> :lua require'dapui'.eval()<CR>
]]);

--- CONFIGURATIONS/ADAPTERS
local dap = require('dap')

require("mason-nvim-dap").setup({
    ensure_installed = { "python", "cppdbg" },
    automatic_setup = true,
})
require("mason-nvim-dap").setup_handlers()

-- -- python
-- require 'dap-python'.setup('~/.virtualenvs/debugpy/bin/python')

-- -- c/c++
-- dap.adapters.cppdbg = {
--     type = 'executable';
--     id = 'cppdbg';
--     command = os.getenv('HOME') .. '/Code/cpptools/extension/debugAdapters/bin/OpenDebugAD7'
-- }
-- dap.configurations.cpp = {
--     {
--         name = "Launch file",
--         type = "cppdbg",
--         request = "launch",
--         program = function()
--             return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
--         end,
--         cwd = '${workspaceFolder}',
--         stopOnEntry = true,
--         setupCommands = {
--             {
--                 text = '-enable-pretty-printing',
--                 description = 'enable pretty printing',
--                 ignoreFailures = false
--             },
--         },
--     },

-- }
-- dap.configurations.c = dap.configurations.cpp


--- DAP-UI
local dapui = require("dapui")
dapui.setup({
    layouts = {
        {
            elements = {
                -- Elements can be strings or table with id and size keys.
                { id = "scopes", size = 0.25 },
                "breakpoints",
                "stacks",
                "watches",
            },
            size = 40, -- 40 columns
            position = "left",
        },
        {
            elements = {
                -- "repl",
                "console",
            },
            size = 0.25, -- 25% of total lines
            position = "bottom",
        },
    },
})
dap.listeners.after.event_initialized["dapui_config"] = function()
    dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
    dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
    dapui.close()
end

--- HOVER ON K
-- local api = vim.api
-- local keymap_restore = {}
-- dap.listeners.after['event_initialized']['me'] = function()
--     for _, buf in pairs(api.nvim_list_bufs()) do
--         local keymaps = api.nvim_buf_get_keymap(buf, 'n')
--         for _, keymap in pairs(keymaps) do
--             if keymap.lhs == "K" then
--                 table.insert(keymap_restore, keymap)
--                 api.nvim_buf_del_keymap(buf, 'n', 'K')
--             end
--         end
--     end
--     api.nvim_set_keymap(
--         'n', 'K', '<Cmd>lua require("dap.ui.widgets").hover()<CR>', { silent = true })
-- end

-- dap.listeners.after['event_terminated']['me'] = function()
--     for _, keymap in pairs(keymap_restore) do
--         api.nvim_buf_set_keymap(
--             keymap.buffer,
--             keymap.mode,
--             keymap.lhs,
--             keymap.rhs,
--             { silent = keymap.silent == 1 }
--         )
--     end
--     keymap_restore = {}
-- end
