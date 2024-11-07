---@diagnostic disable: undefined-field
vim.loader.enable()

-- See `:help mapleader`
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require 'options'
require 'keymaps'
require 'autocommands'
require 'lazy-bootstrap'
require 'config'

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
