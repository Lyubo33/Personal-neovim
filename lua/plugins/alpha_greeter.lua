return {
	"goolord/alpha-nvim",
	config = function()
		local dashboard = require("alpha.themes.dashboard")
		require("alpha").setup(dashboard.config)
		dashboard.section.header.val = {
						-- "                                                     ",
						-- "                                                     ",
									"███▄    █ ▓█████  ▒█████   ██▒   █▓ ██▓ ███▄ ▄███▓",
								"	 ██ ▀█   █ ▓█   ▀ ▒██▒  ██▒▓██░   █▒▓██▒▓██▒▀█▀ ██▒",
								"	▓██  ▀█ ██▒▒███   ▒██░  ██▒ ▓██  █▒░▒██▒▓██    ▓██░",
								"	▓██▒  ▐▌██▒▒▓█  ▄ ▒██   ██░  ▒██ █░░░██░▒██    ▒██ ",
								"	▒██░   ▓██░░▒████▒░ ████▓▒░   ▒▀█░  ░██░▒██▒   ░██▒",
								"	░ ▒░   ▒ ▒ ░░ ▒░ ░░ ▒░▒░▒░      ░ ▐░  ░▓  ░ ▒░   ░  ░",
								"	░ ░░   ░ ▒░ ░ ░  ░  ░ ▒ ▒░    ░ ░░   ▒ ░░  ░      ░",
								"		░   ░ ░    ░   ░ ░ ░ ▒       ░░   ▒ ░░      ░   ",
								"			       ░    ░  ░    ░ ░        ░   ░         ░  ", 
							"				                              ░                  ",
							-- "                                                     ",
							-- "                                                     ",
							-- "                                                     ",
}
		dashboard.section.buttons.val = {
    dashboard.button( "e", "  > New file" , ":ene <BAR> startinsert <CR>"),
    dashboard.button( "f", "󰈞  > Find file", ":cd $HOME/Workspace | Telescope find_files<CR>"),
    dashboard.button( "r", "  > Recent"   , ":Telescope oldfiles<CR>"),
    dashboard.button( "s", "  > Settings" , ":e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>"),
    dashboard.button( "q", "󰈆  > Quit NVIM", ":qa<CR>"),
		dashboard.button( "l", "󰒲  > Lazy", ":Lazy<CR>"),
	  dashboard.button( "m", "󰫺  > Mason", ":Mason<CR>"),
}
	end,
}
