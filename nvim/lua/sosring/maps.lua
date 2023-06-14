local keymap = vim.keymap

--keymap.set('n', 'x', '"_x')

-- Basic keymaps
keymap.set('i', 'jj', '<ESC>')
keymap.set('', 'ss', ':w <CR>')
keymap.set('', 'qq', ':q! <CR>')
keymap.set('', '<SPACE>nh', ':nohlsearch <CR>')

-- keymap.set('', '<C-f>', ':s/') -- find and replace
keymap.set('', 'rr', ':%s/') -- kind and replace all

-- Tabs
keymap.set('n', 'tt', ':tabnew <CR>')
keymap.set('n', 'tq', ':tabclose <CR>')
keymap.set('n', 'tf', ':tabfirst <CR>')
keymap.set('n', 'tl', ':tablast <CR>')

-- Tab move
keymap.set('n', '<A-1>', ':tabnext 1 <CR>')
keymap.set('n', '<A-2>', ':tabnext 2 <CR>')
keymap.set('n', '<A-3>', ':tabnext 3 <CR>')
keymap.set('n', '<A-4>', ':tabnext 4 <CR>')
keymap.set('n', '<A-5>', ':tabnext 5 <CR>')
keymap.set('n', '<A-6>', ':tabnext 6 <CR>')
keymap.set('n', '<A-7>', ':tabnext 7 <CR>')
keymap.set('n', '<A-8>', ':tabnext 8 <CR>')
keymap.set('n', '<A-9>', ':tabnext 9 <CR>')
keymap.set('n', '<A-0>', ':tabnext 10 <CR>')

-- Language specific code runtime
vim.cmd("autocmd FileType javascript lua vim.keymap.set('n', '<C-p>', ':!node %<CR>')")
vim.cmd("autocmd FileType php lua vim.keymap.set('n', '<C-p>', ':!php %<CR>')")
vim.cmd("autocmd FileType python lua vim.keymap.set('n', '<C-p>', ':!python %<CR>')")

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
