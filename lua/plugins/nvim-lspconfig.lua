return {
	"neovim/nvim-lspconfig",
	cmd = { 'LspInfo', 'LspInstall', 'LspStart' },
	event = { 'BufReadPre', 'BufNewFile' },
	dependencies = {
		{ "williamboman/mason-lspconfig.nvim" },
		{ 'saghen/blink.cmp' },
	},
	config = function()
		local lsp_zero = require('lsp-zero')
		lsp_zero.extend_lspconfig()
		lsp_zero.on_attach(function(_, bufnr)
			lsp_zero.default_keymaps({ buffer = bufnr })
		end)

		lsp_zero.set_sign_icons({
			error = "✘",
			warn = "▲",
			hint = "⚑",
			info = "»"
		})

		require('mason-lspconfig').setup({
			handlers = {
				function(server_name)
					require('lspconfig')[server_name].setup({})
				end,

				tinymist = function()
					require('lspconfig').tinymist.setup({
						settings = {
							exportPdf = "onSave",
						},
					})
				end
			}
		})

		-- call the LSP to format the buffer on write
		vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]]
	end,
}
