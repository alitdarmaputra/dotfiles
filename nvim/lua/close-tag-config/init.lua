local result = vim.api.nvim_exec(
	[[
let g:closetag_filenames = '*.js, *.jsx, *.tsx, *.html,*.xhtml,*.phtml'
]],
	true
)
