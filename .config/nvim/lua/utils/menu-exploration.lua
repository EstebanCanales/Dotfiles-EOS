local M = {}

M.options = {
  {
    name = "Exploration Menu",
    cmd = "",
    hl = "ExWhite",
  },
  {
    name = "separator",
    hl = "exgreen",
  },
  {
    name = "Oil",
    cmd = "Oil",
    rtxt = "<leader>o",
  },
  {
    name = "Neovim Tree",
    cmd = "NvimTreeToggle",
    rtxt = "<leader>e",
  },
  {
    name = "Telescope frecency",
    cmd = ":Telescope frecency"

  },
  {
    name = "separator",
    hl = "ExGreen",
  },
  {
    name = "Telescope",
    items = {
      {
        name = "File actions",
        cmd = "",
        hl = "ExWhite",
      },
      {
        name = "separator",
        hl = "ExGreen",
      },
      {
        name = "Find File",
        cmd = "Telescope find_files",
        rtxt = "<leader>ff",
      },
      {
        name = "Find Buffers ",
        cmd = "Telescope buffers",
        rtxt = "<leader>fb",
      },
      {
        name = "Find Word",
        cmd = "Telescope live_grep",
        rtxt = "<leader>fw",
      },
      {
        name = "Find oldfiles",
        cmd = "Telescope oldfiles",
        rtxt = "<leader>fo",
      },
      {
        name = "Find current buffer",
        cmd = "Telescope current_buffer_fuzzy_find",
        rtxt = "<leader>fz",
      },
    },
  },
  {
    name = "Lsp",
    items = {
      {
        name = "Lsp exploration",
        cmd = "",
        hl = "ExWhite",
      },
      {
        name = "separator",
        hl = "ExGreen",
      },
      {
        name = "Goto Definition",
        cmd = vim.lsp.buf.definition,
        rtxt = "gd",
      },

      {
        name = "Goto Declaration",
        cmd = vim.lsp.buf.declaration,
        rtxt = "gD",
      },

      {
        name = "Goto Implementation",
        cmd = vim.lsp.buf.implementation,
        rtxt = "gi",
      },
      {
        name = "separator",
        hl = "ExGreen",
      },
      {
        name = "Add workspace folder",
        cmd = vim.lsp.buf.add_workspace_folder,
        rtxt = "<leader>wa",
      },

      {
        name = "Remove workspace folder",
        cmd = vim.lsp.buf.remove_workspace_folder,
        rtxt = "<leader>wr",
      },

      {
        name = "Show References",
        cmd = vim.lsp.buf.references,
        rtxt = "gr",
      },
    },
  },
}

return M
