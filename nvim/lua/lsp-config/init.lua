local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require("lspconfig")["pyright"].setup({
	on_attach = on_attach,
	capabilities = capabilities,
})
require("lspconfig")["clangd"].setup({
	on_attach = on_attach,
	capabilities = capabilities,
})
require("lspconfig")["jsonls"].setup({
	on_attach = on_attach,
	capabilities = capabilities,
})
require("lspconfig")["dockerls"].setup({
	on_attach = on_attach,
	capabilities = capabilities,
})
require("lspconfig")["eslint"].setup({
	on_attach = on_attach,
	capabilities = capabilities,
})
require("lspconfig")["tsserver"].setup({
	on_attach = on_attach,
	capabilities = capabilities,
})
require("lspconfig")["emmet_ls"].setup({
	on_attach = on_attach,
	capabilities = capabilities,
})
require("lspconfig")["cssls"].setup({
	on_attach = on_attach,
	capabilities = capabilities,
})
require("lspconfig")["sumneko_lua"].setup({
	on_attach = on_attach,
	capabilities = capabilities,
})
require("lspconfig")["gopls"].setup({
	on_attach = on_attach,
	capabilities = capabilities,
})
require("lspconfig")["html"].setup({
	on_attach = on_attach,
	capabilities = capabilities,
})
