return {
  -- LSPConfig for all LSP setups
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")

      -- ESLint specific configuration
      lspconfig.eslint.setup({
        flags = {
          allow_incremental_sync = false,
          debounce_text_changes = 1000,
        },
      })
    end,
  },
}
