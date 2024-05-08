return {
  {
    "lewis6991/gitsigns.nvim",
    config = true,
  },
  {
    "kdheepak/lazygit.nvim",
    -- optional for floating window border decoration
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    keys = {
      { "<leader>lg", "<cmd>LazyGit<cr>", desc = "Open LazyGit" },
    },
  },
}
