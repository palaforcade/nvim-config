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
    },
    -- Auto-install missing parsers when entering buffer
    auto_install = true,
    -- Enable syntax highlighting
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
    },
    -- Enable indentation
    indent = {
      enable = true,
    },
  },
}
