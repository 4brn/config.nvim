return {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
		"hrsh7th/cmp-nvim-lsp",
        { "antosha417/nvim-lsp-file-operations", config = true }
    },
    config = function ()
        local lspconfig = require("lspconfig")
        local cmp_nvim_lsp = require("cmp_nvim_lsp")
        local keymap = vim.keymap -- for conciseness

        local on_attach = function(_, bufnr)
            local opts = { buffer = bufnr, noremap = true, silent = true }

            keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
            keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
            keymap.set('n', '<leader>h', vim.lsp.buf.hover, opts)
            keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
            keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
            keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
            keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
            keymap.set("n", "gr", require("telescope.builtin").lsp_references, opts)
            keymap.set('n', '<space>wl', function()
            print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
            end, opts)
            keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
            keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
            keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
            keymap.set('n', 'gr', vim.lsp.buf.references, opts)
            keymap.set('n', '<space>f', function()
            vim.lsp.buf.format { async = true }
            end, opts)
        end

        -- used to enable autocompletion (assign to every lsp server config)
        local capabilities = cmp_nvim_lsp.default_capabilities()

        -- Change the Diagnostic symbols in the sign column (gutter)
        -- (not in youtube nvim video)
        local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
        for type, icon in pairs(signs) do
        local hl = "DiagnosticSign" .. type
        vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
        end

        -- configure html server
        lspconfig["html"].setup({
            capabilities = capabilities,
            on_attach = on_attach,
        })

        -- configure typescript server 
        lspconfig["tsserver"].setup({
            capabilities = capabilities,
            on_attach = on_attach,
            init_options = {
                preferences = {
                    disableSuggestions = true,
                }
            }
        })

        -- configure css server
        lspconfig["cssls"].setup({
            capabilities = capabilities,
            on_attach = on_attach,
        })

        -- configure emmet server
        lspconfig["emmet_language_server"].setup({
            capabilities = capabilities,
            on_attach = on_attach,
            filetypes = { "html", "typescriptreact", "javascriptreact", "css", "sass", "scss", "less", "svelte" },
        })

        -- configure python server
        lspconfig["pyright"].setup({
            capabilities = capabilities,
            on_attach = on_attach,
        })

        -- configure bash server
        lspconfig["bashls"].setup({
            capabilities = capabilities,
            on_attach = on_attach,
        })

        -- configure bash server
        lspconfig["jsonls"].setup({
            capabilities = capabilities,
            on_attach = on_attach,
        })

        -- configure rust server
        lspconfig["rust_analyzer"].setup({
            capabilities = capabilities,
            on_attach = on_attach,
        })

        -- configure lua server (with special settings)
        lspconfig["lua_ls"].setup({
            capabilities = capabilities,
            on_attach = on_attach,
            settings = { -- custom settings for lua
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
    end,
}
