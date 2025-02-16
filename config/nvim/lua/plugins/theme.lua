return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		enabled = false,
		config = function()
			require("catppuccin").setup({})
			vim.cmd.colorscheme("catppuccin")
		end,
	},

	{
		"rose-pine/neovim",
		name = "rose-pine",
		priority = 1000,
		config = function()
			require("rose-pine").setup({})
			vim.cmd.colorscheme("rose-pine")
		end,
	},
}
