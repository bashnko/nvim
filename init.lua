vim.g.mapleader = " "

require('colorscheme')
require('custom.lazy')
require('snippets.all')

-- Load colorscheme after lazy initializes
vim.schedule(function()
  vim.cmd("colorscheme vague")
end)
