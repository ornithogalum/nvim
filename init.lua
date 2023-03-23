require("plugins")

require("options")

require("keymaps")

require("bufferline").setup({
	options = {
		diagnostics = "nvim_lsp",
		buffer_close_icon = ""
	}
})
