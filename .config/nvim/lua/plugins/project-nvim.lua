return {
    'ahmedkhalf/project.nvim',
    main = 'project_nvim',
    lasy = true,
    event = { 'VeryLazy' },
    opts = {
        detection_methods = { 'lsp', 'pattern' },
        patterns = { '.git', 'Makefile', 'package.json', 'cargo.toml' },
        exclude_dirs = { '~/AppData/Local/nvim/*' },
        manual_mode = true,
        silent_chdir = false,
    },
    init = function() require('telescope').load_extension('projects') end,
    dependencies = { 'nvim-telescope/telescope.nvim' },
}
