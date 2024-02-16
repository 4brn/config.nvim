return {
    "hrsh7th/nvim-cmp",
    version = false,
    event = "InsertEnter",
    dependencies = {
        "L3MON4D3/LuaSnip",

        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "saadparwaiz1/cmp_luasnip",

        -- "rafamadriz/friendly-snippets",
    },
    config = function()
        -- vim.api.nvim_set_hl(0, "CmpGhostText", { link = "Comment", default = true })
        local cmp = require('cmp')
        local defaults = require("cmp.config.default")()
        local luasnip = require('luasnip')
        -- require('luasnip.loaders.from_vscode').lazy_load()
        -- luasnip.config.setup {}

        return {
            completion = {
                completeopt = 'menu,menuone,noinsert',
            },
            snippet = {
                expand = function(args)
                    luasnip.lsp_expand(args.body)
                end,
            },
            -- window = {
            --     completion = {
            --         border = "rounded",
            --     },
            --     documentation = {
            --         border = "rounded",
            --     },
            -- },
            mapping = cmp.mapping.preset.insert {
                -- ['<C-n>'] = cmp.mapping.select_next_item(),
                ['<Tab>'] = cmp.mapping.select_next_item(),
                -- ['<C-p>'] = cmp.mapping.select_prev_item(),
                ['<S-Tab>'] = cmp.mapping.select_prev_item(),
                ['<C-b>'] = cmp.mapping.scroll_docs(-4),
                ['<C-f>'] = cmp.mapping.scroll_docs(4),
                ['<C-Space>'] = cmp.mapping.complete {},
                ["<C-e>"] = cmp.mapping.abort(),
                ['<CR>'] = cmp.mapping.confirm {
                    behavior = cmp.ConfirmBehavior.Replace,
                    select = false,
                },
                -- ['<Tab>'] = cmp.mapping(function(fallback)
                --     if cmp.visible() then
                --         cmp.select_next_item()
                --     elseif luasnip.expand_or_locally_jumpable() then
                --         luasnip.expand_or_jump()
                --     else
                --         fallback()
                --     end
                -- end, { 'i', 's' }),
                -- ['<S-Tab>'] = cmp.mapping(function(fallback)
                --     if cmp.visible() then
                --         cmp.select_prev_item()
                --     elseif luasnip.locally_jumpable(-1) then
                --         luasnip.jump(-1)
                --     else
                --         fallback()
                --     end
                -- end, { 'i', 's' }),
            },
            sources = cmp.config.sources({
                { name = "nvim_lsp" },
                { name = "luasnip" },
                { name = "path" },
                { name = "buffer" },
            }),
            -- experimental = {
            --     ghost_text = {
            --         hl_group = "CmpGhostText",
            --     },
            -- },
            sorting = defaults.sorting,
        }
    end,
    -- ---@param opts cmp.ConfigSchema
    -- config = function(_, opts)
    --     for _, source in ipairs(opts.sources) do
    --         source.group_index = source.group_index or 1
    --     end
    --     require("cmp").setup(opts)
    -- end,
}
