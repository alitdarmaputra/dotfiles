vim.o.termguicolors = true
vim.cmd([[colorscheme tokyonight]])
vim.cmd([[highlight LineNr guifg=#6B728E]])

-- Custom error position
vim.diagnostic.config({
	virtual_text = false,
	signs = true,
	float = { border = "single" },
})
vim.o.updatetime = 250
vim.cmd([[au CursorHold * lua vim.diagnostic.open_float(nil, {scope="cursor",focus=false})]])
