return {
	"https://git.sr.ht/~swaits/zellij-nav.nvim",
	lazy = false,
	-- event = "VeryLazy",
	keys = {
		{ "<a-h>", "<cmd>ZellijNavigateLeft<cr>", { silent = true, desc = "navigate left" } },
		{ "<a-j>", "<cmd>ZellijNavigateDown<cr>", { silent = true, desc = "navigate down" } },
		{ "<a-k>", "<cmd>ZellijNavigateUp<cr>", { silent = true, desc = "navigate up" } },
		{ "<a-l>", "<cmd>ZellijNavigateRight<cr>", { silent = true, desc = "navigate right" } },
	},
	opts = {},
}
