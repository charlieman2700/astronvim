-- Configure plugins
return {
  { 'dcampos/cmp-emmet-vim',
    config = function()
      require 'cmp'.setup {
        sources = {
          { name = 'emmet_vim' }
        }
      }
    end
  },
  { "catppuccin/nvim", as = "catppuccin" },
  { 'mattn/emmet-vim' },

  { 'morhetz/gruvbox' },

  { 'folke/todo-comments.nvim' },

  { 'airblade/vim-rooter' },

  { 'lervag/vimtex' },

  { 'shaunsingh/nord.nvim' },

  { 'folke/tokyonight.nvim' },

  {
    "tzachar/cmp-tabnine",
    run = "./install.sh",
    requires = "hrsh7th/nvim-cmp",
    event = "InsertEnter",
  },

  {
    'phaazon/hop.nvim',
    branch = 'v2', -- optional but strongly recommended
    config = function()
      require("hop").setup()
      vim.api.nvim_set_keymap("n", "s", ":HopChar2<cr>", { silent = true })
      vim.api.nvim_set_keymap("n", "S", ":HopWord<cr>", { silent = true })
    end
  },

  { "tpope/vim-surround" },
  { 'Pocco81/true-zen.nvim' },
}
