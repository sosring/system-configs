vim.g.mapleader = " "

local function map(m, k, v)
  vim.api.nvim_set_keymap(m, k, v, {silent = true})
end

map('i', 'jj', '<esc>')
map('n', 'ss', ':w<CR>')
map('n', 'SS', ':wq<CR>')
map('n', 'qq', ':q!<CR>')
map('n', '<C-p>', ':!node %<CR>')

map('n', 'sp', ':split<CR>')
map('n', 'vp', ':vertical split<CR>')

map('n', 'TT', ':terminal<CR>')
map('n', '<leader>nh', ':nohl<Cr>')

map('n', '<leader>+', '<C-a>')
map('n', '<leader>-', '<C-x>')

-- plugin keymaps

-- vim maximizer
map('n', '<leader>m', ':MaximizerToggle<CR>') 

-- NerdTree
map('n', '<leader>f', ':NERDTreeToggle<CR>') 

-- toggle Term
map('n', '<leader>t', ':ToggleTerm<CR>') 

map('n', '<leader>s', ':Telescope<CR>') 
