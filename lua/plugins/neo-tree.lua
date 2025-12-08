return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
	  "nvim-lua/plenary.nvim",
	  "nvim-tree/nvim-web-devicons",
	  "MunifTanjim/nui.nvim"
  },

  config = function()
    local set = vim.keymap.set

	  -- Shortcut keys
	  set("n", "<C-n>", ":Neotree filesystem toggle left<CR>", {desc = "Toggles file tree"})
  end
}
