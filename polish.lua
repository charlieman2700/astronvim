return {

  vim.api.nvim_create_autocmd('BufEnter', { callback = function()
    vim.cmd('hi clear SpellBad')
    vim.cmd('hi SpellBad cterm=underline')
    vim.cmd('hi SpellBad gui=undercurl')
  end })

}
