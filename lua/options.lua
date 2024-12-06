-- See `:help vim.opt`
--  For more options, you can see `:help option-list`

-- Line Numbers and Display
vim.opt.number = true -- Show line numbers
vim.opt.relativenumber = true -- Show relative line numbers
vim.opt.showmode = false -- Don't show mode (e.g., -- INSERT --) in command line
vim.opt.signcolumn = 'no' -- Keep signcolumn on by default
-- vim.opt.cursorline = true   -- Show which line your cursor is on
vim.opt.colorcolumn = '80' -- Show column guide
vim.opt.wrap = true -- Enable line wrapping
vim.opt.termguicolors = true -- Enable true color support
vim.opt.background = 'dark' -- Set dark background

-- Cursor and Mouse
vim.opt.mouse = 'a' -- Enable mouse support
vim.opt.guicursor = 'a:blinkon0' -- Disable cursor blinking
vim.opt.scrolloff = 10 -- Minimal number of screen lines around cursor

-- Indentation and Tabs
vim.opt.tabstop = 4 -- Number of spaces tabs count for
vim.opt.shiftwidth = 4 -- Size of indent
vim.opt.softtabstop = 4 -- Number of spaces that a <Tab> counts for
vim.opt.expandtab = true -- Use spaces instead of tabs
vim.opt.autoindent = true -- Copy indent from current line when starting new line
vim.opt.smartindent = true -- Smart autoindenting when starting a new line
vim.opt.breakindent = true -- Enable break indent

-- Search
vim.opt.ignorecase = true -- Ignore case in search patterns
vim.opt.smartcase = true -- Override ignorecase if search contains uppercase
vim.opt.hlsearch = false -- Disable highlight of search results
vim.opt.incsearch = true -- Show search matches as you type
vim.opt.inccommand = 'split' -- Preview substitutions live

-- Splits and Windows
vim.opt.splitright = true -- Open new vertical splits to the right
vim.opt.splitbelow = true -- Open new horizontal splits below

-- Timings
vim.opt.updatetime = 50 -- Decrease update time
vim.opt.timeoutlen = 250 -- Decrease mapped sequence wait time

-- File Handling
vim.opt.swapfile = false -- Disable swap files
vim.opt.backup = false -- Disable backup files
vim.opt.undofile = true -- Save undo history
vim.opt.undodir = vim.fn.expand '~/.vim/undodir' -- Set undo directory
vim.opt.backspace = 'indent,eol,start' -- Make backspace work as expected

-- Clipboard
vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus' -- Use system clipboard
end)

-- Netrw (File Explorer) Settings
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.netrw_liststyle = 3

-- Visual Helpers
-- vim.opt.list = true
-- vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- vim: ts=2 sts=2 sw=2 et
