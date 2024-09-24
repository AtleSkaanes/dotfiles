return {
    'saecki/crates.nvim',
    main = 'crates',
    lazy = true,
    event = { "BufRead Cargo.toml" },
    opts = {
        src = {
            cmp = {
                enabled = true,
            }
        },
        sources = {
            { name = "path" },
            { name = "buffer" },
            { name = "nvim_lsp" },
            { name = "crates" },
        }
    },
    dependencies = { 'nvim-lua/plenary.nvim' },
}
