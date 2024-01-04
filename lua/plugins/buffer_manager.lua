return {
  "j-morano/buffer_manager.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function(_, opts)
    require("buffer_manager").setup(opts)
    vim.keymap.set("n", "<leader>m", require("buffer_manager.ui").toggle_quick_menu, { desc = "Open buffer manager" })
  end,
  opts = {
    select_menu_item_commands = {
      v = {
        key = "<C-v>",
        command = "vsplit",
      },
      h = {
        key = "<C-h>",
        command = "split",
      },
    },
  },
}
