local capabilities = require("cmp_nvim_lsp").default_capabilities()

require("lspconfig")["lua_ls"].setup({
	capabilities = capabilities,
})
require("lspconfig")["html"].setup({
	filetypes = { "html", "javascript", "typescript" },
	capabilities = capabilities,
})
require("lspconfig")["tsserver"].setup({
	capabilities = capabilities,
})
require("lspconfig")["gopls"].setup({
	capabilities = capabilities,
})
require("lspconfig")["pyright"].setup({
	capabilities = capabilities,
})
require("lspconfig")["cssls"].setup({
	capabilities = capabilities,
})
require("lspconfig")["marksman"].setup({
	capabilities = capabilities,
})
require("lspconfig")["tailwindcss"].setup({
	capabilities = capabilities,
})
require("lspconfig")["texlab"].setup({
	capabilities = capabilities,
})
