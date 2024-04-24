return {
	"epwalsh/obsidian.nvim",
	version = "*", -- recommended, use latest release instead of latest commit
	lazy = true,
	-- ft = "markdown",
	-- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
	event = {
		-- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
		"BufReadPre "
			.. vim.fn.expand("~")
			.. "/repos/03-personal/second-brain/**.md",
		"BufNewFile " .. vim.fn.expand("~") .. "/repos/03-personal/second-brain/**.md",
		-- "BufNewFile path/to/my-vault/**.md",
	},
	dependencies = {
		-- Required.
		"nvim-lua/plenary.nvim",

		-- see below for full list of optional dependencies 👇
	},
	opts = {
		workspaces = {
			{
				name = "personal",
				path = "~/repos/03-personal/second-brain",
			},
			--{
			-- name = "work",
			-- path = "~/vaults/work",
			--,
		},
		mappings = {
			-- Overrides the 'gf' mapping to work on markdown/wiki links within your vault.
			["gf"] = {
				action = function()
					return require("obsidian").util.gf_passthrough()
				end,
				opts = { noremap = false, expr = true, buffer = true },
			},
			-- Toggle check-boxes.
			["<leader>ch"] = {
				action = function()
					return require("obsidian").util.toggle_checkbox()
				end,
				opts = { buffer = true },
			},
			["<leader>oo"] = {
				action = function()
					vim.cmd(":ObsidianOpen")
				end,
				opts = { noremap = true, silent = true },
			},
		},
	},
}
