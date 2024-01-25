return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("telescope").setup({
        defaults = {
          mappings = {
            i = {
              ["<TAB>"] = "move_selection_next",
              ["<S-TAB>"] = "move_selection_previous",
            },
          },
          sorting_strategy = "ascending",
        },
        pickers = {
          find_files = {
            theme = "dropdown", --"dropdown"
            previewer = false,
            hidden = false,
          },
          live_grep = {
            theme = "dropdown",
            previewer = false,
          },
          buffers = {
            theme = "dropdown",
            previewer = false,
          },
        },
      })

      local builtin = require("telescope.builtin")

      vim.keymap.set("n", "<leader>f", builtin.find_files, {})
      vim.keymap.set("n", "<leader>F", builtin.live_grep, {})
      vim.keymap.set("n", "<leader>b", builtin.buffers, {})
    end,
  },
}
