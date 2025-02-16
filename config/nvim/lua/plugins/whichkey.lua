return { -- Useful plugin to show you pending keybinds.
	"folke/which-key.nvim",
	event = "VimEnter", -- Sets the loading event to 'VimEnter'
	lazy = true,
	opts = {
		-- delay between pressing a key and opening which-key (milliseconds)
		-- this setting is independent of vim.opt.timeoutlen
		delay = 0,
		icons = {
			-- set icon mappings to true if you have a Nerd Font
			mappings = vim.g.have_nerd_font,
		},

		-- Document existing key chains
		spec = {
			{ "<leader>s", group = "[S]earch" },
			{ "<leader>c", group = "[C]ode" },
			{ "<leader>t", group = "[T]oggle" },
			{ "<leader>b", group = "[B]uffers" },
			{ "<leader>h", group = "Git [H]unks" },
			{ "<leader>e", group = "NeoTree" },
			{ "<leader>x", group = "Trouble" },
			{ "<leader><Tab>", group = "Tabs" },
		},
	},
}
