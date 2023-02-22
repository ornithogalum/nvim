local telescope_builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>ff", telescope_builtin.find_files, {})
vim.keymap.set("n", "<leader>fw", telescope_builtin.live_grep, {})
vim.keymap.set("n", "<leader>e", "<cmd>Neotree toggle<cr>", {})
