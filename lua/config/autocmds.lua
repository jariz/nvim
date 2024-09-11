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
    -- require("persistence").load()
    vim.cmd("Neotree reveal")
  end,
})

-- Function to run the LSP action
local function remove_unused_imports()
  -- Check if the current file is a TypeScript file
  if vim.bo.filetype == "typescript" or vim.bo.filetype == "typescriptreact" then
    -- Execute the LSP action for removing unused imports
    -- vim.cmd('lua require("lazyvim.lsp").action["source.removeUnused.ts"]()')
    LazyVim.lsp.action["source.removeUnused.ts"]()
  end
end

-- Autocommand to trigger the function on save
vim.api.nvim_create_autocmd("BufWritePost", {
  callback = remove_unused_imports,
})

-- DISABLED, buggy
--
-- vim.api.nvim_create_autocmd("BufEnter", {
--     pattern = "*",
--     callback = function()
--         vim.cmd("lcd " .. vim.fn.expand("%:p:h"))
--     end,
--     desc = "Set local working directory to file's directory"
-- })
