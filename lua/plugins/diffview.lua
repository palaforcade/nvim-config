return {
  "sindrets/diffview.nvim",
  cmd = { "DiffviewOpen", "DiffviewFileHistory" },
  keys = {
    {
      "<leader>gd",
      function()
        if next(require("diffview.lib").views) then
          vim.cmd("DiffviewClose")
        else
          vim.cmd("DiffviewOpen")
        end
      end,
      desc = "Toggle git diff",
    },
    { "<leader>gh", "<cmd>DiffviewFileHistory %<cr>", desc = "Git history (file)" },
    { "<leader>gH", "<cmd>DiffviewFileHistory<cr>", desc = "Git history (branch)" },
  },
  opts = {
    view = {
      default = { layout = "diff2_horizontal" },
    },
  },
}
