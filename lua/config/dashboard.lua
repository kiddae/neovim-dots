local db = require('dashboard')

-- db.hide_tabline = false
-- db.hide_statusline = false

-- hide = {
--     statusline,
--     tabline
-- }

-- db.custom_footer = { 'Have a great coding session~ <3' }
-- db.custom_center = {
--     {
--         icon = '  ',
--         desc = 'New file                              ',
--         shortcut = 'SPC c n',
--         action = 'DashboardNewFile'
--     },
--     {
--         icon = '  ',
--         desc = 'Find files                            ',
--         shortcut = 'SPC f f',
--         action = 'Telescope find_files'
--     },
--     {
--         icon = '  ',
--         desc = 'Recently opened files                 ',
--         shortcut = 'SPC f h',
--         action = 'Telescope oldfiles'
--     },
--     -- {
--     --     icon = 'ﰩ  ',
--     --     desc = 'Update plugins                    ',
--     --     shortcut = ':PlugUpdate',
--     --     action = 'PlugUpdate'
--     -- },
--     {
--         icon = '漣 ',
--         desc = 'Browse configuration                  ',
--         shortcut = 'SPC v d',
--         action = 'Telescope find_files cwd=~/.config/nvim'
--     },
--     {
--         icon = '  ',
--         desc = 'Browse colorschemes                   ',
--         shortcut = 'SPC t c',
--         action = 'Telescope colorscheme'
--     },
--     {
--         icon = '  ',
--         desc = 'Quit                                      ',
--         shortcut = ':q!',
--         action = 'q!'
--     }
-- }


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

-- db.custom_header = {
--     "      _             ",
--     "   _.;_'-._         ",
--     "  {`--.-'_,}        ",
--     " {; \\,__.-'/}       ",
--     " {.'-`._;-';        ",
--     "  `'--._.-'         ",
--     "     .-\\\\,-\"-.     ",
--     "     `- \\( '-. \\    ",
--     "         \\;---,/    ",
--     "     .-\"\"-;\\      ",
--     "    /  .-' )\\       ",
--     "    \\,---'` \\       ",
--     "             \\|     ",
-- }

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
vim.cmd('hi! DashboardKey guifg=#2d3437')
vim.cmd('hi! DashboardIcon guifg=#e57474')
--

db.setup({
    theme = 'doom',
    hide = {
        statusline = true,
        tabline = true,
    },
    shortcut_type = 'number',
    config = {
        -- week_header = {
        --     enable = true,
        -- },
        header = {
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
        },
        center = {
            {
                icon = '  ',
                desc = 'New file                              ',
                key = 'SPC c n',
                action = 'enew'
            },
            {
                icon = '  ',
                desc = 'Find files                            ',
                key = 'SPC f f',
                action = 'Telescope find_files'
            },
            {
                icon = '  ',
                desc = 'Recently opened files                 ',
                key = 'SPC f h',
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
                key = 'SPC f d',
                action = 'Telescope find_files cwd=$XDG_CONFIG_HOME/nvim'
            },
            {
                icon = '  ',
                desc = 'Browse colorschemes                   ',
                key = 'SPC f c',
                action = 'Telescope colorscheme'
            },
            {
                icon = '  ',
                desc = 'Quit                                      ',
                key = ':q!',
                action = 'q!'
            }
        },
        packages = {enable = true},
        project = { enable = true, limit = 8, icon = 'your icon', label = '', action = 'Telescope find_files cwd=' },
        mru = { limit = 10, icon = 'your icon', label = '', },
        footer = { 'Have a great coding session~ <3' },
    },
})
