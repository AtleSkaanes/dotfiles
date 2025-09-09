return {
    'VonHeikemen/lsp-zero.nvim',
    main = 'lsp-zero',
    lazy = true,
    event = { 'BufReadPre', 'BufNewFile' },
    branch = 'v3.x',
    dependencies = {
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
        -- Rust
        'mrcjkb/rustaceanvim',
        -- LSP Support
        'neovim/nvim-lspconfig',
        -- Linting
        'mfussenegger/nvim-lint',
        -- Autocompletion
        'hrsh7th/nvim-cmp',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-cmdline',
        'hrsh7th/cmp-nvim-lsp',
        -- 'L3MON4D3/LuaSnip',
        -- LuaSnip
        -- 'L3MON4D3/cmp_luasnip',

        -- neodev
        'folke/neodev.nvim',
    },
    config = function()
        local lsp_zero = require('lsp-zero')

        lsp_zero.on_attach(function(_, bufnr)
            local opts = { buffer = bufnr, remap = false }

            vim.keymap.set(
                'n',
                'gd',
                function() vim.lsp.buf.definition() end,
                opts
            )
            vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
            vim.keymap.set('n', 'K', function() vim.lsp.buf.hover() end, opts)
            vim.keymap.set(
                'n',
                '<leader>k',
                function() vim.lsp.buf.hover() end,
                opts
            )
            vim.keymap.set(
                'n',
                '<leader>vws',
                function() vim.lsp.buf.workspace_symbol() end,
                opts
            )
            vim.keymap.set(
                'n',
                '<leader>vd',
                function() vim.diagnostic.open_float() end,
                opts
            )
            vim.keymap.set(
                'n',
                '<leader>vca',
                function() vim.lsp.buf.code_action() end,
                opts
            )
            vim.keymap.set(
                'n',
                '<leader>vrr',
                function() vim.lsp.buf.references() end,
                opts
            )
            vim.keymap.set(
                'n',
                '<leader>vrn',
                function() vim.lsp.buf.rename() end,
                opts
            )
            vim.keymap.set(
                'i',
                '<C-h>',
                function() vim.lsp.buf.signature_help() end,
                opts
            )

            --- Inlay type hints
            vim.lsp.inlay_hint.enable()
            vim.keymap.set(
                'n',
                '<leader>ih',
                function()
                    vim.lsp.inlay_hint.enable(
                        not vim.lsp.inlay_hint.is_enabled()
                    )
                end,
                opts
            )
        end)
        lsp_zero.set_sign_icons({
            error = ' ',
            warn = ' ',
            hint = ' ',
            info = ' ',
        })

        local lspconfig = require('lspconfig')
        local capabilities = require('cmp_nvim_lsp').default_capabilities()

        require('mason').setup({
            ensure_installed = { 'clang-format', 'markdownlint' },
        })
        require('mason-lspconfig').setup({
            ensure_installed = {
                'clangd',
                'lua_ls',
                'slint_lsp',
                -- 'rust_analyzer',
                'pylsp',
                'marksman',
                'elixirls',
                'texlab',
                'zls',
            },
            handlers = {
                lsp_zero.default_setup,
                lua_ls = function()
                    local lua_opts = lsp_zero.nvim_lua_ls()
                    lspconfig.lua_ls.setup({ lua_opts })
                end,

                -- marksman = function() lspconfig.marksman.setup() end,

                clangd = function()
                    lspconfig.clangd.setup({
                        on_attach = function(client)
                            client.server_capabilities.signatureHelpProvoder =
                                false
                            -- require('navic').attach(client, bufnr)
                            -- require('nvim-navbuddy').attach(client, bufnr)
                        end,
                        capabilities = capabilities,
                    })
                end,
                -- rust_analyzer = function() end,
                slint_lsp = function()
                    local opts = {
                        command = 'slint-lsp',
                        filetypes = { 'slint' },
                    }
                    lspconfig.slint_lsp.setup(opts)
                end,
                texlab = function() lspconfig.texlab.setup({}) end,
                zls = function()
                    lspconfig.zls.setup({
                        settings = {
                            zls = {
                                enable_build_on_save = true,
                            },
                        },
                    })
                end,
            },
        })

        require('lint').linters_by_ft = {
            markdown = 'markdownlint',
            rust = 'snyk',
            go = 'snyk',
            typescript = 'snyk',
            c = 'ast-grep',
            cpp = 'ast-grep',
            lua = 'selene',
        }
    end,
}
