-- [[ Basic Keymaps ]]
-- See `:help vim.keymap.set()`

vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { desc = 'Leader key', silent = true })

-- Remove search hilighting
vim.keymap.set('n', '<Esc>', "<cmd>nohlsearch<cr>", { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Open file explorer
vim.keymap.set('n', "<leader>pv", vim.cmd.Ex, { desc = 'Open file explorer' })

-- Open undo tree
vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle, { desc = 'Toggel Undotree' })

-- Open git status (fugitive)
vim.keymap.set('n', '<leader>gs', vim.cmd.Git, { desc = 'Open git status' })

-- Press jk fast to exit insert mode 
-- vim.keymap.set('i', 'jk', "<ESC>", { noremap = true, silent = true, desc = 'Exit insert mode' })
-- vim.keymap.set('i', 'kj', "<ESC>", { noremap = true, silent = true, desc = 'Exit insert mode' })

-- Windows in Nvim
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Stay in indent mode
vim.keymap.set("v", "<", "<gv", { noremap = true, silent = true })
vim.keymap.set("v", ">", ">gv", { noremap = true, silent = true })

-- System clipboard
vim.keymap.set({'v', 'n'}, "<leader>y", [["+y]], { noremap = true, desc = 'Yank to system clipboard' })
vim.keymap.set({'v', 'n'}, "<leader>Y", [["+yg_]], { noremap = true, desc = 'Yank to system clipboard' })
vim.keymap.set({'v', 'n'}, "<leader>yy", [["+yy]], { noremap = true, desc = 'Yank to system clipboard' })
vim.keymap.set({'v', 'n'}, "<leader>p", [["+p]], { noremap = true, desc = 'Paste from system clipboard' })
vim.keymap.set({'v', 'n'}, "<leader>P", [["+P]], { noremap = true, desc = 'Paste from system clipboard' })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Sourcing current file, current line or selection
vim.keymap.set('n', '<leader><space>x', '<cmd>source %<CR>')
vim.keymap.set('n', '<leader>x', ':.lua<CR>')
vim.keymap.set('v', '<leader>x', ':lua<CR>')
