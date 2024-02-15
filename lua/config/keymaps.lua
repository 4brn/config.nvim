local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Format
vim.keymap.set({ "v", "n" }, "<leader>gf", vim.lsp.buf.format, opts)
-- vim.keymap.set({ "n" }, "<leader>pv", ":Explore<CR>", opts)

-- Indent and outdent lines in visual mode
keymap.set('v', '>', '<S->>gv', opts)
keymap.set('v', '<', '<S-<>gv', opts)

-- Indent and outdent lines quickly
keymap.set('n', '>', '>>', opts)
keymap.set('n', '<', '<<', opts)

-- Comments
vim.api.nvim_set_keymap("n", "<C-/>", "gcc", { silent = true })
vim.api.nvim_set_keymap("v", "<C-/>", "gcc", { silent = true })

-- Redo
keymap.set('n', "U", "<C-r>", opts)

-- Navigate vim panes better
keymap.set('n', '<c-k>', ':wincmd k<CR>', opts)
keymap.set('n', '<c-j>', ':wincmd j<CR>', opts)
keymap.set('n', '<c-h>', ':wincmd h<CR>', opts)
keymap.set('n', '<c-l>', ':wincmd l<CR>', opts)

-- Window Management
keymap.set("n", "<leader>sv", ":vsplit<CR>", opts) -- Split Vertically
keymap.set("n", "<leader>sh", ":split<CR>", opts)  -- Split Horizontally
-- keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>", opts) -- Split Horizontally

-- Saves the changes of vertial editing when exiting with Ctrl + c
keymap.set("i", "<C-c>", "<Esc>", opts)

-- Move selected lines with shift+j or shift+k
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Join line while keeping the cursor in the same position
vim.keymap.set("n", "J", "mzJ`z")

-- Next and previous instance of the highlighted letter
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Delete shift+q keymap
vim.keymap.set("n", "Q", "<nop>")

-- Fixed ctrl+c weirdness to exit from vertical select mode
vim.keymap.set("i", "<C-c>", "<Esc>")

-- Search and replace current position word
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

