return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>", { noremap = true, silent = true })
	end,
	buffers = {
		follow_current_file = {
			enabled = true,       -- This will find and focus the file in the active buffer every time
			--              -- the current file is changed while the tree is open.
			leave_dirs_open = false, -- `false` closes auto expanded dirs, such as with `:Neotree reveal`
		},
	},
}
