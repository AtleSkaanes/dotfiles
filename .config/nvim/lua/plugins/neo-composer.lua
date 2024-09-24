return {
    'ecthelionvi/NeoComposer.nvim',
    main = 'NeoComposer',
    lazy = true,
    event = { 'BufReadPre', 'BufNewFile' },
    dependencies = { 'kkharji/sqlite.lua', 'nvim-telescope/telescope.nvim' },
    opts = {
        notify = true,
        delay_timer = 150,
        queue_most_recent = true,
        window = {
            border = 'rounded',
            winhl = {
                Normal = 'ComposerNormal',
            },
        },
        colors = {
            bg = '#16161e',
            fg = '#ff9e64',
            red = '#ec5f67',
            blue = '#5fb3b3',
            green = '#99c794',
        },
        keymaps = {
            play_macro = 'Q',
            yank_macro = 'yq',
            stop_macro = 'cq',
            toggle_record = 'q',
            cycle_next = '<c-n>',
            cycle_prev = '<c-p>',
            toggle_macro_menu = '<leader>q',
        },
    },
}
