-- See `:help vim.opt`
--  For more options, you can see `:help option-list`

--  See `:help 'clipboard'`
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.netrw_liststyle = 3
vim.opt.backspace = "indent,eol,start"
vim.opt.clipboard = "unnamedplus"
vim.opt.mouse = "v"
vim.opt.guicursor = "a:blinkon0"

vim.opt.number = true
vim.opt.relativenumber = true

-- Show which line your cursor is on
vim.opt.cursorline = false
vim.opt.scrolloff = 8
-- vim.opt.colorcolumn = '80'
vim.opt.signcolumn = "yes"

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.autoindent = true

vim.opt.wrap = false

-- Enable break indent
vim.opt.smartindent = true
vim.opt.breakindent = true

vim.opt.termguicolors = true
vim.opt.background = "dark"

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true
---@diagnostic disable-next-line: assign-type-mismatch
vim.opt.undodir = vim.fn.expand("~/.vim/undodir")

vim.opt.updatetime = 50
vim.opt.timeoutlen = 250

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false

-- Preview substitutions live, as you type!
vim.opt.inccommand = "split"

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
-- vim.opt.list = true
-- vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
