-- return
-- {
--     "3rd/image.nvim",
--     lazy = false,
--     opts = {
--         backend = "kitty",
--         integrations = {
--             markdown = {
--                 enabled = true,
--                 clear_in_insert_mode = false,
--                 download_remote_images = true,
--                 only_render_image_at_cursor = false,
--                 filetypes = { "markdown", "vimwiki" }, -- markdown extensions (ie. quarto) can go here
--             },
--             neorg = {
--                 enabled = true,
--                 clear_in_insert_mode = false,
--                 download_remote_images = true,
--                 only_render_image_at_cursor = false,
--                 filetypes = { "norg" },
--             },
--             html = {
--                 enabled = false,
--             },
--             css = {
--                 enabled = false,
--             },
--         },
--         max_width = nil,
--         max_height = nil,
--         max_width_window_percentage = nil,
--         max_height_window_percentage = 50,
--         window_overlap_clear_enabled = false,                                               -- toggles images when windows are overlapped
--         window_overlap_clear_ft_ignore = { "cmp_menu", "cmp_docs", "" },
--         editor_only_render_when_focused = false,                                            -- auto show/hide images when the editor gains/looses focus
--         tmux_show_only_in_active_window = false,                                            -- auto show/hide images in the correct Tmux window (needs visual-activity off)
--         hijack_file_patterns = { "*.png", "*.jpg", "*.jpeg", "*.gif", "*.webp", "*.avif" }, -- render image files as images when opened
--     }
-- }

--- ASCII IMAGE
return {
    'samodostal/image.nvim',
    main = 'image',
    lazy = true,
    event = { 'BufReadPre', 'BufNewFile' },
    dependencies = {
        'nvim-lua/plenary.nvim',
        'm00qek/baleia.nvim',
    },
    opts = {
        render = {
            min_padding = 5,
            show_label = true,
            show_image_dimensions = true,
            use_dither = true,
            foreground_color = true,
            background_color = true,
        },
        events = {
            update_on_nvim_resize = true,
        },
    },
}
