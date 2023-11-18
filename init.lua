-- socks' init.lua file

	-- Plug manager

	-- Encoding Mostly to fix listchars error 474 (E474)
-- Set Neovim encoding
vim.o.encoding = 'utf-8'
-- Set file encoding in buffer
vim.bo.fileencoding = 'utf-8'
-- Set bomb
--vim.cmd('scriptencoding utf-8')

	-- Line behaviour
-- Set lines to wrap at EOL
vim.wo.wrap = false
-- Represent whitespace
--vim.o.listchars = 'eol:$,tab:» ,space:·,trail:~,extends:›,precedes:‹'
vim.o.listchars = 'tab:» ,trail:~,extends:›,precedes:‹'
-- Show listchars
vim.o.list = true
-- Show current line number
vim.wo.number = true
-- Show all other line numbers in relative distance
vim.wo.relativenumber = true

	-- For correctness of colorschemes
-- Enable 24-bit colors
vim.o.termguicolors = true
-- Colorscheme
--vim.cmd('colorscheme blue')
