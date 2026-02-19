return {
	{
		"neovim/nvim-lspconfig",
		config = function()
			vim.lsp.config("rust_analyzer", {
				settings = {
					["rust-analyzer"] = {
						check = {
							command = "clippy",
						},
					},
				},
			})
			vim.lsp.config("ruff", {
				settings = {
					lint = {
						enable = false,
					},
				},
			})
			vim.lsp.enable("lua_ls")
			--	vim.lsp.enable("basedpyright")
			vim.lsp.enable("ruff")
			vim.lsp.enable("pyrefly")
			-- vim.lsp.enable("ty")
			vim.lsp.enable("clangd")
			vim.lsp.enable("rust_analyzer")
		end,
	},
}
