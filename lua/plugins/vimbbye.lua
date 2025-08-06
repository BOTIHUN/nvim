return {
  'moll/vim-bbye',
  config = function()
    vim.api.nvim_set_keymap('n', '<leader>x', ':Bdelete<CR>', { noremap = true, silent = true })
  end
}
