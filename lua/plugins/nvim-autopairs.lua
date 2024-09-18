return {
	"windwp/nvim-autopairs",
	event = "InsertEnter",
	opts = {},
	config = function(_, opts)
		local npairs = require('nvim-autopairs')
		local Rule = require('nvim-autopairs.rule')
		npairs.setup(opts)
		npairs.add_rule(Rule("$", "$", { "tex", "typst" }))
		npairs.add_rule(Rule("$ ", " $", "typst"))
	end
}
