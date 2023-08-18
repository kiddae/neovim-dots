" to speed up things...
lua require('impatient')

lua require('plugins')
execute "source " . stdpath("config") . "/templates.vim" 
execute "source " . stdpath("config"). "/commands.vim" 
execute "source " . stdpath("config"). "/global.vim" 
" if filereadable(".vimrc") "source local configurations
"     source .vimrc
"     call UpdateCommands()
" endif

"" Files in the plugin/ directory are sourced automatically.
