return {
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup()

      vim.keymap.set("n", "<leader>bl", function()
        require("gitsigns").blame_line({ full = true })
      end, { desc = "Git blame line" })

      vim.keymap.set("n", "<leader>bf", function()
        require("gitsigns").blame()
      end, { desc = "Git blame file" })
    end,
  },
}

