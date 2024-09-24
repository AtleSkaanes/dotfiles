return {
    'akinsho/toggleterm.nvim',
    lazy = true,
    event = { 'BufReadPre', 'BufNewFile' },
    size = 15,
    main = 'toggleterm',
    opts = {
        open_mapping = [[<c-T>]],
        hide_numbers = true,
        autochdir = true,
        start_in_insert = true,
        close_on_exit = false,
        direction = 'float',
        shell = vim.o.shell,
        winbar = {
            enabled = true,
            name_formatter = function(term) --  term: Terminal
                return term.name
            end
        },
    }
}
