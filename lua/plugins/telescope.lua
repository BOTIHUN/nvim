return {
  'nvim-telescope/telescope.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local builtin = require('telescope.builtin')

    -- Keybinding 1: <leader>ff to find files
    vim.api.nvim_set_keymap('n', '<leader>ff', "<cmd>lua require('telescope.builtin').find_files()<CR>", { noremap = true, silent = true })

    -- Keybinding 2: <leader>fg to live grep search
    vim.api.nvim_set_keymap('n', '<leader>fg', "<cmd>lua require('telescope.builtin').live_grep()<CR>", { noremap = true, silent = true })

    vim.api.nvim_set_keymap('n', '<leader>bl', "<cmd>lua require('telescope.builtin').git_bcommits()<CR>", { noremap = true, silent = true })
  end
}
