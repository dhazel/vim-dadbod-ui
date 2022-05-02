describe('Test mods', function()
  before_each(function()
    vim.fn.SetupTestDbs()
  end)

  after_each(function()
    vim.fn.Cleanup()
  end)

  it('should open in new tab', function()
  assert.are.same(1, vim.fn.tabpagenr('$'))
  vim.cmd('tab DBUI')
  assert.are.same(2, vim.fn.tabpagenr('$'))
  assert.are.same(2, vim.fn.tabpagenr())
  assert.are.same('dbui', vim.bo.filetype)
  assert.are.same(string.format('%s %s', vim.g.db_ui_icons.collapsed.db, 'dadbod_ui_test'), vim.fn.getline(1))
  assert.are.same(string.format('%s %s', vim.g.db_ui_icons.collapsed.db, 'dadbod_ui_testing'), vim.fn.getline(2))
  end)
end)
