local opts = function()
    require("nvim-tree").setup({
        renderer = {
            group_empty = true,
        },
        filters = {
            dotfiles = true,
        },
        -- Directory Navigaion (nvim-tree)
        vim.keymap.set('n', '<leader>e', vim.cmd.NvimTreeToggle, { noremap = true, silent = true }),
        vim.keymap.set('n', '<leader>m', vim.cmd.NvimTreeFocus,{ noremap = true, silent = true }),
    })
end

return {
    'nvim-tree/nvim-tree.lua',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    lazy = false,
    opts = opts
}
