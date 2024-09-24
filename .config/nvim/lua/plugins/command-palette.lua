return {
    'AtleSkaanes/command-palette.nvim',
    main = 'command-palette',
    lazy = true,
    event = { 'BufReadPre', 'BufNewFile' },
    opts = {
        icons = {
            cmd = '',
            category = '',
            back = ' ..',
        },
        commands = {
            {
                name = 'test',
                category = 'echo',
                cmd = { 'echo', 'test' },
            },
            {
                name = 'yes',
                category = 'echo',
                cmd = { 'echo', 'yes' },
            },
            {
                category = { 'verson control', 'git' },
                name = 'status',
                cmd = { 'git', 'status', '--porcelain' },
            },
            {
                name = 'py version',
                cmd = { 'python', '--version' },
            },
        },
    },
}
