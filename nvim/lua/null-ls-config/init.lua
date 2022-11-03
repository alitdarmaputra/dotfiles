local null_ls = require("null-ls")

local formatting = null_ls.builtins.formatting

local sources = {
	formatting.autopep8,
	formatting.stylua,
	formatting.eslint,
}

null_ls.setup({
	sources = sources,

	on_attach = function(client)
		if client.name == "tsserver" then
			client.resolved_capabilities.document_formatting = false
		elseif client.server_capabilities then
			vim.cmd("autocmd BufwritePre <buffer> lua vim.lsp.buf.format()")
		end
	end,
})
