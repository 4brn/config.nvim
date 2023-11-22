local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Remap for netrw file tree
keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Remaps for copy to system clipboard
keymap.set("v", "<leader>y", "\"+y")
keymap.set("n", "<leader>y", "\"+y")
keymap.set("n", "<leader>Y", "\"+Y")

-- Remaps to delete/cut to system clipboard
keymap.set("n", "<leader>d", "\"_d")
keymap.set("v", "<leader>d", "\"_d")

-- Allows the selected text to move, while in Visual mode
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Indenting
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

-- Comments
vim.api.nvim_set_keymap("n", "<C-_>", "gcc", { noremap = false })
vim.api.nvim_set_keymap("v", "<C-_>", "gcc", { noremap = false })

-- Replaces all instances of the chosen word (the hovered one)
keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Formats the text
keymap.set("n", "<leader>f", function()
  vim.lsp.buf.format()
end, opts)

-- Makes the file an executable (bash, ...)
keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Allows pasting over selection without losing the copied text
keymap.set("x", "<leader>p", "\"_dP")

-- Directory Navigaion (nvim-tree)
keymap.set('n', '<leader>e', vim.cmd.NvimTreeFindFileToggle, opts)
keymap.set('n', '<leader>m', vim.cmd.NvimTreeFocus, opts)

-- Pane Navigaion
keymap.set("n", "<C-h>", "<C-w>h", opts) -- Navigate Left
keymap.set("n", "<C-j>", "<C-w>j", opts) -- Navigate Down
keymap.set("n", "<C-k>", "<C-w>k", opts) -- Navigate Up
keymap.set("n", "<C-l>", "<C-w>l", opts) -- Navigate Right

-- Window Management
keymap.set("n", "<leader>sv", ":vsplit<CR>", opts) -- Split Vertically
keymap.set("n", "<leader>sh", ":split<CR>", opts) -- Split Horizontally
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>", opts) -- Split Horizontally

-- Keeps curosr stationary when appendit the line below
keymap.set("n", "J", "mzJ`z")

-- Keeps the cursor in the middle when half-page jumping
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

-- Keeps the cursor in the middle when searching with /
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

-- Saves the changes of vertial editing when exiting with Ctrl + c
keymap.set("i", "<C-c>", "<Esc>")

-- Do not press Q
keymap.set("n", "Q", "<nop>")

-- Fugitive
keymap.set("n", "<leader>gs", vim.cmd.Git)

-- Lazy-nvim
keymap.set("n", "<leader>l", vim.cmd.Lazy)

-- Quickfix list keymaps
-- keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
-- keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
-- keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
-- keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")
