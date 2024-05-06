return {
    'oxfist/night-owl.nvim',
    lazy = false,
    priority = 1000,
    init = function()
        vim.cmd.colorscheme 'night-owl'
    end,
}
