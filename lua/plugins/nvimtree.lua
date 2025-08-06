return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
    require("nvim-tree").setup {
      view = {
        adaptive_size = true,
        side = "left",
        width = 30,
      },
    }
    vim.api.nvim_set_keymap('n', '<leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
    vim.api.nvim_create_autocmd("VimEnter", {
      callback = function()
        vim.cmd("NvimTreeToggle")
      end
    })
  end,
}
