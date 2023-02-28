-- Load Plugins
require('plugins')

-- NvimTree setup
require('nvimtree')

-- Load keymaps
require('keymaps')

-- Coc config
require('coc')

-- Lualine
require('line')

local set = vim.opt

-- Turn off bells

set.belloff = 'all'

-- Enable type file detection. Vim will be able to try to detect the type of file in use.
set.filetype = 'on'

-- Enable plugins and load plugin for the detected file type.
set.filetype.plugin = 'on'

-- Load an indent file for the detected file type.
set.filetype.indent = 'on'

-- Add numbers to each line on the left-hand side.
set.number = true

-- Highlight cursor line underneath the cursor horizontally.
set.cursorline = true

-- set.shift width to 4 spaces.
set.shiftwidth = 4

-- set.tab width to 4 columns.
set.tabstop = 4

-- Use space characters instead of tabs.
set.expandtab = true

-- Do not let cursor scroll below or above N number of lines when scrolling.
set.scrolloff = 10

-- While searching though a file incrementally highlight matching characters as you type.
set.incsearch = true

-- Ignore capital letters during search.
set.ignorecase = true

-- Override the ignorecase option if searching for capital letters.
-- This will allow you to search specifically for capital letters.
set.smartcase = true

-- Show partial command you type in the last line of the screen.
set.showcmd = true

-- Show the mode you are on the last line.
set.showmode = true

-- Show matching words during a search.
set.showmatch = true

-- Use highlighting when doing a search.
set.hlsearch = true

-- set.the commands to save in history default number is 20.
set.history = 1000

-- Enable auto completion menu after pressing TAB.
set.wildmenu = true

-- Make wildmenu behave like similar to Bash completion.
set.wildmode = 'list:longest'

-- There are certain files that we would never want to edit with Vim.
-- Wildmenu will ignore files with these extensions.
set.wildignore='*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx'

set.termguicolors = true

-- Source vimscript
vim.cmd 'source ~/.config/nvim/vim/vimscript.vim'

-- Turn on folding on markers on markers
set.foldmethod = 'marker'
