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

-- Esc+ (clears hlsearch & multicursors)
local mc_ns = vim.api.nvim_create_namespace("nvim.multicursor") -- find ID of nvim.multicursor namespace
set("n", "<Esc>", function() -- bind <Esc> in Normal mode to the following function
  vim.cmd("noh") -- preserve default behavior, run `:nohlsearch` turning off highlighted search results
  vim.api.nvim_buf_clear_namespace(0, mc_ns, 0, -1) -- remove every extmark (cursor) in the ns from buffer 0 (current), lines 0 through -1 (start to end)
  return "<Esc>" -- with `expr = true` the string the function returns is what Neovim actually "types"
end, { expr = true, desc = "Esc+: clear hlsearch and multicursors" })
