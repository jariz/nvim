return {
  "nosduco/remote-sshfs.nvim",
  dependencies = { "nvim-telescope/telescope.nvim" },
  opts = {
    -- Refer to the configuration section below
    -- or leave empty for defaults
    ui = {
      select_prompts = false, -- not yet implemented
      confirm = {
        connect = false, -- prompt y/n when host is selected to connect to
        change_dir = false, -- prompt y/n to change working directory on connection (only applicable if handlers.on_connect.change_dir is enabled)
      },
    },
  },
}
