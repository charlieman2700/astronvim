--              AstroNvim Configuration Table
-- All configuration changes should go inside of the table below

-- You can think of a Lua "table" as a dictionary like data structure the
-- normal format is "key = value". These also handle array like data structures
-- where a value with no key simply has an implicit numeric key
--
--
vim.cmd [[
  autocmd BufReadPost,FileReadPost * normal zR
  ]]


vim.diagnostic.config({ virtual_text = true })

local config = {


  -- Set colorscheme to use
  colorscheme = "catppuccin-mocha",
  --colorscheme catppuccin " catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha

  -- Modify which-key registration (Use this with mappings table in the above.)
  ["which-key"] = {
    -- Add bindings which show up as group name
    register = {
      -- first key is the mode, n == normal mode
      n = {
        -- second key is the prefix, <leader> prefixes
        ["<leader>"] = {
          -- third key is the key to bring up next level and its displayed
          -- group name in which-key top level menu
          ["b"] = { name = "Buffer" },
        },
      },
    },
  },

  plugins = {
    init = {

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

      { 'tpope/vim-surround' },
      { 'Pocco81/true-zen.nvim' },

      {
        'uga-rosa/cmp-dictionary',
        after = "nvim-cmp",
        config = function()
          astronvim.add_cmp_source({ name = "dictionary" })
          require 'user.plugins.userConfigs.cmp-dictionary'
        end,
      },
    },


  },

  cmp = {
    source_priority = {
      nvim_lsp = 1000,
      luasnip = 750,
      dictionary = 900,
      emoji = 700,
      pandoc_references = 600,
      buffer = 500,
      path = 250,
    },
  },

  -- local group = vim.api.nvim_create_augroup('change colors', {clear = true})
  -- vim.api.nvim_create_autocmd('BufEnter', {command = '', group = group})
  --

}
return config
