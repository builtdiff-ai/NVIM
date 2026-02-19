return {
	{
		"folke/snacks.nvim",
		priority = 1000,
		lazy = false,
		keys = {
			{ "<leader>tt", function() Snacks.terminal() end, desc = "Toggle Terminal" },
			{ "<c-/>", function() Snacks.terminal() end, desc = "Toggle Terminal" },
			{ "<c-_>", function() Snacks.terminal() end, desc = "Toggle Terminal" },
			{ "]]", function() Snacks.words.jump(vim.v.count1) end, desc = "Next Reference", mode = { "n", "t" } },
			{ "[[", function() Snacks.words.jump(-vim.v.count1) end, desc = "Prev Reference", mode = { "n", "t" } },
		},
		init = function()
			vim.api.nvim_create_autocmd("User", {
				pattern = "VeryLazy",
				callback = function()
					_G.dd = function(...)
						Snacks.debug.inspect(...)
					end
					_G.bt = function()
						Snacks.debug.backtrace()
					end
					if vim.fn.has("nvim-0.11") == 1 then
						vim._print = function(_, ...)
							dd(...)
						end
					else
						vim.print = _G.dd
					end

					Snacks.toggle.indent():map("<leader>ug")
					Snacks.toggle.dim():map("<leader>uD")
				end,
			})
		end,
		opts = {
			terminal = {
				enabled = true,
				win = { position = "float" },
			},
			statuscolumn = { enabled = true },
			indent = { enabled = true },
			dim = { enabled = true },
			dashboard = { enabled = true },
			debug = { enabled = true },
			scope = { enabled = true },
			words = { enabled = true },
		},
	},
}
