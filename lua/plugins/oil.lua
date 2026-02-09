return {
  "stevearc/oil.nvim",
  cmd = "Oil",
  keys = {
    { "<leader>e", "<cmd>Oil<cr>", desc = "Open file explorer" },
  },
  init = function()
    -- Open Oil when starting with a directory argument
    vim.api.nvim_create_autocmd("VimEnter", {
      group = vim.api.nvim_create_augroup("oil_hijack", { clear = true }),
      callback = function()
        local arg = vim.fn.argv(0)
        if arg and vim.fn.isdirectory(arg) == 1 then
          vim.cmd("Oil " .. arg)
        end
      end,
    })
  end,
  opts = {
    default_file_explorer = true,
    columns = {
      "icon",
    },
    view_options = {
      show_hidden = true,
      is_hidden_file = function(name, bufnr)
        return vim.startswith(name, ".")
      end,
      is_always_hidden = function(name, bufnr)
        return false
      end,
    },
    keymaps = {
      ["g?"] = "actions.show_help",
      ["<CR>"] = "actions.select",
      ["<C-s>"] = "actions.select_vsplit",
      ["<C-h>"] = "actions.select_split",
      ["<C-t>"] = "actions.select_tab",
      ["<C-p>"] = "actions.preview",
      ["<C-c>"] = "actions.close",
      ["<C-l>"] = "actions.refresh",
      ["-"] = "actions.parent",
      ["_"] = "actions.open_cwd",
      ["`"] = "actions.cd",
      ["~"] = "actions.tcd",
      ["gs"] = "actions.change_sort",
      ["gx"] = "actions.open_external",
      ["g."] = "actions.toggle_hidden",
    },
  },
}
