return {
    -- TO REMEMBER LAST COLORSCHEME
    {
        'raddari/last-color.nvim',
        lazy = false,
        config = function()
            require('last-color').setup()
            -- default theme as a backup, `recall()` can return `nil`.
            local theme = require('last-color').recall() or 'default'
            vim.cmd.colorscheme(theme)
        end,
    },
    {
        'rose-pine/neovim',
        name = 'rose-pine',
        lazy = false,
        priority = 1000,
    },
    {
        'AlexvZyl/nordic.nvim',
        lazy = false,
        priority = 1000,
    },
    {
        'nyoom-engineering/nyoom.nvim',
        lazy = false,
        priority = 1000,
    },
    {
        'olivercederborg/poimandres.nvim',
        lazy = false,
        priority = 1000,
    },
    {
        'cvigilv/patana.nvim',
        lasy = false,
        priority = 1000,
    },
    {
        'arzg/vim-colors-xcode',
        lazy = false,
        priority = 1000,
    },
    {
        'folke/tokyonight.nvim',
        lazy = false,
        priority = 1000,
        opts = {},
    },
    {
        'ellisonleao/gruvbox.nvim',
        lazy = false,
        priority = 1000,
        opts = {},
    },
    {
        'ab-dx/ares.nvim',
        name = 'ares',
        lazy = false,
        priority = 1000,
        dependencies = { 'rktjmp/lush.nvim' },
    },
    {
        'Mofiqul/vscode.nvim',
        lazy = false,
        priority = 1000,
    },
    {
        'zenbones-theme/zenbones.nvim',
        lazy = false,
        priority = 1000,
        dependencies = { 'rktjmp/lush.nvim' },
    },
    {
        'navarasu/onedark.nvim',
        lazy = false,
        priority = 1000,
    },
    {
        "eldritch-theme/eldritch.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    }
}
