return {
  "EdenEast/nightfox.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("nightfox").setup({
      groups = {
        all = {
          NormalFloat = { link = "Normal" },
          WinSeparator = { link = "FloatBorder" },
        },
      },
    })
    vim.cmd.colorscheme("nightfox")
  end,
}
