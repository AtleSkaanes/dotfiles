return {
    'vyfor/cord.nvim',
    build = ':Cord update',
    event = 'VeryLazy',
    opts = {
        display = {
            theme = 'catppuccin',
            flavour = 'dark',
        },
    },
}
