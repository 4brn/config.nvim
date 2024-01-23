return {
    'numToStr/Comment.nvim',
    event = { 'BufReadPre', 'BufNewFile' },
    opts = {},
    config = function()
        require('Comment').setup()
    end
}
