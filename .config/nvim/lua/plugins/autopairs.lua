return {
    'windwp/nvim-autopairs',
    dependencies = {
        'hrsh7th/nvim-cmp',
    },
    lazy = true,
    event = { 'BufReadPre', 'BufNewFile' },
    opts = {
        map_cr = true,
    },
}
