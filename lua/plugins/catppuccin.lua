return {
	"catppuccin/nvim", 
	lazy = false,
	name = "catppuccin", 
	priority = 1000, 
	
  opts = {
    transparent_background = true,
    float = {
      transparent = true,
      solid = false,
    },
    term_colors = true,
    auto_integrations = true,
  },

	config = function(_, opts)
    require("catppuccin").setup(opts)
		vim.cmd.colorscheme "catppuccin"
	end	
}

