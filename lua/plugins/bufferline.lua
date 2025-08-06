return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    require("bufferline").setup {
      options = {
        numbers = "none",             -- Show buffer numbers: "none", "ordinal", "buffer_id", or "both"
        close_command = "bdelete! %d",-- Command to close a buffer
        right_mouse_command = "bdelete! %d",
        left_mouse_command = "buffer %d", -- Go to buffer on left click
        middle_mouse_command = nil,
        indicator = {
          icon = '▎',                -- Buffer indicator icon
          style = 'icon',
        },
        buffer_close_icon = '',
        modified_icon = '●',
        close_icon = '',
        left_trunc_marker = '',
        right_trunc_marker = '',
        max_name_length = 30,
        max_prefix_length = 15,
        tab_size = 21,
        diagnostics = false,          -- You can enable 'nvim_lsp' or 'coc' diagnostics if you want
        offsets = {
          {
            filetype = "NvimTree",
            text = "File Explorer",
            text_align = "left",
            padding = 1,
          }
        },
        show_buffer_icons = true,
        show_buffer_close_icons = true,
        show_close_icon = true,
        show_tab_indicators = true,
        persist_buffer_sort = true,
        separator_style = "thin",     -- "slant", "thick", "thin", or "none"
        enforce_regular_tabs = false,
        always_show_bufferline = true,
      }
    }
    vim.api.nvim_set_keymap('n', '<Tab>', ':BufferLineCycleNext<CR>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', { noremap = true, silent = true })
  end
}
