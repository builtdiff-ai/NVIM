return {
	{
		"mfussenegger/nvim-dap",
		keys = {
			{ "<leader>dc", "<cmd>DapContinue<CR>", desc = "DAP: Continue" },
			{ "<leader>dn", "<cmd>DapStepOver<CR>", desc = "DAP: Step over" },
			{ "<leader>di", "<cmd>DapStepInto<CR>", desc = "DAP: Step into" },
			{ "<leader>do", "<cmd>DapStepOut<CR>", desc = "DAP: Step out" },
			{ "<leader>db", "<cmd>DapToggleBreakpoint<CR>", desc = "DAP: Toggle breakpoint" },
			{ "<leader>dB", "<cmd>DapSetBreakpoint<CR>", desc = "DAP: Set breakpoint" },
			{ "<leader>dr", "<cmd>DapRestart<CR>", desc = "DAP: Restart" },
			{ "<leader>dt", "<cmd>DapTerminate<CR>", desc = "DAP: Terminate" },
		},
		config = function() end,
	},
	{
		"rcarriga/nvim-dap-ui",
		dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
		keys = {
			{ "<leader>du", "<cmd>DapUiToggle<CR>", desc = "DAP: Toggle UI" },
		},
		config = function()
			local dap = require("dap")
			local dapui = require("dapui")
			dapui.setup({})
			dap.listeners.after.event_initialized["dapui_config"] = function()
				dapui.open()
			end
			dap.listeners.before.event_terminated["dapui_config"] = function()
				dapui.close()
			end
			dap.listeners.before.event_exited["dapui_config"] = function()
				dapui.close()
			end
		end,
	},
	{
		"mfussenegger/nvim-dap-python",
		ft = "python",
		dependencies = { "mfussenegger/nvim-dap" },
		config = function()
			local python_path = vim.fn.exepath("python3")
			if python_path == "" then
				python_path = "python"
			end
			require("dap-python").setup(python_path)
		end,
	},
}
