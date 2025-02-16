return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		local bufferline = require("bufferline")
		bufferline.setup({
			options = {
				offsets = {
					{
						filetype = "neo-tree",
						separator = true,
					},
				},
				show_close_icon = false,
				show_buffer_close_icons = false,
				diagnostics = "nvim_lsp",
				-- indicator = {
				-- 	style = "none",
				-- },
				-- separator_style = { "|", "|" },
			},
		})
	end,
}
