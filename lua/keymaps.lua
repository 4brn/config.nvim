local opts = { noremap = true, silent = true }

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`

-- Format
-- vim.keymap.set({ "v", "n" }, "<leader>gf", vim.lsp.buf.format, opts)

-- vim.keymap.set({ 'n' }, '<leader>pv', ':Explore<CR>', opts)

-- Indent and outdent lines in visual mode
vim.keymap.set('v', '>', '<S->>gv', opts)
vim.keymap.set('v', '<', '<S-<>gv', opts)

-- Indent and outdent lines quickly
vim.keymap.set('n', '>', '>>', opts)
vim.keymap.set('n', '<', '<<', opts)

-- Comments
vim.api.nvim_set_keymap('n', '<C-/>', 'gcc', { silent = true })
vim.api.nvim_set_keymap('v', '<C-/>', 'gcc', { silent = true })

-- Redo
vim.keymap.set('n', 'U', '<C-r>', opts)

-- Navigate vim panes better
-- vim.keymap.set('n', '<c-k>', '<cmd> TmuxNavigateDown<CR>', opts)
-- vim.keymap.set('n', '<c-j>', '<cmd> TmuxNavigateUp<CR>', opts)
-- vim.keymap.set('n', '<c-h>', '<cmd> TmuxNavigateLeft<CR>', opts)
-- vim.keymap.set('n', '<c-l>', '<cmd> TmuxNavigateRight<CR>', opts)

vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Window Management
vim.keymap.set('n', '<leader>sv', ':vsplit<CR>', opts) -- Split Vertically
vim.keymap.set('n', '<leader>sh', ':split<CR>', opts) -- Split Horizontally
vim.keymap.set('n', '<leader>sm', ':MaximizerToggle<CR>', opts) -- Split Horizontally

-- Saves the changes of vertial editing when exiting with Ctrl + c
vim.keymap.set('i', '<C-c>', '<Esc>', opts)

-- Move selected lines with shift+j or shift+k
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- Join line while keeping the cursor in the same position
vim.keymap.set('n', 'J', 'mzJ`z')

-- Next and previous instance of the highlighted letter
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- Delete shift+q keymap
vim.keymap.set('n', 'Q', '<nop>')

-- Fixed ctrl+c weirdness to exit from vertical select mode
vim.keymap.set('i', '<C-c>', '<Esc>')

-- Search and replace current position word
-- vim.keymap.set('n', '<leader>s', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
-- vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
-- vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
-- vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
-- vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
