local opt = vim.opt

-- Directory nvim was launched from, before auto-root (see autocmds.lua) or
-- any plugin changes the working directory. Telescope stays scoped here so
-- monorepo searches don't balloon out to the whole repo root.
vim.g.launch_cwd = vim.fn.getcwd()

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

-- Disable netrw (using Oil instead)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- ZenStack schema files: syntax is a superset of Prisma's
vim.filetype.add({ extension = { zmodel = "prisma" } })
