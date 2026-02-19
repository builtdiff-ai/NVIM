return {
	{
		"nvim-telescope/telescope.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope-fzf-native.nvim",
		},
		cmd = "Telescope",
		keys = {
			{
				"<leader>ff",
				function()
					require("telescope.builtin").find_files({ hidden = true })
				end,
				desc = "Telescope: find files",
			},
			{
				"<leader>fg",
				function()
					require("telescope.builtin").live_grep()
				end,
				desc = "Telescope: live grep",
			},
			{
				"<leader>fb",
				"<cmd>Telescope buffers<CR>",
				desc = "Telescope: buffers",
			},
			{
				"<leader>fh",
				"<cmd>Telescope help_tags<CR>",
				desc = "Telescope: help tags",
			},
		},
		config = function()
			require("telescope").setup({})
			require("telescope").load_extension("fzf")
		end,
	},
}
