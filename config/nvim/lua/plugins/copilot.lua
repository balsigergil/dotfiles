return { -- GitHub copilot integration
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
					open = "<M-CR>",
				},
			},
			suggestion = {
				auto_trigger = true,
				keymap = {
					accept = "<M-l>",
					accept_word = false,
					accept_line = "<M-S-l>",
					next = "<M-à>",
					prev = "<M-é>",
					dismiss = "<C-]>",
				},
			},
		})
	end,
}
