local function setup()
	local utils = require("defaults.utils")
	local opt, setOptions = utils.opt, utils.setOptions

	local options = {
		backspace = "start,eol,indent",
		backup = false,
		clipboard = "unnamedplus", -- copy to system clipboard
		completeopt = "menuone,noselect",
		confirm = true,
		cursorcolumn = true,
		cursorline = true,
		-- dir="~/tmp/nvim/swap/"
		encoding = "UTF-8",
		expandtab = true, -- use spaces instead of tabs
		fileencoding = "utf-8",
		foldexpr = "nvim_treesitter#foldexpr()",
		foldmethod = "expr",
		-- foldmethod = "marker"       -- enable folding (default 'foldmarker') options: marker, indent
		guifont = "CaskaydiaCove Nerd Font:h15", -- availbale fonts: victor mono, cascadia code, fira code, hack nerd font, Iosevka, Cascadia Code Nerd Font
		ignorecase = true,
		laststatus = 3,            -- sets status line to take up the whole width
		lazyredraw = true,
		list = true,
		listchars = {
			eol = "↲",
			extends = ">",
			trail = "•",
			precedes = "<",
		},
		mouse = "c", -- activate mouse clicksS
		number = true, -- show line number
		redrawtime = 0,
		relativenumber = true, -- set line number to relative number
		ruler = true,
		scrolloff = 8, -- start scrolling before 3 lines
		shell = "zsh",
		shiftround = true,
		shiftwidth = 2, -- shift 4 spaces when tab
		showcmd = true,
		showmatch = true, -- show matching parenthesis
		showmode = false,
		sidescrolloff = 8,
		signcolumn = "yes",
		showtabline = 2,
		smartcase = true,
		smartindent = true, -- autoindent new lines
		smarttab = true,
		swapfile = false, -- disable swap files
		syntax = "enable", -- enable syntax highlight
		tabstop = 2, -- 1 tab == 4 spaces
		termguicolors = true,
		title = true,
		titlestring = "nvim - %t",
		updatetime = 100,
		undodir = "/tmp/nvim/undo/",
		undofile = true,
		wrap = false,
	}

	opt.display:append("lastline")
	opt.path:append({ "**" }) -- Finding files - search down into subfolders
	opt.wildignore:append({ "*/node_modules/*", "*/.git/*" })
	opt.iskeyword:append("-")

	setOptions(options)
end

return setup
