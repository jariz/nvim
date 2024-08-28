-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
--
-- -- Autocommand to automatically restore session when opening a directory
-- vim.api.nvim_create_autocmd("VimEnter", {
--   callback = function()
--     -- Only restore session if nvim was started with no file arguments
--     if vim.fn.argc() == 0 then
--       require("persistence").load()
--     end
--   end,
-- })
--
vim.api.nvim_create_autocmd("DirChanged", {
    pattern = "*",
    callback = function()
        vim.cmd("Neotree reveal")
    end,
})
