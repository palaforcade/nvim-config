local opt = vim.opt

-- Line numbers
opt.number = true
opt.relativenumber = true

-- Indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.smartindent = true

-- Search
opt.ignorecase = true
opt.smartcase = true

-- UI
opt.termguicolors = true
opt.signcolumn = "yes"
opt.cursorline = true
opt.wrap = false
opt.scrolloff = 8
opt.sidescrolloff = 8

-- Performance
opt.updatetime = 250
opt.timeoutlen = 300

-- Splits
opt.splitbelow = true
opt.splitright = true

-- System
opt.clipboard = "unnamedplus"
opt.undofile = true
opt.swapfile = false
opt.backup = false

-- Completion
opt.completeopt = "menu,menuone,noselect"

-- Mouse
opt.mouse = "a"
