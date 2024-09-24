return {
    'ziontee113/color-picker.nvim',
    main = 'color-picker',
    lazy = true,
    event = { 'VeryLazy' },
    init = function()
        local opts = { noremap = true, silent = true }
        vim.keymap.set('n', '<A-C>', '<cmd>PickColor<cr>', opts)
        vim.keymap.set('i', '<A-C>', '<cmd>PickColorInsert<cr>', opts)

        -- Avoid weird border background
        vim.cmd([[hi FloatBorder guibg=NONE]])
    end,
    opts = {
        ['icons'] = { '█', '' },
        ['border'] = 'rounded', -- none | single | double | rounded | solid | shadow
    },
}
