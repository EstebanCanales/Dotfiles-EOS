return {
  {
    "nvim-telescope/telescope.nvim",
    opts = function(_, opts)
      local actions = require "telescope.actions"

      opts.defaults = {
        file_ignore_patterns = {
          "node_modules",
          "package-lock.json",
          "yarn.lock",
          "bun.lockb",
        },
        prompt_prefix = "🔍 ",
        layout_strategy = "flex", -- Mantén el layout horizontal
        layout_config = {
          horizontal = {
            width = 0.9,
            height = 0.85,
            preview_width = 0.5,
          },
        },
        sorting_strategy = "ascending",

        -- Ajusta los caracteres de los bordes para que no se vean mal
        --        borderchars =: {
        --          prompt = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" }, -- Bordes clásicos
        --          results = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" }, -- Resultados con bordes normales
        --          preview = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" }, -- Preview con bordes clásicos
        --        },

        mappings = {
          i = {
            ["<C-Down>"] = actions.cycle_history_next,
            ["<C-Up>"] = actions.cycle_history_prev,
            ["<C-f>"] = actions.preview_scrolling_down,
            ["<C-b>"] = actions.preview_scrolling_up,
            ["<C-j>"] = actions.move_selection_next,
            ["<C-k>"] = actions.move_selection_previous,
          },
          n = {
            ["q"] = actions.close,
            ["<C-j>"] = actions.move_selection_next,
            ["<C-k>"] = actions.move_selection_previous,
          },
        },
      }

      -- Cargar la extensión fzf para búsquedas rápidas
      require("telescope").load_extension "fzf"

      -- Búsquedas con archivos ocultos y no ignorados
      opts.pickers = {
        find_files = {
          find_command = { "rg", "--files", "--hidden", "--no-ignore", "--iglob", "!.git/" },
        },
        live_grep = {
          additional_args = function()
            return { "--hidden", "--no-ignore" }
          end,
        },
      }
      return opts
    end,

    dependencies = {
      {
        "nvim-telescope/telescope-live-grep-args.nvim",
        version = "^1.0.0",
        config = function()
          require("telescope").load_extension "live_grep_args"
        end,
      },
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
        config = function()
          require("telescope").load_extension "fzf"
        end,
      },
    },
    config = function(_, opts)
      require("telescope").setup(opts)

      -- Mapear teclas adicionales para grep avanzado
      vim.keymap.set("n", "<leader>fg", ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>")
    end,
  },
  {
    "nvim-telescope/telescope-frecency.nvim",
    config = function()
      require("telescope").load_extension "frecency"
    end,
  },
}
