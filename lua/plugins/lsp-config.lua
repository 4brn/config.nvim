return {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
        local keymap = vim.keymap     -- for conciseness

        local opts = { noremap = true, silent = true }
        local on_attach = function(_, bufnr)
            opts.buffer = bufnr
            keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)     -- smart rename
            keymap.set("n", "<leader>rs", ":LspRestart<CR>", opts)      -- mapping to restart lsp if necessary
            keymap.set("n", "K", vim.lsp.buf.hover, opts)
            keymap.set("n", "gd", vim.lsp.buf.definition, opts)
            keymap.set("n", "gr", vim.lsp.buf.references, opts)
            keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
        end

        local capabilities = require('cmp_nvim_lsp').default_capabilities()

        local lspconfig = require("lspconfig")

        lspconfig.tsserver.setup({
            capabilities = capabilities,
            on_attach = on_attach,
        })
        lspconfig.html.setup({
            capabilities = capabilities,
            on_attach = on_attach,
        })
        lspconfig.lua_ls.setup({
            capabilities = capabilities,
            on_attach = on_attach,
            settings = {     -- custom settings for lua
                Lua = {
                    -- make the language server recognize "vim" global
                    diagnostics = {
                        globals = { "vim" },
                    },
                    workspace = {
                        -- make language server aware of runtime files
                        library = {
                            [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                            [vim.fn.stdpath("config") .. "/lua"] = true,
                        },
                    },
                },
            },
        })
        lspconfig.clangd.setup({
            capabilities = capabilities,
            on_attach = on_attach,
        })
        lspconfig.cssls.setup({
            capabilities = capabilities,
            on_attach = on_attach,
        })
        lspconfig.jsonls.setup({
            capabilities = capabilities,
            on_attach = on_attach,
        })
        lspconfig.emmet_language_server.setup({
            capabilities = capabilities,
            on_attach = on_attach,
        })
        lspconfig.pylsp.setup({
            capabilities = capabilities,
            on_attach = on_attach,
        })
        lspconfig.rust_analyzer.setup({
            capabilities = capabilities,
            on_attach = on_attach,
        })
        lspconfig.bashls.setup({
            capabilities = capabilities,
            on_attach = on_attach,
        })
    end,
}
