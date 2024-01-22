-----------------------------------------------------------
-- General Neovim settings and configuration
-----------------------------------------------------------
-- See: https://neovim.io/doc/user/vim_diff.html
-- [2] Defaults - *nvim-defaults*

local g = vim.g
local opt = vim.opt

-----------------------------------------------------------
-- General
-----------------------------------------------------------
g.mapleader = ' '
opt.clipboard = 'unnamedplus'
opt.completeopt = {"menu", "menuone", "noselect"}

-----------------------------------------------------------
-- Neovim UI
-----------------------------------------------------------
opt.number = true
opt.relativenumber = false
opt.termguicolors = true
opt.scrolloff = 8
-- opt.colorcolumn = '80'
-- opt.signcolumn = 'yes'

-----------------------------------------------------------
-- Search
-----------------------------------------------------------
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false

-----------------------------------------------------------
-- Cursor
-----------------------------------------------------------
opt.guicursor = ""
-- {
--     'n-v-c:block-Cursor',
--     'i-ci:block-Cursor',
--     'r:hor50-Cursor'
-- }

-----------------------------------------------------------
-- Tabs, indent
-----------------------------------------------------------
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.smartindent = false

-----------------------------------------------------------
-- Undo
-----------------------------------------------------------
opt.swapfile = false
opt.backup = false
opt.undofile = true
opt.undodir = vim.fn.expand("~/.vim/undodir")

-----------------------------------------------------------
-- Memory, CPU
-----------------------------------------------------------
opt.updatetime = 50

-----------------------------------------------------------
-- Startup
-----------------------------------------------------------
-- Disable nvim intro
opt.shortmess:append "sI"

-- Disable builtin plugins
local disabled_built_ins = {
   "2html_plugin",
   "getscript",
   "getscriptPlugin",
   "gzip",
   "logipat",
   -- "netrw",
   -- "netrwPlugin",
   -- "netrwSettings",
   -- "netrwFileHandlers",
   "matchit",
   "tar",
   "tarPlugin",
   "rrhelper",
   "spellfile_plugin",
   "vimball",
   "vimballPlugin",
   "zip",
   "zipPlugin",
   -- "tutor",
   "rplugin",
   "synmenu",
   "optwin",
   "compiler",
   "bugreport",
   "ftplugin",
}

for _, plugin in pairs(disabled_built_ins) do
   g["loaded_" .. plugin] = 1
end
