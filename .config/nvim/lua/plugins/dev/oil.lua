return {
  "stevearc/oil.nvim",
  event = "VeryLazy",
  dependencies = {
    { "echasnovski/mini.icons", opts = {} },
    "nvim-tree/nvim-web-devicons"
  },
  ---@module 'oil'
  ---@type SetupOpts
  opts = {
    keymaps = {
      ["g?"] = { "actions.show_help", desc = "Show help" },
      ["<CR>"] = { "actions.select", desc = "Select entry" },
      ["<C-s>"] = { "actions.select", opts = { vertical = true }, desc = "Open vertically" },
      ["<C-d>"] = { "actions.select", opts = { horizontal = true }, desc = "Open horizontally" },
      ["<C-t>"] = { "actions.select", opts = { tab = true }, desc = "Open in new tab" },
      ["<C-p>"] = { "actions.preview", desc = "Preview entry" },
      ["<C-c>"] = { "actions.close", desc = "Close menu" },
      ["<C-l>"] = { "actions.refresh", desc = "Refresh view" },
      ["-"] = { "actions.parent", desc = "Go to parent directory" },
      ["+"] = { "actions.open_cwd", desc = "Open current working directory" },
      ["`"] = { "actions.cd", desc = "Change directory" },
      ["~"] = { "actions.cd", opts = { scope = "tab" }, desc = ":tcd to the current oil directory" },
      ["gs"] = { "actions.change_sort", desc = "Change sort order" },
      ["gx"] = { "actions.open_external", desc = "Open externally" },
      ["g."] = { "actions.toggle_hidden", desc = "Toggle hidden files" },
      ["g\\"] = { "actions.toggle_trash", desc = "Toggle trash" },
    },
    use_default_keymaps = false,
  },
}
