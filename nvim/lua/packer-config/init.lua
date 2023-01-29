return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")
	use("nvim-lua/popup.nvim")
	use("nvim-lua/plenary.nvim")
	use("kyazdani42/nvim-web-devicons")
	use("kyazdani42/nvim-tree.lua")
	use("jiangmiao/auto-pairs") -- auto close tag
	use("vim-airline/vim-airline") -- vim-airline
	use("vim-airline/vim-airline-themes") -- airline-theme
	use("mattn/emmet-vim") -- emmet vim
	use("windwp/nvim-ts-autotag") -- auto claose tag
	-- Colorschemes
	use("folke/tokyonight.nvim")
	use({ "catppuccin/nvim", as = "catppuccin" })

	-- cmp plugins
	use("hrsh7th/nvim-cmp") -- The completion plugin
	use("hrsh7th/cmp-buffer") -- buffer completions
	use("hrsh7th/cmp-path") -- path completions
	use("hrsh7th/cmp-cmdline") -- cmdline completions
	use("saadparwaiz1/cmp_luasnip") -- snippet completions
	use("hrsh7th/cmp-nvim-lsp")
	use("onsails/lspkind.nvim") -- vscode like pictogram

	-- snippets
	use("rafamadriz/friendly-snippets") -- a bunch of snippets to use
	use("L3MON4D3/LuaSnip") -- snippet engine

	-- lsp
	use("neovim/nvim-lspconfig") -- Configurations for Nvim LSP
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")
	use("jose-elias-alvarez/null-ls.nvim")
	use("mfussenegger/nvim-dap")

	-- finder
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.0",
	})

	-- multiple cursor
	use("mg979/vim-visual-multi")

	-- treesitter
	use("nvim-treesitter/nvim-treesitter")

	-- vim comment
	use("tpope/vim-commentary") -- gcc / gc
	use("lewis6991/gitsigns.nvim") -- git sign

	-- discord presence
	-- use("andweeb/presence.nvim")
end)
