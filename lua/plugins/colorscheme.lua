return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function(_, opts)
    require("catppuccin").setup(opts)

    vim.cmd.colorscheme("catppuccin")
  end,
  opts = {
    integrations = {
      gitsigns = true,
      cmp = true,
      fidget = true,
      harpoon = true,
      mason = true,
      neotree = true,
      telescope = {
        enabled = true,
      },
      native_lsp = {
        enabled = true,
        virtual_text = {
          errors = {},
          hints = {},
          warnings = {},
          information = {},
          ok = {},
        },
        underlines = {
          errors = { "undercurl" },
          hints = { "undercurl" },
          warnings = { "undercurl" },
          information = { "undercurl" },
          ok = { "undercurl" },
        },
        inlay_hints = {
          background = true,
        },
      },
    },
  },
}
