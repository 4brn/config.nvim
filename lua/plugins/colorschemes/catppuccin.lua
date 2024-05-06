return {
	"catppuccin/nvim",
	lazy = false,
	name = "catppuccin",
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			flavour = "mocha", -- latte, frappe, macchiato, mocha
			background = { -- :h background
				light = "latte",
				dark = "mocha",
			},
			transparent_background = true, -- disables setting the background color.
			show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
			term_colors = true, -- sets terminal colors (e.g. `g:terminal_color_0`)
			dim_inactive = {
				enabled = false, -- dims the background color of inactive window
				shade = "dark",
				percentage = 0.15, -- percentage of the shade to apply to the inactive window
			},
			no_italic = true, -- Force no italic
			no_bold = true, -- Force no bold
			no_underline = false, -- Force no underline
			styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
				comments = {}, -- Change the style of comments
				conditionals = {},
				miscs = {}, -- Uncomment to turn off hard-coded styles
			},
			color_overrides = {
				mocha = {
					-- I don't think these colours are pastel enough by default!
					peach = "#fcc6a7",
					green = "#d2fac5",
				},
			},
			custom_highlights = {},
			-- highlight_overrides = {
			-- 	all = function(colors)
			-- 		return {
			-- 			DiagnosticVirtualTextError = { bg = colors.none },
			-- 			DiagnosticVirtualTextWarn = { bg = colors.none },
			-- 			DiagnosticVirtualTextHint = { bg = colors.none },
			-- 			DiagnosticVirtualTextInfo = { bg = colors.none },
			-- 		}
			-- 	end,
			-- },
			default_integrations = true,
			integrations = {
				cmp = true,
				gitsigns = true,
				nvimtree = true,
				treesitter = true,
				notify = false,
				mini = {
					enabled = true,
					indentscope_color = "",
				},
				mason = true,
				native_lsp = {
					enabled = true,
					underlines = {
						errors = { "undercurl" },
						hints = { "undercurl" },
						warnings = { "undercurl" },
						information = { "undercurl" },
					},
				},
				fidget = true,
				harpoon = true,
				indent_blankline = { enabled = true },
				which_key = true,
				semantic_tokens = true,
				telescope = true,
				-- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
			},
		})
		vim.cmd.colorscheme("catppuccin")
	end,
}

--[[ 
			transparent_background = false,
			no_italic = true,
			no_bold = true,
			integrations = {
				harpoon = true,
				fidget = true,
				cmp = true,
				flash = true,
				gitsigns = true,
				illuminate = true,
				indent_blankline = { enabled = true },
				lsp_trouble = true,
				mason = true,
				mini = true,
				native_lsp = {
					enabled = true,
					underlines = {
						errors = { "undercurl" },
						hints = { "undercurl" },
						warnings = { "undercurl" },
						information = { "undercurl" },
					},
				},
				navic = { enabled = true, custom_bg = "lualine" },
				neotest = true,
				noice = true,
				notify = true,
				neotree = true,
				semantic_tokens = true,
				telescope = true,
				treesitter = true,
				which_key = true,
			},
			styles = {
				comments = {},
				conditionals = {},
			},
			highlight_overrides = {
				all = function(colors)
					return {
						DiagnosticVirtualTextError = { bg = colors.none },
						DiagnosticVirtualTextWarn = { bg = colors.none },
						DiagnosticVirtualTextHint = { bg = colors.none },
						DiagnosticVirtualTextInfo = { bg = colors.none },
					}
				end,
			},
			color_overrides = {
				mocha = {
					-- I don't think these colours are pastel enough by default!
					peach = "#fcc6a7",
					green = "#d2fac5",
				},
			},

--]]
