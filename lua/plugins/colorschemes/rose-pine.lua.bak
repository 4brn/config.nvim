return {
    'rose-pine/neovim',
    name = 'rose-pine',
    lazy = false,
    priority = 1000,
    config = function()
        require('rose-pine').setup({
            extend_background_behind_borders = true,

            styles = {
                italic = false,
                transparency = false,
            },
        })

        vim.cmd.colorscheme('rose-pine')
        -- vim.cmd('colorscheme rose-pine-main')
        -- vim.cmd('colorscheme rose-pine-moon')
        -- vim.cmd('colorscheme rose-pine-dawn')
    end
}
