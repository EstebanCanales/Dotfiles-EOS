-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig

local M = {}

M.base46 = {
  theme = "catppuccin",
  hl_override = {
    Comment = { italic = true, bold = true },
    ["@comment"] = { italic = true, bold = true },
  },
  integrations = {},
  transparency = false,
}

M.colorify = {
  enabled = true,
  mode = "virtual", -- fg, bg, virtual
  -- virt_text = "󱓻 ",
  virt_text = "◉ ",
  highlight = { hex = true, lspvars = true },
}

M.ui = {
  telescope = { style = "borderless" }, -- borderless / bordered

  cmp = {
    style = "atom_colored", -- default/flat_light/flat_dark/atom/atom_colored
    sparator_style = "block",
    format_colors = {
      tailwind = true,
    },
  },

  statusline = {
    theme = "vscode_colored", -- default/vscode/vscode_colored/minimal
  },

  tabufline = {
    enabled = false,
  },

  lsp = { sinnature = true },
}

M.term = {
  winopts = { number = false },
  sizes = { sp = 0.3, vsp = 0.2, ["bo sp"] = 0.3, ["bo vsp"] = 0.2 },
  float = {
    relative = "editor",
    row = 0.3,
    col = 0.50,
    width = 0.5,
    height = 0.4,
    border = "single",
  },
}

return M
