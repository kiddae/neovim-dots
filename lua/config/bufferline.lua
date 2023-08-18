local bufferline = require('bufferline')
bufferline.setup {
    options = {
        mode = "buffers",
        style_preset = bufferline.style_preset.no_bold,
        -- themable = true,
        numbers = "none",
        diagnostics = "nvim_lsp",
        offsets = {
            {
                filetype = "NvimTree",
                text = "files",
                highlight = "Directory",
                text_align = "center",
                separator = false,
                padding = 1
            } },
        indicator = {
            style = "none"
        },
        separator_style = "thin",
        color_icons = true,
        show_buffer_close_icons = false,
        modified_icon = '●',
        show_buffer_icons = true
        -- signcolumn = 'no',
    }
}
