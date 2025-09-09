return {
    'nvim-tree/nvim-web-devicons',
    main = 'nvim-web-devicons',
    lazy = true,
    event = 'VeryLazy',
    opts = {
        override = {
            zsh = {
                icon = '',
                color = '#428850',
                cterm_color = '65',
                name = 'Zsh',
            },
        },
        color_icons = true,
        default = true,
        strict = false,
        override_by_filename = {
            ['.gitignore'] = {
                icon = '',
                name = '.gitignore',
                color = '#f1502f',
            },
        },
        override_by_extension = {
            ['log'] = {
                icon = '',
                color = '#81e043',
                name = 'Log',
            },
            ['slint'] = {
                icon = '󱐌',
                color = '#99a8ff',
                name = 'Slint',
            },
            ['gleam'] = {
                icon = '',
                color = '#cba6f7',
                name = 'Gleam',
            },
        },
    },
}
