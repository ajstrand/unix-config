local use = require('packer').use
require('packer').startup(function()
  use 'wbthomason/packer.nvim' -- Package manager
  use 'tpope/vim-fugitive' -- Git commands in nvim
  use 'tpope/vim-rhubarb' -- Fugitive-companion to interact with github
  use 'tpope/vim-commentary' -- "gc" to comment visual regions/lines
  use 'ludovicchabant/vim-gutentags' -- Automatic tags management
  -- UI to select things (files, grep results, open buffers...)
  use { 'nvim-telescope/telescope.nvim', requires = { 'nvim-lua/plenary.nvim' } }
  use 'joshdick/onedark.vim' -- Theme inspired by Atom
  use 'itchyny/lightline.vim' -- Fancier statusline
  -- Add indentation guides even on blank lines
  use 'lukas-reineke/indent-blankline.nvim'
  -- Add git related info in the signs columns and popups
  use { 'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' } }
  -- Highlight, edit, and navigate code using a fast incremental parsing library
  use 'nvim-treesitter/nvim-treesitter'
  -- Additional textobjects for treesitter
  use 'nvim-treesitter/nvim-treesitter-textobjects'
  use 'neovim/nvim-lspconfig' -- Collection of configurations for built-in LSP client
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp'
  use 'saadparwaiz1/cmp_luasnip'
  use 'L3MON4D3/LuaSnip' -- Snippets plugin
  use 'kosayoda/nvim-lightbulb'
  use {
  "folke/which-key.nvim",
  config = function()
    require ("whichkey")
    require("wk_mappings")
  end
}
use({
  "rinx/nvim-minimap",
  cmd = {
    "Minimap",
    "MinimapClose",
    "MinimapToggle",
    "MinimapRefresh",
    "MinimapUpdateHighlight",
  }
})
use 'folke/lsp-colors.nvim'
use {
  "folke/trouble.nvim",
  requires = "kyazdani42/nvim-web-devicons",
  config = function()
    require("trouble").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  end
}
use {
  "folke/twilight.nvim",
  config = function()
    require("twilight").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  end
}
use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons'
  }
use { "rcarriga/vim-ultest", requires = {"vim-test/vim-test"}, run = ":UpdateRemotePlugins" }
use 'folke/tokyonight.nvim'
use 'mhartington/oceanic-next'
use 'mfussenegger/nvim-jdtls'
use "Pocco81/AutoSave.nvim"
use "Pocco81/HighStr.nvim"
use 'mtth/scratch.vim'
use "numtostr/FTerm.nvim"
use 'williamboman/nvim-lsp-installer'
use({
    'rose-pine/neovim',
    as = 'rose-pine',
    config = function()
        -- Options (see available options below)
        vim.g.rose_pine_variant = 'base'

        -- Load colorscheme after options
        vim.cmd('colorscheme rose-pine')
    end
})
use({
  'weilbith/nvim-code-action-menu',
  cmd = {'CodeActionMenu'}
})
use {
  "folke/zen-mode.nvim",
  config = function()
    require("zen-mode").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  end
}
use({
    "vuki656/package-info.nvim",
    requires = "MunifTanjim/nui.nvim",
})
use 'folke/todo-comments.nvim'
  use 'onsails/lspkind-nvim'
   -- A plugin for neovim that automatically creates missing directories
  -- on saving a file.
  use {
    'jghauser/mkdir.nvim',
    cmd = 'new',
    config = function()
      require('mkdir')
    end
  }
   -- LSP signature.
  use { "ray-x/lsp_signature.nvim" }
    use { 'simrat39/symbols-outline.nvim' }
   use { 'gillescastel/latex-snippets' }
     use { 'lervag/vimtex' }
  use { 'KeitaNakamura/tex-conceal.vim' }
    use { 'folke/lua-dev.nvim' }
end)
