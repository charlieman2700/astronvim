-- local path = vim.fn.stdpath('config') .. '/lua/user/spellFiles/es.utf-8.add'
local path = '/Users/charlie/.config/nvim/lua/user/spellFiles/es.utf-8.add'
local words = { "Laboratorio" }

for word in io.open(path, 'r'):lines() do
  table.insert(words, word)
end
--
-- return {
--   settings = {
--     ltex = {
--       enabled = { "latex", "tex", "bib", "markdown" },
--       language = "en",
--       dictionary = {
--               ['es'] = {'shutdown','upquote'},
--               ['en'] = {'upquote','Laboratorio'}
--       },
--       diagnosticSeverity = "information",
--       setenceCacheSize = 2000,
--       additionalRules = {
--         enablePickyRules = true,
--         motherTongue = "es",
--       },
--       trace = { server = "verbose" },
--       disabledRules = {},
--       hiddenFalsePositives = {},
--     },
--   },
-- }

--
return {
  settings = {
    ltex = {
      dictionary = {
        ['es'] = words,
      },
      disabledRules = { ["es"] = { "SMART_QUOTES", } },
      -- commands =  vim.json.decode("{ '\\label{}': 'ignore', '\\documentclass[]{}': 'ignore', '\\cite{}': 'dummy', '\\cite[]{}': 'dummy'}"),
      additionalRules = {
        enablePickyRules = true,
        motherTongue = "es",
      },
      language = "es",
    },
    trace = { server = "verbose" },
  }
}
