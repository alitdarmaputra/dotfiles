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

vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})

-- Go to definition
map("n", "<leader>a", ":lua vim.lsp.buf.definition()<CR>", opts)
map("n", "<leader>v", ":vsplit | lua vim.lsp.buf.definition()<CR>", opts)
map("n", "<leader>s", ":belowright split | lua vim.lsp.buf.definition()<CR>", opts)

-- back to last file
map("n", "<leader>bb", "<C-^><CR>", opts)

-- Visual --
-- Stay in indent mode
map("v", "<", "<gv", opts)
map("v", ">", ">gv", opts)

-- Move text up and down
map("v", "<A-j>", ":m .+1<CR>==", opts)
map("v", "<A-k>", ":m .-2<CR>==", opts)
