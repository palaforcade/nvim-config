local keymap = vim.keymap.set

-- Window navigation handled by vim-tmux-navigator (Ctrl+h/j/k/l)

-- Buffer management
keymap("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "Previous buffer" })
keymap("n", "<S-l>", "<cmd>bnext<cr>", { desc = "Next buffer" })
keymap("n", "<leader>bd", "<cmd>bdelete<cr>", { desc = "Delete buffer" })

-- Quick save/quit
keymap("n", "<leader>w", "<cmd>w<cr>", { desc = "Save file" })
keymap("n", "<leader>q", "<cmd>qa<cr>", { desc = "Quit all" })
keymap("n", "<leader>x", "<cmd>w | bdelete<cr>", { desc = "Save and close buffer" })

-- Clear search highlight
keymap("n", "<Esc>", "<cmd>nohlsearch<cr>", { desc = "Clear search highlight" })

-- Better indenting
keymap("v", "<", "<gv", { desc = "Indent left" })
keymap("v", ">", ">gv", { desc = "Indent right" })

-- Move lines
keymap("v", "J", ":m '>+1<cr>gv=gv", { desc = "Move line down" })
keymap("v", "K", ":m '<-2<cr>gv=gv", { desc = "Move line up" })

-- Better paste
keymap("v", "p", '"_dP', { desc = "Paste without yanking" })

-- Keep cursor centered
keymap("n", "<C-d>", "<C-d>zz", { desc = "Scroll down" })
keymap("n", "<C-u>", "<C-u>zz", { desc = "Scroll up" })
keymap("n", "n", "nzzzv", { desc = "Next search result" })
keymap("n", "N", "Nzzzv", { desc = "Previous search result" })
