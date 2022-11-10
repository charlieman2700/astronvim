-- Configure plugins
return {
  {
    "folke/twilight.nvim",
    config = function()
      require("twilight").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  },
  { 'airblade/vim-rooter' },
  -- {'sheerun/vim-polyglot'},
  {
    "ahmedkhalf/project.nvim",
    config = function() require 'user.plugins.projects' end
  },
  -- { 'cljoly/telescope-repo.nvim',
  --   config = function()
  --     require 'telescope'.load_extension('repo')
  --   end
  -- },
  -- { 'nvim-telescope/telescope-project.nvim',
  --   config = function()
  --     require 'telescope'.load_extension('project')
  --   end },
  -- ["Darazaki/indent-o-matic"] = { disable = true },
  { 'lervag/vimtex' },
  {'shaunsingh/nord.nvim'},
  { 'rhysd/vim-grammarous' },
  { 'folke/tokyonight.nvim' },
  {
    "tzachar/cmp-tabnine",
    run = "./install.sh",
    requires = "hrsh7th/nvim-cmp",
    event = "InsertEnter",
  },
  { 'junegunn/limelight.vim' },
  { 'dense-analysis/ale' },
  {
    'phaazon/hop.nvim',
    branch = 'v2', -- optional but strongly recommended
    config = function()
      require("hop").setup()
      vim.api.nvim_set_keymap("n", "s", ":HopChar2<cr>", { silent = true })
      vim.api.nvim_set_keymap("n", "S", ":HopWord<cr>", { silent = true })
    end
  },
  -- {
  --   "karb94/neoscroll.nvim",
  --   event = "WinScrolled",
  --   config = function()
  --     require('neoscroll').setup(
  --     {
  --       -- All these keys will be mapped to their corresponding default scrolling animation
  --       mappings = { '<C-u>', '<C-d>', '<C-b>', '<C-f>',
  --         '<C-y>', '<C-e>', 'zt', 'zz', 'zb' },
  --       hide_cursor = false, -- Hide cursor while scrolling
  --       stop_eof = true, -- Stop at <EOF> when scrolling downwards
  --       use_local_scrolloff = false, -- Use the local scope of scrolloff instead of the global scope
  --       respect_scrolloff = false, -- Stop scrolling when the cursor reaches the scrolloff margin of the file
  --       cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
  --       easing_function = nil, -- Default easing function
  --       pre_hook = nil, -- Function to run before the scrolling animation starts
  --       post_hook = nil, -- Function to run after the scrolling animation ends
  --     }
  --     )
  --   end
  -- },

  {
    "tpope/vim-surround",
    -- make sure to change the value of `timeoutlen` if it's not triggering correctly, see https://github.com/tpope/vim-surround/issues/117
    -- setup = function()
    --  vim.o.timeoutlen = 500
    -- end
  },
  { 'Pocco81/true-zen.nvim' },
  -- {'matze/vim-tex-fold'}
}
