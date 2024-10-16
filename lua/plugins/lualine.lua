return {
  -- enabled = false,
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  init = function()
    vim.opt.showmode = false
    -- vim.opt.laststatus = 3
  end,
  opts = {
    options = {

      component_separators = "",
      -- globalstatus = true,
    },
    -- sections = {
    --   lualine_a = {
    --     "mode",
    --   },
    --   lualine_b = {
    --     "grapple",
    --   },
    --   lualine_c = {
    --     "%=",
    --     "%f",
    --   },
    --   lualine_x = {
    --     { "filetype", colored = false },
    --   },
    --   lualine_y = {
    --     -- "progress",
    --     { "branch", icon = "" },
    --     "diagnostics",
    --   },
    --   lualine_z = {
    --     -- "location",
    --   },
    -- },
  },
}
