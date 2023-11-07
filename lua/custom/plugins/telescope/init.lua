local M = {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && "
          .. "cmake --build build --config Release && "
          .. "cmake --install build --prefix build"
    },
    {
      "nvim-lua/plenary.nvim"
    }
  },
}

function M.init()
  require("custom.plugins.telescope.mappings")
end

function M.config()
  require("custom.plugins.telescope.cmds")
  require("custom.plugins.telescope.setup").setup()
end

return M
