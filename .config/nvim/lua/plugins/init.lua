return {
	-- UI
	"nvim-lualine/lualine.nvim",
	"nvim-tree/nvim-tree.lua",
	"nvim-tree/nvim-web-devicons",

	-- Fuzzy Finder
	{
		"nvim-telescope/telescope.nvim",
		dependencies = { "nvim-lua/plenary.nvim" }
	},

	-- LSP Support
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
		},
	},

	-- Autocompletion
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			"L3MON4D3/LuaSnip",
		},
	},

	-- Treesitter (syntax highlighting)
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
	},

	-- auto bracket closing
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = function ()
			require("nvim-autopairs").setup({})
		end,
	}
}
