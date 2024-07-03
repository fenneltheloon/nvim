return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	opts = {
		auto_install = true,
		highlight = {
			enable = true,
			additional_vim_regex_highlighting = false,
		},
	},
	config = function(_, opts)
		require 'nvim-treesitter.configs'.setup(opts)
		-- vim default syntax highlighting for lilypond reeval on write to prevent
		-- breakage
		vim.api.nvim_create_autocmd('BufEnter', {
			command = "syntax sync fromstart",
			pattern = { '*.ly', '*.ily', '*.tex' }
		})
	end,
}
