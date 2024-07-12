local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
vim.g.mapleader = " "

map("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- Normal --

-- Debugger
vim.keymap.set("n", "<leader>dt", require("dap").continue)
vim.keymap.set("n", "<leader>do", require("dap").step_over)
vim.keymap.set("n", "<leader>di", require("dap").step_into)
vim.keymap.set("n", "<leader>dq", require("dap").step_out)
vim.keymap.set("n", "<leader>db", require("dap").toggle_breakpoint)

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

-- Go to implementation
map("n", "<leader>k", ":lua vim.lsp.buf.implementation()<CR>", opts)

-- back to last file
map("n", "<leader>bb", "<C-^><CR>", opts)

-- Move text up and down
map("n", "<A-k>", ":m .-2<CR>==", opts)
map("n", "<A-j>", ":m .+1<CR>==", opts)

-- trouble diagnostic
vim.keymap.set("n", "<leader>xd", "<cmd>TroubleToggle<cr>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>xx", "<cmd>TroubleToggle document_diagnostics<cr>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>xl", "<cmd>TroubleToggle loclist<cr>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>", { silent = true, noremap = true })
vim.keymap.set("n", "gR", "<cmd>TroubleToggle lsp_references<cr>", { silent = true, noremap = true })

-- Visual --
-- Stay in indent mode
map("v", "<", "<gv", opts)
map("v", ">", ">gv", opts)
-- execute command under cursor
vim.api.nvim_set_keymap("v", "<C-w>", [[:w !bash<CR>]], { noremap = true, silent = true })
