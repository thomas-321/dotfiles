local M = { "smartinellimarco/nvcheatsheet.nvim" }

M.opts = {
	-- Default header
	header = {
		"                                      ",
		"                                      ",
		"                                      ",
		"█▀▀ █░█ █▀▀ ▄▀█ ▀█▀ █▀ █░█ █▀▀ █▀▀ ▀█▀",
		"█▄▄ █▀█ ██▄ █▀█ ░█░ ▄█ █▀█ ██▄ ██▄ ░█░",
		"                                      ",
		"                                      ",
		"                                      ",
	},
	-- Example keymaps (this doesn't create any)
	keymaps = {
		["lsp"] = {
			{ "Show definition, refrences)", "gR" },
			{ "Go to Declaration", "gD" },
			{ "Show definitions", "gd" },
			{ "Show LSP implementations", "gi" },
			{ "Show code actions", "<leader>ca" },
			{ "Smart rename", "<leader>rn" },
			{ "Show buffer diagnostics", "D" },
			{ "Show line diagnostics", "d" },
			{ "Show documentation for what is under cursor", "K" },
		},
		["Cmp"] = {
			{ "Select entry", "⌃f" },
			{ "Next result - Jump to next snippet placeholder", "⌃n" },
			{ "Previous result - Jump to previous snippet placeholder", "⌃p" },
			{ "Scroll up in preview", "⌃u" },
			{ "Scroll down in preview", "⌃d" },
			{ "Abort autocompletion", "⌃e" },
		},
		["Comment"] = {
			{ "Comment line toggle", "gcc" },
			{ "Comment block toggle", "gbc" },
			{ "Comment visual selection", "gc" },
			-- { 'Comment visual selection using block delimiters', 'gb' },
			-- { 'Comment out text object line wise', 'gc<motion>' },
			-- { 'Comment out text object block wise', 'gb<motion>' },
			-- { 'Add comment on the line above', 'gcO' },
			-- { 'Add comment on the line below', 'gco' },
			-- { 'Add comment at the end of line', 'gcA' },
		},
		["useful"] = {
			{ "Show all keymaps", "<F1>" },
			{ "Format file or range", "<leader>mp" },
			{ "Lint current file", "<leader>l" },
		},
		["Telescope"] = {
			{ "Fuzzy find files in cwd", "<leader>ff" },
			{ "Fuzzy find recent files", "<leader>fr" },
			{ "Fuzzy find git files", "<leader>fg" },
			{ "Find string in cwd", "<leader>fs" },
			{ "Find string under cursor in cwd", "<leader>fc" },
		},
		["nvim"] = {
			{ "Go back to last buffer", "<CR-o" },
		},
	},
}

function M.config(_, opts)
	local nvcheatsheet = require("nvcheatsheet")

	nvcheatsheet.setup(opts)

	-- You can also close it with <Esc>
	vim.keymap.set("n", "<F1>", nvcheatsheet.toggle)
end

return M

-- vim: ts=2 sts=2 sw=2 et
