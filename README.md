# nvim-useful-defaults

## Install the plugin

- lazy.nvim

```lua
{
    'sajjathossain/nvim-useful-defaults',
    config = true --- if you don't want to change any value
}
```

or

```lua
{
    'sajjathossain/nvim-useful-defaults',
    config = function()
    local status_ok, nuds = pcall(require, 'nvim-useful-defaults')
    if not status_ok then return end
    nuds.setup({
       ...opts
    })
    end
}
```

## the default settings

I found these options useful. So moved them into a package, so that everyone else can use them.

```lua
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
laststatus = 3,                        -- sets status line to take up the whole width
lazyredraw = true,
list = true,
listchars = {
    eol = "↲",
    extends = ">",
    trail = "•",
    precedes = "<",
},
mouse = "c",         -- activate mouse clicksS
number = true,       -- show line number
redrawtime = 0,
relativenumber = true, -- set line number to relative number
ruler = true,
scrolloff = 8,       -- start scrolling before 3 lines
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
tabstop = 2,      -- 1 tab == 4 spaces
termguicolors = true,
title = true,
titlestring = "nvim - %t",
updatetime = 100,
undodir = "/tmp/nvim/undo/",
undofile = true,
wrap = false,
```
