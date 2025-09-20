return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000 ,
  config = true,
  opts = {},
  config = function()
    vim.cmd([[colorscheme tokyonight-storm]])
  end
}
