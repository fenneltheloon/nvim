return {
	"VonHeikemen/lsp-zero.nvim",
	init = function()
		vim.g.lsp_zero_extend_cmp = 0
		vim.g.lsp_zero_extend_lspconfig = 0
	end,
}
