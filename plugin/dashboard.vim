let g:dashboard_default_executive='telescope'
" let g:dashboard_default_header='pikachu'
" let g:dashboard_preview_command = 'chafa -f symbols -c 256 --fg-only --symbols braille'
" let g:dashboard_preview_file = '~/.config/nvim/LAINHADN3.gif'
let g:dashboard_preview_file_height = 14
let g:dashboard_preview_file_width = 18
nmap <Leader>ss :<C-u>SessionSave<CR>
nmap <Leader>sl :<C-u>SessionLoad<CR>
nnoremap <silent> <Leader>fh :DashboardFindHistory<CR>
nnoremap <silent> <Leader>ff :DashboardFindFile<CR>
nnoremap <silent> <Leader>tc :DashboardChangeColorscheme<CR>
nnoremap <silent> <Leader>fa :DashboardFindWord<CR>
nnoremap <silent> <Leader>fb :DashboardJumpMark<CR>
nnoremap <silent> <Leader>cn :DashboardNewFile<CR>
" autocmd FileType dashboard set showtabline=0 | autocmd WinLeave <buffer> set showtabline=2

"highlight dashboardHeader ctermfg=215


"let g:dashboard_custom_header = [
"\ ' g@@@@@@@@@@@@@@@@@@@@@@@@b_  ',
"\ '0@@@@@@@@@@@@@@@@@@@@@@@@@@@k  ',
"\ '0@@@@@@@@@@@@@^^#@@@@@@@@@@@@L  ',
"\ ' #@@@@@@@@@@"   J@@@@@@@@@@@@@  ',
"\ '               J@@@@@@@@@@@@@@b  ',
"\ '              d@@@@@##@@@@@@@@@L  ',
"\ '             d@@@@#   ^@@@@@@@@Q  ',
"\ '            d@@@@@@r    #@@@@@@@[  ',
"\ '           d@@@@@@@[     #@@@@@@@r  ',
"\ '          0@@@@@@@P       0@@@@@@%  ',
"\ '         0@@@@P            0@@@@@@L  ',
"\ '        0@@@@^              0@@@@@@  ',
"\ '       #@@@F                 0@@@@@b  ',
"\ '      1@@@^                   `@@@@@L  ',
"\ '                               ^@@@@@  ',
"\ '                                ^@@@@[  ',
"\ '                                  ##P  ',
"\ '',
"\ ]
"

"let g:dashboard_custom_header =[
"    \'          ▀████▀▄▄              ▄█ ',
"    \'            █▀    ▀▀▄▄▄▄▄    ▄▄▀▀█ ',
"    \'    ▄        █          ▀▀▀▀▄  ▄▀  ',
"    \'   ▄▀ ▀▄      ▀▄              ▀▄▀  ',
"    \'  ▄▀    █     █▀   ▄█▀▄      ▄█    ',
"    \'  ▀▄     ▀▄  █     ▀██▀     ██▄█   ',
"    \'   ▀▄    ▄▀ █   ▄██▄   ▄  ▄  ▀▀ █  ',
"    \'    █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀  ',
"    \'   █   █  █      ▄▄           ▄▀   ',
"    \]

let g:dashboard_custom_header =[
\"      _             ",
\"   _.;_'-._         ",
\"  {`--.-'_,}        ",
\" {; \\,__.-'/}       ",
\" {.'-`._;-';        ",
\"  `'--._.-'         ",
\"     .-\\\\,-\"-.     ",
\"     `- \\( '-. \\    ",
\"         \\;---,/    ",
\"     .-\"\"-;\\      ",
\"    /  .-' )\\       ",
\"    \\,---'` \\       ",
\"             \\|     ",
                   \]

" let g:dashboard_custom_header = [
"             \'⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣴⣶⣀⣀⣶⣄⠀⠀⠀⠀⠀⠀',
"             \'⠀⠀⠀⠀⠀⠀⠀⢀⡠⣔⠮⠍⠛⠒⠒⠒⠚⠠⠽⣉⠙⠻⢿⣿⣿⣷⠀⠀⠀⠀⠀',
"             \'⠀⠀⠀⠀⠀⣠⡂⠕⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠢⢀⡹⠛⠋⠑⡄⠀⠀⠀',
"             \'⠀⣀⣀⣠⣼⠏⠀⠀⠀⠀⠀⠀⠀⠜⠑⣄⠀⠀⠀⠀⠀⠠⠊⠀⠀⠀⠀⣷⠀⠀⠀',
"             \'⣿⣿⣿⣿⡏⠀⠀⠀⢸⠉⢆⠀⠀⢸⣀⣸⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⡏⠀⠀⠀',
"             \'⣿⣿⣿⣿⠃⠀⠀⠀⠸⣄⣸⡆⠀⠈⢿⣿⣿⠀⣠⣴⣶⣶⡄⠀⢀⣤⣾⣇⣀⣀⡀',
"             \'⣿⣿⣿⣿⣦⣄⠀⠀⠀⢻⣿⣿⠀⠀⠈⠻⡿⠀⠘⠛⠛⠋⠁⠸⣿⣿⣿⣿⣿⣿⣿',
"             \'⣿⣿⡿⢿⣿⣿⣷⢀⣀⠀⠻⠿⢀⣴⣶⣶⡆⠀⠀⠀⠀⠀⣠⣾⣿⣿⣿⣿⣿⣿⣿',
"             \'⣿⣿⣦⣤⠛⣿⣿⣿⡿⠃⠀⠀⠹⣿⣿⣿⠇⠀⠀⠀⢀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿',
"             \'⣿⣿⣿⣿⣦⡈⣿⣿⠇⠀⠀⠀⠀⠀⠉⠉⠀⠀⠀⠀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
"             \'⣿⣿⣿⣿⣿⣿⣿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠃',
"             \'⠉⠻⣿⣿⣿⣿⣿⣶⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⠀',
"             \'⠀⠀⠀⠀⠛⢿⣿⣿⣿⣷⢦⣄⣀⡀⠤⣤⣤⣀⣀⣬⣿⣿⣿⣿⣿⣿⣿⠟⠁⠀⠀',
"             \'⠀⠀⠀⢠⣴⣿⣿⣿⣿⣿⣦⣭⣷⣶⣿⣿⡿⠿⠟⠋⠁⠉⠛⠛⠿⠋⠁',
"             \]
