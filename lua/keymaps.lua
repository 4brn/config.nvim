--  See `:help vim.keymap.set()`
local opts = { noremap = true, silent = true }

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format, { desc = "format" })

-- Diagnostic keymaps
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
vim.keymap.set("n", "<leader>de", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
vim.keymap.set("n", "<leader>dq", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

vim.keymap.set("n", "U", "<C-r>", opts)

-- Window Management
vim.keymap.set("n", "<leader>sv", "<C-w>v", opts)
vim.keymap.set("n", "<leader>sh", "<C-w>s", opts)
vim.keymap.set("n", "<leader>se", "<C-w>=", opts)

-- Saves the changes of vertial editing when exiting with Ctrl + c
vim.keymap.set("i", "<C-c>", "<Esc>", opts)

-- Move selected lines with shift+j or shift+k
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Join line while keeping the cursor in the same position
vim.keymap.set("n", "J", "mzJ`z")

-- Delete shift+q keymap
vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "L", "<nop>")
vim.keymap.set("n", "H", "<nop>")

-- Fixed ctrl+c weirdness to exit from vertical select mode
vim.keymap.set("i", "<C-c>", "<Esc>")

--  See `:help wincmd` for a list of all window commands
vim.keymap.set("n", "<S-A-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<S-A-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<S-A-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<S-A-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- vim: ts=4 sts=4 sw=4 et
