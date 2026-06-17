-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local set = vim.keymap.set

-- Move line(s) up/down with Alt + j/k (normal mode)
set("n", "<A-j>", ":m .+1<CR>==", { desc = "Move line down" })
set("n", "<A-k>", ":m .-2<CR>==", { desc = "Move line up" })

-- Same with arrow keys
set("n", "<A-Down>", ":m .+1<CR>==", { desc = "Move line down" })
set("n", "<A-Up>", ":m .-2<CR>==", { desc = "Move line up" })

-- Insert mode
set("i", "<A-j>", "<Esc>:m .+1<CR>==gi", { desc = "Move line down" })
set("i", "<A-k>", "<Esc>:m .-2<CR>==gi", { desc = "Move line up" })
set("i", "<A-Down>", "<Esc>:m .+1<CR>==gi", { desc = "Move line down" })
set("i", "<A-Up>", "<Esc>:m .-2<CR>==gi", { desc = "Move line up" })

-- Visual mode (moves the whole selection, keeps it selected, reindents)
set("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
set("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })
set("v", "<A-Down>", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
set("v", "<A-Up>", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })
