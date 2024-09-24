vim.keymap.set(
    'n',
    '<F2>',
    '<cmd>NvimTreeClose<CR><cmd>RustLsp debuggables<CR>'
)

local bufnr = vim.api.nvim_get_current_buf()
vim.keymap.set(
    'n',
    '<leader>a',
    '<cmd>RustLsp codeAction<CR>',
    { silent = true, buffer = bufnr }
)

vim.keymap.set('n', '<leader>rd', '<cmd>RustLsp renderDiagnostic<CR>')
