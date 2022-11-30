-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bb"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bc"] = { "<cmd>BufferLinePickClose<cr>", desc = "Pick to close" },
    ["<leader>bj"] = { "<cmd>BufferLinePick<cr>", desc = "Pick to jump" },
    ["<leader>bt"] = { "<cmd>BufferLineSortByTabs<cr>", desc = "Sort by tabs" },

    ["<leader>UU"] = { "<cmd>lua vim.diagnostic.config({ virtual_text = false, underline = true, signs = false})<cr>", desc = "Only underline" },
    ["<leader>UB"] = { "<cmd>lua vim.diagnostic.config({ virtual_text = fale, underline = true, signs = true})<cr>", desc = "Underline and Signs" },
    ["<leader>US"] = { "<cmd>lua vim.diagnostic.config({ virtual_text = false, underline = false, signs = true })<cr>", desc = "Only Signs" },
    ["<leader>UA"] = { "<cmd>lua vim.diagnostic.config({ virtual_text = true, underline = true, signs = true })<cr>", desc = "All" },

    ["<leader>lc"] = { "<cmd>term latexindent -l -w %<cr>", desc = "Latex Prettier" },


    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },
  t = {
    -- require 'telescope'.extensions.projects.projects {}
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
