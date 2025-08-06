return {
  "nvim-treesitter/nvim-treesitter",
  branch = 'master',
  lazy = false, 
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup {
      ensure_installed = { "java", "cpp", "c", "yaml", "helm", "bash" },
      highlight = {
        enable = true,
      }
    }
  end
}
