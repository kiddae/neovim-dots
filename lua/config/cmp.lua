-- Set up nvim-cmp.
local cmp = require 'cmp'

local kind_icons = {
    Text = "",
    Method = "󰆧",
    Function = "󰊕",
    Constructor = "",
    Field = "󰇽",
    Variable = "󰂡",
    Class = "󰠱",
    Interface = "",
    Module = "",
    Property = "󰜢",
    Unit = "",
    Value = "󰎠",
    Enum = "",
    Keyword = "󰌋",
    Snippet = "",
    Color = "󰏘",
    File = "󰈙",
    Reference = "",
    Folder = "󰉋",
    EnumMember = "",
    Constant = "󰏿",
    Struct = "",
    Event = "",
    Operator = "󰆕",
    TypeParameter = "󰅲",
}

cmp.setup({
    snippet = {
        -- REQUIRED - you must specify a snippet engine
        expand = function(args)
            -- vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
            -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
            -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
            vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
        end,
    },
    experimental = {
        ghost_text = true,
    },
    window = {
        -- completion = cmp.config.window.bordered(),
        -- documentation = cmp.config.window.bordered(),
        completion = {
            winhighlight = "Normal:Pmenu,Search:None,CursorLine:PmenuSel,FloatBorder:TelescopeBorder",
            col_offset = -3,
            side_padding = 0,
            border = "none",
            scrollbar = false,
        },
        documentation = {
            winhighlight = "FloatBorder:TelescopeBorder",
            border = "none"
        }
    },
    formatting = {
        fields = { "kind", "abbr", "menu" },
        format = function(entry, vim_item)
            vim_item.kind = " " .. (kind_icons[vim_item.kind] or "") .. " "
            vim_item.menu = "    (" .. (entry.source.name or "") .. ")"
            return vim_item
        end,
    },

    mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        -- { name = 'vsnip' }, -- For vsnip users.
        -- { name = 'luasnip' }, -- For luasnip users.
        { name = 'ultisnips' }, -- For ultisnips users.
        -- { name = 'snippy' }, -- For snippy users.
        { name = 'path' }
    }, {
        { name = 'buffer' },
    })
})

-- Set configuration for specific filetype.
cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
        { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
    }, {
        { name = 'buffer' },
    })
})

-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline({ '/', '?' }, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
        { name = 'buffer' }
    }
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
        { name = 'path' }
    }, {
        { name = 'cmdline' }
    })
})

-- -- Set up lspconfig.
-- local capabilities = require('cmp_nvim_lsp').default_capabilities()
-- -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
-- require('lspconfig')['<YOUR_LSP_SERVER>'].setup {
--     capabilities = capabilities
-- }
--
--
--



local hl = {
    -- Pmenu = { fg = "NONE", bg = "NONE" },
    -- PmenuSel = { bg = "#282C34", fg = "NONE" },
    CmpItemAbbrDeprecated = { fg = "#7E8294", bg = "NONE", strikethrough = true },
    CmpItemAbbrMatch = { fg = "#82AAFF", bg = "NONE", bold = true },
    CmpItemAbbrMatchFuzzy = { fg = "#82AAFF", bg = "NONE", bold = true },
    CmpItemMenu = { fg = "#C792EA", bg = "NONE", italic = true },

    CmpItemKindField = { fg = "#EED8DA", bg = "#B5585F" },
    CmpItemKindProperty = { fg = "#EED8DA", bg = "#B5585F" },
    CmpItemKindEvent = { fg = "#EED8DA", bg = "#B5585F" },

    CmpItemKindText = { fg = "#C3E88D", bg = "#9FBD73" },
    CmpItemKindEnum = { fg = "#C3E88D", bg = "#9FBD73" },
    CmpItemKindKeyword = { fg = "#C3E88D", bg = "#9FBD73" },

    CmpItemKindConstant = { fg = "#FFE082", bg = "#D4BB6C" },
    CmpItemKindConstructor = { fg = "#FFE082", bg = "#D4BB6C" },
    CmpItemKindReference = { fg = "#FFE082", bg = "#D4BB6C" },

    CmpItemKindFunction = { fg = "#EADFF0", bg = "#A377BF" },
    CmpItemKindStruct = { fg = "#EADFF0", bg = "#A377BF" },
    CmpItemKindClass = { fg = "#EADFF0", bg = "#A377BF" },
    CmpItemKindModule = { fg = "#EADFF0", bg = "#A377BF" },
    CmpItemKindOperator = { fg = "#EADFF0", bg = "#A377BF" },

    CmpItemKindVariable = { fg = "#C5CDD9", bg = "#7E8294" },
    CmpItemKindFile = { fg = "#C5CDD9", bg = "#7E8294" },

    CmpItemKindUnit = { fg = "#F5EBD9", bg = "#D4A959" },
    CmpItemKindSnippet = { fg = "#F5EBD9", bg = "#D4A959" },
    CmpItemKindFolder = { fg = "#F5EBD9", bg = "#D4A959" },

    CmpItemKindMethod = { fg = "#DDE5F5", bg = "#6C8ED4" },
    CmpItemKindValue = { fg = "#DDE5F5", bg = "#6C8ED4" },
    CmpItemKindEnumMember = { fg = "#DDE5F5", bg = "#6C8ED4" },

    CmpItemKindInterface = { fg = "#D8EEEB", bg = "#58B5A8" },
    CmpItemKindColor = { fg = "#D8EEEB", bg = "#58B5A8" },
    CmpItemKindTypeParameter = { fg = "#D8EEEB", bg = "#58B5A8" },
}

for h, c in pairs(hl) do
    vim.api.nvim_set_hl(0, h, c)
end
