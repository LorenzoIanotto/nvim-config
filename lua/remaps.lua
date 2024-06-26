-- Move text up and down in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Keep cursor at the beginning of the line
vim.keymap.set("n", "J", "mzJ`z")

-- Keep cursor at the center of the screen
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- CLose current buffer
vim.keymap.set("n", "<leader>x", "<cmd>bd<cr>")

vim.keymap.set("", "è", "[", { remap = true })
vim.keymap.set("", "+", "]", { remap = true })
