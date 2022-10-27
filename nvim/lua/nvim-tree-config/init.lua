vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
    open_on_tab = false,
    sort_by = "case_sensitive",
    view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
    },
    renderer = {
    group_empty = true,
    },
    filters = {
    dotfiles = true,
    },
})
