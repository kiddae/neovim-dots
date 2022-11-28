local db = require('dashboard')
vim.api.nvim_set_keymap('n', '<leader>cn', ':DashboardNewFile<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>ff', ':Telescope find_files<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fh', ':Telescope oldfiles<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>vd', ':Telescope find_files cwd=~/.config/nvim <CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>tc', ':Telescope colorscheme<CR>', { noremap = true, silent = true })

db.hide_tabline = false
db.hide_statusline = false

db.custom_footer = { 'Have a great coding session~ <3' }
db.custom_center = {
    {
        icon = '  ',
        desc = 'New file                              ',
        shortcut = 'SPC c n',
        action = 'DashboardNewFile'
    },
    {
        icon = '  ',
        desc = 'Find files                            ',
        shortcut = 'SPC f f',
        action = 'Telescope find_files'
    },
    {
        icon = '  ',
        desc = 'Recently opened files                 ',
        shortcut = 'SPC f h',
        action = 'Telescope oldfiles'
    },
    -- {
    --     icon = 'ﰩ  ',
    --     desc = 'Update plugins                    ',
    --     shortcut = ':PlugUpdate',
    --     action = 'PlugUpdate'
    -- },
    {
        icon = '漣 ',
        desc = 'Browse configuration                  ',
        shortcut = 'SPC v d',
        action = 'Telescope find_files cwd=~/.config/nvim'
    },
    {
        icon = '  ',
        desc = 'Browse colorschemes                   ',
        shortcut = 'SPC t c',
        action = 'Telescope colorscheme'
    },
    {
        icon = '  ',
        desc = 'Quit                                      ',
        shortcut = ':q!',
        action = 'q!'
    }
}


-- "let g:dashboard_custom_header = [
-- "\ ' g@@@@@@@@@@@@@@@@@@@@@@@@b_  ',
-- "\ '0@@@@@@@@@@@@@@@@@@@@@@@@@@@k  ',
-- "\ '0@@@@@@@@@@@@@^^#@@@@@@@@@@@@L  ',
-- "\ ' #@@@@@@@@@@"   J@@@@@@@@@@@@@  ',
-- "\ '               J@@@@@@@@@@@@@@b  ',
-- "\ '              d@@@@@##@@@@@@@@@L  ',
-- "\ '             d@@@@#   ^@@@@@@@@Q  ',
-- "\ '            d@@@@@@r    #@@@@@@@[  ',
-- "\ '           d@@@@@@@[     #@@@@@@@r  ',
-- "\ '          0@@@@@@@P       0@@@@@@%  ',
-- "\ '         0@@@@P            0@@@@@@L  ',
-- "\ '        0@@@@^              0@@@@@@  ',
-- "\ '       #@@@F                 0@@@@@b  ',
-- "\ '      1@@@^                   `@@@@@L  ',
-- "\ '                               ^@@@@@  ',
-- "\ '                                ^@@@@[  ',
-- "\ '                                  ##P  ',
-- "\ '',
-- "\ ]
-- "

-- "let g:dashboard_custom_header =[
-- "    \'          ▀████▀▄▄              ▄█ ',
-- "    \'            █▀    ▀▀▄▄▄▄▄    ▄▄▀▀█ ',
-- "    \'    ▄        █          ▀▀▀▀▄  ▄▀  ',
-- "    \'   ▄▀ ▀▄      ▀▄              ▀▄▀  ',
-- "    \'  ▄▀    █     █▀   ▄█▀▄      ▄█    ',
-- "    \'  ▀▄     ▀▄  █     ▀██▀     ██▄█   ',
-- "    \'   ▀▄    ▄▀ █   ▄██▄   ▄  ▄  ▀▀ █  ',
-- "    \'    █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀  ',
-- "    \'   █   █  █      ▄▄           ▄▀   ',
-- "    \]

db.custom_header = {
    "      _             ",
    "   _.;_'-._         ",
    "  {`--.-'_,}        ",
    " {; \\,__.-'/}       ",
    " {.'-`._;-';        ",
    "  `'--._.-'         ",
    "     .-\\\\,-\"-.     ",
    "     `- \\( '-. \\    ",
    "         \\;---,/    ",
    "     .-\"\"-;\\      ",
    "    /  .-' )\\       ",
    "    \\,---'` \\       ",
    "             \\|     ",
}

-- " let g:dashboard_custom_header = [
-- "             \'⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣴⣶⣀⣀⣶⣄⠀⠀⠀⠀⠀⠀',
-- "             \'⠀⠀⠀⠀⠀⠀⠀⢀⡠⣔⠮⠍⠛⠒⠒⠒⠚⠠⠽⣉⠙⠻⢿⣿⣿⣷⠀⠀⠀⠀⠀',
-- "             \'⠀⠀⠀⠀⠀⣠⡂⠕⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠢⢀⡹⠛⠋⠑⡄⠀⠀⠀',
-- "             \'⠀⣀⣀⣠⣼⠏⠀⠀⠀⠀⠀⠀⠀⠜⠑⣄⠀⠀⠀⠀⠀⠠⠊⠀⠀⠀⠀⣷⠀⠀⠀',
-- "             \'⣿⣿⣿⣿⡏⠀⠀⠀⢸⠉⢆⠀⠀⢸⣀⣸⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⡏⠀⠀⠀',
-- "             \'⣿⣿⣿⣿⠃⠀⠀⠀⠸⣄⣸⡆⠀⠈⢿⣿⣿⠀⣠⣴⣶⣶⡄⠀⢀⣤⣾⣇⣀⣀⡀',
-- "             \'⣿⣿⣿⣿⣦⣄⠀⠀⠀⢻⣿⣿⠀⠀⠈⠻⡿⠀⠘⠛⠛⠋⠁⠸⣿⣿⣿⣿⣿⣿⣿',
-- "             \'⣿⣿⡿⢿⣿⣿⣷⢀⣀⠀⠻⠿⢀⣴⣶⣶⡆⠀⠀⠀⠀⠀⣠⣾⣿⣿⣿⣿⣿⣿⣿',
-- "             \'⣿⣿⣦⣤⠛⣿⣿⣿⡿⠃⠀⠀⠹⣿⣿⣿⠇⠀⠀⠀⢀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿',
-- "             \'⣿⣿⣿⣿⣦⡈⣿⣿⠇⠀⠀⠀⠀⠀⠉⠉⠀⠀⠀⠀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
-- "             \'⣿⣿⣿⣿⣿⣿⣿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠃',
-- "             \'⠉⠻⣿⣿⣿⣿⣿⣶⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⠀',
-- "             \'⠀⠀⠀⠀⠛⢿⣿⣿⣿⣷⢦⣄⣀⡀⠤⣤⣤⣀⣀⣬⣿⣿⣿⣿⣿⣿⣿⠟⠁⠀⠀',
-- "             \'⠀⠀⠀⢠⣴⣿⣿⣿⣿⣿⣦⣭⣷⣶⣿⣿⡿⠿⠟⠋⠁⠉⠛⠛⠿⠋⠁',
-- "             \]
--
vim.cmd('hi! DashboardHeader guifg=#67b0e8')
vim.cmd('hi! DashboardFooter guifg=#8ccf7e')
vim.cmd('hi! DashboardShortCut guifg=#2d3437')
vim.cmd('hi! DashboardCenter1Icon guifg=#e57474')
vim.cmd('hi! DashboardCenter3Icon guifg=#e57474')
vim.cmd('hi! DashboardCenter5Icon guifg=#e57474')
vim.cmd('hi! DashboardCenter7Icon guifg=#e57474')
vim.cmd('hi! DashboardCenter9Icon guifg=#e57474')
vim.cmd('hi! DashboardCenter11Icon guifg=#e57474')
vim.cmd('hi! DashboardCenter13Icon guifg=#e57474')
