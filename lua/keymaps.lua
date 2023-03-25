local telescope_builtin = require("telescope.builtin")

local m = vim.keymap

-- Normal mode
m.set("n", "<leader>ff", telescope_builtin.find_files, {})
m.set("n", "<leader>fw", telescope_builtin.live_grep, {})
m.set("n", "<leader>fb", telescope_builtin.current_buffer_fuzzy_find, {})
m.set("n", "<leader>e", "<cmd>Neotree toggle<cr>", {})
m.set("n", "<Esc>", "<cmd> noh <CR>", {})
m.set("n", "<leader>wk", function()
  vim.cmd "WhichKey"
end, {})
m.set("n", "<Tab>", "<cmd> bnext <CR>", {})
m.set("n", "<S-Tab>", "<cmd> bprev <CR>", {})
m.set("n", "<leader>x", "<cmd> bdelete <CR>", {})
m.set("n", "<leader>fm", function()
  vim.lsp.buf.format({ async = true })
end, {})

-- Terminal
m.set("t", "<C-x>", vim.api.nvim_replace_termcodes("<C-\\><C-N>", true, true, true), {})
