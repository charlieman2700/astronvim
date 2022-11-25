require("cmp_dictionary").setup({
  dic = {
    -- ["*"] = { "/usr/share/dict/words" },
    ["tex"] = "/Users/charlie/.config/nvim/lua/user/spellFiles/spanis.dic",
    -- ["javascript,typescript"] = { "path/to/js.dic", "path/to/js2.dic" },
    -- filename = {
    --   ["xmake.lua"] = { "path/to/xmake.dic", "path/to/lua.dic" },
    -- },
    -- filepath = {
    --   ["%.tmux.*%.conf"] = "path/to/tmux.dic"
    -- },
    spelllang = {
      -- en = "path/to/english.dic",
      -- es = "/Users/charlie/.config/nvim/lua/user/spellFiles/spanis.dic"
    },
  },
  -- The following are default values.
  exact = 2,
  first_case_insensitive = true,
  document = false,
  document_command = "wn %s -over",
  async = false,
  max_items = -1,
  capacity = 7,
  debug = false,
})
