vim.g.mapleader = ' '

--- Move highlighted block
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

vim.keymap.set('n', 'J', 'mzJ`z')

--- Keep cursor in middle
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

--- Paste and keep buffer
vim.keymap.set('x', '<leader>p', '"_dP')

--- Copy inrto system clipboard
vim.keymap.set('n', '<leader>y', '"+y')
vim.keymap.set('v', '<leader>y', '"+y')
vim.keymap.set('n', '<leader>Y', '"+Y')

--- Quickfix navigation
vim.keymap.set('n', '<C-k>', '<cmd>cnext<CR>zz')
vim.keymap.set('n', '<C-j>', '<cmd>cprev<CR>zz')
vim.keymap.set('n', '<leader>k', '<cmd>lnext<CR>zz')
vim.keymap.set('n', '<leader>j', '<cmd>lnext<CR>zz')

--- Replace current word
vim.keymap.set(
    'n',
    '<leader>s',
    [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]]
)

--- Git merge
vim.keymap.set('n', 'gl', '<cmd>diffget //2<CR>')
vim.keymap.set('n', 'gh', '<cmd>diffget //3<CR>')

--- Terminal
vim.keymap.set(
    'n',
    '<leader>tt',
    '<cmd>sp<CR><C-w>j<cmd>term<CR><cmd>res 15<CR>'
)
vim.keymap.set('t', '<C-w>h', '<C-\\><C-n><C-w>h', { silent = true })

-- Exit terminal mode
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')
--- Move in and out of splits
vim.keymap.set('n', '<A-up>', '<C-w>k')
vim.keymap.set('n', '<A-down>', '<C-w>j')
vim.keymap.set('n', '<A-left>', '<C-w>h')
vim.keymap.set('n', '<A-right>', '<C-w>l')
--- Move in and out of splits while in terminal mode
vim.keymap.set('t', '<A-up>', '<C-\\><C-n><C-w>k')
vim.keymap.set('t', '<A-down>', '<C-\\><C-n><C-w>j')
vim.keymap.set('t', '<A-left>', '<C-\\><C-n><C-w>h')
vim.keymap.set('t', '<A-right>', '<C-\\><C-n><C-w>l')
--- Resize splits
local resizeSize = 1
vim.keymap.set('n', '<A-h>', '<cmd>vertical resize +' .. resizeSize .. '<CR>')
vim.keymap.set('n', '<A-l>', '<cmd>vertical resize -' .. resizeSize .. '<CR>')
vim.keymap.set('n', '<A-j>', '<cmd>horizontal resize +' .. resizeSize .. '<CR>')
vim.keymap.set('n', '<A-k>', '<cmd>horizontal resize -' .. resizeSize .. '<CR>')

--- nvim-tree
vim.keymap.set('n', '<leader>ft', '<cmd>NvimTreeFindFileToggle<CR>')

--- Symbol Outline
vim.keymap.set('n', '<leader>so', '<cmd>SymbolsOutline<CR>')

--- Fugitive
--vim.keymap.set("n", "<leader>gs", vim.cmd.Git)

--- Undotree
vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)

vim.keymap.set('n', '<C-w>', '<cmd>only<CR><cmd>NvimTreeFindFile<CR>')
vim.keymap.set('n', '<C-s>', '<cmd>vsplit<CR>')
vim.keymap.set('n', '<C-h>', '<cmd>split<CR>')

--- Diagnostics
vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float)
vim.keymap.set('n', '.d', vim.diagnostic.goto_next)
vim.keymap.set('n', ',d', vim.diagnostic.goto_prev)

--- Unbind keybindings
vim.keymap.set('n', '.', '<cmd><CR>')
