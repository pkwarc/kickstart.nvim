return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup {
      disable_netrw = true,
      update_cwd = true,
      view = {
        side = 'left',
      }
    }
  end,
  keys = {
      { "<leader>ee", "<Esc>:NvimTreeToggle<CR>", silent = true },
      { "<leader>ef", "<Esc>:NvimTreeFindFileToggle<CR>", silent = true },
  },
  opts = {
    use_default_keymaps = false,
  },
}
