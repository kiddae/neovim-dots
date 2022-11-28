require 'nvim-tree'.setup {
    respect_buf_cwd = true,
    hijack_cursor = true,
    update_cwd = true,
    ignore_ft_on_setup = { "dashboard" },
    view = {
        hide_root_folder = true,
        width = 30
    },
    actions = {
        open_file = {
            resize_window = true
        }
    },
    renderer = {
        indent_markers = {
            enable = true
        },
        icons = {
            glyphs = {
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
            },
        },
        highlight_git = true,
    },
    diagnostics = {
        enable = false
    }
}
