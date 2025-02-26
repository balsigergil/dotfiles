return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		local bufferline = require("bufferline")
		local highlights = require("rose-pine.plugins.bufferline")
		bufferline.setup({
			options = {
				themable = true,
				offsets = {
					{
						filetype = "neo-tree",
						separator = true,
					},
				},
				show_close_icon = false,
				show_buffer_close_icons = false,
				diagnostics = "nvim_lsp",
				indicator = {
					style = "underline",
				},
				separator_style = { "", "" },
			},
			highlights = highlights,
		})
	end,
}
