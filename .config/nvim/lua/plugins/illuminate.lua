return {
    'RRethy/vim-illuminate',
    main = 'illuminate',
    lazy = true,
    event = { 'BufReadPre', 'BufNewFile' },
    config = function() require('illuminate').configure() end,
}
