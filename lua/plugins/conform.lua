return {
  'stevearc/conform.nvim',
  opts = {},
  config = function()
    require('conform').setup {
      formatters_by_ft = {
        rust = { "rustfmt" },
        cpp = { "clang-format" },
      }
    }
    vim.keymap.set({ "n" }, "<leader>fm", function()
      require("conform").format({
        lsp_fallback = true,
        async = false,
        timeout_ms = 500,
      })
    end, { desc = "Format with conform" })

  end
}
