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
    -- ["<leader>fp"] = { "<cmd>SessionManager load_session<cr>", desc = "Load project" },
    ["<leader>fp"] = { function() require 'telescope'.extensions.projects.projects {} end, desc = "Open Projects" },
    ["<leader>fr"] = { "<cmd>Telescope repo list<cr>", desc = "Search Repo" },
    ["<leader>Pr"] = { "<cmd>:w<cr> :term python3 %<cr>", desc = 'Run Python3 script' },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },
  t = {
    -- require 'telescope'.extensions.projects.projects {}
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
