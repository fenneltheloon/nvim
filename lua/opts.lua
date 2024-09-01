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

vim.keymap.set('n', ']d', function()
	vim.diagnostic.goto_next()
	vim.diagnostic.open_float()
end)

vim.keymap.set('n', '[d', function()
	vim.diagnostic.goto_prev()
	vim.diagnostic.open_float()
end)
