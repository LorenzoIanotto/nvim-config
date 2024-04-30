return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.5",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local builtin = require("telescope.builtin")
    vim.keymap.set("n", "<C-\\>", builtin.find_files, {})
    vim.keymap.set("n", "<leader>g", builtin.live_grep, {})
    vim.keymap.set("n", "<leader>p", builtin.lsp_document_symbols, {})
    vim.keymap.set("n", "<leader>o", builtin.buffers, {})
    vim.keymap.set("n", "<leader>h", builtin.help_tags, {})

    local actions = require("telescope.actions")
    require("telescope").setup({
      defaults = {
        mappings = {
          i = {
            ["<C-h>"] = actions.select_horizontal,
          },
          n = {
            ["<C-h>"] = actions.select_horizontal,
          },
        },
      },
    })
  end,
}
