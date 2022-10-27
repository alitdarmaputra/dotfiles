local result = vim.api.nvim_exec(
	[[
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
]],
	true
)
