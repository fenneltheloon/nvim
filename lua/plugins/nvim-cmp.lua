return {
	"hrsh7th/nvim-cmp",
	event = 'InsertEnter',
	dependencies = {
		{ "hrsh7th/cmp-nvim-lsp" },
		{ "hrsh7th/cmp-buffer" },
		{ "hrsh7th/cmp-path" },
		{ "L3MON4D3/LuaSnip" },
		{ "saadparwaiz1/cmp_luasnip" },
		{ "rafamadriz/friendly-snippets" },
		{ "onsails/lspkind.nvim" },
	},
	config = function()
		local lsp_zero = require('lsp-zero')
		lsp_zero.extend_cmp()

		local cmp = require('cmp')
		local cmp_action = lsp_zero.cmp_action()
		local cmp_autopairs = require('nvim-autopairs.completion.cmp')
		cmp.setup({
			mapping = cmp.mapping.preset.insert({
				["<C-CR>"] = cmp.mapping.confirm({ select = true }),
				["<CR>"] = cmp.mapping.confirm({ select = false }),
				['<C-u>'] = cmp.mapping.scroll_docs(-4),
				['<C-d>'] = cmp.mapping.scroll_docs(4),
				['<C-f>'] = cmp_action.luasnip_jump_forward(),
				['<C-b>'] = cmp_action.luasnip_jump_backward(),
			}),
			snippet = {
				expand = function(args)
					require('luasnip').lsp_expand(args.body)
				end,
			},
			sources = cmp.config.sources({
				{ name = "path" },
				{ name = "buffer" },
				{ name = "nvim_lsp" },
			}),
			formatting = {
				format = require('lspkind').cmp_format({
					mode = 'symbol',
					maxwidth = 50,
					ellipsis_char = '...',
					show_labelDetails = true,
					before = function(_, vim_item)
						return vim_item
					end,
				}),
			},
		})
		cmp.setup.filetype("lilypond", {
			sources = cmp.config.sources({
				{ name = "buffer" },
				{
					name = "dictionary",
					keyword_length = 2,
				},
			}),
		})
		cmp.event:on(
			'confirm_done',
			cmp_autopairs.on_confirm_done()
		)
	end,
}
