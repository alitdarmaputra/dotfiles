local null_ls = require("null-ls")

local formatting = null_ls.builtins.formatting

local sources = {
	formatting.autopep8,
	formatting.stylua,
	formatting.eslint,
	formatting.golines,
}

null_ls.setup({
	sources = sources,

	on_attach = function(client)
		if client.name == "tsserver" or client.name == "sumneko_lua" then
			client.resolved_capabilities.document_formatting = false
		elseif client.server_capabilities then
			-- vim.cmd("autocmd BufwritePre <buffer> lua vim.lsp.buf.format({ timeout_ms = 5000 })")
			vim.cmd("autocmd BufwritePre <buffer> lua vim.lsp.buf.format()")
		end
	end,
})
