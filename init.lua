local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

require("vim-opts")
require("lazy").setup("plugins")
vim.api.nvim_create_autocmd("BufEnter", {
	callback = function()
		-- Get the full path of the current buffer
		local buf_name = vim.fn.expand("%:p:h")

		-- Ensure that the buffer is valid and corresponds to an actual file path
		if buf_name ~= "" and vim.fn.isdirectory(buf_name) == 1 then
			-- Change the directory to the file's directory
			vim.cmd("cd " .. buf_name)
		end
	end,
})

vim.keymap.set("n", "<C-h>", function()
	for _, buffer in ipairs(vim.api.nvim_list_bufs()) do
		vim.api.nvim_buf_delete(buffer, { force = true })
	end
	require("alpha").start()
end, { desc = "Go back to greeter" })
