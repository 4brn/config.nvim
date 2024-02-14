return {
    "nvim-lualine/lualine.nvim",
    -- event = { 'BufReadPre', 'BufNewFile' },
    event = "VimEnter",
    config = function()
        require("lualine").setup({
            options = {
                icons_enabled = false,
                theme = 'auto',
                globalstatus = false,
                component_separators = '|',
                section_separators = '',
            },
            -- sections = {
            --     lualine_a = { 'mode' },
            --     lualine_b = {'branch', 'diff', 'diagnostics'}, -- 
            --     lualine_c = { 'filename' },
            --     lualine_x = { 'encoding', 'filetype' }, -- , 'fileformat'
            --     lualine_y = { 'progress' },
            --     lualine_z = { 'location' }
            -- },
        })
    end,
}
