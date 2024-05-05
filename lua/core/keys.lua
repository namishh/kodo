vim.g.mapleader = ' '
local map = vim.api.nvim_set_keymap

-- Moving Between Buffers
map('n', '<A-h>', '<C-w>h', { noremap = true, silent = false })
map('n', '<A-l>', '<C-w>l', { noremap = true, silent = false })
map('n', '<A-j>', '<C-w>j', { noremap = true, silent = false })
map('n', '<A-k>', '<C-w>k', { noremap = true, silent = false })

map('n', '<C-b>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
map('n', '<C-\\>', ':ToggleTerm<CR>', { noremap = true, silent = true })
map('n', '<C-/>', ':CommentToggle<CR>', { noremap = true, silent = true })
map('v', '<C-/>', ':CommentToggle<CR>', { noremap = true, silent = true })

map('n', 'zR', ':lua require("ufo").openAllFolds<CR>', { noremap = true, silent = true })
map('n', 'zM', ':lua require("ufo").closeAllFolds<CR>', { noremap = true, silent = true })

map('n', '<C-p>', ":Telescope find_files<CR>", { noremap = true, silent = true })
map('n', '<C-o>', ":Telescope oldfiles<CR>", { noremap = true, silent = true })
map('n', '<C-f>', ":Telescope live_grep<CR>", { noremap = true, silent = true })
map('n', '<C-t>', ":PrismTelescope<CR>", { noremap = true, silent = true })
map('n', '<leader>f', ":lua vim.lsp.buf.format()<CR>", { noremap = true, silent = true })
