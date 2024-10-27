vim.g.mapleader = ' '
local map = vim.api.nvim_set_keymap

-- Moving Between Buffers
map('n', '<A-h>', '<C-w>h', { noremap = true, silent = false })
map('n', '<A-l>', '<C-w>l', { noremap = true, silent = false })
map('n', '<A-j>', '<C-w>j', { noremap = true, silent = false })
map('n', '<A-k>', '<C-w>k', { noremap = true, silent = false })

map('n', '<C-b>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

map('n', '<C-\\>', ':ToggleTerm<CR>', { noremap = true, silent = true })
map('n', '<Leader>t', ':ToggleTerm<CR>', { noremap = true, silent = true })
map('t', '<C-\\>', '<cmd>ToggleTerm<CR>', { noremap = true, silent = true })
map('t', '<Leader>t', '<cmd>ToggleTerm<CR>', { noremap = true, silent = true })

map('n', '<C-/>', ':CommentToggle<CR>', { noremap = true, silent = true })
map('v', '<C-/>', ':CommentToggle<CR>', { noremap = true, silent = true })
map('n', '<Leader>cc', ':CommentToggle<CR>', { noremap = true, silent = true })
map('v', '<Leader>cc', ':CommentToggle<CR>', { noremap = true, silent = true })

map('n', 'zR', ':lua require("ufo").openAllFolds<CR>', { noremap = true, silent = true })
map('n', 'zM', ':lua require("ufo").closeAllFolds<CR>', { noremap = true, silent = true })

map('n', '<Leader>ff', '<cmd>Telescope find_files<CR>', { noremap = true, silent = true })
map('n', '<Leader>fr', '<cmd>Telescope oldfiles<CR>', { noremap = true, silent = true })
map('n', '<Leader>fg', '<cmd>Telescope live_grep<CR>', { noremap = true, silent = true })
map('n', '<Leader>ct', '<cmd>PrismTelescope<CR>', { noremap = true, silent = true })

map('n', '<Leader>f', '<cmd>lua vim.lsp.buf.format()<CR>', { noremap = true, silent = true })

map('n', '<Leader>om', '<cmd>Mason<CR>', { noremap = true, silent = true })
map('n', '<Leader>ol', '<cmd>Lazy<CR>', { noremap = true, silent = true })


map('n', '<Leader>lr', '<cmd>LSPRestart<CR>', { noremap = true, silent = true })
map('n', '<Leader>lS', '<cmd>LSPStop<CR>', { noremap = true, silent = true })
map('n', '<Leader>ls', '<cmd>LSPStart<CR>', { noremap = true, silent = true })
