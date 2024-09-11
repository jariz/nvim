-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<leader>fs", "<cmd>Scratch<cr>", { desc = "Create a new scratch buffer" })
vim.keymap.set("n", "<leader>fS", "<cmd>ScratchOpen<cr>", { desc = "Open a scratch buffer" })
-- Normal mode: Remap 'd' to not affect the default register
vim.api.nvim_set_keymap("n", "d", '"_d', { noremap = true, silent = true })

-- Visual mode: Remap 'd' to not affect the default register
vim.api.nvim_set_keymap("v", "d", '"_d', { noremap = true, silent = true })
