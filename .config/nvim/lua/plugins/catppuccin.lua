return {
    'catppuccin/nvim',
    main = 'catppuccin',
    priority = 1000,
    opts = {
        flavour = 'mocha', -- latte, frappe, macchiato, mocha
        background = {     -- :h background
            light = 'latte',
            dark = 'mocha',
        },
        transparent_background = false, -- disables setting the background color.
        show_end_of_buffer = false,     -- shows the '~' characters after the end of buffers
        -- term_colors = true, -- sets terminal colors (e.g. `g:terminal_color_0`)
        dim_inactive = {
            enabled = true,          -- dims the background color of inactive window
            shade = 'dark',
            percentage = 0.5,        -- percentage of the shade to apply to the inactive window
        },
        styles = {                   -- Handles the styles of general hi groups (see `:h highlight-args`):
            comments = { 'italic' }, -- Change the style of comments
            conditionals = { 'italic' },
            loops = { 'italic' },
            functions = {},
            keywords = { 'italic' },
            strings = {},
            variables = {},
            numbers = {},
            booleans = {},
            properties = {},
            types = { 'italic' },
            operators = {},
        },
        integrations = {
            cmp = true,
            gitsigns = true,
            nvimtree = true,
            treesitter = true,
            alpha = true,
            illuminate = true,
            mini = {
                enabled = true,
                indentscope_color = '',
            },
            dap = {
                enabled = true,
                enable_ui = true, -- enable nvim-dap-ui
            },
            -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
        },
        highlight_overrides = {
            all = function(cp)
                return {
                    -- NvimTreeIndentMarker = { bg = cp.blue, fg = cp.peach, underline = true },
                    -- CursorLine = { bg = cp.lavender, fg = cp.mantle },
                    NvimTreeSpecialFile = { fg = cp.peach, italic = true },
                    LspInlayHint = { bg = cp.none, fg = cp.overlay1 },
                    IlluminatedWordText = { bg = cp.none, underline = true },
                    IlluminatedWordWrite = { bg = cp.none, underline = true },
                    IlluminatedWordRead = { bg = cp.none, underline = true },
                    IlluminatedCurrWord = { bg = cp.none, underline = true },
                    IlluminatedWord = { bg = cp.none, underline = true },
                    DapBreakPointLine = { sp = cp.red, underline = true },
                    DapLogPointLine = { sp = cp.blue, underline = true },
                    DapStoppedLine = { sp = cp.green, underline = true },
                    DapStopped = { fg = cp.green },
                    DiffAdd = { fg = cp.green },
                }
            end,
        },
    },
}
