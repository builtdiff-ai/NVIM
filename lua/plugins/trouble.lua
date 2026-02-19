return {
	"folke/trouble.nvim",
	opts = {
		focus = true,
		win = {
			type = "float",
			border = "rounded",
			title = "Trouble",
			title_pos = "center",
			size = { width = 0.9, height = 0.5 },
			zindex = 45,
		},
	},
	config = function(_, opts)
		require("trouble").setup(opts)

		-- Improve float readability by leaning on existing float highlights.
		vim.api.nvim_set_hl(0, "TroubleNormal", { link = "NormalFloat" })
		vim.api.nvim_set_hl(0, "TroubleNormalNC", { link = "NormalFloat" })
		vim.api.nvim_set_hl(0, "TroubleBorder", { link = "FloatBorder" })
		vim.api.nvim_set_hl(0, "TroubleTitle", { link = "Title" })
		vim.api.nvim_set_hl(0, "TroublePreview", { link = "Visual" })
		vim.api.nvim_set_hl(0, "TroubleIndent", { link = "FloatTitle" })
	end,
	cmd = "Trouble",
	keys = {
		{
			"<leader>xx",
			"<cmd>Trouble diagnostics toggle<cr>",
			desc = "Diagnostics (Trouble)",
		},
		{
			"<leader>xX",
			"<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
			desc = "Buffer Diagnostics (Trouble)",
		},
		{
			"<leader>cs",
			"<cmd>Trouble symbols toggle focus=true<cr>",
			desc = "Symbols (Trouble)",
		},
		{
			"<leader>cl",
			"<cmd>Trouble lsp toggle focus=true<cr>",
			desc = "LSP Definitions / references / ... (Trouble)",
		},
		{
			"<leader>xL",
			"<cmd>Trouble loclist toggle<cr>",
			desc = "Location List (Trouble)",
		},
		{
			"<leader>xQ",
			"<cmd>Trouble qflist toggle<cr>",
			desc = "Quickfix List (Trouble)",
		},
	},
}
