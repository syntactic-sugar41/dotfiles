return require('packer').startup(function()
  -- Packer can manage itself as an optional plugin
  use {'wbthomason/packer.nvim', opt = true}


  -- LSP and completion
  use { 'neovim/nvim-lspconfig' }
  use { 'glepnir/lspsaga.nvim' }
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use { 'fenetikm/falcon' }
  use { 'folke/tokyonight.nvim' }
  use { 'nvim-lua/completion-nvim' }
  use {'kyazdani42/nvim-web-devicons' } 
  use { 'kyazdani42/nvim-tree.lua' }
  use {
  'hoob3rt/lualine.nvim',
  requires = {'kyazdani42/nvim-web-devicons', opt = true}
 }
  use {
  'nvim-telescope/telescope.nvim',
  requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }
  use 'sindrets/diffview.nvim'
  use { 'glepnir/dashboard-nvim' }
  use { 'airblade/vim-rooter' }
  use "Pocco81/TrueZen.nvim"
  use 'airblade/vim-gitgutter'
  use 'christoomey/vim-tmux-navigator'
  use 'APZelos/blamer.nvim'
  use 'b3nj5m1n/kommentary'
  use 'psliwka/vim-smoothie'
  use {
  'abecodes/tabout.nvim',
  config = function()
    require('tabout').setup {
    tabkey = '<Tab>', -- key to trigger tabout
    backwards_tabkey = '<S-Tab>', -- key to trigger backwards tabout
    act_as_tab = true, -- shift content if tab out is not possible
    act_as_shift_tab = false, -- reverse shift content if tab out is not possible (if your keyboard/terminal supports <S-Tab>)
    enable_backwards = true, -- well ...
    completion = true, -- if the tabkey is used in a completion pum
    tabouts = {
      {open = "'", close = "'"},
      {open = '"', close = '"'},
      {open = '`', close = '`'},
      {open = '(', close = ')'},
      {open = '[', close = ']'},
      {open = '{', close = '}'}
    },
    ignore_beginning = true, --[[ if the cursor is at the beginning of a filled element it will rather tab out than shift the content ]]
    exclude = {} -- tabout will ignore these filetypes
}
  end,
	wants = {'nvim-treesitter'}, -- or require if not used so far
	after = {'completion-nvim'} -- if a completion plugin is using tabs load it before
}



  end)
