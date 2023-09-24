-- function takes user opts as value
-- @param userOpts (table): a table of options
--  opts.backspace (string),
--  opts.backup (boolean),
--  opts.clipboard (string)
--  opts.completeopt (string)
--  opts.confirm (boolean)
--  opts.cursorcolumn (boolean)
--  opts.cursorline (boolean)
--  opts.encoding (string)
--  opts.expandtab (boolean)
--  opts.fileencoding (string)
--  opts.foldmethod (string)
--  opts.guifont (string)
--  opts.ignorecase (boolean)
--  opts.laststatus (number)
--  opts.lazyredraw (boolean)
--  opts.list (boolean)
--  opts.listchars (table)
--  opts.mouse (string)
--  opts.number (boolean)
--  opts.redrawtime (number)
--  opts.relativenumber (boolean)
--  opts.ruler (boolean)
--  opts.scrolloff (number)
--  opts.shell (string)
--  opts.shiftround (boolean)
--  opts.shiftwidth (number)
--  opts.showcmd (boolean)
--  opts.showmatch (boolean)
--  opts.showmode (boolean)
--  opts.sidescrolloff (number)
--  opts.signcolumn (string)
--  opts.showtabline (number)
--  opts.smartcase (boolean)
--  opts.smartindent (boolean)
--  opts.smarttab (boolean)
--  opts.swapfile (boolean)
--  opts.syntax (string)
--  opts.tabstop (number)
--  opts.termguicolors (boolean)
--  opts.title (boolean)
--  opts.titlestring (string)
--  opts.updatetime (number)
--  opts.undodir (string)
--  opts.undofile (boolean)
--  opts.wrap (boolean)

local setup = function( --[[optional]] userOpts)
  local utils = require("nvim-useful-defaults.utils")
  local setOptions = utils.setOptions

  local options = {
    backspace = "start,eol,indent",
    backup = false,
    clipboard = "unnamedplus", -- copy to system clipboard
    completeopt = "menuone,noselect",
    confirm = true,
    cursorcolumn = true,
    cursorline = true,
    encoding = "UTF-8",
    expandtab = true, -- use spaces instead of tabs
    fileencoding = "utf-8",
    foldmethod = "expr",
    guifont = "CaskaydiaCove Nerd Font:h15", -- availbale fonts: victor mono, cascadia code, fira code, hack nerd font, Iosevka, Cascadia Code Nerd Font
    ignorecase = true,
    laststatus = 3,                          -- sets status line to take up the whole width
    lazyredraw = true,
    list = true,
    listchars = {
      eol = "↲",
      extends = ">",
      trail = "•",
      precedes = "<",
    },
    mouse = "c",           -- activate mouse clicksS
    number = true,         -- show line number
    redrawtime = 0,
    relativenumber = true, -- set line number to relative number
    ruler = true,
    scrolloff = 8,         -- start scrolling before 3 lines
    shell = "zsh",
    shiftround = true,
    shiftwidth = 2,   -- shift 4 spaces when tab
    showcmd = true,
    showmatch = true, -- show matching parenthesis
    showmode = false,
    sidescrolloff = 8,
    signcolumn = "yes",
    showtabline = 2,
    smartcase = true,
    smartindent = true, -- autoindent new lines
    smarttab = true,
    swapfile = false,   -- disable swap files
    syntax = "enable",  -- enable syntax highlight
    tabstop = 2,        -- 1 tab == 4 spaces
    termguicolors = true,
    title = true,
    titlestring = "nvim - %t",
    updatetime = 100,
    undodir = "/tmp/nvim/undo/",
    undofile = true,
    wrap = false,
  }

  for option, value in pairs(userOpts) do options[option] = value end
  setOptions(options)
end

return setup
