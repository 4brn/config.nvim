return {
    "williamboman/mason.nvim",
    lazy = false,
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
    },
    config = function ()
        local mason = require("mason")
        local mason_lspconfig = require("mason-lspconfig")
        -- cmd = "Mason"
        -- event = "BufReadPre"

        mason.setup({
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗"
                }
            }
        })

        mason_lspconfig.setup({
            ensure_installed = {
                "bashls",
                "tsserver",
                "pyright",
                "html",
                "rust_analyzer",
                "cssls",
                "lua_ls",
                "emmet_language_server",
                "jsonls",
            },

            automatic_installation = true,
        })
    end,
}
