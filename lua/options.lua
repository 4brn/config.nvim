-----------------------------------------------------------
-- General Neovim settings and configuration
-----------------------------------------------------------
-- See: https://neovim.io/doc/user/vim_diff.html
-- [2] Defaults - *nvim-defaults*

-----------------------------------------------------------
-- General
-----------------------------------------------------------
vim.g.mapleader = ' '
vim.g.localmapleader = ' '
vim.opt.clipboard = 'unnamedplus'
-- vim.opt.completeopt = { --[[ "menu", ]]
--     'menuone',
--     'noselect',
-- }
vim.opt.mouse = 'a'

-----------------------------------------------------------
-- Neovim UI
-----------------------------------------------------------
vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.termguicolors = true
vim.opt.scrolloff = 10
vim.opt.colorcolumn = '80'
vim.opt.signcolumn = 'yes'
vim.opt.showmode = false

vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace in the editor.
--  See :help 'list'
--  and :help 'listchars'
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

vim.opt.wrap = false

-----------------------------------------------------------
-- Search
-----------------------------------------------------------
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false

-----------------------------------------------------------
-- Cursor
-----------------------------------------------------------
vim.opt.guicursor = ''

-----------------------------------------------------------
-- Tabs, indent
-----------------------------------------------------------
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true
vim.opt.breakindent = true

-----------------------------------------------------------
-- Undo
-----------------------------------------------------------
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true
---@diagnostic disable-next-line: assign-type-mismatch
vim.opt.undodir = vim.fn.expand '~/.vim/undodir'

-----------------------------------------------------------
-- Memory, CPU
-----------------------------------------------------------
vim.opt.updatetime = 50
-- vim.opt.timeoutlen = 50

-----------------------------------------------------------
-- Startup
-----------------------------------------------------------

-- Disable nvim intro
vim.opt.shortmess:append 'sI'
