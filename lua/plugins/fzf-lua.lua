return {
	"ibhagwan/fzf-lua",
	-- optional for icon support
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		-- calling `setup` is optional for customization
		require("fzf-lua").setup({})
	end,
	keys = {
		{ "<leader>ff", "<cmd>FzfLua files<cr>",            desc = "Fzf Files" },
		{ "<leader>fb", "<cmd>FzfLua buffers<cr>",          desc = "Fzf Buffers" },
		{ "<leader>fg", "<cmd>FzfLua grep<cr>",             desc = "Fzf Grep" },
		{ "<leader>fl", "<cmd>FzfLua live_grep<cr>",        desc = "Fzf Live Grep" },
		{ "<leader>fk", "<cmd>FzfLua builtin commands<cr>", desc = "Fzf Builtin Commands" },
		{ "<leader>fh", "<cmd>FzfLua neovim help<cr>",      desc = "Fzf Neovim Help" },

	},
}
