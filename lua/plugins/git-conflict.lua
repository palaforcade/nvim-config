return {
  "akinsho/git-conflict.nvim",
  event = { "BufReadPre", "BufNewFile" },
  keys = {
    { "<leader>gc", "<cmd>GitConflictListQf<cr>", desc = "List git conflicts (quickfix)" },
  },
  opts = {
    default_mappings = true, -- co: ours, ct: theirs, cb: both, c0: none, ]x/[x: jump
    default_commands = true,
    disable_diagnostics = false,
    list_opener = "copen",
  },
}
