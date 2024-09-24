local icons = {
    Class = '󰒕',
    Struct = '󰠱',
    Interface = '',
    Reference = '',
    Enum = '',
    EnumMember = '',
    Constructor = '',
    Function = '󰊕',
    Keyword = '󰌆',
    Method = '󰡱',
    Field = '',
    Module = '󰀼',
    Snippet = '󰘖',
    Text = '󰦨',
    Variable = '󰫧',
    Constant = '',
    File = '󰈔',
    Folder = '󰉋',

    nvim_lsp = '󰑣',
    calc = '󰃬',
    path = '',
    cmdline = '',
    buffer = '󰦪',
    git = '󰊢',
}

return {
    -- Autocompletion
    'hrsh7th/nvim-cmp',
    lazy = true,
    events = { 'VeryLazy' },
    dependencies = {
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-cmdline',
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-calc',
        -- LuaSnip
        -- 'L3MON4D3/LuaSnip',
        -- 'saadparwaiz1/cmp_luasnip',
    },

    config = function()
        local cmp = require('cmp')
        local cmp_select = { behavior = cmp.SelectBehavior.Select }
        -- local lsp_zero = require('lsp-zero')

        cmp.setup({
            window = {
                completion = cmp.config.window.bordered(),
                documentation = cmp.config.window.bordered(),
            },
            sources = {
                {
                    name = 'path',
                    option = {
                        trailing_slash = true,
                        label_trailing_slash = true,
                        get_cwd = function() return vim.fn.getcwd() end,
                    },
                },
                { name = 'calc' },
                { name = 'nvim_lsp', priority = 100 },
                { name = 'nvim_lua' },
            },
            formatting = {
                format = function(entry, vim_item)
                    local kind = vim_item.kind
                    vim_item.kind = (icons[kind] or '?') .. ' ' .. kind

                    local source = entry.source.name
                    vim_item.menu = ' ' .. (icons[source] or source)

                    return vim_item
                end,
            },
            mapping = cmp.mapping.preset.insert({
                ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
                ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
                ['<CR>'] = cmp.mapping.confirm({ select = true }),
                ['<C-Space>'] = cmp.mapping.complete(),
            }),
        })

        -- `/` cmdline setup.
        cmp.setup.cmdline('/', {
            mapping = cmp.mapping.preset.cmdline(),
            sources = {
                { name = 'buffer' },
            },
        })

        -- `:` cmdline setup.
        cmp.setup.cmdline(':', {
            mapping = cmp.mapping.preset.cmdline(),
            sources = cmp.config.sources({
                { name = 'path' },
            }, {
                {
                    name = 'cmdline',
                    option = {
                        ignore_cmds = { 'Man', '!' },
                    },
                },
            }),
        })
    end,
}
