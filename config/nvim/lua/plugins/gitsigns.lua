-- Adds git related signs to the gutter, as well as utilities for managing changes
return {
	"lewis6991/gitsigns.nvim",
	opts = {
		on_attach = function(bufnr)
			local gitsigns = require("gitsigns")

			local function map(mode, l, r, opts)
				opts = opts or {}
				opts.buffer = bufnr
				vim.keymap.set(mode, l, r, opts)
			end

			-- Navigation
			map("n", "<leader>hn", function()
				if vim.wo.diff then
					vim.cmd.normal({ "]c", bang = true })
				else
					gitsigns.nav_hunk("next")
				end
			end, { desc = "Next Hunk" })

			map("n", "<leader>hp", function()
				if vim.wo.diff then
					vim.cmd.normal({ "[c", bang = true })
				else
					gitsigns.nav_hunk("prev")
				end
			end, { desc = "Previous Hunk" })

			-- Actions
			map("n", "<leader>hs", gitsigns.stage_hunk, { desc = "Stage Hunk" })
			map("n", "<leader>hr", gitsigns.reset_hunk, { desc = "Reset Hunk" })

			map("v", "<leader>hs", function()
				gitsigns.stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
			end, { desc = "Stage Hunk" })

			map("v", "<leader>hr", function()
				gitsigns.reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
			end, { desc = "Reset Hunk" })

			map("n", "<leader>hS", gitsigns.stage_buffer, { desc = "Stage Buffer" })
			map("n", "<leader>hR", gitsigns.reset_buffer, { desc = "Reset Buffer" })
			map("n", "<leader>hv", gitsigns.preview_hunk, { desc = "Preview Hunk" })
			map("n", "<leader>hi", gitsigns.preview_hunk_inline, { desc = "Preview Hunk Inline" })

			map("n", "<leader>hb", function()
				gitsigns.blame_line({ full = true })
			end, { desc = "Blame Line" })

			map("n", "<leader>hd", gitsigns.diffthis, { desc = "Diff This" })

			map("n", "<leader>hD", function()
				gitsigns.diffthis("~")
			end, { desc = "Diff This (cached)" })

			map("n", "<leader>hQ", function()
				gitsigns.setqflist("all")
			end, { desc = "Set Quickfix List" })
			map("n", "<leader>hq", gitsigns.setqflist, { desc = "Set Quickfix List (current)" })

			-- Toggles
			map("n", "<leader>tb", gitsigns.toggle_current_line_blame, { desc = "Toggle Blame" })
			map("n", "<leader>tw", gitsigns.toggle_word_diff, { desc = "Toggle Word Diff" })

			-- Text object
			map({ "o", "x" }, "ih", gitsigns.select_hunk, { desc = "Select Hunk" })
		end,
	},
}
