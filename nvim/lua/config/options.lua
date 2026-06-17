-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

if vim.env.SSH_CONNECTION then
  vim.api.nvim_create_autocmd("TextYankPost", {
    callback = function()
      if vim.v.event.operator == "y" then
        require("vim.ui.clipboard.osc52").copy("+")(vim.v.event.regcontents)
      end
    end,
  })
end
