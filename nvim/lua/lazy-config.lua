require("lazy").setup({
	"nvim-lua/plenary.nvim",
	"nvim-lua/popup.nvim",
	"nvim-tree/nvim-web-devicons",
	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		lazy = false,
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
	},
	"jiangmiao/auto-pairs",
	"vim-airline/vim-airline",
	"vim-airline/vim-airline-themes",

	-- colorscheme
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},

	-- nvim cmp
	"neovim/nvim-lspconfig",
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",
	"hrsh7th/cmp-cmdline",
	"hrsh7th/nvim-cmp",
	"mattn/emmet-vim",

	-- nvim cmp - vsnip engine
	"hrsh7th/cmp-vsnip",
	"hrsh7th/vim-vsnip",

	-- lsp, dap, linter, formatter  manager
	"williamboman/mason.nvim",

	-- snippet
	"rafamadriz/friendly-snippets",

	-- formatter
	{
		"nvimtools/none-ls.nvim",
		dependencies = {
			"nvimtools/none-ls-extras.nvim",
		},
	},

	-- finder
	"nvim-telescope/telescope.nvim",

	-- multiple cursor
	"mg979/vim-visual-multi",

	-- treesitter
	{ "nvim-treesitter/nvim-treesitter" },

	-- vim comment
	"tpope/vim-commentary", -- gcc / gc

	-- git sign
	"lewis6991/gitsigns.nvim",

	-- indent line
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		opts = {},
	},

	-- better diagnostic display
	{
		"folke/trouble.nvim",
		opts = {}, -- for default options, refer to the configuration section for custom setup.
		cmd = "Trouble",
		keys = {
			{
				"<leader>xx",
				"<cmd>Trouble diagnostics toggle<cr>",
				desc = "Diagnostics (Trouble)",
			},
			{
				"<leader>xX",
				"<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
				desc = "Buffer Diagnostics (Trouble)",
			},
			{
				"<leader>cs",
				"<cmd>Trouble symbols toggle focus=false<cr>",
				desc = "Symbols (Trouble)",
			},
			{
				"<leader>cl",
				"<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
				desc = "LSP Definitions / references / ... (Trouble)",
			},
			{
				"<leader>xL",
				"<cmd>Trouble loclist toggle<cr>",
				desc = "Location List (Trouble)",
			},
			{
				"<leader>xQ",
				"<cmd>Trouble qflist toggle<cr>",
				desc = "Quickfix List (Trouble)",
			},
		},
	},

	-- debugger,,
	"mfussenegger/nvim-dap",
	{
		"leoluz/nvim-dap-go",
		dependencies = { "mfussenegger/nvim-dap" },
	},
	{
		"mxsdev/nvim-dap-vscode-js",
		dependencies = {
			"microsoft/vscode-js-debug",
			version = "1.x",
			build = "npm i && npm run compile vsDebugServerBundle && mv dist out",
		},
	},
	{
		"folke/neodev.nvim",
		opts = {},
	},
	{
		"rcarriga/nvim-dap-ui",
		dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
	},
	"theHamsta/nvim-dap-virtual-text",

	-- autotag
	{
		"windwp/nvim-ts-autotag",
	},

	-- discord presence
	{
		"vyfor/cord.nvim",
		build = "./build",
		event = "VeryLazy",
	},

	-- dynamic shiftwidth
	{ "tpope/vim-sleuth" },

	"mfussenegger/nvim-jdtls",
})
