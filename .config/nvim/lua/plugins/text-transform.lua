return {
    'chenasraf/text-transform.nvim',
    lazy = true,
    event = 'VeryLazy',
    -- stable version
    version = '*', -- or: tag = "stable"
    -- dev version
    -- branch = "develop",
    -- Optional - for Telescope popup
    dependencies = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim' },

    opts = {
        --- Sort the replacers in the popup.
        --- Possible values: 'frequency', 'name'
        sort_by = 'frequency',

        --- The popup type to show.
        --- Possible values: 'telescope', 'select'
        popup_type = 'telescope',
    },
}
