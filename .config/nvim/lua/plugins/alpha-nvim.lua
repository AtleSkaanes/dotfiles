return {
    'goolord/alpha-nvim',
    main = 'alpha',
    lasy = false,
    priority = 1000,
    opts = function()
        local dashboard = require('alpha.themes.dashboard')

        dashboard.section.header.val = {
            [[           $$\     $$\                     $$\               ]],
            [[           $$ |    $$ |                    \__|              ]],
            [[ $$$$$$\ $$$$$$\   $$ | $$$$$$\ $$\    $$\ $$\ $$$$$$\$$$$\  ]],
            [[ \____$$\\_$$  _|  $$ |$$  __$$\\$$\  $$  |$$ |$$  _$$  _$$\ ]],
            [[ $$$$$$$ | $$ |    $$ |$$$$$$$$ |\$$\$$  / $$ |$$ / $$ / $$ |]],
            [[$$  __$$ | $$ |$$\ $$ |$$   ____| \$$$  /  $$ |$$ | $$ | $$ |]],
            [[\$$$$$$$ | \$$$$  |$$ |\$$$$$$$\   \$  /   $$ |$$ | $$ | $$ |]],
            [[ \_______|  \____/ \__| \_______|   \_/    \__|\__| \__| \__|]],
        }
        dashboard.section.buttons.val = {
            dashboard.button(
                'e',
                '  New file',
                '<cmd>ene <BAR> startinsert <CR>'
            ),
            dashboard.button(
                'r',
                '  Recent files',
                "<cmd>lua require('telescope.builtin').oldfiles() <CR>"
            ),
            dashboard.button(
                'p',
                '  Recent projects',
                '<cmd>Telescope projects<CR>'
            ),
            dashboard.button(
                's',
                '  Recent sessions',
                '<cmd>SessionManager load_session<CR>'
            ),
            dashboard.button(
                'P',
                '  view plugins',
                "<cmd>lua require('telescope').extensions.telescopeplugins.ListPlugins()<CR>"
            ),
            dashboard.button(
                'c',
                '  Configure',
                '<cmd>cd '
                    .. vim.fn.stdpath('config')
                    .. '<CR><cmd>NvimTreeFindFileToggle<CR><C-w>l<cmd>q<CR>'
            ),
            dashboard.button('q', '󰅚  Quit NVIM', ':qa<CR>'),
        }
        dashboard.section.footer.val = {
            [["10/10 - Wasted so much time here" - Atle]],
        }
        return dashboard.config
    end,
    dependencies = { 'nvim-tree/nvim-web-devicons' },
}
