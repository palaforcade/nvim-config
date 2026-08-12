local parsers = {
  "lua",
  "vim",
  "vimdoc",
  "query",
  "c",
  "javascript",
  "typescript",
  "tsx",
  "prisma",
  "python",
}

-- filetypes whose treesitter language name differs from the filetype
local ft_overrides = {
  help = "vimdoc",
  typescriptreact = "tsx",
  javascriptreact = "javascript",
}

local filetypes = vim.list_extend(vim.tbl_keys(ft_overrides), {
  "lua",
  "vim",
  "query",
  "c",
  "javascript",
  "typescript",
  "prisma",
  "python",
})

return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  lazy = false,
  config = function()
    require("nvim-treesitter").install(parsers)

    for ft, lang in pairs(ft_overrides) do
      vim.treesitter.language.register(lang, ft)
    end

    vim.api.nvim_create_autocmd("FileType", {
      -- sql is highlighted by dbtpal's Jinja-aware regex syntax file instead
      pattern = filetypes,
      callback = function()
        pcall(vim.treesitter.start)
        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
      end,
    })
  end,
}
