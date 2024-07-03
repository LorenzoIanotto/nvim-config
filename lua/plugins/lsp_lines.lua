return {
  "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
  config = function(_, opts)
    require("lsp_lines").setup(opts)

    vim.diagnostic.config({ virtual_lines = { only_current_line = true } })
  end,
}
