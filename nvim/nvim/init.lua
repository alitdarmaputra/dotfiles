-- Personal Neovim Config
-- Author: Alit Darma Putra
-- Neovim Version: v0.9.5

-- Bootstrap Lazy Vim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- Require Config
require("setting")
require("lazy-config")
require("web-devicons-config")
require("nvim-tree-config")
require("airline-config")
require("color-scheme-config")
require("cmp-config")
require("mason-config")
require("lsp-config")
require("null-ls-config")
require("mapping")
require("autotag-config")
require("treesitter-config")
require("git-sign-config")
require("indent-line-config")
require("diagnostic-config")
require("debugger-config")
require("neodev-config")
require("presence")
