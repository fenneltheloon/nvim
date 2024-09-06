vim.cmd.colorscheme("industry")
vim.g.mapleader = " "
vim.opt.ai = true
vim.opt.nu = true
vim.opt.rnu = true
vim.opt.cul = true
vim.opt.cc = "80"
vim.opt.ci = true
vim.opt.so = 5
vim.opt.si = true
vim.opt.sw = 4
vim.opt.sta = true
vim.opt.ts = 4
vim.opt.clipboard = "unnamedplus"
vim.opt.mouse = ""
vim.opt.rtp:append("/opt/homebrew/opt/fzf")

local opts = { noremap = true, silent = true }

vim.keymap.set('n', ']d', function()
	vim.diagnostic.goto_next()
	vim.diagnostic.open_float()
end, opts)

vim.keymap.set('n', '[d', function()
	vim.diagnostic.goto_prev()
	vim.diagnostic.open_float()
end, opts)

local function quickfix()
	vim.lsp.buf.code_action({
		filter = function(a) return a.isPreferred end,
		apply = true
	})
end

vim.keymap.set('n', '<leader>qf', quickfix, opts)
