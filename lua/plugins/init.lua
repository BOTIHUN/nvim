return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
      vim.cmd.colorscheme("tokyonight-storm")
    end,
  },
  {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      vim.keymap.set("n", "<Tab>", "<cmd>BufferLineCycleNext<CR>", {})
      vim.keymap.set("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<CR>", {})
      require('bufferline').setup{
        options = {
          mode = 'buffers',
          offsets = {
            {
              filetype = "NvimTree",
              text = "File Explorer",
              text_align = "center",
              separator = true
            }
          },
        }
      }
    end,
  },
  {
    'nvim-tree/nvim-tree.lua',
    version = "*",
    dependencies = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    config = function()
      vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file tree" })
      require("nvim-tree").setup {
        sort = {
          sorter = "case_sensitive",
        },
        view = {
          width = 30,
        },
        renderer = {
          group_empty = true,
        },
        filters = {
          dotfiles = true,
        },
      }
    end,
  },
  {
    "moll/vim-bbye",
    keys = {
      { "<leader>x", "<cmd>Bdelete<CR>", desc = "Close buffer (safe)" },
    }
  },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('lualine').setup {
        options = {
          icons_enabled = true,
          theme = 'onedark',
        }
      }
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
    config = function()
      require('nvim-treesitter.configs').setup {
        ensure_installed = { "rust", "toml" }, -- languages you want
        highlight = {
          enable = true,              -- false will disable the whole extension
        },
        indent = {
          enable = true
        },
      }
    end,
  },
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      vim.keymap.set("n", "<leader>h", "<cmd>ToggleTerm 1<CR>", { desc = "Toggle terminal 1", noremap = true, silent = true })
      require('toggleterm').setup {
        direction = 'horizontal',  -- 'horizontal' | 'vertical' | 'tab' | 'float'
      }
    end,
  },
  {
    'stevearc/conform.nvim',
    opts = {},
    config = function()
    require("conform").setup{
      formatters_by_ft = {
        lua = { "stylua" },
        rust = { "rustfmt", lsp_format = "fallback" },
      },
      format_on_save = {
        -- These options will be passed to conform.format()
        timeout_ms = 500,
        lsp_format = "fallback",
      },

    }
    end,
  },
  {
  'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local builtin = require('telescope.builtin')
      vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
      vim.keymap.set('n', '<leader>fw', builtin.live_grep, { desc = 'Telescope live grep' })
      vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
    end,
  },
}
