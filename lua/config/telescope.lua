require('telescope').setup {
    defaults = require('telescope.themes').get_ivy {
        -- preview = {
        --     treesitter = false
        -- },
    },
}

require('telescope').load_extension('ultisnips')
require('telescope').load_extension('fzf')
