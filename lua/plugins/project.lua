if true then
  return {}
end

return {
  "git@github.com:adamwojt/project.nvim.git",
  -- lazy = false,
  config = function()
    require("project_nvim").setup({
      patterns = { ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json", "project.clj" },
      telescope_default_action = "cd",
      manual_mode = true,
    })
  end,
}
