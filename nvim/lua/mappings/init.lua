local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = " "

map("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- Normal --
-- Better window navigation
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)

-- Nvim tree
map("n", "<leader>w", ":NvimTreeToggle<CR>", opts)
map("n", "<leader>f", ":NvimTreeFocus<CR>", opts)

-- Telescope
local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>ff", ":Telescope find_files hidden=true<CR>", {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})

-- Go to definition
map("n", "<leader>a", ":lua vim.lsp.buf.definition()<CR>", opts)
map("n", "<leader>v", ":vsplit | lua vim.lsp.buf.definition()<CR>", opts)
map("n", "<leader>s", ":belowright split | lua vim.lsp.buf.definition()<CR>", opts)

-- back to last file
map("n", "<leader>bb", "<C-^><CR>", opts)

-- Show diagnostic line
-- vim.api.nvim_buf_set_keymap(bufnr, "n", "<space>ld", "<cmd>Lspsaga show_line_diagnostics<CR>", opts)

-- Move text up and down
map("n", "<A-k>", ":m .-2<CR>==", opts)
map("n", "<A-j>", ":m .+1<CR>==", opts)

-- Visual --
-- Stay in indent mode
map("v", "<", "<gv", opts)
map("v", ">", ">gv", opts)
