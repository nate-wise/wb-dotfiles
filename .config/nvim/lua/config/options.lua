-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.treesitter.language.register("ruby", "json.jbuilder")
vim.treesitter.language.register("ruby", "builder")
vim.cmd.set("cursorcolumn")
vim.cmd.set("colorcolumn=80")
vim.cmd.set("cmdheight=1")
vim.opt.relativenumber = false
vim.cmd([[highlight Normal guibg=NONE ctermbg=NONE]])
vim.cmd([[highlight NonText guibg=NONE ctermbg=NONE]])
