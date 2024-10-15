return {
  -- {
  --   "git@github.com:MaximilianLloyd/ascii.nvim.git",
  -- },
  {
    "goolord/alpha-nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },

    config = function()
      local alpha = require("alpha")
      local dashboard = require("alpha.themes.dashboard")

      -- dashboard.section.header.val = require("ascii").get_random("animals", "dogs")
      local logo = [[
⠀⠀⠀⠀⠀⠀⢀⡴⢾⣶⣴⠚⣫⠏⠉⠉⠛⠛⢭⡓⢶⣶⠶⣦⡀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⣰⠋⡀⣠⠟⢁⣾⠇⠀⣀⣷⠀⠀⠓⣝⠂⠙⣆⢄⢻⡞⢢⠀⠀⠀
⠀⠀⠀⠀⢠⡇⢸⢡⠃⢠⡞⠁⠀⣰⡟⠉⢦⣄⠀⠈⢆⠀⢻⣾⡄⢧⢸⠀⠀⠀
⠀⠀⠀⠀⢸⠀⡇⡌⠀⡞⠀⢀⣴⡋⠀⠀⠀⣙⣷⡀⠘⡄⠘⣿⣧⢸⣼⣥⠀⠀
⣀⣀⣀⣀⣞⣰⠁⡇⠀⣧⢴⡛⠛⠁⠀⠀⠀⠉⠉⡙⡦⡇⠀⣿⣸⣼⣿⣇⣀⣀
⠳⢽⣷⠺⡟⡿⣯⡇⠰⣧⢩⣭⣥⠀⠀⠀⠀⢠⣭⣥⠁⡀⠀⣿⡟⣴⠶⢁⡨⠊
⠀⠀⠉⢳⢦⣅⠘⣿⣄⢿⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡇⢀⣏⣳⡇⢴⡞⠁⠀
⠀⠀⠀⣼⢸⡅⢹⣿⣿⣾⣟⠀⠀⠠⣀⢄⡠⠀⠀⠠⡚⣿⡿⣿⢻⠁⢹⣷⡀⠀
⠀⠀⠸⡏⠸⡇⢼⣿⡿⠟⠛⠓⣦⣄⣀⣀⣀⣀⡤⠴⠿⢿⡟⠛⠺⣦⣬⣗⠀⠀
⠀⠀⢰⡇⠀⡇⠸⡏⠀⠀⢰⠋⠙⠛⠛⠉⠉⢹⠀⠀⠀⠀⡇⠀⠀⣿⣿⣿⣟⡃
⠀⡐⣾⠀⡀⢹⠀⣿⣄⠀⢸⠀⠀⠀⠀⠀⠀⢸⡇⠀⠀⢠⣇⠀⠀⣿⣿⣿⣛⡃
⠀⣾⣿⠀⡇⠘⡄⢸⣿⠆⠈⡇⠀⠀⠀⠀⠈⢉⠃⠀⣰⡾⠻⠃⢰⣿⣿⣛⡋⠀
⠀⣿⣿⡆⢷⠀⢧⠈⣿⠤⠤⣇⠀⠀⠀⠀⢀⣸⣠⢾⠟⠓⡶⢤⣾⣿⣿⣟⣓⠀
]]
      dashboard.section.header.val = vim.split(logo, "\n")

      dashboard.section.buttons.val = {
        dashboard.button("f", " " .. " Find file", LazyVim.pick()),
        dashboard.button("n", " " .. " New file", [[<cmd> ene <BAR> startinsert <cr>]]),
        dashboard.button("r", " " .. " Recent files", LazyVim.pick("oldfiles")),
        dashboard.button("g", " " .. " Find text", LazyVim.pick("live_grep")),
        dashboard.button("c", " " .. " Config", LazyVim.pick.config_files()),
        -- dashboard.button("s", " " .. " Restore Session", [[<cmd> lua require("persistence").load() <cr>]]),
        -- dashboard.button("x", " " .. " Lazy Extras", "<cmd> LazyExtras <cr>"),
        dashboard.button("s", "󰢹 " .. " Open remote", "<cmd> RemoteSSHFSConnect  <cr>"),
        dashboard.button(
          "S",
          "󰌘 " .. " Open aurora docker",
          "<cmd> RemoteSSHFSConnect aurora:/home/jari/docker  <cr>"
        ),
        dashboard.button("p", " " .. " Recent sessions", function()
          require("persistence").select()
        end),
        dashboard.button("l", "󰒲 " .. " Lazy", "<cmd> Lazy <cr>"),
        dashboard.button("q", " " .. " Quit", "<cmd> qa <cr>"),
      }
      for _, button in ipairs(dashboard.section.buttons.val) do
        button.opts.hl = "AlphaButtons"
        button.opts.hl_shortcut = "AlphaShortcut"
      end
      dashboard.section.header.opts.hl = "AlphaHeader"
      dashboard.section.buttons.opts.hl = "AlphaButtons"
      dashboard.section.footer.opts.hl = "AlphaFooter"
      dashboard.opts.layout[1].val = 8

      alpha.setup(dashboard.opts)
    end,
  },
}
