return {
	-- 	"kdheepak/lazygit.nvim",
	-- 	dependencies = { "nvim-lua/plenary.nvim" },
	-- 	event = { "VeryLazy" },
	-- 	cond = function()
	-- 		local output = vim.fn.systemlist("git rev-parse --is-inside-work-tree 2>/dev/null")
	-- 		return #output ~= 0
	-- 	end,
	-- 	config = function()
	-- 		vim.cmd =
	-- 			{
	-- 				"LazyGit",
	-- 				"LazyGitConfig",
	-- 				"LazyGitCurrentFile",
	-- 				"LazyGitFilter",
	-- 				"LazyGitFilterCurrentFile",
	-- 			}, vim.keymap.set("n", "<leader>lg", "<cmd>LazyGit<cr>", { desc = "LazyGit" })
	-- 	end,
}
