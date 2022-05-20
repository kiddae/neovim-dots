require 'bufferline'.setup {
    options = {
        diagnostics = "nvim_lsp",
        offsets = { { filetype = "NvimTree", text = "", padding = 1 } },
        separator_style = "slant",
        number = false,
        signcolumn = 'no',
    }
}
