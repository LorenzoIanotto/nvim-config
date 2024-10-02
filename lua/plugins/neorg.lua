return {
  "nvim-neorg/neorg",
  -- dependencies = {
  --   "3rd/image.nvim",
  -- },
  lazy = false,
  version = "*",
  config = function()
    require("neorg").setup({
      load = {
        ["core.defaults"] = {},
        ["core.concealer"] = {},
        ["core.dirman"] = {
          config = {
            workspaces = {
              notes = "~/notes",
              uni = "~/uninotes",
            },
            default_workspace = "notes",
          },
        },
        ["core.summary"] = {},
        -- ["core.latex.renderer"] = {},
      },
    })

    vim.wo.foldlevel = 99
    vim.wo.conceallevel = 2
  end,
}
