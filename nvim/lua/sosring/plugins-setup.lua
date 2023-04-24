local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

local status, packer = pcall(require, "packer")
if not status then 
  return 
end 

return packer.startup(function(use)
 use("wbthomason/packer.nvim")

 -- colorschemes
 use("bluz71/vim-nightfly-guicolors") -- nightfly 
 use ('shaunsingh/nord.nvim') -- nord theme
 use('drewtempelmeyer/palenight.vim') -- palenight
 use('rose-pine/neovim') -- rose-pine
 use("rebelot/kanagawa.nvim") -- kanagawa
 use ( "ellisonleao/gruvbox.nvim" ) -- gruvbox
 use("savq/melange-nvim") -- Melange theme
 use("EdenEast/nightfox.nvim") -- Nigthfox
 use({
  "neanias/everforest-nvim",
  -- Optional; default configuration will be used if setup isn't called.
  config = function()
    require("everforest").setup()
  end,
})

 -- tmux & split window navigation
 use("christoomey/vim-tmux-navigator")
 use("szw/vim-maximizer") -- maximizes and restores current window
 use("vim-scripts/ReplaceWithRegister")
 use('mattn/emmet-vim') -- emmet
 --use('preservim/nerdtree') -- nerdTree
 use('windwp/nvim-autopairs')
 use('nvim-tree/nvim-web-devicons') 
 use('nvim-lualine/lualine.nvim') -- status line
 use("akinsho/toggleterm.nvim") -- toggle terminal
 use( 'mhartington/formatter.nvim' ) -- formatter
 use('neoclide/coc.nvim') -- Coc

 use('nvim-tree/nvim-web-devicons') -- Tabs
 use {
   'nvim-telescope/telescope.nvim', tag = '0.1.0',
   requires = { {'nvim-lua/plenary.nvim'} }
 }

 -- Nvim Tree
 use {
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons', -- optional
  },
  config = function()
    require("nvim-tree").setup {}
  end
 }

 use('nvim-treesitter/nvim-treesitter',{ run = ':TSUpdate'})

 --use { 'glepnir/dashboard-nvim', event = 'VimEnter', config = function() require('dashboard').setup { config } end, require = { {'nvim-tree/nvim-web-devicons'}} }

 use {
   'VonHeikemen/lsp-zero.nvim',
   requires = {
     -- LSP Support
     {'neovim/nvim-lspconfig'},
     {'williamboman/mason.nvim'},
     {'williamboman/mason-lspconfig.nvim'},

     -- Autocompletion
     {'hrsh7th/nvim-cmp'},
     {'hrsh7th/cmp-buffer'},
     {'hrsh7th/cmp-path'},
     {'saadparwaiz1/cmp_luasnip'},
     {'hrsh7th/cmp-nvim-lsp'},
     {'hrsh7th/cmp-nvim-lua'},

     -- Snippets
     {'L3MON4D3/LuaSnip'},
     {'rafamadriz/friendly-snippets'},
   }
 }

  if packer_bootstrap then
    require('packer').sync()
  end
end)
