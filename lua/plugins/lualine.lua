return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  init = function()
    vim.opt.showmode = false
  end,
  opts = {
    options = {
      component_separators = "",
      globalstatus = true,
    },
    sections = {
      lualine_a = {
        "mode",
      },
      lualine_b = {
        { "branch", icon = "" },
        -- TODO: lualine diff
      },
      lualine_c = {
        "grapple",
        "%=",
        {
          "filename",
          file_status = true,
          newfile_status = true,
          path = 1,
        },
        "diagnostics",
      },
      lualine_x = {
        "encoding",
        {
          "fileformat",
          symbols = {
            unix = "unix",
            dos = "dos",
            mac = "mac",
          },
        },
        {
          "filetype",
          colored = false,
          icon = false,
        },
      },
      lualine_y = {
        "progress",
        "location",
      },
      lualine_z = {
      },
    },
  },
}
