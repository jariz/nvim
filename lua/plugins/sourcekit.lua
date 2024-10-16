return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        sourcekit = {
          cmd = { "sourcekit-lsp" }, -- Command to start sourcekit-lsp
          filetypes = { "swift", "objective-c", "objective-cpp" }, -- File types supported by sourcekit
          root_dir = require("lspconfig.util").root_pattern("Package.swift", ".git"), -- Set root directory
        },
      },
    },
  },
}
