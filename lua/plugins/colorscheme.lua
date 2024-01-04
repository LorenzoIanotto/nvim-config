return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function(_, opts)
    vim.cmd.colorscheme("catppuccin")

    require("catppuccin").setup(opts)
  end,
  opts = {
    integrations = {
      gitsigns = true,
      mason = true,
      neotree = true,
      telescope = {
        enabled = true,
      },
    },
  },
}
