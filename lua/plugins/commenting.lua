return {
  "numToStr/Comment.nvim",
  dependencies = {
    "JoosepAlviste/nvim-ts-context-commentstring",
  },
  opts = {},
  lazy = false,
  config = function()
    require("ts_context_commentstring").setup()
    require("Comment").setup({
      pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
    })
    -- enable nvim-ts-context-commentstring plugin for commenting tsx and jsx
    require("ts_context_commentstring").setup({})
  end,
}
