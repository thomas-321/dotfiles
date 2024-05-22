return {
	"anurag3301/nvim-platformio.lua",
	dependencies = {
		{ "akinsho/nvim-toggleterm.lua" },
		{ "nvim-telescope/telescope.nvim" },
		{ "nvim-lua/plenary.nvim" },
	},


	vim.keymap.set("n", "<leader>pm", ':Piomon<CR>'),
	vim.keymap.set("n", "<leader>pr", ':Piomon<CR>'),
}
