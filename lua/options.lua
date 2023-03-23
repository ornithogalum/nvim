vim.g.mapleader = " "
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "yes"
vim.opt.termguicolors = true
vim.opt.mouse=

vim.cmd.colorscheme("catppuccin")

require("custom/lsp-zero")
