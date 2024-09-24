return {
    'RaafatTurki/hex.nvim',
    lazy = true,
    event = 'VeryLazy',
    opts = {},
    init = function()
        vim.keymap.set('n', '<leader>hd', function() require('hex').toggle() end)
    end
}
