return {
  'akinsho/toggleterm.nvim',
  version = "*",
  config = function()
    require('toggleterm').setup{
      direction = 'horizontal',
      persist_size = true,
    }
    vim.keymap.set('n', '<Leader>h', ':ToggleTerm<CR>', { desc = 'Toggle terminal' })
  end
}
