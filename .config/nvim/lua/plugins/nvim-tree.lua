return {
    'nvim-tree/nvim-tree.lua',
    main = 'nvim-tree',
    lazy = false,
    opts = {
        sort_by = 'case_sensitive',
        view = {
            width = 30,
        },
        renderer = {
            group_empty = true,
            root_folder_label = function(path)
                return vim.fn.fnamemodify(path, ':~:.')
            end,
            icons = {
                diagnostics_placement = 'after',
                glyphs = {
                    git = {
                        unstaged = '✗',
                        staged = '✓',
                        unmerged = ' ',
                        renamed = '➜',
                        untracked = ' ',
                        deleted = ' ',
                        ignored = '◌',
                    },
                },
            },
        },
        filters = {
            dotfiles = true,
            custom = { '^.git$' },
        },

        --- Project manager
        sync_root_with_cwd = false,
        respect_buf_cwd = true,
        update_focused_file = {
            enable = true,
            update_root = false,
        },
        diagnostics = {
            enable = true,
            show_on_dirs = true,
        },
        modified = {
            enable = true,
            show_on_dirs = false,
        },
        on_attach = function(bufnr)
            local api = require('nvim-tree.api')

            local function opts(desc)
                return {
                    desc = 'nvim-tree: ' .. desc,
                    buffer = bufnr,
                    noremap = true,
                    silent = true,
                    nowait = true,
                }
            end

            -- default mappings
            api.config.mappings.default_on_attach(bufnr)

            -- custom mappings
            vim.keymap.set(
                'n',
                '<C-s>',
                api.node.open.vertical,
                opts('Open In Vertical Split')
            )
            vim.keymap.set(
                'n',
                '<C-h>',
                api.node.open.horizontal,
                opts('Open In horizontal Split')
            )
        end,
    },
    init = function()
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        -- set termguicolors to enable highlight groups
        vim.opt.termguicolors = true
    end,
    dependencies = { 'nvim-tree/nvim-web-devicons' },
}
