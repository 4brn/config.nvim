return {
    "nvim-lualine/lualine.nvim",
    lazy = false,
    -- event = "VimEnter",
    opts = {
        options = {
            icons_enabled = true,
            theme = 'auto',
            globalstatus = true,
            component_separators = '|',
            section_separators = '',
            always_divide_middle = true,
        },
        sections = {
            lualine_a = { 'mode' },
            lualine_b = {'branch', 'diff', 'diagnostics'}, --
            lualine_c = { 'filename' },
            lualine_x = { 'encoding', 'filetype' }, -- , 'fileformat'
            lualine_y = { 'progress' },
            lualine_z = { 'location' }
        },
    },
}
