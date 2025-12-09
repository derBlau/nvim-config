return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  
  config = function()
    -- custom mappings
    local set = vim.keymap.set
    
    set("n", "<C-n>", ":NvimTreeToggle<CR>")

    -- call setup
    require("nvim-tree").setup {}
  end,
}
