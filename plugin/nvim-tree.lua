vim.g.nvim_tree_git_hl = 1
vim.g.nvim_tree_respect_buf_cwd = 1
vim.g.nvim_tree_icons = {
    default = "",
    symlink = "",
    git = {
        deleted = "",
        ignored = "◌",
        renamed = "➜",
        staged = "✓",
        unmerged = "",
        unstaged = "✗",
        untracked = "★",
    },
    folder = {
        default = "",
        empty = "",
        empty_open = "",
        open = "",
        symlink = "",
        symlink_open = "",
        arrow_open = "",
        arrow_closed = "",
    },
}
require 'nvim-tree'.setup {
    hijack_cursor = true,
    update_cwd = true,
    ignore_ft_on_setup = { "dashboard" },
    view = {
        hide_root_folder = true,
        width = 35
    },
    actions = {
        open_file = {
            resize_window = true
        }
    },
    renderer = {
        indent_markers = {
            enable = true
        }
    },
    diagnostics = {
        enable = false
    }
}
