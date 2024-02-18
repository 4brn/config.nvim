return {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    -- event = { 'BufReadPre', 'BufNewFile' },
    dependencies = {
		'folke/neodev.nvim',
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
        'neovim/nvim-lspconfig',

        'L3MON4D3/LuaSnip',

        'hrsh7th/nvim-cmp',
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-path',
    },

    config = function()
        local lsp_zero = require('lsp-zero')

        lsp_zero.on_attach(function(_, bufnr)
            local opts = { buffer = bufnr, remap = false, silent = true}

				vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts) -- smart rename
				vim.keymap.set("n", "<leader>rs", ":LspRestart<CR>", opts) -- mapping to restart lsp if necessary
				vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
				vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)
				vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
				vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
				vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)

                vim.keymap.set({ 'v', 'n', 'x' }, '<leader>gf', function()
                    vim.lsp.buf.format(
                        { async = false, timeout_ms = 10000 })
                end, opts)
        end)

        -- to learn how to use mason.nvim with lsp-zero
        -- read this: https://github.com/VonHeikemen/lsp-zero.nvim/blob/v3.x/doc/md/guides/integrate-with-mason-nvim.md

        require('neodev').setup()

        require('mason').setup({
            ui = {
                border = "rounded",
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗",
                },
            },

        })
        require('mason-lspconfig').setup({
            ensure_installed = {
                "clangd",
                "cssls",
                "emmet_language_server",
                "html",
                "jsonls",
                "lua_ls",
                "pylsp",
                "rust_analyzer",
                "tsserver",
            },
            auto_install = true,
            handlers = {
                lsp_zero.default_setup,
            }
        })

        local cmp = require('cmp')
        local cmp_select = { behavior = cmp.SelectBehavior.Select }

        cmp.setup({
            sources = {
                { name = 'nvim_lsp' },
                { name = 'luasnip' },
                { name = 'path' },
                { name = 'buffer' },
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
