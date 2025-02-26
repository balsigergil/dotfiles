local mode = {
	"mode",
	fmt = function(str)
		return " " .. str
	end,
}

local hide_in_width = function()
	return vim.fn.winwidth(0) > 100
end

return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		options = {
			icons_enabled = true,
			section_separators = { left = "", right = "" },
			component_separators = { left = "", right = "" },
			disabled_filetypes = {
				"alpha",
				"neo-tree",
				"qf",
				"NvimTree",
				"snacks_dashboard",
				"trouble",
				"dapui_scopes",
				"dapui_breakpoints",
				"dapui_stacks",
				"dapui_watches",
				"dapui_console",
				"dap-repl",
			},
			always_divide_middle = true,
			--- @usage 'rose-pine' | 'rose-pine-alt'
			theme = "rose-pine",
		},
		sections = {
			lualine_a = { mode },
			lualine_b = { "filename", "branch" },
			lualine_c = {},
			lualine_x = {
				{ "copilot", cond = hide_in_width },
				{
					"diff",
					colored = true,
					symbols = { added = " ", modified = " ", removed = " " }, -- changes diff symbols
					cond = hide_in_width,
				},
				{
					"diagnostics",
					sources = { "nvim_diagnostic" },
					sections = { "error", "warn" },
					symbols = { error = " ", warn = " ", info = " ", hint = " " },
					colored = true,
					update_in_insert = false,
					always_visible = false,
					cond = hide_in_width,
				},
				{ "filetype", cond = hide_in_width },
			},
			lualine_y = { "location" },
			lualine_z = { "progress" },
		},
		inactive_sections = {
			lualine_a = {},
			lualine_b = {},
			lualine_c = { "filename" },
			lualine_x = { "location" },
			lualine_y = {},
			lualine_z = {},
		},
		tabline = {},
		extensions = { "neo-tree", "lazy" },
	},
}
