return {
	{ -- GitHub copilot integration
		"zbirenbaum/copilot.lua",
		cmd = "Copilot",
		event = "InsertEnter",
		config = function()
			require("copilot").setup({
				panel = {
					auto_refresh = true,
					keymap = {
						jump_prev = "[[",
						jump_next = "]]",
						accept = "<CR>",
						refresh = "gr",
						open = false,
					},
				},
				suggestion = {
					auto_trigger = true,
					keymap = {
						accept = "<A-l>",
						accept_word = false,
						accept_line = "<A-L>",
						next = "<A-à>",
						prev = "<A-é>",
						dismiss = false,
					},
				},
			})
		end,
	},
	{ "AndreM222/copilot-lualine" },
}
