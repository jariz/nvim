return {
  {
    "https://git.sr.ht/~nedia/auto-save.nvim",
    event = { "BufReadPre" },
    opts = {
      events = { "InsertLeave", "BufLeave", "FocusLost" },
      silent = false,
      exclude_ft = { "neo-tree" },
    },
  },
}
