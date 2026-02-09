return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- File icons
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
    },
  },
  cmd = "Telescope",
  keys = {
    -- File finding
    { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find files" },
    { "<leader>fG", "<cmd>Telescope git_files<cr>", desc = "Git files" },
    { "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "Recent files" },

    -- Search
    { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live grep" },
    { "<leader>fc", "<cmd>Telescope grep_string<cr>", desc = "Find word under cursor" },
    { "<leader>f/", "<cmd>Telescope current_buffer_fuzzy_find<cr>", desc = "Search in buffer" },

    -- Navigation
    { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Buffers" },
    { "<leader>fs", "<cmd>Telescope lsp_document_symbols<cr>", desc = "Document symbols" },
    { "<leader>fS", "<cmd>Telescope lsp_workspace_symbols<cr>", desc = "Workspace symbols" },

    -- Diagnostics & Help
    { "<leader>fd", "<cmd>Telescope diagnostics<cr>", desc = "Diagnostics" },
    { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Help tags" },
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    telescope.setup({
      defaults = {
        prompt_prefix = "   ",
        selection_caret = " ",
        path_display = { "smart" },
        file_ignore_patterns = {
          "node_modules",
          ".git/",
          "dist/",
          "build/",
          "target/",
          "%.lock",
        },
        mappings = {
          i = {
            ["<C-j>"] = actions.move_selection_next,
            ["<C-k>"] = actions.move_selection_previous,
            ["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
            ["<Esc>"] = actions.close,
          },
          n = {
            ["q"] = actions.close,
          },
        },
        layout_strategy = "horizontal",
        layout_config = {
          horizontal = {
            preview_width = 0.55,
            prompt_position = "top",
          },
          width = 0.87,
          height = 0.80,
        },
        sorting_strategy = "ascending",
        winblend = 0,
        border = {},
        borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
      },
      pickers = {
        find_files = {
          hidden = true,
          find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" },
        },
        buffers = {
          sort_mru = true,
          sort_lastused = true,
          mappings = {
            i = {
              ["<c-d>"] = actions.delete_buffer,
            },
          },
        },
      },
      extensions = {
        fzf = {
          fuzzy = true,
          override_generic_sorter = true,
          override_file_sorter = true,
          case_mode = "smart_case",
        },
      },
    })

    -- Load FZF extension
    telescope.load_extension("fzf")
  end,
}
