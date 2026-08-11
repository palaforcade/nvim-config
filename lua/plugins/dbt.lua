return {
  "PedramNavid/dbtpal",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
  },
  ft = { "sql", "md", "yaml" },
  keys = {
    { "<leader>drf", "<cmd>DbtRun<cr>", desc = "dbt: Run model" },
    { "<leader>drp", "<cmd>DbtRunAll<cr>", desc = "dbt: Run all models" },
    { "<leader>dtf", "<cmd>DbtTest<cr>", desc = "dbt: Test model" },
    { "<leader>dc", "<cmd>DbtCompile<cr>", desc = "dbt: Compile model" },
    { "<leader>dm", function() require("dbtpal.telescope").dbt_picker() end, desc = "dbt: Find model" },
  },
  config = function()
    require("dbtpal").setup({})
    require("telescope").load_extension("dbtpal")
  end,
}
