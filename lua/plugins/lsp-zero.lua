return {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    event = { 'BufReadPre', 'BufNewFile' },
    dependencies = {
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
        'neovim/nvim-lspconfig',
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/nvim-cmp',
        'L3MON4D3/LuaSnip',
    },

    config = function()
        local lsp_zero = require('lsp-zero')

        lsp_zero.on_attach(function(_, bufnr)
            local opts = { buffer = bufnr, remap = false }

            vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
            vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
            vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
            vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)

            vim.keymap.set({ 'v', 'n', 'x' }, '<leader>gf', function()
                vim.lsp.buf.format(
                    { async = false, timeout_ms = 10000 })
            end, opts)
        end)

        -- to learn how to use mason.nvim with lsp-zero
        -- read this: https://github.com/VonHeikemen/lsp-zero.nvim/blob/v3.x/doc/md/guides/integrate-with-mason-nvim.md
        require('mason').setup({})
        require('mason-lspconfig').setup({
            ensure_installed = { 'tsserver', 'rust_analyzer', 'clangd', 'pyright', 'lua_ls' },
            handlers = {
                lsp_zero.default_setup,
            }
        })

        local cmp = require('cmp')
        local cmp_select = { behavior = cmp.SelectBehavior.Select }

        cmp.setup({
            sources = {
                { name = 'nvim_lsp' },
                { name = 'luasnip', keyword_length = 2 },
                { name = 'buffer',  keyword_length = 3 },
                { name = 'path' },
            },

            formatting = lsp_zero.cmp_format(),
            mapping = cmp.mapping.preset.insert({
                ['<Tab>'] = cmp.mapping.select_next_item(cmp_select),
                ['<S-Tab>'] = cmp.mapping.select_prev_item(cmp_select),
                ["<C-j>"] = cmp.mapping.scroll_docs(4),
                ["<C-k>"] = cmp.mapping.scroll_docs(-4),
                ['<CR>'] = cmp.mapping.confirm({ select = true }),
                ['<C-Space>'] = cmp.mapping.complete(),
                ["<C-e>"] = cmp.mapping.abort(),
            }),
        })
    end
}
