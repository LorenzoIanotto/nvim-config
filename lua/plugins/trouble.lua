return {
  "folke/trouble.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function(_, opts)
    local trouble = require("trouble")
    trouble.setup(opts)

    vim.keymap.set("n", "<leader>tw", function()
      trouble.toggle("workspace_diagnostics")
    end, { desc = "Open Trouble workspace diagnostics" })
  end,
  opts = {},
}
