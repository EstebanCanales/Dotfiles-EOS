return {
  "folke/todo-comments.nvim",
  event = "BufEnter",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
    FIX = {
      icon = "",
      color = "error",
      alt = { "FIXME", "BUG", "FIXIT", "ISSUE" },
    },
    COMPLETE = { icon = "", color = "info", alt = { "READY" } },
    TODO = { icon = "", color = "info" },
    HACK = { icon = "", color = "warning" },
    WARN = { icon = "", color = "warning", alt = { "WARNING", "XXX" } },
    PERF = { icon = "", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
    NOTE = { icon = "", color = "hint", alt = { "INFO" } },
    TEST = { icon = "", color = "test", alt = { "TESTING", "PASSED", "FAILED", "OPT" } },
  },
}
