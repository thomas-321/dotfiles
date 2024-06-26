-- return {
-- 	{
-- 		"bluz71/vim-nightfly-guicolors",
-- 		priority = 1000, -- make sure to load this before all the other start plugins
-- 		config = function()
-- 			-- load the colorscheme here
-- 			vim.cmd([[colorscheme nightfly]])
-- 		end,
-- 	},
-- }

return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		local catppuccin = require("catppuccin")
		catppuccin.setup({
			flavour = "mocha",
		})
		vim.cmd.colorscheme("catppuccin")
	end,
}

-- Another nice theme:
-- return {
--   -- add dracula
--   { "Mofiqul/dracula.nvim" },
--
--   -- Configure LazyVim to load dracula
--   {
--     "LazyVim/LazyVim",
--     opts = {
--       colorscheme = "dracula",
--     },
--   },
-- }
