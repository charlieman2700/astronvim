-- Configure plugins
return {
  -- You can disable default plugins as follows:
  -- ["nvim-neo-tree/neo-tree.nvim"] = { disable = true },
  -- ['Shatur/neovim-session-manager'] = { disable = true },
  ["Darazaki/indent-o-matic"] = { disable = true },
  -- ["goolord/alpha-nvim"] = { disable = true },
  { 'lervag/vimtex' },
  { 'xuhdev/vim-latex-live-preview' },
  { 'rhysd/vim-grammarous' },
  { 'folke/tokyonight.nvim' },
  {
    "tzachar/cmp-tabnine",
    run = "./install.sh",
    requires = "hrsh7th/nvim-cmp",
    event = "InsertEnter",
  },
  { 'junegunn/limelight.vim' }
}

-- We also support a key value style plugin definition similar to NvChad:
-- ["ray-x/lsp_signature.nvim"] = {
--   event = "BufRead",
--   config = function()
--     require("lsp_signature").setup()
--   end,
-- },
-- -- All other entries override the require("<key>").setup({...}) call for default plugins
-- ["null-ls"] = function(config) -- overrides `require("null-ls").setup(config)`
--         -- config variable is the default configuration table for the setup function call
--         -- local null_ls = require "null-ls"

--         -- Check supported formatters and linters
--         -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
--         -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
--         config.sources = {
--                 -- Set a formatter
--                 -- null_ls.builtins.formatting.stylua,
--                 -- null_ls.builtins.formatting.prettier,
--         }
--         return config -- return final config table
-- end,
-- treesitter = { -- overrides `require("treesitter").setup(...)`
--         -- ensure_installed = { "lua" },
-- },
-- -- use mason-lspconfig to configure LSP installations
-- ["mason-lspconfig"] = { -- overrides `require("mason-lspconfig").setup(...)`
--         -- ensure_installed = { "sumneko_lua" },
-- },
-- -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
-- ["mason-null-ls"] = { -- overrides `require("mason-null-ls").setup(...)`
--         -- ensure_installed = { "prettier", "stylua" },
-- },
