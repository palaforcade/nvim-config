return {
  -- Seamless Ctrl+h/j/k/l between nvim splits and tmux panes
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
    keys = {
      { "<C-h>", "<Cmd>TmuxNavigateLeft<CR>", desc = "Navigate left", mode = { "n", "i", "v", "t" } },
      { "<C-j>", "<Cmd>TmuxNavigateDown<CR>", desc = "Navigate down", mode = { "n", "i", "v", "t" } },
      { "<C-k>", "<Cmd>TmuxNavigateUp<CR>", desc = "Navigate up", mode = { "n", "i", "v", "t" } },
      { "<C-l>", "<Cmd>TmuxNavigateRight<CR>", desc = "Navigate right", mode = { "n", "i", "v", "t" } },
    },
  },

  -- Keybinding popup on <leader>
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      delay = 300,
      icons = { mappings = false },
      spec = {
        { "<leader>f", group = "find" },
        { "<leader>h", group = "git hunks" },
        { "<leader>b", group = "buffer" },
        { "<leader>a", group = "AI chat" },
      },
    },
  },
}
