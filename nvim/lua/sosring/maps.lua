local keymap = vim.keymap

keymap.set('n', 'x', '"_x')

-- Basic keymaps
keymap.set('i', 'jj', '<ESC>')
keymap.set('', 'ss', ':w <CR>')
keymap.set('', 'qq', ':q! <CR>')
keymap.set('', '<SPACE>nh', ':nohlsearch <CR>')

-- Code Runtime
keymap.set('', '<C-p>', ':!python3 % <CR>')
keymap.set('', '<C-n>', ':!node % <CR>')
keymap.set('', '<F5>', ':term python3 % <CR>')

-- Plugins Map
keymap.set('', '<SPACE>f', ':NvimTreeFindFileToggle <CR>')

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delete a word backwards
keymap.set('n', 'dw', 'vb"_d')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Save with root permission (not working for now)
--vim.api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})

-- New tab
keymap.set('n', 'te', ':tabedit')
-- Split window
keymap.set('n', 'sp', ':split<Return><C-w>w')
keymap.set('n', 'vp', ':vsplit<Return><C-w>w')

-- Move window
keymap.set('', 'sk', '<C-w>k') -- up
keymap.set('', 'sj', '<C-w>j') -- down
keymap.set('', 'sh', '<C-w>h') -- left
keymap.set('', 'sl', '<C-w>l') -- Right
