return {
    'ziontee113/icon-picker.nvim',
    main = 'icon-picker',
    lazy = true,
    event = { 'BufReadPre', 'BufNewFile' },
    opts = {
        disable_legacy_commands = true,
    },
    init = function()
        local opts = { noremap = true, silent = true }
        vim.keymap.set(
            'n',
            '<Leader><Leader>i',
            '<cmd>IconPickerNormal emoji nerd_font_v3 alt_font symbols<cr>',
            opts
        )
    end,
}
