return {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  opts = {
    options = {
      theme = "catppuccin",
      disabled_filetypes = {
        "undotree",
      },
    },
    sections = {
      lualine_c = {
        {
          "filename",
          path = 1,
        },
      },
    },
    inactive_sections = {
      lualine_c = {
        {
          "filename",
          path = 1,
        },
      },
    },
  },
}
