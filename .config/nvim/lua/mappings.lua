require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("t", "<esc>", [[<C-\><C-n>]])
map("n", "<C-h>", [[<Cmd>wincmd h<CR>]], { desc = "Move left" })
map("n", "<C-j>", [[<Cmd>wincmd j<CR>]], { desc = "Move down" })
map("n", "<C-k>", [[<Cmd>wincmd k<CR>]], { desc = "Move up" })
map("n", "<C-l>", [[<Cmd>wincmd l<CR>]], { desc = "Move right" })
map("n", "<leader>cn", [[<Cmd> NoiceDismiss <CR>]], { desc = "Dismiss Noice notifications" })
map("n", "<leader>sh", [[<Cmd>split<CR>]], { desc = "Split horizontal" })
map("n", "<leader>sv", [[<Cmd>vsplit<CR>]], { desc = "Split horizontal" })

map("n", "<leader>ol", ":Oil<CR>", { desc = "Open oil" })

map("n", "<leader>fF", ":Telescope frecency<CR>", { desc = "A better Telescope"})

map("n", "<leader>th", function()
  require("nvchad.themes").open { border = true }
end, {})

map("n", "<leader>me", function()
  local menu_exploration = require "utils.menu-exploration"
  require("menu").open(menu_exploration.options, {border = true})
end)

vim.keymap.set("n", "<space>od", function()
  require("dbee").open()
end)
