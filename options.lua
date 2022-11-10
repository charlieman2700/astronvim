return {
  opt = {
    -- set to true or false etc.
    relativenumber = true, -- sets vim.opt.relativenumber
    number = true, -- sets vim.opt.number
    signcolumn = "auto", -- sets vim.opt.signcolumn to auto
    wrap = false, -- sets vim.opt.wrap
    spelllang = 'es',
    spell = true, -- sets vim.opt.spell
    autoindent = true,
    expandtab = true,
    tabstop = 2,
    shiftwidth = 2,
    softtabstop = 2,
    smarttab = true,
    -- foldlevel = 20,
    -- foldmethod = "syntax",
    -- foldlevelstart = 99
    -- foldexpr = "nvim_treesitter#foldexpr()",
  },
  g = {
    mapleader = " ", -- sets vim.g.mapleader
    autoformat_enabled = false, -- enable or disable auto formatting at start (lsp.formatting.format_on_save must be enabled)
    cmp_enabled = true, -- enable completion at start
    autopairs_enabled = true, -- enable autopairs at start
    diagnostics_enabled = true, -- enable diagnostics at start
    status_diagnostics_enabled = true, -- enable diagnostics in statusline
    icons_enabled = true, -- disable icons in the UI (disable if no nerd font is available, requires :PackerSync after changing)
    vimtex_view_general_viewer = 'open -a Preview',
    -- vimtex_view_method = 'Preview',
    livepreview_previewer = 'open -a Preview',
    vimtex_fold_enabled = 1,
    tex_flavor = 'latex'
  },

  -- If you need more control, you can use the function()...end notation
  -- options = function(local_vim)
  --   local_vim.opt.relativenumber = true
  --   local_vim.g.mapleader = " "
  --   local_vim.opt.whichwrap = vim.opt.whichwrap - { 'b', 's' } -- removing option from list
  --   local_vim.opt.shortmess = vim.opt.shortmess + { I = true } -- add to option list
  --
  --   return local_vim
  -- end,
}
