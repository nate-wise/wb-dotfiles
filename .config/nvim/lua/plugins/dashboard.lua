return {
  "nvimdev/dashboard-nvim",
  event = "VimEnter",
  config = function()
    require("dashboard").setup({
      theme = "hyper",
      hide = {
        statusline = false,
      },
      config = {
        week_header = {
          enable = true,
        },
        shortcut = {
          {
            desc = " grep",
            group = "DiagnosticHint",
            action = "Telescope grep",
            key = "a",
          },
          {
            icon = " ",
            icon_hl = "@variable",
            desc = "Files",
            group = "Label",
            action = "Telescope find_files",
            key = "f",
          },
          {
            desc = "󰊳 Update",
            group = "@property",
            action = "Lazy update",
            key = "u",
          },
          {
            desc = "󰖷 dotfiles",
            group = "Number",
            action = "cd ~/dotfiles/ | Neotree",
            key = "d",
          },
        },
        project = {
          enable = true,
          limit = 8,
          icon = "󱚈",
          label = " Recent Projects",
          action = "Telescope find_files cwd=",
        },
        mru = {
          enable = true,
          limit = 10,
          icon = "  ",
          label = "Recent Files",
          cwd_only = true,
        },
        -- footer = {},
      },
    })
  end,
  dependencies = { { "nvim-tree/nvim-web-devicons" } },
}
