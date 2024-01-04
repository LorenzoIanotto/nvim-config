return {
  "mbbill/undotree",
  config = function()
    vim.keymap.set("n", "<leader><F5>", vim.cmd.UndotreeToggle)
    vim.api.nvim_set_var("undotree_SetFocusWhenToggle", "1")
  end,
}
