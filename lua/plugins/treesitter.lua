return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  lazy = false,
  opts = {
    -- Install parsers for these languages
    ensure_installed = {
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
    },
    -- Auto-install missing parsers when entering buffer
    auto_install = true,
    -- Enable syntax highlighting
    highlight = {
      enable = true,
      -- sql handled by dbtpal's regex syntax file (Jinja-aware); treesitter would clobber it
      disable = { "sql" },
      additional_vim_regex_highlighting = false,
    },
    -- Enable indentation
    indent = {
      enable = true,
    },
  },
}
