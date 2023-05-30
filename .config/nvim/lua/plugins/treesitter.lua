return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		event = { "BufReadPost", "BufNewFile" },
		dependencies = {
			"nvim-treesitter/nvim-treesitter-textobjects",
		},
		keys = {
			{ "<c-space>", desc = "Increment selection" },
			{ "<bs>", desc = "Decrement selection", mode = "x" },
		},
		opts = {
			indent = { enable = true },
			ensure_installed = {
				"bash",
				"c",
				"css",
				"dockerfile",
				"go",
				"html",
				"javascript",
				"jsdoc",
				"json",
				"lua",
				"luadoc",
				"luap",
				"make",
				"markdown",
				"markdown_inline",
				"python",
				"query",
				"regex",
				"rust",
				"svelte",
				"terraform",
				"toml",
				"tsx",
				"typescript",
				"vim",
				"vimdoc",
				"yaml",
			},
			sync_install = false,
			auto_install = true,
			highlight = {
				enable = true,
			},
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<C-space>",
					node_incremental = "<C-space>",
					scope_incremental = false,
					node_decremental = "<bs>",
				},
			},
		},
	},
}