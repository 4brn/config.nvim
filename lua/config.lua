--  To update plugins you can run
--    :Lazy update
require('lazy').setup({
  'tpope/vim-sleuth',
  require 'plugins.colorschemes.gruvbox',
  require 'plugins/gitsigns',
  require 'plugins/which-key',
  require 'plugins/telescope',
  require 'plugins/lspconfig',
  require 'plugins/conform',
  require 'plugins/cmp',
  require 'plugins/treesitter',
  require 'plugins/oil',
  require 'plugins.undotree',
  require 'plugins.trouble',
  require 'plugins.lualine',
  require 'plugins.dressing',
  require 'plugins/autopairs',
  -- require 'plugins.health',

  -- require 'plugins/todo-comments',
  -- require 'plugins/debug',
  -- require 'plugins/indent_line',
  -- require 'plugins/lint',
  -- require 'plugins/neo-tree',
  -- require 'plugins/mini',

  -- checker = {
  --   enabled = true,
  --   notify = false,
  -- },
  -- change_detection = {
  --   notify = false,
  -- },
  -- ui = {
  --   border = 'rounded',
  -- },
  -- defaults = {
  --   lazy = false,
  -- version = false,
  -- },
}, {})

-- vim: ts=2 sts=2 sw=2 et
