source ~/.config/nvim/plugins.vim "uses plug.vim
source ~/.config/nvim/global.vim "global options
source ~/.config/nvim/templates.vim "templates
source ~/.config/nvim/commands.vim "custom commands and keybindings
if filereadable(".vimrc") "source local configurations
    source .vimrc
    call UpdateCommands()
endif

"" Files in the plugin/ directory are sourced automatically.
