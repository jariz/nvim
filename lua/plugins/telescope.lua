return {
  "nvim-telescope/telescope.nvim",
  defaults = {
    file_ignore_patterns = { "node_modules", "%.git" },
  },
  -- keys = {
  -- { "<leader>/", LazyVim.pick("live_grep"), desc = "Grep (Root Dir)" },
  -- { "<leader>:", "<cmd>Telescope command_history<cr>", desc = "Command History" },
  -- {
  --   "<leader><space>",
  --   LazyVim.pick("find_files", { no_ignore = true, hidden = true }),
  --   desc = "Find Files (Root Dir)",
  -- },
  -- },
}
