-- Extend LSP configuration
return {
  -- enable servers that you already have installed without mason
  servers = {
    -- "pyright"
  },
  formatting = {
    -- control auto formatting on save
    format_on_save = {
      enabled = true, -- enable or disable format on save globally
      disable_filetypes = { -- disable format on save for specified filetypes
        -- "python",
      },
    },
    disabled = { -- disable formatting capabilities for the listed language servers
      -- "sumneko_lua",
    },
    timeout_ms = 1000, -- default format timeout
    -- filter = function(client) -- fully override the default formatting function
    --   return true
    -- end
  },
  -- easily add or disable built in mappings added during LSP attaching
  mappings = {
    n = {
      -- ["<leader>lf"] = false -- disable formatting keymap
    },
  },
}
