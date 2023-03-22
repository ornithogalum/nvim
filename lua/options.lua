vim.g.mapleader = " "
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "yes"

vim.cmd.colorscheme("catppuccin")

require("custom/lsp-zero")
